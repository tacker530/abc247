# C - 1 2 1 3 1 2 1
N = gets.chomp.to_i

def print_s(i)
  if i == 1 then
    1
  else
    "#{print_s(i-1)} #{i} #{print_s(i-1)}"
  end
end

puts print_s(N)