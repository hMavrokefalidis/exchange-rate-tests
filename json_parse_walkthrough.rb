require 'json'

class ParseJSON
  attr_accessor :json_file

  def initialize(json_file)
    @json_file = JSON.parse(File.read(json_file))
  end

  def get_base_value
    @json_file["base"]
  end

  def get_date_value
    @json_file["date"]
  end

  def get_AUD_value
    @json_file["rates"]["AUD"]
  end

  def get_number_of_currencies
    @json_file["rates"].length
  end
end

json = ParseJSON.new("exchange_rates.json")

# p json.json_file
