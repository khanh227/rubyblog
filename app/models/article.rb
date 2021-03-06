class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }
  self.per_page = 25

    mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.
end
