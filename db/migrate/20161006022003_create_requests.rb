class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.references :user_profile, foreign_key: true
      t.references :ngo_profile, foreign_key: true
      t.string :title

      t.timestamps
    end
  end
end
