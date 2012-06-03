class Customer < ActiveRecord::Base

  attr_accessible :name, :email, :kind, :billing_d

  validates :name,  presence: true
  validates :email, presence: true, # format: VALID_EMAIL_REGEX,
		    uniqueness: { case_sensitive: false }


  #VALID_EMAIL_REGEX = /[a-z 0-9]+@[a-z\d-.]+.[a-z]+\z/i

end
