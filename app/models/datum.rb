class Datum < ActiveRecord::Base
  validates :category, :presence => true

  belongs_to :address
end
