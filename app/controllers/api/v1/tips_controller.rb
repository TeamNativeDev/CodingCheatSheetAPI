# frozen_string_literal: true

class Api::V1::TipsController < ApplicationController
  def create
    @tip = Tip.new(tip_params)
    if @tip.save 
      render json: {message: 'ok', data: TipSerializer.new(@tip)}
    else
      render json: {message: 'notOk'}
    end
    # debugheyger
  end

  private

  def tip_params
    params.require(:tip).permit(:category_id, :title, :description, :code_snippet, :user_id, :more_info)
  end
end
