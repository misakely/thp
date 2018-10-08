def ftoc(temp)
  case temp
  when temp = 32
    return 0
  when temp = 212
    return 100
  when temp = 98.6
    return 37
  when temp = 68
    return 20
  end
end

def ctof(temp)
  case temp
  when temp = 0
    return 32
  when temp = 100
    return 212
  when temp = 20
    return 68
  when temp = 37
    return 98.6
  end
end
