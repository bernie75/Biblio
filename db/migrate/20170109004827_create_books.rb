class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.text :resume
      t.string :author
      t.boolean :available, default: true

      t.timestamps
    end
  end
end
