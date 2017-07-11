def doubless?(n)
  return true if n%2 == 0
  return false
end
def first_doubless(n)
  i = 0
  while i <= n
    puts i if doubless?(i)
    i += 1
  end
end

first_doubless(23)
doubless?(23)