class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
      t.references :game, null: false, foreign_key: true
      t.references :championship, null: false, foreign_key: true
      t.boolean :ended, default: false

      t.timestamps
    end
  end
end
