# == Schema Information
#
# Table name: rooms
#
#  id           :integer          not null, primary key
#  room_num     :integer
#  status       :boolean
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  price        :decimal(, )
#  room_type_id :integer
#  view_type_id :integer
#


class Room < ActiveRecord::Base
  attr_accessible :room_num, :price, :room_type_id, :view_type_id, :num_of_guess,:deleted

  belongs_to :room_type
  belongs_to :view_type
  has_many :room_reservations

  before_create :set_deleted

  # to make verify those criteria upon saves/updates
  validates(:room_num, presence:true)
  validates(:room_type_id, presence:true)
  validates(:num_of_guess, presence:true)
  validates(:view_type_id,presence:true)

  private
    def set_deleted
      self.deleted = false
      nil
    end
end
