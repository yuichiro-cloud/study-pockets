class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.references :user, null: false, foreign_key:true
      t.references :study, null: false, foreign_key:true
      t.timestamps
      t.index [:user_id, :study_id], unique: true #同じ投稿はできないようにする
    end
  end
end
