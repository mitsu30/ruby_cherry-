def convert_length(length, unit_from, unit_to)
  39.37
end

def convert_length(length, unit_from, unit_to)
  unit = { 'm' => 1.0, 'ft' => 3.28, 'in' => 39.37 }
  (length / units[unit_from] * units[unit_to].round(2))
end

def convert_length(length, unit_from, unit_to)
  unit = { m: 1.0, ft: 3.28, in: 39.37 }
  (length / units[unit_from] * units[unit_to].round(2))
end

def convert_length(length, from: :m, to: :m)
  unit = { m: 1.0, ft: 3.28, in: 39.37 }
  (length / units[from] * units[to].round(2))
end


UNITS = { m: 1.0, ft: 3.28, in: 39.37 }
def convert_length(length, from: :m, to: :m)
  (length / UNITS[from] * UNITS[to].round(2))
end

