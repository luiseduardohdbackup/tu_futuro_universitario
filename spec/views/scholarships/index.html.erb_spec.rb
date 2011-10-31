require 'spec_helper'

describe "scholarships/index.html.erb" do
  before(:each) do
    assign(:scholarships, [
      stub_model(Scholarship,
        :name => "Name",
        :last_name => "Last Name",
        :middle_name => "Middle Name",
        :email => "Email",
        :school_id => 1,
        :sex => "Sex",
        :phone => "Phone",
        :gpa => 1.5,
        :school_activities => "MyText",
        :extracurricular_activities => "MyText",
        :curriculum => "MyText",
        :essay => "MyText",
        :name_tutor => "Name Tutor",
        :address_tutor => "Address Tutor",
        :home_phone_tutor => "Home Phone Tutor",
        :office_phone_tutor => "Office Phone Tutor",
        :occupation_tutor => "Occupation Tutor",
        :monthly_stipend_tutor => 1.5,
        :home_people => 1,
        :parents_marital_status => "Parents Marital Status",
        :siblings => 1,
        :father_name => "Father Name",
        :mother_name => "Mother Name"
      ),
      stub_model(Scholarship,
        :name => "Name",
        :last_name => "Last Name",
        :middle_name => "Middle Name",
        :email => "Email",
        :school_id => 1,
        :sex => "Sex",
        :phone => "Phone",
        :gpa => 1.5,
        :school_activities => "MyText",
        :extracurricular_activities => "MyText",
        :curriculum => "MyText",
        :essay => "MyText",
        :name_tutor => "Name Tutor",
        :address_tutor => "Address Tutor",
        :home_phone_tutor => "Home Phone Tutor",
        :office_phone_tutor => "Office Phone Tutor",
        :occupation_tutor => "Occupation Tutor",
        :monthly_stipend_tutor => 1.5,
        :home_people => 1,
        :parents_marital_status => "Parents Marital Status",
        :siblings => 1,
        :father_name => "Father Name",
        :mother_name => "Mother Name"
      )
    ])
  end

  it "renders a list of scholarships" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Middle Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Sex".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name Tutor".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Address Tutor".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Home Phone Tutor".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Office Phone Tutor".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Occupation Tutor".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Parents Marital Status".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Father Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Mother Name".to_s, :count => 2
  end
end
