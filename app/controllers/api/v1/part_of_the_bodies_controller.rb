class Api::V1::PartOfTheBodiesController < ApplicationController
  skip_before_action :authorized, only: [:index]
  def index
    @parts = PartOfTheBody.all
    render json: @parts
  end
  # def create
  #   @part = PartOfTheBody.create(part_of_the_body_params)
  #   render json: @part, status: :accepted
  # end
  # private
  # def part_of_the_body_params
  #   params.permit(:body_name)
  # end
end
