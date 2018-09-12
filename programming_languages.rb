def reformat_languages(languages)
  new_languages = {}
  languages.each do |oo_functional, lang|
     lang.each do |name, type|
       new_languages[name] ||= type
       # if new_languages[name] is nil or false sets type as the key value pair for name as the nested hash
       new_languages[name][:style] ||= []
       # if new_languages[name][:style] is nil or false, sets it to an elements array for value of style key
       new_languages[name][:style] << oo_functional
     end
   end
   new_languages
end
