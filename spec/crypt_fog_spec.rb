########################################################################
# test_crypt_fog.rb
#
# Test suite for the crypt-fog library. You should run the 'test' rake
# task to run this test suite.
########################################################################
require 'rspec'
require 'crypt/fog'

RSpec.describe Crypt::Fog do
  before do
    @fog = described_class.new('hello')
  end

  example "version constant" do
    expect(described_class::VERSION).to eq('1.0.3')
    expect(described_class::VERSION).to be_frozen
  end

  example "constructor with one argument" do
    expect{ described_class.new('string') }.not_to raise_error
    expect( described_class.new('string')).to be_kind_of(String)
  end

  example "constructor with two arguments" do
    expect{ described_class.new('string', 55) }.not_to raise_error
    expect(described_class.new('string', 55)).to be_kind_of(String)
  end

  example "decrypt singleton method" do
    expect(described_class).to respond_to(:decrypt)
    expect{ described_class.decrypt('string') }.not_to raise_error
    expect{ described_class.decrypt('string', 66) }.not_to raise_error
    expect(described_class.decrypt(';8??B', 2003)).to eq('hello')
  end

  example "decrypt instance method" do
    expect(@fog).to respond_to(:decrypt)
    expect{ @fog.decrypt }.not_to raise_error
    expect(@fog.decrypt).to eq('hello')
  end

  example "type check" do
    expect(@fog).to be_kind_of(described_class)
    expect(@fog.decrypt).to be_kind_of(String)
  end
end
