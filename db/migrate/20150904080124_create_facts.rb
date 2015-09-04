class CreateFacts < ActiveRecord::Migration
  def change
    create_table :facts do |t|
      t.text :factfie

      t.timestamps null: false
    end
  end
end
