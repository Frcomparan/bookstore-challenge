class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.datetime :release_date

      t.timestamps
    end
  end
end
