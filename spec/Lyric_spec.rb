require 'spec_helper'
require 'Lyric/auth/rest_api'

describe Lyric do
  it 'has a version number' do
    expect(Lyric::VERSION).not_to be nil
  end

  it 'has a RestAPIMethods module' do
    expect(Lyric::RestAPIMethods).not_to be nil
  end

  it 'finds a response' do
    expect(locations).not_to be nil
  end
end
