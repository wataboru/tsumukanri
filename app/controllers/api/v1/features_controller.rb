class Api::V1::FeaturesController < ApplicationController
  def get
    if !params[:fromUpdate].blank? then
      @features = Feature.where("to_date(up_date, 'YYYYMMDD') >= to_date(?, 'YYYYMMDD')", params[:fromUpdate])
    else
      @features = Feature.all
    end
    @features = @features.map do | feature |
      {
        row: feature.id,
        no: feature.no,
        type: feature.featureType,
        content: feature.content,
        contentSortNo: feature.contentSortNo,
        up_date: feature.up_date,
        deleteFlg: feature.deleteFlg
      }
    end
    render json: @features
  end

  def getMaxUpdate
    @maxUpdateOfFeature = Feature.maximum('up_date')
    render json: @maxUpdateOfFeature
  end

end
