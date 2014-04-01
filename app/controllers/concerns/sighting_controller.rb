class SightingController <ApplicationController
  def index
    @sighting = Sighting.all
    render('species/index.html.erb')
  end

  def new
    @sighting = Sighting.new
    render('species/new.html.erb')
  end

  def create
    @sighting = Sighting.new(:date => params[:date]
                             :location => params[:location])
  end

  def show
    @sighting = Sighting.find(params[:id])
    render('species/show.html.erb')
  end

end
