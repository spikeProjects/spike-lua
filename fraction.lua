#!/usr/local/bin/lua
--[[分数]]--
fraction_a = {numerator=2, denominator=3}   --  2/3
fraction_b = {numerator=4, denominator=7}   --  4/7

-- fraction_s = fraction_a + fraction_b
fraction_op={}
function fraction_op.__add(f1, f2)
  ret = {}
  ret.numerator = f1.numerator * f2.denominator + f2.numerator * f1.denominator
  ret.denominator = f1.denominator * f2.denominator
  return ret
end
setmetatable(fraction_a, fraction_op)   --setmetatable 是库函数
setmetatable(fraction_b, fraction_op)
fraction_s = fraction_a + fraction_b
print(fraction_s.numerator, fraction_s.denominator)

--[[
__add这是MetaMethod，这是Lua内建约定的，其它的还有如下的MetaMethod：
__add(a, b)                     对应表达式 a + b
__sub(a, b)                     对应表达式 a - b
__mul(a, b)                     对应表达式 a * b
__div(a, b)                     对应表达式 a / b
__mod(a, b)                     对应表达式 a % b
__pow(a, b)                     对应表达式 a ^ b
__unm(a)                        对应表达式 -a
__concat(a, b)                  对应表达式 a .. b
__len(a)                        对应表达式 #a
__eq(a, b)                      对应表达式 a == b
__lt(a, b)                      对应表达式 a < b
__le(a, b)                      对应表达式 a <= b
__index(a, b)                   对应表达式 a.b
__newindex(a, b, c)             对应表达式 a.b = c
__call(a, ...)                  对应表达式 a(...)
]]--
fraction_c = {numerator=1, denominator=3}   --  2/3
fraction_d = {numerator=2, denominator=7}   --  4/7
setmetatable(fraction_c, fraction_op)   --setmetatable 是库函数
setmetatable(fraction_d, fraction_op)
fraction_k = fraction_c + fraction_d

print(fraction_k.numerator, fraction_k.denominator);



