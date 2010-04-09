require 'digest/sha2'

class User < ActiveRecord::Base

  attr_accessor :password

  validates_presence_of :name
  validates_uniqueness_of :name

  validates_presence_of :password

  before_create :create_salt
  before_save :hash_password

# u = User.new :name => 'kisu', :password => 'kisu'

  def correct_password? pwd
    return User.hash_plaintext_password(pwd, self.salt) == hashed_password
  end

  private

  def self.hash_plaintext_password pwd, salt
    crypter = Digest::SHA2.new(512)
    crypter << salt
    crypter << pwd
    crypter.to_s
  end


  def create_salt
    self.salt = "#{Time.now.strftime('%s')}#{Thread.current.object_id}"
  end

  def hash_password
    return if self.password.blank?
    create_salt unless salt
    self.hashed_password = User.hash_plaintext_password(self.password, self.salt)
  end

  def self.authenticate name, password
    user = User.find_by_name name
    unless user and user.correct_password? password
      raise ArgumentError.new "Authentication failed"
    end
    return user

  end
end
