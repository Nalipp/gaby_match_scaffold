class Student < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
  validates :password, presence: true, length: {minimum: 8, maximum: 25}
  validates :student_name, presence: true, length: {minimum: 3, maximum: 100}
  validates :description, presence: true, length: {minimum: 20, maximum: 500}
  validate  :picture_size
  default_scope -> {order(updated_at: :desc) }

  private
      def picture_size
        if picture.size > 5.megabytes
          errors.add(:picture, "should be less than 5MB")
        end
      end

  before_save { self.email = email.downcase }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 105 },
                                    uniqueness: { case_sensitive: false },
                                    format: { with: VALID_EMAIL_REGEX }

end
