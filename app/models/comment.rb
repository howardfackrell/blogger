class Comment < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection

  validates :author, presence: true

  validates :body, length: {minimum: 5}

  belongs_to :article
  # attr_accessible :author, :body
end
