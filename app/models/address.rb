class Address < ActiveRecord::Base
  has_many :data, dependent: :destroy

  validates :address, :presence => true

end
