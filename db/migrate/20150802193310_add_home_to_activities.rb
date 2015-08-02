#
class AddHomeToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :home, :boolean
  end
end
