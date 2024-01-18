#takes a list and returns a sorted version of it
def bubble_sort(list, direction = "forwards")
  sorted = []
  while sorted != list do
    list.each_with_index do |item,index|
      if list[index+1] != nil && item < list[index+1]
        list[index],list[index+1] = list[index+1],list[index]
      end
    end
    sorted = list
    list.each_with_index do |item,index|
      if list[index+1] != nil && item < list[index+1]
        list[index],list[index+1] = list[index+1],list[index]
      end
    end
  end
  direction == "forwards" ? sorted.reverse : sorted
end
