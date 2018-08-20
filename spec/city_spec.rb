 describe WeatherAPI do
  context 'requesting weather information on a single city' do

#get weather for single city
    before(:all) do
      @api_key = ENV["WEATHER_API_KEY"]
      @weatherAPI = WeatherAPI.new.single_city_service
      @weatherAPI.get_single_city('Manchester', @api_key )
    end

    it "should have a longitude float " do
      expect(@weatherAPI.get_coord_longitude_float).to be_a_kind_of(Numeric)
    end
    it "should have a latitude float " do
      expect(@weatherAPI.get_coord_latitude_float).to be_a_kind_of(Numeric)
    end

    it "should respond with status message of 200" do
      expect(@weatherAPI.get_status).to eq(200)
      puts @weatherAPI.single_city_results
    end

    it "should have a weather hash " do
      expect(@weatherAPI.get_weather_hash).to be_a(Hash)
    end

    it "should return weather id as a integer" do
      expect(@weatherAPI.get_weather_id_int).to be_a(Integer)
    end
    it "should return weather description as a string" do
      expect(@weatherAPI.get_weather_desc).to be_a(String)
    end
    it "should return main weather as a string" do
      expect(@weatherAPI.get_weather_main).to be_a(String)
    end
    it "should return main weather as a string" do
      expect(@weatherAPI.get_weather_icon).to be_a(String)
    end
    it "should return main weather as a string" do
      expect(@weatherAPI.get_base).to be_a(String)
    end
    it "should return base station as a numeric value" do
      expect(@weatherAPI.get_base).to be_a_kind_of(String)
    end

    it "should return main temp as a numeric" do
      expect(@weatherAPI.get_main_temp).to be_a_kind_of(Numeric)
    end
    it "should return main pressure as a numeric" do
      expect(@weatherAPI.get_main_pressure).to be_a_kind_of(Numeric)
    end
    it "should return main humidity as a numeric" do
      expect(@weatherAPI.get_main_humidity).to be_a_kind_of(Numeric)
    end
    it "should return get main temp min as a numeric" do
      expect(@weatherAPI.get_main_temp_min).to be_a_kind_of(Numeric)
    end
    it "should return get main temp min as a numeric" do
      expect(@weatherAPI.get_main_temp_min).to be_a_kind_of(Numeric)
    end
    it "should return visibility as a integer" do
      expect(@weatherAPI.get_visibility).to be_a_kind_of(Integer)
    end
    it "should return wind speed as a numeric" do
      expect(@weatherAPI.get_visibility).to be_a_kind_of(Numeric)
    end

    it "should return dt as a numeric" do
      expect(@weatherAPI.get_dt).to be_a_kind_of(Integer)
    end
    it "should return sys type as a Integer" do
      expect(@weatherAPI.get_sys_type).to be_a_kind_of(Integer)
    end
    it "should return sys id as a Integer" do
      expect(@weatherAPI.get_sys_id).to be_a_kind_of(Integer)
    end
    it "should return sys message as a float" do
      expect(@weatherAPI.get_sys_message).to be_a_kind_of(Float)
    end
    it "should return sys country as a String" do
      expect(@weatherAPI.get_sys_country).to be_a_kind_of(String)
    end

    it "should return sys sunrise as a Integer" do
      expect(@weatherAPI.get_sys_sunrise).to be_a_kind_of(Integer)
    end
    it "should return sys sunset as a Integer" do
      expect(@weatherAPI.get_sys_sunset).to be_a_kind_of(Integer)
    end
    it "should return id  as an Integer" do
      expect(@weatherAPI.get_id).to be_a_kind_of(Integer)
    end
    it "should return name  as an String" do
      expect(@weatherAPI.get_name).to be_a_kind_of(String)
    end
    it "should return cod  as an integer" do
      expect(@weatherAPI.get_cod).to be_a_kind_of(Integer)
    end
    















  end

end
