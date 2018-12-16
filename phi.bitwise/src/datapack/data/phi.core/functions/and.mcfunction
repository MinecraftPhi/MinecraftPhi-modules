# $phi.bitwise.result = $phi.bitwise.a AND $phi.bitwise.b

scoreboard players set $phi.bitwise.result temp 0
execute if score $phi.bitwise.a temp matches ..-1 if score $phi.bitwise.b temp matches ..-1 run scoreboard players set $phi.bitwise.result temp -2147483648

scoreboard players operation $phi.bitwise.a temp *= 2 const
scoreboard players operation $phi.bitwise.b temp *= 2 const
execute if score $phi.bitwise.a temp matches ..-1 if score $phi.bitwise.b temp matches ..-1 run scoreboard players add $phi.bitwise.result temp 1073741824

scoreboard players operation $phi.bitwise.a temp *= 2 const
scoreboard players operation $phi.bitwise.b temp *= 2 const
execute if score $phi.bitwise.a temp matches ..-1 if score $phi.bitwise.b temp matches ..-1 run scoreboard players add $phi.bitwise.result temp 536870912

scoreboard players operation $phi.bitwise.a temp *= 2 const
scoreboard players operation $phi.bitwise.b temp *= 2 const
execute if score $phi.bitwise.a temp matches ..-1 if score $phi.bitwise.b temp matches ..-1 run scoreboard players add $phi.bitwise.result temp 268435456

scoreboard players operation $phi.bitwise.a temp *= 2 const
scoreboard players operation $phi.bitwise.b temp *= 2 const
execute if score $phi.bitwise.a temp matches ..-1 if score $phi.bitwise.b temp matches ..-1 run scoreboard players add $phi.bitwise.result temp 134217728

scoreboard players operation $phi.bitwise.a temp *= 2 const
scoreboard players operation $phi.bitwise.b temp *= 2 const
execute if score $phi.bitwise.a temp matches ..-1 if score $phi.bitwise.b temp matches ..-1 run scoreboard players add $phi.bitwise.result temp 67108864

scoreboard players operation $phi.bitwise.a temp *= 2 const
scoreboard players operation $phi.bitwise.b temp *= 2 const
execute if score $phi.bitwise.a temp matches ..-1 if score $phi.bitwise.b temp matches ..-1 run scoreboard players add $phi.bitwise.result temp 33554432

scoreboard players operation $phi.bitwise.a temp *= 2 const
scoreboard players operation $phi.bitwise.b temp *= 2 const
execute if score $phi.bitwise.a temp matches ..-1 if score $phi.bitwise.b temp matches ..-1 run scoreboard players add $phi.bitwise.result temp 16777216

scoreboard players operation $phi.bitwise.a temp *= 2 const
scoreboard players operation $phi.bitwise.b temp *= 2 const
execute if score $phi.bitwise.a temp matches ..-1 if score $phi.bitwise.b temp matches ..-1 run scoreboard players add $phi.bitwise.result temp 8388608

scoreboard players operation $phi.bitwise.a temp *= 2 const
scoreboard players operation $phi.bitwise.b temp *= 2 const
execute if score $phi.bitwise.a temp matches ..-1 if score $phi.bitwise.b temp matches ..-1 run scoreboard players add $phi.bitwise.result temp 4194304

scoreboard players operation $phi.bitwise.a temp *= 2 const
scoreboard players operation $phi.bitwise.b temp *= 2 const
execute if score $phi.bitwise.a temp matches ..-1 if score $phi.bitwise.b temp matches ..-1 run scoreboard players add $phi.bitwise.result temp 2097152

scoreboard players operation $phi.bitwise.a temp *= 2 const
scoreboard players operation $phi.bitwise.b temp *= 2 const
execute if score $phi.bitwise.a temp matches ..-1 if score $phi.bitwise.b temp matches ..-1 run scoreboard players add $phi.bitwise.result temp 1048576

scoreboard players operation $phi.bitwise.a temp *= 2 const
scoreboard players operation $phi.bitwise.b temp *= 2 const
execute if score $phi.bitwise.a temp matches ..-1 if score $phi.bitwise.b temp matches ..-1 run scoreboard players add $phi.bitwise.result temp 524288

scoreboard players operation $phi.bitwise.a temp *= 2 const
scoreboard players operation $phi.bitwise.b temp *= 2 const
execute if score $phi.bitwise.a temp matches ..-1 if score $phi.bitwise.b temp matches ..-1 run scoreboard players add $phi.bitwise.result temp 262144

scoreboard players operation $phi.bitwise.a temp *= 2 const
scoreboard players operation $phi.bitwise.b temp *= 2 const
execute if score $phi.bitwise.a temp matches ..-1 if score $phi.bitwise.b temp matches ..-1 run scoreboard players add $phi.bitwise.result temp 131072

scoreboard players operation $phi.bitwise.a temp *= 2 const
scoreboard players operation $phi.bitwise.b temp *= 2 const
execute if score $phi.bitwise.a temp matches ..-1 if score $phi.bitwise.b temp matches ..-1 run scoreboard players add $phi.bitwise.result temp 65536

scoreboard players operation $phi.bitwise.a temp *= 2 const
scoreboard players operation $phi.bitwise.b temp *= 2 const
execute if score $phi.bitwise.a temp matches ..-1 if score $phi.bitwise.b temp matches ..-1 run scoreboard players add $phi.bitwise.result temp 32768

scoreboard players operation $phi.bitwise.a temp *= 2 const
scoreboard players operation $phi.bitwise.b temp *= 2 const
execute if score $phi.bitwise.a temp matches ..-1 if score $phi.bitwise.b temp matches ..-1 run scoreboard players add $phi.bitwise.result temp 16384

scoreboard players operation $phi.bitwise.a temp *= 2 const
scoreboard players operation $phi.bitwise.b temp *= 2 const
execute if score $phi.bitwise.a temp matches ..-1 if score $phi.bitwise.b temp matches ..-1 run scoreboard players add $phi.bitwise.result temp 8192

scoreboard players operation $phi.bitwise.a temp *= 2 const
scoreboard players operation $phi.bitwise.b temp *= 2 const
execute if score $phi.bitwise.a temp matches ..-1 if score $phi.bitwise.b temp matches ..-1 run scoreboard players add $phi.bitwise.result temp 4096

scoreboard players operation $phi.bitwise.a temp *= 2 const
scoreboard players operation $phi.bitwise.b temp *= 2 const
execute if score $phi.bitwise.a temp matches ..-1 if score $phi.bitwise.b temp matches ..-1 run scoreboard players add $phi.bitwise.result temp 2048

scoreboard players operation $phi.bitwise.a temp *= 2 const
scoreboard players operation $phi.bitwise.b temp *= 2 const
execute if score $phi.bitwise.a temp matches ..-1 if score $phi.bitwise.b temp matches ..-1 run scoreboard players add $phi.bitwise.result temp 1024

scoreboard players operation $phi.bitwise.a temp *= 2 const
scoreboard players operation $phi.bitwise.b temp *= 2 const
execute if score $phi.bitwise.a temp matches ..-1 if score $phi.bitwise.b temp matches ..-1 run scoreboard players add $phi.bitwise.result temp 512

scoreboard players operation $phi.bitwise.a temp *= 2 const
scoreboard players operation $phi.bitwise.b temp *= 2 const
execute if score $phi.bitwise.a temp matches ..-1 if score $phi.bitwise.b temp matches ..-1 run scoreboard players add $phi.bitwise.result temp 256

scoreboard players operation $phi.bitwise.a temp *= 2 const
scoreboard players operation $phi.bitwise.b temp *= 2 const
execute if score $phi.bitwise.a temp matches ..-1 if score $phi.bitwise.b temp matches ..-1 run scoreboard players add $phi.bitwise.result temp 128

scoreboard players operation $phi.bitwise.a temp *= 2 const
scoreboard players operation $phi.bitwise.b temp *= 2 const
execute if score $phi.bitwise.a temp matches ..-1 if score $phi.bitwise.b temp matches ..-1 run scoreboard players add $phi.bitwise.result temp 64

scoreboard players operation $phi.bitwise.a temp *= 2 const
scoreboard players operation $phi.bitwise.b temp *= 2 const
execute if score $phi.bitwise.a temp matches ..-1 if score $phi.bitwise.b temp matches ..-1 run scoreboard players add $phi.bitwise.result temp 32

scoreboard players operation $phi.bitwise.a temp *= 2 const
scoreboard players operation $phi.bitwise.b temp *= 2 const
execute if score $phi.bitwise.a temp matches ..-1 if score $phi.bitwise.b temp matches ..-1 run scoreboard players add $phi.bitwise.result temp 16

scoreboard players operation $phi.bitwise.a temp *= 2 const
scoreboard players operation $phi.bitwise.b temp *= 2 const
execute if score $phi.bitwise.a temp matches ..-1 if score $phi.bitwise.b temp matches ..-1 run scoreboard players add $phi.bitwise.result temp 8

scoreboard players operation $phi.bitwise.a temp *= 2 const
scoreboard players operation $phi.bitwise.b temp *= 2 const
execute if score $phi.bitwise.a temp matches ..-1 if score $phi.bitwise.b temp matches ..-1 run scoreboard players add $phi.bitwise.result temp 4

scoreboard players operation $phi.bitwise.a temp *= 2 const
scoreboard players operation $phi.bitwise.b temp *= 2 const
execute if score $phi.bitwise.a temp matches ..-1 if score $phi.bitwise.b temp matches ..-1 run scoreboard players add $phi.bitwise.result temp 2

scoreboard players operation $phi.bitwise.a temp *= 2 const
scoreboard players operation $phi.bitwise.b temp *= 2 const
execute if score $phi.bitwise.a temp matches ..-1 if score $phi.bitwise.b temp matches ..-1 run scoreboard players add $phi.bitwise.result temp 1