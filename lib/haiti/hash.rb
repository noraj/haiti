# frozen_string_literal: true

class HashIdentifier
  # Cryptographic hash function object
  class Chf
    # @return [String] name of the identified hash type
    attr_reader :name
    # @return [String] John the Ripper hash reference. nil if unknown.
    attr_reader :john
    # @return [String] Hashcat hash ID. nil if unknown.
    attr_reader :hashcat
    # @return [Boolean] Display by default or not. If true it is displayed in
    #   extended mode only, mostly hash type using salt.
    attr_reader :extended
    # @return [Array<String>] Examples of hashes
    attr_reader :samples

    def initialize(mode)
      @name = mode['name']
      @john = mode['john']
      @hashcat = mode['hashcat']
      @extended = mode['extended']
      @samples = mode['samples']
    end
  end
end
