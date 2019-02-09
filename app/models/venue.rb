# == Schema Information
#
# Table name: venues
#
#  id          :integer          not null, primary key
#  description :string
#  name        :string
#  phone       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Venue < ApplicationRecord
  has_one_attached :image
  has_many :activities, dependent: :destroy


  scope :by_name, -> { order(:name) }

  
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :phone, presence: true
  
  after_create :save_categories

  def categories=(value)
    @categories = value
  end

  private

  def save_categories
    @categories.each do |category_id|
      HasCategory.create(category_id: category_id,venue_id: self.id)
    end  
  end  
  
  
end
