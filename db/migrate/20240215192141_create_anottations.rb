class CreateAnottations < ActiveRecord::Migration[7.1]
  def change
    create_table :anottations do |t|
      t.text :body

      t.timestamps
    end
  end
end
