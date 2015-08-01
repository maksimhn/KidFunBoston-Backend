#
class AddDetailColumnsToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :detail_url, :string
    add_column :activities, :detail_url_text, :string
  end
end
