# frozen_string_literal: true

class HomesController < ApplicationController
  before_action :redirect_to_dashboard_if_signed_in

  def show
    render
  end

end
