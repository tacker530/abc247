# B - Unique Nicknames
N = gets.chomp.to_i
s = {}
t = {}

N.times do |i|
  w = [] # 作業用変数
  w = gets.chomp.split
  if s[w[0]] == nil then
    s[w[0]] = [w[1]]  # 配列に新規追加
  else
    s[w[0]] << w[1]   # 配列に追加
  end

  if t[w[1]] == nil then
    t[w[1]] = [w[0]]  # 配列に新規追加
  else
    t[w[1]] << w[0]   # 配列に追加
  end

end
#pp names
#pp s,t

s.each do |key,value|
  if value.size != value.uniq.size then
    value.each do |v|
      if t.has_key?(v) and t[v].size > 0 then
        puts "No"
        exit
      end
    end
  else
    if t.has_key?(key) and t[key].size > 0 then
      puts "No"
      exit
    end

  end
end

t.each do |key,value|
  if value.size != value.uniq.size then
    value.each do |v|
      if s.has_key?(v) and s[v].size > 0 then
        puts "No"
        exit
      end
    end
  else
    if s.has_key?(key) and s[key].size > 0 then
      puts "No"
      exit
    end

  end
end

puts "Yes"
