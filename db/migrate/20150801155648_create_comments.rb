#
class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.integer :rating, null: false
      t.references :user, index: true, foreign_key: true
      t.references :activity, index: true, foreign_key: true
    end
  end
end
