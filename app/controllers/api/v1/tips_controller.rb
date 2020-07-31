# frozen_string_literal: true

class Api::V1::TipsController < ApplicationController
  def create
    # @tip = Tip.new(tip_params)
    debugger
  end

  private

  def tip_params
    params.require(:tip).permit(:category_id, :title, :description, :code_snippet, :user_id, :more_info)
  end
end
