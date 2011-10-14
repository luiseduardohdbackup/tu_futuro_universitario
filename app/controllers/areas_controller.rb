class AreasController < ApplicationController
  def index
    @areas = Area.joins(:congresses).group('areas.name')
  end
end
