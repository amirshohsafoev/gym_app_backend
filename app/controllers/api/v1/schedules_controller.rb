class Api::V1::SchedulesController < ApplicationController
  skip_before_action :authorized, only: [:index]
end
