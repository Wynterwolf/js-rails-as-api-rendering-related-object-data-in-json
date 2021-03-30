class SightingsController < ApplicationController
    def show
        sighting = Sighting.find_by(id: params[:id])
        # all details
        # render json: sighting

        # some details
        # render json: { id: sighting.id, bird: sighting.bird, location: sighting.location }

        # using include
        # render json: sighting, include: [:bird, :location]

        if sighting
        
        # to json method
            render json: sightings.to_json(include: [:bird, :location])

        else
            render json: { message: 'No sighting found with that id' }
    end
end

    def index
        sightings = Sighting.all
        # render json: sightings, include: [:bird, :location]

        # to json method
        render json: sightings.to_json(include: [:bird, :location])
    end 
end
