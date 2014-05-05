# encoding: utf-8

module BWAPI
  class Client
    # Location module for locations endpoints
    module Locations
      # Request the information for a given location code
      #
      # @return [Hashie::Mash] Information about the location
      def locations(location_code)
        get "locations/#{location_code}"
      end

      # Locations a location name with candidates
      #
      # @param opts [String] prefix that the location starts with
      # @option opts [Array] a list of location types to return
      # @option opts [Integer] page number of results to retrieve
      # @option opts [Integer] pageSize of the results to retrieve
      # @return [Hashie::Mash] The list of matching locations
      def locations(opts = {})
        post 'locations', opts
      end
    end
  end
end