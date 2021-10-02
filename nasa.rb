require 'uri'
require 'net/http'
require 'json' #Para poder utilizar JSON.parse

#JSON es un formato para almacenar texto que utiliza llaves como los hashes.

def nasa_response
uri = URI('https://api.nasa.gov/planetary/apod?api_key=dDJzt00oV08jaCGQpJyJ3aBYemoap9mdRINw8JOV&date=2021-09-27')
  Net::HTTP.start(uri.host, uri.port,
    :use_ssl => uri.scheme == 'https') do |http|
    request = Net::HTTP::Get.new uri
    response = http.request request # Net::HTTPResponse object
    JSON.parse(response.read_body) # Pasa el string que nos entrega la API a hashes.
  end
end