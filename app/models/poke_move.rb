# == Schema Information
#
# Table name: poke_moves
#
#  id         :bigint           not null, primary key
#  pokemon_id :bigint           not null
#  move_id    :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class PokeMove < ApplicationRecord
  validates :pokemon_id, presence: true, uniqueness: { scope: :move_id }
  validates :move_id, presence: true

  belongs_to :pokemon,
    foreign_key: :pokemon_id,
    class_name: :Pokemon
  
  belongs_to :move,
    foreign_key: :move_id,
    class_name: :Move
end
