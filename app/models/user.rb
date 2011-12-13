class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  ROLES = ['student','admin','super_admin']

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  ajaxful_rater

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :role, :name

  has_many :congresses
  has_many :applications, :dependent => :destroy
  belongs_to :scholarships

  validates :name, :role, :presence => true

  def super_admin?
    self.role == 'super_admin'
  end

  def admin?
    self.role == 'admin'
  end

  def student?
    self.role == 'student'
  end

  def has_applied?
    self.applications.present?
  end
end
