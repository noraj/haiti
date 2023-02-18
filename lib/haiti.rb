# frozen_string_literal: true

# Ruby internal
require 'json'
# Project internal
require 'haiti/version'
require 'haiti/hash'

# The global Hash Identifier class
class HashIdentifier
  # Constants
  include Version
  PROTOTYPES = JSON.parse(File.read(File.join(__dir__, '../data/prototypes.json')))
  COMMONS = JSON.parse(File.read(File.join(__dir__, '../data/commons.json')))

  # @return [String] the hash (as provided)
  # @example
  #   '5f4dcc3b5aa765d61d8327deb882cf99'
  attr_reader :hash

  # @return [Array<Chf>] list of {Chf} objects, representing the identified
  #   hashes
  attr_reader :type

  # A new instance of hash identifier
  # @param hash [String] the hash to identify
  def initialize(hash)
    @hash = hash
    @type = identify(hash)
    sort_commons
  end

  class << self
    # Find hash samples for a given hash type (by name or hashcat/john the ripper reference)
    # @param input [String|Integer] hash type name, hashcat reference, john the ripper reference
    # @return [Array<String>] a list of samples
    # @example
    #   HashIdentifier.samples('crc32')
    #   # => ["c762de4a:00000000", "$crc32$00000000.fa455f6b", "$crc32$4ff4f23f.ce6eb863", "5e23d60f:00000000"]
    def samples(input)
      samples = []
      PROTOTYPES.each do |prototype|
        prototype['modes'].each do |mode|
          if [mode['name'].downcase, mode['hashcat'].to_s,
              mode['john'].nil? ? mode['john'] : mode['john'].downcase].include?(input.to_s.downcase)
            samples << Chf.new(mode).samples
          end
        end
      end
      samples.delete(nil)
      samples.flatten.uniq
    end
  end

  private

  # Check which hash types are matching the provided hash
  # @param hash [String] the hash to identify
  # @return [Array<Chf>] list of {Chf} objects, representing the identified
  #   hashes
  def identify(hash)
    res = []
    PROTOTYPES.each do |prototype|
      reg = Regexp.new prototype['regex'], Regexp::IGNORECASE
      next unless reg.match?(hash)

      prototype['modes'].each do |mode|
        res << Chf.new(mode)
      end
    end
    return res
  end

  # Sort common hash types first
  def sort_commons
    @type.sort_by! { |e| COMMONS.include?(e.name) ? 0 : 1 }
  end
end
