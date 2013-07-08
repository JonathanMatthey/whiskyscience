class User < ActiveRecord::Base
  has_many :tasting_notes

  validates :email, presence: true

  def display_name
    (first_name || "") + " " + (last_name || "")
  end

end
