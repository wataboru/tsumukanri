class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters, id: false do |t|
     t.column :id, 'int PRIMARY KEY' 
      t.integer :PageNo
      t.string :Type
      t.string :name
      t.string :replacename
      t.string :image_name
      t.integer :firstScore
      t.integer :upScore
      t.integer :maxScore
      t.integer :SL1
      t.integer :SL2
      t.integer :SL3
      t.integer :SL4
      t.integer :SL5
      t.integer :SL6
      t.integer :SLFull
      t.string :skillDetail
      t.boolean :mustNumChangeFlg
      t.integer :musNum1
      t.integer :mustNum2
      t.integer :mustNum3
      t.integer :mustNum4
      t.integer :mustNum5
      t.integer :mustNum6
      t.string :up_date

      t.timestamps
    end
  end
end
