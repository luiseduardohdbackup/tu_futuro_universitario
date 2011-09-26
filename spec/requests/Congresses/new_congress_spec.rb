require 'spec_helper'

describe 'New congress' do
  it 'I can create a new congress' do
    visit new_congress_path
    fill_in "congress_title", :with => "The super title"
    fill_in "congress_description", :with => "The super description"
    fill_in "congress_start_date", :with => Time.now + 1.day
    fill_in "congress_end_date", :with => Time.now + 2.days
    click_on "Create Congress"
    page.should have_content "Successfully created congress."
  end

  it 'I can not create a new congress without a title' do
    visit new_congress_path
    fill_in "congress_description", :with => "The super description"
    fill_in "congress_start_date", :with => Time.now + 1.day
    fill_in "congress_end_date", :with => Time.now + 2.days
    click_on "Create Congress"
    page.should have_content "Title can't be blank"
  end

  it 'I can not create a new congress date from the past' do
    visit new_congress_path
    fill_in "congress_title", :with => "The super title"
    fill_in "congress_description", :with => "The super description"
    fill_in "congress_start_date", :with => Time.now - 1.day
    click_on "Create Congress"
    page.should have_content "Start date needs to be a future date"
  end
end
