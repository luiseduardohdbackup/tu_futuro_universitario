require 'spec_helper'

describe "scholarships/show.html.erb" do
  before(:each) do
    @scholarship = assign(:scholarship, stub_model(Scholarship,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Last Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Middle Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Sex/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Phone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name Tutor/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Address Tutor/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Home Phone Tutor/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Office Phone Tutor/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Occupation Tutor/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Parents Marital Status/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Father Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Mother Name/)
  end
end
