require 'httparty'
require 'json'
require_relative "services/single_city_service.rb"

class WeatherAPI

  def single_city_service
    SingleCityService.new
  end

  # def multiple_city_service
  #   MultiplCityService.new
  # end

end
# 
# x = WeatherAPI.new.single_city_service
# x.get_single_city("London", "90d618c8edbca510f62bc39b88f1d5fe")
# puts x.single_city_results
