class TastingNote < ActiveRecord::Base
  belongs_to :user
  belongs_to :whisky
  has_one :flavour_wheel
end
