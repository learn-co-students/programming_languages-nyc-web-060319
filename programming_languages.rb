
def reformat_languages(languages)
  new_hash = {}

  	languages.each do |paradigm, names|
  		#new_hash[names].to_sym = names.keys   # was paradigms.to_s // undefined method `to_sym=' for nil:NilClass 
  		names.each do |name, types|

  			# new_hash[name] = {:type => languages[paradigm][name][:type] }, {:style => paradigm.to_s }
  			# ^^^ works, but output is array:  {:ruby=>[{:type=>"interpreted"}, {:style=>"oo"}],
  			#new_hash.merge({name => {:style => languages[paradigm][1] } } ) 		#Doesnt work
  			#new_hash.merge({name => {:style => languages.key(name) } } )			#Doesnt add style key.. 

			new_hash[name] = {:type => languages[paradigm][name][:type], :style => [] }
			#new_hash[name] = {:style => [] }
			#new_hash.merge!({name => {:style => paradigm.to_s } } )		#Overwrites all the types
  			#eg[name] =  {:style => languages.key(name) }	# {:ruby=>{:style=>nil},
  			
			new_hash[name][:style] << paradigm
			#new_hash[name][:style] << languages.key(names) 	#Also only finds oo
  			#puts("name is. #{name},  types is #{types}")

  		end
  	end

  	languages.each do |paradigm, lnames|
  		lnames.each do |lname, ltypes| 		#
  				puts( " new_hash[lname][:style] is : #{new_hash[lname][:style] }")
  				if !new_hash[lname][:style].include?(paradigm)  
  					new_hash[lname][:style] << paradigm
  				end
  			
  		end
  	end





  return new_hash
end








