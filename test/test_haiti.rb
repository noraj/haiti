# frozen_string_literal: true

require 'minitest/autorun'
require 'haiti'

# Unit tests for the HashIdentifier library
class HaitiTest < Minitest::Test
  def setup
    @hash = '5f4dcc3b5aa765d61d8327deb882cf99'
    @hi = HashIdentifier.new(@hash)
  end

  def test_hashidentifier_hash
    assert_equal(@hash, @hi.hash)
  end

  def test_hashidentifier_type
    assert_instance_of(Array, @hi.type)
    assert_instance_of(HashIdentifier::Chf, @hi.type[0])
  end

  def test_hashidentifier_type_non_existing
    hash = 'uuu'
    hi = HashIdentifier.new(hash)
    assert_empty(hi.type)
  end

  def test_hashidentifier_samples
    samples = HashIdentifier.samples('crc32')
    assert_instance_of(Array, samples)
    assert_instance_of(String, samples[0])
    assert_empty(HashIdentifier.samples('Django(SHA-384)'))
    assert_empty(HashIdentifier.samples('nonexistant'))
    assert_empty(HashIdentifier.samples(9_999_999_999_999))
  end

  def test_hashidentifier_object_list
    olist = HashIdentifier.object_list
    assert_instance_of(Array, olist)
    assert_instance_of(HashIdentifier::Chf, olist.first)
    refute_empty(olist)
  end

  def test_hashidentifier_list
    list = HashIdentifier.list
    assert_instance_of(Array, list)
    assert_instance_of(String, list.first)
    refute_empty(list)
  end

  def test_chf
    assert_equal('MD5', @hi.type[0].name)
    assert_equal('raw-md5', @hi.type[0].john)
    assert_equal(0, @hi.type[0].hashcat)
    assert_equal(false, @hi.type[0].extended)
  end

  def test_prototypes
    HashIdentifier::PROTOTYPES.each do |prototype|
      reg = Regexp.new prototype['regex'], Regexp::IGNORECASE
      prototype['modes'].each do |mode|
        next unless mode['samples']

        mode['samples'].each do |sample|
          assert_match(reg, sample, mode['name'])
        end
      end
    end
  end
end
