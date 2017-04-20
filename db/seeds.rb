(1..100).each do |number|
  Task.create(content: 'test c ' + number.to_s, title: 'test t ' + number.to_s)
end
