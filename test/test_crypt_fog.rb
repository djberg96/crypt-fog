########################################################################
# test_crypt_fog.rb
#
# Test suite for the crypt-fog library. You should run the 'test' rake
# task to run this test suite.
########################################################################
require 'test/unit'
require 'crypt/fog'

class TC_Fog < Test::Unit::TestCase
   def setup
      @fog = Crypt::Fog.new('hello')
   end

   def test_crypt_fog_version
      assert_equal('1.0.2', Crypt::Fog::VERSION)
   end

   def test_crypt_fog_constructor_one_argument_form
      assert_nothing_raised{ Crypt::Fog.new('string') }
      assert_kind_of(String, Crypt::Fog.new('string'))
   end

   def test_crypt_fog_constructor_two_argument_form
      assert_nothing_raised{ Crypt::Fog.new('string', 55) }
      assert_kind_of(String, Crypt::Fog.new('string', 55))
   end

   def test_class_decrypt
      assert_respond_to(Crypt::Fog, :decrypt)
      assert_nothing_raised{ Crypt::Fog.decrypt('string') }
      assert_nothing_raised{ Crypt::Fog.decrypt('string', 66) }
      assert_equal('hello', Crypt::Fog.decrypt(';8??B', 2003))
   end

   def test_instance_decrypt
      assert_respond_to(@fog, :decrypt)
      assert_nothing_raised{ @fog.decrypt }
      assert_equal('hello', @fog.decrypt)
   end

   def test_types
      assert_kind_of(Crypt::Fog, @fog)
      assert_kind_of(String, @fog.decrypt)
   end

   def teardown
      @fog = nil
   end
end
