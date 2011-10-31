require 'spec_helper'

describe "scholarships/edit.html.erb" do
  before(:each) do
    @scholarship = assign(:scholarship, stub_model(Scholarship,
      :name => "MyString",
      :last_name => "MyString",
      :middle_name => "MyString",
      :email => "MyString",
      :school_id => 1,
      :sex => "MyString",
      :phone => "MyString",
      :gpa => 1.5,
      :school_activities => "MyText",
      :extracurricular_activities => "MyText",
      :curriculum => "MyText",
      :essay => "MyText",
      :name_tutor => "MyString",
      :address_tutor => "MyString",
      :home_phone_tutor => "MyString",
      :office_phone_tutor => "MyString",
      :occupation_tutor => "MyString",
      :monthly_stipend_tutor => 1.5,
      :home_people => 1,
      :parents_marital_status => "MyString",
      :siblings => 1,
      :father_name => "MyString",
      :mother_name => "MyString"
    ))
  end

  it "renders the edit scholarship form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => scholarships_path(@scholarship), :method => "post" do
      assert_select "input#scholarship_name", :name => "scholarship[name]"
      assert_select "input#scholarship_last_name", :name => "scholarship[last_name]"
      assert_select "input#scholarship_middle_name", :name => "scholarship[middle_name]"
      assert_select "input#scholarship_email", :name => "scholarship[email]"
      assert_select "input#scholarship_school_id", :name => "scholarship[school_id]"
      assert_select "input#scholarship_sex", :name => "scholarship[sex]"
      assert_select "input#scholarship_phone", :name => "scholarship[phone]"
      assert_select "input#scholarship_gpa", :name => "scholarship[gpa]"
      assert_select "textarea#scholarship_school_activities", :name => "scholarship[school_activities]"
      assert_select "textarea#scholarship_extracurricular_activities", :name => "scholarship[extracurricular_activities]"
      assert_select "textarea#scholarship_curriculum", :name => "scholarship[curriculum]"
      assert_select "textarea#scholarship_essay", :name => "scholarship[essay]"
      assert_select "input#scholarship_name_tutor", :name => "scholarship[name_tutor]"
      assert_select "input#scholarship_address_tutor", :name => "scholarship[address_tutor]"
      assert_select "input#scholarship_home_phone_tutor", :name => "scholarship[home_phone_tutor]"
      assert_select "input#scholarship_office_phone_tutor", :name => "scholarship[office_phone_tutor]"
      assert_select "input#scholarship_occupation_tutor", :name => "scholarship[occupation_tutor]"
      assert_select "input#scholarship_monthly_stipend_tutor", :name => "scholarship[monthly_stipend_tutor]"
      assert_select "input#scholarship_home_people", :name => "scholarship[home_people]"
      assert_select "input#scholarship_parents_marital_status", :name => "scholarship[parents_marital_status]"
      assert_select "input#scholarship_siblings", :name => "scholarship[siblings]"
      assert_select "input#scholarship_father_name", :name => "scholarship[father_name]"
      assert_select "input#scholarship_mother_name", :name => "scholarship[mother_name]"
    end
  end
end
