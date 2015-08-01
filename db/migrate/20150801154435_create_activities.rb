#
class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :picture_url, null: false
      t.string :caption, null: false
      t.string :cost, null: false
      t.integer :min_age, null: false
      t.integer :max_age, null: false
      t.string :venue, null: false
      t.string :activity_level, null: false
      t.boolean :holiday_activity, null: false
      t.text :description, null: false
      t.string :venue_url, null: false
      t.string :detail_picture_url, null: false
      t.string :int_page_header
      t.string :detail_page_header
    end
  end
end
