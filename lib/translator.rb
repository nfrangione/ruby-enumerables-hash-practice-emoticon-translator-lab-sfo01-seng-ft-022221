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
  emote = load_library(path)
  if emote["get_emoticon"].has_key?(emoticon)
    emote["get_emoticon"][emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
  library = load_library(yaml_file_path)

  matched_key = library.keys.find do |key|
    library[key][:english] == emoticon
  end

  if !!matched_key
    library[matched_key][:japanese]
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(path, emoticon)
  # code goes here
  emoji = load_library(path)
  if emoji["get_meaning"].has_key?(emoticon)
    emoji["get_meaning"][emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
end