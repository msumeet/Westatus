class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.text :quotefie
      t.text :author

      t.timestamps null: false
    end
  end
end
