def check_if_user_gave_input
  abort("Merci d'indiquer un titre pour le dossier...") if ARGV.empty?
end

def get_folder_name
  return folder_name = ARGV.join("_")
end

def create_folder(name)
  Dir.mkdir(name)
end

def create_files (name)
  Dir.chdir("./" + name)
  gemfile =
  'source "https://rubygems.org"
  ruby "3.0.0"
  gem "rspec"
  gem "pry"
  gem "rubocop"
  gem "dotenv"
  gem "launchy"'
  File.open("Gemfile", "w").write(gemfile)
  File.open(".gitignore", "w").write(".env")
  File.open(".env", "w")
  File.open("README.md", "w")
  Dir.mkdir("lib")
end

def bundle_and_rspec
  system("rspec --init")
  system("bundle install")
end

def perform
  check_if_user_gave_input
    create_folder(get_folder_name)
    create_files(get_folder_name)
    bundle_and_rspec
end

perform

# PETIT BONUS : si tu mets ce programme dans un dossier bien défini et que tu branches un alias du genre :

# alias mkdiruby="ruby /home/ton/chemin/vers/dossier/mkdiruby.rb"
# Et bien tu peux utiliser ton programme Ruby de ton terminal, en lieu et place du $ mkdir d'origine !