class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :rank
      t.references :user, foreign_key: true
      t.integer :score
      t.timestamps
    end
  end
end
