class Photo < ActiveRecord::Base
  belongs_to :user
  belongs_to :offer

  has_attached_file :image, styles: { small: '75x75#', medium: '150x150#', large: '300x300#' }
end
