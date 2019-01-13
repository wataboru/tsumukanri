require 'csv'

class CsvImportController < ApplicationController

  def index 
  end

  def importCharacter
    registered_count = import_characters
    redirect_to CSVImport_path, notice: "#{registered_count}件登録しました"
  end

  private

  def import_characters
      # 登録処理前のレコード数
      current_character_count = ::Character.count
      characters = []
      # windowsで作られたファイルに対応するので、encoding: "SJIS"を付けている
      CSV.foreach(params[:characters_file].path, headers: true, encoding: "SJIS") do |row|
        characters << ::Character.new({ name: row["name"], email: row["email"] })
      end
      # importメソッドでバルクインサートできる
      ::Character.import(characters)
      # 何レコード登録できたかを返す
      ::Character.count - current_email_count
  end

end
