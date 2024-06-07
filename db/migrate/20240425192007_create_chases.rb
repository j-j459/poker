class CreateChases < ActiveRecord::Migration[6.1]
  def change
    create_table :chases do |t|
      t.text :body
      t.string :ace
      t.string :king
      t.float :queen
      t.float :jack
      t.float :ten
      t.float :nine
      t.float :eight
      t.float :seven
      t.string :six
      t.string :float

      t.timestamps
    end

  end
end
