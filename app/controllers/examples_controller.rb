class ExamplesController < ApplicationController
  def show
    @example = Example.find_by!(id: params[:id])
  end
end
