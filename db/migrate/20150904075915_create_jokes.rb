class CreateJokes < ActiveRecord::Migration
  def change
    create_table :jokes do |t|
      t.text :jokefie

      t.timestamps null: false
    end
  end
end
