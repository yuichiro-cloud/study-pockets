class CreateStudies < ActiveRecord::Migration[5.2]
  def change
    create_table :studies do |t|
      t.string :title
      t.text :content
      t.references :user, null: false, foreign_key:true
      
      # t.references :user, null: false, foreign_key:true #これはただのメモ
      # t.string :name, null:false, default: "", unique: true #これはただのメモ
      t.timestamps
    end
  end
end
