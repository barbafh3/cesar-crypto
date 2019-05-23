require 'httparty'
require 'json'

url = "https://api.codenation.dev/v1/challenge/dev-ps/generate-data?token=d10b0054622b0e07a69388af7d302522a38214d9"
response = HTTParty.get(url)
File.open("base_data.json", "w") do |file|
    file.puts(response.body)
end