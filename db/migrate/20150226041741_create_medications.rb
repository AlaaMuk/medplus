class CreateMedications < ActiveRecord::Migration
  def change
    create_table :medications do |t|
      t.belongs_to :user, index: true
      t.belongs_to :patient, index: true
      t.belongs_to :hcprof, index: true
      t.string :name
      t.text :description
      t.integer :quantityMed
      t.string :units
      t.integer :dosage
      t.string :units
      t.boolean :taken
      t.datetime :startDate
      t.datetime :endDate
      t.text :specialNotes

      t.timestamps null: false
    end
    add_foreign_key :medications, :users
    add_foreign_key :medications, :patients
    add_foreign_key :medications, :hcprofs
  end
end
