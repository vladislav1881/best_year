class Offer < ActiveRecord::Base
  belongs_to :city

  has_many :photos
  accepts_nested_attributes_for :photos, reject_if: proc { |attrs| attrs[:image].blank? }

end
