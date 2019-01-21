class Api::V1::CharactersController < ApplicationController
  def get
    if !params[:fromUpdate].blank? then
      @characters = Character.where("to_date(up_date, 'YYYYMMDD') >= to_date(?, 'YYYYMMDD')", params[:fromUpdate])
    else
      @characters = Character.all
    end
    @characters = @characters.map do |character|
      {
        No: character.id,
        PageNo: character.PageNo,
        type: character.characterType,
        name: character.name,
        replaceName: character.replaceName,
        image_name: character.image_name,
        firstScore: character.firstScore,
        upScore: character.upScore,
        maxScore: character.maxScore,
        SL1: character.SL1,
        SL2: character.SL2,
        SL3: character.SL3,
        SL4: character.SL4,
        SL5: character.SL5,
        SL6: character.SL6,
        SLFull: character.SLFull,
        skillDetail: character.skillDetail,
        mustNumChangeFlg: character.mustNumChangeFlg,
        mustNum1: character.mustNum1,
        mustNum2: character.mustNum2,
        mustNum3: character.mustNum3,
        mustNum4: character.mustNum4,
        mustNum5: character.mustNum5,
        mustNum6: character.mustNum6,
        up_date: character.up_date
      }
    end
    render json: @characters
  end

  def getMaxUpdate
    @maxUpdateOfCharacter = Character.maximum('up_date')
    render json: @maxUpdateOfCharacter
  end

end
