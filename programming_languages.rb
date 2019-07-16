def reformat_languages(languages)

  new_hash = {}
  languages.each do |style, inner_languages|
    inner_languages.each do |language, type_hash|
      type = type_hash[:type]
      if new_hash[language] == nil
        new_hash[language] = {type: type, style: [style]}
      else
        new_hash[language][:style] << style
      end
    end
  end
  return new_hash
end
