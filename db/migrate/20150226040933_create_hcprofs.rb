class CreateHcprofs < ActiveRecord::Migration
  def change
    create_table :hcprofs do |t|
      t.belongs_to :user, index: true
      t.string :name
      t.string :title
      t.integer :phoneNumber
      t.string :email
      t.string :shiftHours
      t.string :location
      t.text :notes

      t.timestamps null: false
    end
    add_index :hcprofs, :email, unique: true
    add_foreign_key :hcprofs, :users
  end
end
