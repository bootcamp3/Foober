class CreateChefs < ActiveRecord::Migration
  def change
    create_table :chefs do |t|

      t.string :name

      t.timestamps null: false
    end
  end
end
