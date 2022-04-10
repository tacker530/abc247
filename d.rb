# D - Cylinder
N = gets.chomp.to_i
query = []
N.times do |i|
  query << gets.chomp.split.map(&:to_i)
end

queue = [] # キュー

def result(queue,q)   # キューとクエリ
  if q[0] == 1 then   # push
    queue << [q[1], q[2]]
  else               # shift

    w = 0
    if queue[0][0] > q[1] then
      w = queue[0][0] * q[1]
      queue[0][0] -= q[1]
    elsif queue[0][0] == q[1] then
      w = queue[0][0] * q[1]
      queue[0][0] -= q[1]
      queue.shift
    else
      w = queue[0][0] * q[1]
      queue[0][0] -= q[1]
      queue.shift
    end
    puts "#{w}"
  end
end

query.each do |q|
  result(queue,q)
end