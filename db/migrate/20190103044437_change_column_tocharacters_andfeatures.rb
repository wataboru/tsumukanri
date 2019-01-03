class ChangeColumnTocharactersAndfeatures < ActiveRecord::Migration[5.2]
  def change
    rename_column :characters, :Type, :characterType
    rename_column :characters, :replacename, :replaceName
    rename_column :characters, :musNum1, :mustNum1
    rename_column :features, :type, :featureType
    change_column :characters, :skillDetail, :text
  end
end
