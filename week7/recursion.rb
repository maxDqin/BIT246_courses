def countdown(n)
  return if n.zero?
  puts n
  countdown(n-1)
end

countdown(-1)