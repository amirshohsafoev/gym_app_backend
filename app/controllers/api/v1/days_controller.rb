class Api::V1::DaysController < ApplicationController
  skip_before_action :authorized, only: [:index]
end
