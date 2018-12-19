def series_sum(n)
  series =*(1..n)
  series = series.map! {|num| 1 / ((num * 3) - 2).to_f}
  accum = 0
  series.each {|num| accum += num}
  return '%.2f' % accum.round(2).to_s
end
