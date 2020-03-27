class CreateStudiesTags < ActiveRecord::Migration[5.2]
  def change
    create_table :studies_tags do |t|
      t.references :study,foreign_key:true
      t.references :tag, foreign_key:true
      t.timestamps
    end
  end
end
