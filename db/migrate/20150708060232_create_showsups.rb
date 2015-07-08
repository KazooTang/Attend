class CreateShowsups < ActiveRecord::Migration
  def change
    create_table :showsups do |t|
      t.datetime :starts_at
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
