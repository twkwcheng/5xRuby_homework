# 姓名：鄭凱文，座號：11
# 練習：請印出從 1 到 100 之間所有的單數。
# 方法1: 使用each
puts '練習1：請印出從 1 到 100 之間所有的單數'
puts '方法1：使用each'
[*1..100].each do |i|
    puts i if i.odd?
end
# 方法2: 使用select
puts '方法2：使用select'
list_odd = [*1..100].select { |i| i.odd? }
puts list_odd
puts '----------------------------------------------'

# 練習：請印出從 1 到 100 之間所有的單數的總和。
# 方法1: 使用each
puts '練習2：請印出從 1 到 100 之間所有的單數的總和'
total_odd = 0
[*1..100].each do |i|
    total_odd += i if i.odd?
end
puts '方法1：使用each total_odd = ' + total_odd.to_s
# 方法2: 使用reduce
total_odd = 0
list_odd = [*1..100].select { |i| i.odd? }
total_odd = list_odd.reduce { |total_odd,i| total_odd + i }
puts '方法2：使用reduce total_odd = ' + total_odd.to_s
# 方法3: 使用sum
total_odd = 0
list_odd = [*1..100].select { |i| i.odd? }
total_odd = list_odd.sum
puts '方法3：使用sum total_odd = ' + total_odd.to_s
puts '----------------------------------------------'

# 練習：土砲 times 方法
puts '練習3：土砲 times 方法'
class Integer
    def my_times
        counter = 0
        while counter < self
            yield(counter)
            counter = counter + 1
        end
    end
end
puts '5.my_times { |i| puts i }  # 印出數字 0 ~ 4'
5.my_times { |i| puts i }                 # 印出數字 0 ~ 4
puts '----------------------------------------------'

# 練習：土砲 select 方法
puts '練習4：土砲 select 方法'
class Array
    def my_select
        result = []
        self.each do |i|
            result << i if yield(i)
        end
        return result
    end
end
puts 'p [1, 2, 3, 4, 5].my_select { |i| i.odd? }  # 只印出單數 1, 3, 5'
p [1, 2, 3, 4, 5].my_select { |i| i.odd? }  # 只印出單數 1, 3, 5