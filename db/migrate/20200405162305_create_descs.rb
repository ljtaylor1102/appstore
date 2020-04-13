class CreateDescs < ActiveRecord::Migration[5.2]
  def change
    create_table :descs do |t|
      t.integer :appdescid
      t.integer :rating_count
      t.integer :user_rating
      t.string :age_rec
      t.string :desc

      t.timestamps
    end
  end
end
