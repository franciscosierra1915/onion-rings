class HomeController < ApplicationController

    def index
        @onion_rings = OnionRing.all
    end

end
