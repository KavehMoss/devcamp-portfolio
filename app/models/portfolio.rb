class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.angular
    where(substitle: "Angular")
  end

  scope :ruby_on_rails_portfolio_items, -> { where(substitle: "Ruby on Rails")}
end
