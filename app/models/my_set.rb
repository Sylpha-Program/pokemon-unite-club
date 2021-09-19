class MySet < ApplicationRecord

  belongs_to :user
  belongs_to :pokemon
  belongs_to :r_skill, class_name: 'Skill', optional: true
  belongs_to :zr_skill, class_name: 'Skill', optional: true
  belongs_to :battle_item, optional: true
  belongs_to :tool_1, class_name: 'Tool', optional: true
  belongs_to :tool_2, class_name: 'Tool', optional: true
  belongs_to :tool_3, class_name: 'Tool', optional: true

end
