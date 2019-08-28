#!/usr/local/bin/lua

function fib(n)
  if n < 2 then return 1 end
  return fib(n - 2) + fib(n - 1)
end

print(fib(4))

------------
function newCounter()
  local i = 0
  return function()     -- anonymous function
     i = i + 1
      return i
  end
end

c1 = newCounter()
print(c1())  --> 1
print(c1())  --> 2

function myPower(x)
  return function(y) return y^x end
end

power2 = myPower(2)
power3 = myPower(3)

print(power2(3))
print(power3(4))

function setValue()
  name, age, bo = "haoel", 37, 45, "haoel@hotmail.com"
  print(name, age, bo..' end')
end

setValue()

function confirm(age,sex)
  print(age, sex)
  if age == 40 and sex =="Male" then
    print("男人四十一枝花")
  elseif age > 60 and sex ~="Female" then
    print("old man without country!")
  elseif age < 20 then
    io.write("too young, too naive!\n")
  else
    local age = io.read()
    print("Your age is "..age)
  end
end
confirm(40,"Male")

function getUserInfo(id)
  print(id)
  return "haoel", 37, "haoel@hotmail.com", "https://coolshell.cn"
end

name, age, email, website, bGay = getUserInfo()
print('line61:', name, age, email, website, bGay)

function foo(x) return x^2 end
foo2 = function(x) return x^2 end
print(foo(45) ..' '.. foo2(45))

--[[table and CRUD]]--
haoel = {name="ChenHao", age=37, handsome=True}
haoel.website="https://coolshell.cn/"
local age = haoel.age
haoel.handsome = false
haoel.name=nil

print(haoel, haoel.website, haoel.age, haoel.handsome, haoel.name, age)

t = {[20]=100, ['name']="ChenHao", [3.14]="PI"}
print(t[20], t['name'], t[3.14])

arr = {10,20,30,40,50}  --Lua的下标不是从0开始的，是从1开始的
-- arr = {[1]=10, [2]=20, [3]=30, [4]=40, [5]=50}

arr = {"string", 100, "haoel", function() print("coolshell.cn") end}
arr[4]()

for i=1, #arr do    --#arr的意思就是arr的长度
  print('it is:', arr[i])
end

-- global variables
coa = 'what'
print(_G['goa'] == _G.goa)
print(coa)

for k, v in pairs(arr) do
  print(k, v, arr[k])
end
