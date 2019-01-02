def folding(a,b)
  accum = 0
  total_squares = a * b
  while total_squares > 0
    while a > b
      total_squares -= b * b
      accum += 1
      a -= b
    end
    while b > a
      total_squares -= a * a
      accum += 1
      b -= a
    end
    if a == 1
      accum += 1
      total_squares -= 1
    end
  end
  return accum
end
