class ChangeColumnOfShowsup < ActiveRecord::Migration
  def change
    change_column :showsups, :starts_at, :date
  end
end
