class CreateDogOwner < ActiveRecord::Migration
  def change
    create_table :dog_owners do |t|
      t.integer :dog_id, null: false
      t.integer :owner_id, null: false

      t.timestamps
    end
  end
end
