class CreateFeatures < ActiveRecord::Migration[5.2]
  def change
    create_table :features, id: false do |t|
     t.column :id, 'int PRIMARY KEY' 
      t.integer :no
      t.string :type
      t.string :content
      t.integer :contentSortNo
      t.string :up_date
      t.boolean :deleteFlg

      t.timestamps
    end
  end
end
