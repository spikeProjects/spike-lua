# spike-lua

# LUA简明教程(https://coolshell.cn/articles/10739.html)
https://coolshell.cn/articles/10739.html

**异同**
区分大小写
null -  nil
object - table
var   -  local
window.globalVar    -   _G["globalVar"]
obj.prototype  -  obj.__index

1）require函数，载入同样的lua文件时，只有第一次的时候会去执行，后面的相同的都不执行了。
2）如果你要让每一次文件都会执行的话，你可以使用dofile(“hello”)函数
3）如果你要玩载入后不执行，等你需要的时候执行时，你可以使用 loadfile()函数，如下所示：
