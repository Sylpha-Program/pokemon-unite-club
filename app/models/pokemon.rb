class Pokemon < ApplicationRecord

  enum attack_type: { '近接': 0, '遠隔': 1 }
  enum role: { 'アタック型': 0, 'ディフェンス型': 1, 'スピード型': 2, 'バランス型': 3, 'サポート型': 4 }
  enum atack_category: { '攻撃': 0, '特攻': 1 }

end
