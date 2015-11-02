class Teacher < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
  validates :password, presence: true, length: {minimum: 8, maximum: 25}
  validates :name, presence: true, length: {minimum: 3, maximum: 100}
  validates :skill_1, presence: true, length: {minimum: 5, maximum: 100}
  validates :skill_2, presence: true, length: {minimum: 5, maximum: 100}
  validates :skill_3, length: {minimum: 5, maximum: 100}
  validates :description, presence: true, length: {minimum: 20, maximum: 500}
  validates :price, presence: true, length: {maximum: 15}
  validates :availability, presence: true, length: {minimum: 5, maximum: 100}
  validate  :picture_size
  default_scope -> {order(updated_at: :desc) }

  private
      def picture_size
        if picture.size > 5.megabytes
          errors.add(:picture, "should be less than 5MB")
        end
      end

  before_save { self.teacher_email = teacher_email.downcase }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :teacher_email, presence: true, length: { maximum: 105 },
                                    uniqueness: { case_sensitive: false },
                                    format: { with: VALID_EMAIL_REGEX }

end
