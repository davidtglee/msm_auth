class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :bookmarks
  #has_many :bookmarks, :class_name=>"Bookmarks", :foreign_key =>"user_id"
end
