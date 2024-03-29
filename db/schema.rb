# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111213061621) do

  create_table "applications", :force => true do |t|
    t.integer  "congress_id"
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "areas", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "congresses", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "area_id"
    t.integer  "user_id"
  end

  create_table "options", :force => true do |t|
    t.boolean  "scholarship"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pictures", :force => true do |t|
    t.string   "image"
    t.text     "description"
    t.integer  "congress_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rates", :force => true do |t|
    t.integer  "rater_id"
    t.integer  "rateable_id"
    t.string   "rateable_type"
    t.integer  "stars",         :null => false
    t.string   "dimension"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rates", ["rateable_id", "rateable_type"], :name => "index_rates_on_rateable_id_and_rateable_type"
  add_index "rates", ["rater_id"], :name => "index_rates_on_rater_id"

  create_table "scholarships", :force => true do |t|
    t.string   "name"
    t.string   "last_name"
    t.string   "middle_name"
    t.string   "email"
    t.integer  "school_id"
    t.date     "birthdate"
    t.string   "sex"
    t.string   "phone"
    t.float    "gpa"
    t.text     "school_activities"
    t.text     "extracurricular_activities"
    t.text     "curriculum"
    t.text     "essay"
    t.string   "name_tutor"
    t.string   "address_tutor"
    t.string   "home_phone_tutor"
    t.string   "office_phone_tutor"
    t.string   "occupation_tutor"
    t.float    "monthly_stipend_tutor"
    t.integer  "home_people"
    t.string   "parents_marital_status"
    t.integer  "siblings"
    t.string   "father_name"
    t.string   "mother_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "transcript_file_name"
    t.string   "transcript_content_type"
    t.integer  "transcript_file_size"
    t.datetime "transcript_updated_at"
    t.string   "recomendation_file_name"
    t.string   "recomendation_content_type"
    t.integer  "recomendation_file_size"
    t.datetime "recomendation_updated_at"
    t.string   "letter_file_name"
    t.string   "letter_content_type"
    t.integer  "letter_file_size"
    t.datetime "letter_updated_at"
    t.string   "transcript"
    t.string   "letter"
    t.string   "recomendation"
  end

  create_table "schools", :force => true do |t|
    t.string   "name"
    t.string   "contact"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "",        :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "",        :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role",                                  :default => "student"
    t.string   "name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
