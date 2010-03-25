class User < ActiveRecord::Base

  attr_accessor :password, :password_confirmation

  before_save :hash_password

  private

  def self.hash_plaintext_password pwd
    (pwd.reverse)
  end

  def hash_password
    return if self.password.blank?
    self.hashed_password = User.hash_plaintext_password(self.password)
  end

  def self.authenticate name, password
    user = User.find_by_name name

    unless user and user.correct_password? password
      raise ArgumentError.new "Authentication failed"
    end

    return user

  end

  def correct_password? pwd
    return User.hash_plaintext_password(pwd) == hashed_password
  end

end
