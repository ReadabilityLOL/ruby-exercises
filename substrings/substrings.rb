#finds if valid substrings are in string, and count of them
def substring(string,dictionary)
  hash = {}
  dictionary.each {|item| hash[item] = string.scan(item).length}
  hash.select{|key,value|value > 0}
end
