class Api::V1::DaysBodyController < ApplicationController
  skip_before_action :authorized, only: [:index]
end
