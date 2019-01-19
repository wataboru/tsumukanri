class Api::V1::FeaturesController < ApplicationController
  def get
    @features = Feature.all
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
