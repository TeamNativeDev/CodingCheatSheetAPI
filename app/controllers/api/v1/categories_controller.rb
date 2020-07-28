# frozen_string_literal: true

class Api::V1::CategoriesController < ApplicationController
  def index
    categories = Category.all
    render json: categories
  end

  def show
    category = Category.find(params[:id])

    if category
      render json: category.tips
    else
      render json: { error: 'category not found', status: 404 }
    end
  end
end
