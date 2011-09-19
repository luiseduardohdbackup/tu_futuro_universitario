require 'spec_helper'

describe 'New congress' do
  it 'I can create a new congress' do
    visit new_congress_path
    fill_in "congress_title", :with => "The super title"
    fill_in "congress_description", :with => "The super description"
    select "2014", :from => "congress_start_date_1i"
    select "2016", :from => "congress_end_date_1i"
    click_on "Create Congress"
    page.should have_content "Successfully created congress."
  end

  it 'I can not create a new congress without a title' do
    visit new_congress_path
    fill_in "congress_description", :with => "The super description"
    select "2014", :from => "congress_start_date_1i"
    select "2016", :from => "congress_end_date_1i"
    click_on "Create Congress"
    page.should have_content "Title can't be blank"
  end

  it 'I can not create a new congress date from the past' do
    visit new_congress_path
    fill_in "congress_title", :with => "The super title"
    fill_in "congress_description", :with => "The super description"
    select "2009", :from => "congress_start_date_1i"
    click_on "Create Congress"
    page.should have_content "Date needs to be a future date"
  end
end
