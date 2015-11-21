class Room < ActiveRecord::Base
  belongs_to :user
  has_many :photos, dependent: :destroy

  validates :home_type, presence: true
  validates :room_type, presence: true
  validates :accommodate, presence: true
  validates :bed_room, presence: true
  validates :bath_room, presence: true
  validates :listing_name, presence: true, length: {maximum: 60}
  validates :summary, presence: true, length: {maximum: 500}
  validates :address, presence: true
end
