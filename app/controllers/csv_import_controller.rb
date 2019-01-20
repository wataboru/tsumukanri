require 'csv'

class CsvImportController < ApplicationController

  def index 
  end

  def importCharacter
    registered_count = import_characters
    redirect_to CSVImport_path, notice: "Characterを#{registered_count}件登録しました"
  end


  def imporFeature
    registered_count = import_Features
    redirect_to CSVImport_path, notice: "Featureを#{registered_count}件登録しました"
  end

  private

  def import_characters
      # 登録処理前のレコード数
      current_character_count = ::Character.count
      characters = []
      # windowsで作られたファイルに対応するので、encoding: "SJIS"を付けている
      #CSV.foreach(params[:characters_file].path, headers: true, encoding: "SJIS") do |row|
      CSV.foreach(params[:characters_file].path, headers: true) do |row|
        characters << ::Character.new(
          {
            id: row["name"],
            PageNo: row["PageNo"],
            type: row["type"],
            name: row["name"],
            replaceName: row["replaceName"],
            image_name: row["image_name"],
            firstScore: row["firstScore"],
            upScore: row["upScore"],
            maxScore: row["maxScore"],
            SL1: row["SL1"],
            SL2: row["SL2"],
            SL3: row["SL3"],
            SL4: row["SL4"],
            SL5: row["SL5"],
            SL6: row["SL6"],
            SLFull: row["SLFull"],
            skillDetail: row["skillDetail"],
            mustNumChangeFlg: row["mustNumChangeFlg"],
            mustNum1: row["mustNum1"],
            mustNum2: row["mustNum2"],
            mustNum3: row["mustNum3"],
            mustNum4: row["mustNum4"],
            mustNum5: row["mustNum5"],
            mustNum6: row["mustNum6"],
            up_date: row["up_date"]
          }
      )
      end
      # importメソッドでバルクインサートできる
      ::Character.import(characters)
      # 何レコード登録できたかを返す
      ::Character.count - current_email_count
  end

end
