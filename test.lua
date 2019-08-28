#!/usr/local/bin/lua
print(34)

a = 'alo\n123"'

print(a)
print(b)
print([[abc
--------------
      def]])
--[[
print(a)
print(b)
]]--

theGlobalVar = 50
-- print(theGlobalVar)     --50

local theLocalVar = "local variable"
print(theGlobalVar)     --50

------------------------------------
sum = 0
num = 1
while num <= 100 do
  sum = sum + num
  num = num + 1
end
print("sum = "..sum)

--[[ expressions

]]--
-- if age == 40 and sex =="Male" then
--   print("男人四十一枝花")
-- elseif age > 60 and sex ~="Female" then   --   “～=”是不等于，而不是!=
--   print("old man without country!")
-- elseif age < 20 then
--   io.write("too young, too naive!\n") --  io库的分别从stdin和stdout读写的read和write函数
-- else
--   -- local age = io.read()
--   print("Your age is "..age)    -- 字符串的拼接操作符“..”
-- end

sum = 0
for i = 1, 100 do
  sum = sum + i
  print(sum..'')
end

sum = 2
repeat
  sum = sum ^ 2 --幂操作
  print(sum)
until sum >1000

sum = 0
for i = 100, 1, -2 do
    sum = sum + i
    print(sum..'')
end

