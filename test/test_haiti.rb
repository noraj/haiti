# frozen_string_literal: true

require 'minitest/autorun'
require 'haiti'

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
    assert_instance_of(HashIdentifier:: Chf, @hi.type[0])
  end

  def test_hashidentifier_type_non_existing
    hash = 'uuu'
    hi = HashIdentifier.new(hash)
    assert_empty(hi.type)
  end

  def test_chf
    assert_equal('MD2', @hi.type[0].name)
    assert_equal('md2', @hi.type[0].john)
    assert_nil(@hi.type[0].hashcat)
    assert_equal(false, @hi.type[0].extended)
  end
end
