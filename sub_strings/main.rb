def sub_string (string, collection)
  low_string = string.downcase

  collection.each_with_object({}) {|item, result_hash|
   item_scanned = low_string.scan(item)

   next if item_scanned.empty?

   result_hash[item] = item_scanned.length
  }
end