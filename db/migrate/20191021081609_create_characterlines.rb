class CreateCharacterlines < ActiveRecord::Migration[6.0]
  def change
    create_table :characterlines do |t|
      t.string :character
      t.text :line
      t.integer :project_id

      t.timestamps
    end
  end
end
