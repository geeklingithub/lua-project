---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Administrator.
--- DateTime: 2022/8/12 13:55
---


EnumTable={
    "red",
    "green",
    "blue"
}
-- 利用table 构建枚举
function CreateEnumTable(tbl, index)
    local enumtbl = {}
    local enumIndex = index or 0
    for i,v in pairs(tbl) do
        enumtbl[v] = enumIndex + i
    end
    return enumtbl
end

EnumTable = CreateEnumTable(EnumTable,0)

print(EnumTable.green)

-- 结构体和类,一堆静态变量和函数的集合

student = {
    name = "geeklin",
    age = 18,
    up = function(s)
        print("call up"..s.age)
    end,
    down = function()
        print("call down")
    end
}

---- 两者等价
--student.up(student)
---- 冒号时,调用者默认作为第一个参数传入，也支持无参调用
--student:up()
--student.down()
--student:down()

---- 可空判断
--if
--    student ~= nil
--    and student.age ~= nil
--then
--    student:up()
--end

EnumTable={
    red,
    green = "0",
    blue
}
print(EnumTable.green)

-- 判断空
-- 基本类型 a == nil
-- table a == nil || next(a) == nil