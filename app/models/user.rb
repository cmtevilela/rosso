class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :cash_flows

  # validates :name, presence: true
  # validates :email, presence: true, uniqueness: true
  # validates :password, presence: true, length: { minimum: 6 }, confirmation: true

  # after_create :send_admin_mail

  enum role: [:standard, :admin]

  def active_for_authentication? 
      super && approved? 
    end 

  def inactive_message 
    if !approved? 
      :not_approved 
    else 
      super # Use whatever other message 
    end 
  end

  # def send_admin_mail
  #   UserMailer.new_user_waiting_for_approval(self).deliver
  # end

  def self.send_reset_password_instructions(attributes={})
    recoverable = find_or_initialize_with_errors(reset_password_keys, attributes, :not_found)
    if !recoverable.approved?
      recoverable.errors[:base] << I18n.t("devise.failure.not_approved")
    elsif recoverable.persisted?
      recoverable.send_reset_password_instructions
    end
    recoverable
  end
end