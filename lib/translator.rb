# require modules here
require "yaml"

emoticons = YAML.load_file ('lib/emoticons.yml')

def load_library(path)
  # code goes here
  emoticons = YAML.load_file(yaml_file_path)
  emote_hash = {}

  emoticons.each do |key, value|
    emote_hash[key] = {}
    emote_hash[key][:english] = value[0]
    emote_hash[key][:japanese] = value[1]
  end
  emote_hash
end

def get_japanese_emoticon(path, emoticon)
  # code goes here
  emote = load_library(yaml_file_path)

  match_key = library.keys.find do |key|
    emote[key][:english] == emoticon
  end
  
  if match_key == true
    library[matched_key][:japanese]
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(path, emoticon)
  # code goes here
  
end