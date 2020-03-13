def my_collect(array)
  index  = 0
  collection = []

  while (index < array.length)
    collection << yield(array[index])
    index += 1
  end
  collection
end

array = []

my_collect(array) do |name|
  name.upcase
end
