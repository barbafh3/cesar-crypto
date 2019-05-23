require 'json'
require 'digest'

file = File.read("base_data.json")
data = JSON.parse(file)
mod = data['numero_casas']
cifrado = data['cifrado']

def cifra_cesar(texto, mod)
    texto.gsub(/[a-z]/i) { |c| (c.ord - mod).chr }
end

decifrado = cifra_cesar(cifrado, mod)
sha1 = Digest::SHA1.hexdigest(decifrado)
data['decifrado'] = decifrado
data['resumo_criptografico'] = sha1

File.open("answer.json", "w") do |file|
    file.puts(JSON.generate(data))
end