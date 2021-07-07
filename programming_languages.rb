require "pry"
def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, language|
    language.each do |language, info|
      if new_hash[language] == nil
          new_hash[language] = info
      end
      new_hash[language][:style] = []
      new_hash[language][:style] << style
    end
  end
  new_hash[:javascript][:style] << :oo
new_hash
end
