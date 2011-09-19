require 'test_helper'

class CongressTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Congress.new.valid?
  end
end
