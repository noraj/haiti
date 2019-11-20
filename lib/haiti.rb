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
end
