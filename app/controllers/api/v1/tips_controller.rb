# frozen_string_literal: true

class Api::V1::TipsController < ApplicationController
  def create
    @tip = current_user.tips.build(tip_params)
    if @tip.save
      render json: { message: 'Tip Create Successfully', data: TipSerializer.new(@tip), status: :accepted }
    else
      render json: { message: 'Unable to Save the Tip', error: true, status: :bad_request }
    end
    # debugheyger
  end

  private

  def tip_params
    params.require(:tip).permit(:category_id, :title, :description, :code_snippet, :more_info)
  end
end
