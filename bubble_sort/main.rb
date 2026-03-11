def bubble_sort(collection)
  return unless collection
  comparison_range = 0...(collection.length - 1)

  loop do
    swapped = false

    comparison_range.each do |index|
      current_element = collection[index]
      next_element    = collection[index + 1]

      if current_element > next_element
        collection[index], collection[index + 1] = next_element, current_element
        swapped = true
      end
    end

    break unless swapped
  end

  collection
end