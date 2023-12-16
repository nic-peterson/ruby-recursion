def fibs(num)
  fib = [0, 1]
  (num - 2).times { fib << fib[-1] + fib[-2] }
  fib
end

def fibs_rec(num)
  return [0, 1] if num == 2

  fibs_rec(num - 1) << fibs_rec(num - 1)[-1] + fibs_rec(num - 1)[-2]
end

p fibs(8)

p fibs_rec(8)
