class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  
  has_one_attached :avatar


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  before_save { self.email = email.downcase }

#  validaciones de registro
  validates :nombre, presence: true,
                     length: { minimum: 3, maximum: 100 }
  validates :apellido, presence: true,
                       length: { minimum: 5, maximum: 100}

  validates :username, presence: true,
                       uniqueness: { case_sensitive: false },
                       length: { minimum: 3, maximum: 20}

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
                    uniqueness: {case_sensitive: false},
                    length: {minimum: 10, maximum: 100},
                    format: { with: VALID_EMAIL_REGEX }

  validates :carrera, presence: true,
                      length: { minimum: 5, maximum: 100}

  validates :codigo, presence: true,
                     uniqueness: {case_sensitive: false},
                     length: { minimum: 5, maximum: 100}

end
