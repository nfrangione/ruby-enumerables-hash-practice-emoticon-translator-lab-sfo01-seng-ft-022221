# require modules here
require "yaml"

emoticons = YAML.load_file ('lib/emoticons.yml')

def load_library(path)
  # code goes here
  emoticons = YAML.load_file(path)
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
  emotes = load_library(path)

  match_key = emotes.keys.find do |key|
    emotes[key][:english] == emoticon
  end
  
  if match_key == true
    return emotes[match_key][:japanese]
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(path, emoticon)
  # code goes here
  emotes = load_library(path)

  match_key = emotes.keys.find do |key|
    emotes[key][:japanese] == emoticon
  end

  if match_key == true
    return match_key
  else
    "Sorry, that emoticon was not found"
  end
end