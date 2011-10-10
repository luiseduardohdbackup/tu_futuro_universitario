require File.dirname(__FILE__) + '/../spec_helper'

describe Application do
  it "should be valid" do
    Application.new.should be_valid
  end
end
