class CreateScholarships < ActiveRecord::Migration
  def change
    create_table :scholarships do |t|
      t.string :name
      t.string :last_name
      t.string :middle_name
      t.string :email
      t.integer :school_id
      t.date :birthdate
      t.string :sex
      t.string :phone
      t.float :gpa
      t.text :school_activities
      t.text :extracurricular_activities
      t.text :curriculum
      t.text :essay
      t.string :name_tutor
      t.string :address_tutor
      t.string :home_phone_tutor
      t.string :office_phone_tutor
      t.string :occupation_tutor
      t.float :monthly_stipend_tutor
      t.integer :home_people
      t.string :parents_marital_status
      t.integer :siblings
      t.string :father_name
      t.string :mother_name

      t.timestamps
    end
  end
end
