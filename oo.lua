#!/usr/local/bin/lua
require('hello')

Window_Prototype = {x=0, y=0, width=100, height=100}
MyWin = {title="Hello"}
setmetatable(MyWin, {__index = Window_Prototype})
print(MyWin.width)

Person={}
function Person:new(p)      --Person:new    相当于 Person.new 的定义
    local obj = p
    if (obj == nil) then
        obj = {name="ChenHao", age=37, handsome=false}
    end
    self.__index = self
    return setmetatable(obj, self)
end

function Person:toString()
    return self.name .." : ".. self.age .." : ".. (self.handsome and "handsome" or "ugly")
end

me = Person:new()
print(me:toString())
 
details = {name = 'rock', age = 23, handsome = true}
kf = Person:new(details)
print(kf:toString())

Student = Person:new()
function Student:new()
  newObj = {year = 2013}
  self.__index = self
  return setmetatable(newObj, self)
end
function Student:toString()
  return "Student : ".. self.year.." : " .. self.name
end
rock = Student:new()
print(rock:toString(), '----------------')


