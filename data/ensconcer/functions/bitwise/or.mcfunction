# $bitwise.result = $bitwise.a OR $bitwise.b
# (($bitwise.a + $bitwise.b) - ($bitwise.a AND $bitwise.b))

scoreboard players operation $bitwise.result temp = $bitwise.a temp
scoreboard players operation $bitwise.result temp += $bitwise.b temp

# AND calculation:
scoreboard players reset $bitwise.and temp
execute if score $bitwise.a temp matches ..-1 if score $bitwise.b temp matches ..-1 run scoreboard players set $bitwise.and temp -2147483648

scoreboard players operation $bitwise.a temp *= 2 const
scoreboard players operation $bitwise.b temp *= 2 const
execute if score $bitwise.a temp matches ..-1 if score $bitwise.b temp matches ..-1 run scoreboard players add $bitwise.and temp 1073741824

scoreboard players operation $bitwise.a temp *= 2 const
scoreboard players operation $bitwise.b temp *= 2 const
execute if score $bitwise.a temp matches ..-1 if score $bitwise.b temp matches ..-1 run scoreboard players add $bitwise.and temp 536870912

scoreboard players operation $bitwise.a temp *= 2 const
scoreboard players operation $bitwise.b temp *= 2 const
execute if score $bitwise.a temp matches ..-1 if score $bitwise.b temp matches ..-1 run scoreboard players add $bitwise.and temp 268435456

scoreboard players operation $bitwise.a temp *= 2 const
scoreboard players operation $bitwise.b temp *= 2 const
execute if score $bitwise.a temp matches ..-1 if score $bitwise.b temp matches ..-1 run scoreboard players add $bitwise.and temp 134217728

scoreboard players operation $bitwise.a temp *= 2 const
scoreboard players operation $bitwise.b temp *= 2 const
execute if score $bitwise.a temp matches ..-1 if score $bitwise.b temp matches ..-1 run scoreboard players add $bitwise.and temp 67108864

scoreboard players operation $bitwise.a temp *= 2 const
scoreboard players operation $bitwise.b temp *= 2 const
execute if score $bitwise.a temp matches ..-1 if score $bitwise.b temp matches ..-1 run scoreboard players add $bitwise.and temp 33554432

scoreboard players operation $bitwise.a temp *= 2 const
scoreboard players operation $bitwise.b temp *= 2 const
execute if score $bitwise.a temp matches ..-1 if score $bitwise.b temp matches ..-1 run scoreboard players add $bitwise.and temp 16777216

scoreboard players operation $bitwise.a temp *= 2 const
scoreboard players operation $bitwise.b temp *= 2 const
execute if score $bitwise.a temp matches ..-1 if score $bitwise.b temp matches ..-1 run scoreboard players add $bitwise.and temp 8388608

scoreboard players operation $bitwise.a temp *= 2 const
scoreboard players operation $bitwise.b temp *= 2 const
execute if score $bitwise.a temp matches ..-1 if score $bitwise.b temp matches ..-1 run scoreboard players add $bitwise.and temp 4194304

scoreboard players operation $bitwise.a temp *= 2 const
scoreboard players operation $bitwise.b temp *= 2 const
execute if score $bitwise.a temp matches ..-1 if score $bitwise.b temp matches ..-1 run scoreboard players add $bitwise.and temp 2097152

scoreboard players operation $bitwise.a temp *= 2 const
scoreboard players operation $bitwise.b temp *= 2 const
execute if score $bitwise.a temp matches ..-1 if score $bitwise.b temp matches ..-1 run scoreboard players add $bitwise.and temp 1048576

scoreboard players operation $bitwise.a temp *= 2 const
scoreboard players operation $bitwise.b temp *= 2 const
execute if score $bitwise.a temp matches ..-1 if score $bitwise.b temp matches ..-1 run scoreboard players add $bitwise.and temp 524288

scoreboard players operation $bitwise.a temp *= 2 const
scoreboard players operation $bitwise.b temp *= 2 const
execute if score $bitwise.a temp matches ..-1 if score $bitwise.b temp matches ..-1 run scoreboard players add $bitwise.and temp 262144

scoreboard players operation $bitwise.a temp *= 2 const
scoreboard players operation $bitwise.b temp *= 2 const
execute if score $bitwise.a temp matches ..-1 if score $bitwise.b temp matches ..-1 run scoreboard players add $bitwise.and temp 131072

scoreboard players operation $bitwise.a temp *= 2 const
scoreboard players operation $bitwise.b temp *= 2 const
execute if score $bitwise.a temp matches ..-1 if score $bitwise.b temp matches ..-1 run scoreboard players add $bitwise.and temp 65536

scoreboard players operation $bitwise.a temp *= 2 const
scoreboard players operation $bitwise.b temp *= 2 const
execute if score $bitwise.a temp matches ..-1 if score $bitwise.b temp matches ..-1 run scoreboard players add $bitwise.and temp 32768

scoreboard players operation $bitwise.a temp *= 2 const
scoreboard players operation $bitwise.b temp *= 2 const
execute if score $bitwise.a temp matches ..-1 if score $bitwise.b temp matches ..-1 run scoreboard players add $bitwise.and temp 16384

scoreboard players operation $bitwise.a temp *= 2 const
scoreboard players operation $bitwise.b temp *= 2 const
execute if score $bitwise.a temp matches ..-1 if score $bitwise.b temp matches ..-1 run scoreboard players add $bitwise.and temp 8192

scoreboard players operation $bitwise.a temp *= 2 const
scoreboard players operation $bitwise.b temp *= 2 const
execute if score $bitwise.a temp matches ..-1 if score $bitwise.b temp matches ..-1 run scoreboard players add $bitwise.and temp 4096

scoreboard players operation $bitwise.a temp *= 2 const
scoreboard players operation $bitwise.b temp *= 2 const
execute if score $bitwise.a temp matches ..-1 if score $bitwise.b temp matches ..-1 run scoreboard players add $bitwise.and temp 2048

scoreboard players operation $bitwise.a temp *= 2 const
scoreboard players operation $bitwise.b temp *= 2 const
execute if score $bitwise.a temp matches ..-1 if score $bitwise.b temp matches ..-1 run scoreboard players add $bitwise.and temp 1024

scoreboard players operation $bitwise.a temp *= 2 const
scoreboard players operation $bitwise.b temp *= 2 const
execute if score $bitwise.a temp matches ..-1 if score $bitwise.b temp matches ..-1 run scoreboard players add $bitwise.and temp 512

scoreboard players operation $bitwise.a temp *= 2 const
scoreboard players operation $bitwise.b temp *= 2 const
execute if score $bitwise.a temp matches ..-1 if score $bitwise.b temp matches ..-1 run scoreboard players add $bitwise.and temp 256

scoreboard players operation $bitwise.a temp *= 2 const
scoreboard players operation $bitwise.b temp *= 2 const
execute if score $bitwise.a temp matches ..-1 if score $bitwise.b temp matches ..-1 run scoreboard players add $bitwise.and temp 128

scoreboard players operation $bitwise.a temp *= 2 const
scoreboard players operation $bitwise.b temp *= 2 const
execute if score $bitwise.a temp matches ..-1 if score $bitwise.b temp matches ..-1 run scoreboard players add $bitwise.and temp 64

scoreboard players operation $bitwise.a temp *= 2 const
scoreboard players operation $bitwise.b temp *= 2 const
execute if score $bitwise.a temp matches ..-1 if score $bitwise.b temp matches ..-1 run scoreboard players add $bitwise.and temp 32

scoreboard players operation $bitwise.a temp *= 2 const
scoreboard players operation $bitwise.b temp *= 2 const
execute if score $bitwise.a temp matches ..-1 if score $bitwise.b temp matches ..-1 run scoreboard players add $bitwise.and temp 16

scoreboard players operation $bitwise.a temp *= 2 const
scoreboard players operation $bitwise.b temp *= 2 const
execute if score $bitwise.a temp matches ..-1 if score $bitwise.b temp matches ..-1 run scoreboard players add $bitwise.and temp 8

scoreboard players operation $bitwise.a temp *= 2 const
scoreboard players operation $bitwise.b temp *= 2 const
execute if score $bitwise.a temp matches ..-1 if score $bitwise.b temp matches ..-1 run scoreboard players add $bitwise.and temp 4

scoreboard players operation $bitwise.a temp *= 2 const
scoreboard players operation $bitwise.b temp *= 2 const
execute if score $bitwise.a temp matches ..-1 if score $bitwise.b temp matches ..-1 run scoreboard players add $bitwise.and temp 2

scoreboard players operation $bitwise.a temp *= 2 const
scoreboard players operation $bitwise.b temp *= 2 const
execute if score $bitwise.a temp matches ..-1 if score $bitwise.b temp matches ..-1 run scoreboard players add $bitwise.and temp 1
# (End of AND calculation)

scoreboard players operation $bitwise.result temp -= $bitwise.and temp