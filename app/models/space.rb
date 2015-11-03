class Space < ActiveRecord::Base

  CATEGORIES_EQUIPMENTS = ["Internet","Kitchen", "Projector", "Board", "Furniture"]
  TYPE_OF_SPACE = ["Standing","Parliament", "Banquet", "U-Shape", "Theatre"]

  belongs_to :user
  has_many :reservations, dependent: :destroy

  validates :title, presence: true, length: { maximum: 20 }
  validates :address, presence: true, uniqueness: true
  validates :availability, inclusion: { in: [true, false]}
  validates :price_per_day, presence: true
  validates :nb_of_pers, presence: true
  # validates :description, presence: true
  validates :equipements, presence: true, inclusion:{ in: CATEGORIES_EQUIPMENTS }
  validates :type_of_space, presence: true, inclusion:{ in: TYPE_OF_SPACE }

  has_attached_file :picture,
    styles: { medium: "300x300>", thumb: "100x100>" }

  validates_attachment_content_type :picture,
    content_type: /\Aimage\/.*\z/
end
