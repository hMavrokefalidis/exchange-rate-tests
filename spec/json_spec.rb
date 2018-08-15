require 'spec_helper.rb'

describe 'executing test regarding exchange rates compared to euro' do

  before(:each) do
    @currency = ParseJSON.new("exchange_rates.json")
  end
  it "should have a base of EUR" do
    expect(@currency.get_base_value).to eq("EUR")
  end

  it "should be of the date 2017-07-26" do
    expect(@currency.get_date_value).to eq("2017-07-26")
  end

  it "should check if AUD to be less than the value of Euro" do
    expect(@currency.get_AUD_value).to be > 1
  end

  it "Checking if there are 31 currencies being tested" do
    expect(@currency.get_number_of_currencies).to eq(31)
  end

end
