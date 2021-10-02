require 'uri'
require 'net/http'
require 'json'

# URI = Uniform Resource identifier 
def weather_response
  url = URI("http://api.openweathermap.org/data/2.5/weather?q=Vi%C3%B1a%20del%20mar&appid=9484ee17fae08ece349011f24f3ccc6b")
  # Crear un cliente http
  http = Net::HTTP.new(url.host, url.port)
  # Generar un solicitud
  request = Net::HTTP::Get.new(url)
  # Obtener la respuesta
  response = http.request(request)
  JSON.parse(response.read_body)
end