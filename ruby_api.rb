#!/usr/bin/env ruby
require 'net/http'
require 'json'

url = 'https://api.coindesk.com/v1/bpi/currentprice.json'
uri = URI(url)
response = Net::HTTP.get(uri)
response = JSON.parse(response)
puts response["bpi"]["USD"]["rate"]
