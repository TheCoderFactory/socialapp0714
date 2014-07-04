class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :github_username
      t.references :user, index: true
      t.string :website
      t.string :twitter_handle
      t.string :first_name
      t.string :last_name
      t.text :bio
      t.date :date_of_birth
      t.string :gender
      t.string :profile_pic

      t.timestamps
    end
  end
end
