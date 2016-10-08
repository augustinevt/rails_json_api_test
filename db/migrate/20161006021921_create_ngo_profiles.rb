class CreateNgoProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :ngo_profiles do |t|
      t.string :title

      t.timestamps
    end
  end
end
