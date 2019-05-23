require 'rest_client'
require 'json'

url = "https://api.codenation.dev/v1/challenge/dev-ps/submit-solution?token=d10b0054622b0e07a69388af7d302522a38214d9"
data = File.read("answer.json")
file = File.new("answer.json")

puts "Response: "
puts RestClient.post(url, :multipart => true, :answer => file)
