class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.angular
    where(substitle: "Angular")
  end

  scope :ruby_on_rails_portfolio_items, -> { where(substitle: "Ruby on Rails")}

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= "https://via.placeholder.com/650x400"
    self.thumb_image ||= "https://via.placeholder.com/350x200"
  end
end
