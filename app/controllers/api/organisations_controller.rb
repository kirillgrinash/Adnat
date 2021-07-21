class Api::OrganisationsController < ApplicationController
  def index
    @organisations = Organisation.all
    render "index.json.jb"
  end

  def create
    @organisation = Organisation.new(
      name: params[:name],
      hourly_rate: params[:hourly_rate],
    )
    @organisation.save
    render "show.json.jb"
  end

  def show
    @organisation = Organisation.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @organisation = Organisation.find_by(id: params[:id])
    @organisation.name = params[:name] || @organisation.name
    @organisation.hourly_rate = params[:hourly_rate] || @organisation.hourly_rate
    @organisation.save
    render "show.json.jb"
  end
end
