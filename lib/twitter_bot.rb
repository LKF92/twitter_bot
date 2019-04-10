# ligne très importante qui appelle la gem.
require 'twitter'

# n'oublie pas les lignes pour Dotenv ici…
# ligne qui permet de tweeter sur ton compte

require 'dotenv' # Appelle la gem Dotenv

Dotenv.load('./.env') # Ceci appelle le fichier .env (situé dans le même dossier que le programme Ruby) grâce à la gem Dotenv, et importe toutes les données enregistrées dans un hash ENV

# Il est ensuite très facile d'appeler les données du fichier .env, par exemple là je vais afficher le contenu de la clé TWITTER_API_SECRET


puts ENV["TWITTER_CONSUMER_KEY"]
puts ENV["TWITTER_CONSUMER_SECRET"]
puts ENV["TWITTER_ACCESS_TOKEN"]
puts ENV["TWITTER_ACCESS_TOKEN_SECRET"]

# quelques lignes qui appellent les clés d'API de ton fichier .env
def login_twitter

client = Twitter::REST::Client.new do |config|
 config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
 config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
 config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
 config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
end

client.update("I'm a french bot speaking english. <3")

end
