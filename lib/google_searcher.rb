require 'launchy'

abort("Veuillez écrire votre recherche à la suite du programme en séparant les mots par des") if ARGV.empty?
text = ARGV.join("+") 
link = "https://www.google.com/search?q=" + text
Launchy.open(link)