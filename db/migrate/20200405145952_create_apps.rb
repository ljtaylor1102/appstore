class CreateApps < ActiveRecord::Migration[5.2]
  def change
    create_table :apps do |t|
      t.integer :app_ID
      t.string :app_name
      t.string :currency
      t.decimal :price
      t.string :version
      t.string :genre

      t.timestamps
    end
  end
end
