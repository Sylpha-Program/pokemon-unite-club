class ChangeDataCoolTimeToSkills < ActiveRecord::Migration[5.2]
  def change
    change_column :skills, :cool_time, :double
  end
end
