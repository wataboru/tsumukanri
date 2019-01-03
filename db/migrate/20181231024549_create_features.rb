class CreateFeatures < ActiveRecord::Migration[5.2]
  def change
    create_table :features do |t|
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
