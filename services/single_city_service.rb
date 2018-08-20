require "httparty"
require "json"

class SingleCityService
  attr_accessor :single_city_results
  include HTTParty



  def get_single_city(city,api_key)

    @single_city_results = JSON.parse(HTTParty.get("http://api.openweathermap.org/data/2.5/weather?q=#{city}&APPID=#{api_key}").body)
  end

  def get_coord_longitude_float
    @single_city_results["coord"]["lon"]
  end
  def get_coord_latitude_float
    @single_city_results["coord"]["lat"]
  end

  def get_status
    @single_city_results["cod"]
  end

  def get_weather_hash
    @single_city_results["weather"][0]
  end
  def get_weather_id_int
    @single_city_results["weather"][0]["id"]
  end
  def get_weather_desc
    @single_city_results["weather"][0]["description"]
  end
  def get_weather_main
    @single_city_results["weather"][0]["main"]
  end
  def get_weather_icon
    @single_city_results["weather"][0]["icon"]
  end
  def get_base
    @single_city_results["base"]["station"]
  end
  def get_main_temp
    @single_city_results["main"]["temp"]
  end
  def get_main_pressure
    @single_city_results["main"]["pressure"]
  end
  def get_main_humidity
    @single_city_results["main"]["humidity"]
  end
  def get_main_temp_min
    @single_city_results["main"]["temp_min"]
  end
  def get_main_temp_max
    @single_city_results["main"]["temp_max"]
  end
  def get_visibility
    @single_city_results["visibility"]
  end

  def get_wind_speed
    @single_city_results["wind"]["speed"]
  end
  def get_wind_deg
    @single_city_results["wind"]["deg"]
  end
  def get_clouds
    @single_city_results["clouds"]["all"]
  end
  def get_dt
    @single_city_results["dt"]
  end
  def get_sys_type
    @single_city_results["sys"]["type"]
  end

  def get_sys_id
    @single_city_results["sys"]["id"]
  end
  def get_sys_message
    @single_city_results["sys"]["message"]
  end
  def get_sys_country
    @single_city_results["sys"]["country"]
  end
  def get_sys_sunrise
    @single_city_results["sys"]["sunrise"]
  end
  def get_sys_sunset
    @single_city_results["sys"]["sunset"]
  end
  def get_id
    @single_city_results["id"]
  end
  def get_name
    @single_city_results["name"]
  end
  def get_cod
    @single_city_results["cod"]
  end







  #  "dt"=>1534772700, "sys"=>{"type"=>1, "id"=>1282, "message"=>0.0024, "country"=>"US", "sunrise"=>1534759068, "sunset"=>1534808367}, "id"=>5089178, "name"=>"Manchester", "cod"=>200}





end
