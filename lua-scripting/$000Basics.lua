print(":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
print(":::::::::::::::::::::::: LUA SCRIPTING ::::::::::::::::::::::::::")
print(":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")

message = "Lua is awesome! This can be used for Game development."

print(message)

-- VARIABLES
--[[
    local and global
    if you don't mention local then its by default 'global'

    
]]



-- CONDITIONALS
local number = 332;

if number < 320 then
    number = number + 23
elseif number > 100 and number < 4099 then
    number = 199.0099
else
    number = "hi, this is dynamically type language"
end

print(number)

-- LOOPS
number = 10
local sum = 0

while number > -1 do
    sum = sum + number;
    number = number -1;
end

print("The value of sum is = ", sum)


reverseAdd = 0;
for i = 11, 1, -1 do
    reverseAdd = reverseAdd + i
end
print("reverse add value using For loop", reverseAdd)

-- FUNCTION
function sum(x, y)
    print("sum = ", x + y)
    return x + y
end

sum(43, 2)


--[[

 This is a Multi line comment block
]]


-- TABLES IN LUA
--[[
    In lua arrays, list, queue, sets, records are all efficiently
    stored using 'TABLE'
]]

message = nil

testScores = {12, 33, 21, 32, 26}

table.insert(testScores, 46)
table.insert(testScores, 'scores')

for index,value in ipairs(testScores) do
    print(index, value);
end

print("The First and last element is ", testScores[1], testScores[7])
print("In lua the index start from 1 !! This is anti programming! yet its cool")


-- setting table properties
object = {}

object.name = 'sudarshan'
object.age = 23

print(object.name)


object['address'] = 'mangalore'

--[[
    NOTE: 
        THESE SINGLE INSERTS ARE MAINTAINED AS ARRAYS WITH INDICES
        (KEY, VALUES) ARE STORED AS HASHMAP KIND OF VALUES
        ALSO SINCE LUA IS DYNAMICALLY TYPED LANGUAGE, YOU CAN STORE ANY DATA INTO THE TABLE.
]]

table.insert(object, 178)
table.insert(object, 21323)
table.insert(object, {'hi', 'hello'})
table.insert(object, 'hello');

for key,val in pairs(object) do
    print(key, val)
end

































