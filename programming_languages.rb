require "pry"

def reformat_languages(languages)
  new_hash = {}

  languages.each do |l_type, l_name|
    l_name.each do |name, attribute|
      new_hash[name] = attribute
      new_hash[name][:style] = []
      new_hash[name][:style] << l_type
    end
  end
  new_hash[:javascript][:style] << :oo
  new_hash
end
