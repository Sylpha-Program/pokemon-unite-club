class Skill < ApplicationRecord

  belongs_to :pokemon

  enum button: { 'Rボタン': 0, 'ZRボタン': 1 }
  enum attack_category: { '攻撃': 0, '特攻': 1, '変化': 2 }

  has_many :scores

end
