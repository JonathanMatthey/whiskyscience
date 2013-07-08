class FlavourWheel < ActiveRecord::Base
  belongs_to :tasting_note, inverse_of: :flavour_wheel

end
