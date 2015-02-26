class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.belongs_to :hcprof, index: true
      t.belongs_to :user, index: true
      t.string :name
      t.string :email
      t.integer :age
      t.string :gender
      t.string :phoneNumber
      t.string :emergencyContactName
      t.string :emergencyContactNum
      t.text :specialNotes

      t.timestamps null: false
    end
    add_index :patients, :email, unique: true
    add_foreign_key :patients, :hcprofs
    add_foreign_key :patients, :users
  end
end
