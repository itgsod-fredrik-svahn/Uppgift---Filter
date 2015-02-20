# lista = ["hej", "hallo", "Hej", "hej", "hej", "Hej"]

def filter(array:, value:)
  nylista  = []
  array.each do |x|
    if x == value
      nylista << x
    end
  end
  return nylista
end


def exclude(array:, value:)
  nylista  = []
  array.each do |x|
    if x != value
      nylista << x
    end
  end
  return nylista
end



def unique(array:)
  jämförelselista = [nil]
  array.each do |listsak|
    check = 0
    jämförelselista.each do |jämförelse|
        if listsak != jämförelse
          check += 1
        end
    end
    if check == jämförelselista.length
      jämförelselista << listsak
    end
  end
  jämförelselista.shift
  return jämförelselista
end
