#takes a list and returns a sorted version of it
def bubble_sort(list)
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
  sorted.reverse
end
