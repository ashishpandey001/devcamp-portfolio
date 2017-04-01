# Class to create guest users on the basis of the User model
class GuestUser < User
  attr_accessor :name, :first_name, :last_name, :email
end
