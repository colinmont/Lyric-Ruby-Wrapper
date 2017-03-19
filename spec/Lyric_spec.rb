require 'spec_helper'

describe Lyric do
  it 'has a version number' do
    expect(Lyric::VERSION).not_to be nil
  end

  it 'has a client' do
    expect(Lyric::Client).not_to be nil
  end

  it 'has RestAPIMethods' do
    expect(Lyric::RestAPIMethods).not_to be nil
  end

  it 'has a list of locations class' do
    expect(Lyric::Model::LocationList).not_to be nil
  end

  it 'has a location class' do
    expect(Lyric::Model::Location).not_to be nil
  end

  it 'has a list of devices class' do
    expect(Lyric::Model::DeviceList).not_to be nil
  end

  it 'has a device class' do
    expect(Lyric::Model::Device).not_to be nil
  end

end
