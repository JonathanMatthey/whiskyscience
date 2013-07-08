class Whisky < ActiveRecord::Base
  belongs_to :producer, inverse_of: :whiskies
  has_many :tasting_notes

  def display_name
    producer.name + " " + years
  end

  def years
    age.to_s + "yrs"
  end
end
