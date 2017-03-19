require './test/test_helper'

class LyricAuthTest < Minitest::Test

  def test_client_exists
    assert Lyric::Client
  end

end
