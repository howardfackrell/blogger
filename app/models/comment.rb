class Comment < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection
  belongs_to :article
  # attr_accessible :author, :body
end
