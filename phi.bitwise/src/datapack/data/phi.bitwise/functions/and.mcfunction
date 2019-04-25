# $phi.bitwise.result = $phi.bitwise.a AND $phi.bitwise.b

scoreboard players set $phi.bitwise.result phitemp 0
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players set $phi.bitwise.result phitemp -2147483648

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.result phitemp 1073741824

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.result phitemp 536870912

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.result phitemp 268435456

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.result phitemp 134217728

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.result phitemp 67108864

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.result phitemp 33554432

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.result phitemp 16777216

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.result phitemp 8388608

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.result phitemp 4194304

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.result phitemp 2097152

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.result phitemp 1048576

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.result phitemp 524288

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.result phitemp 262144

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.result phitemp 131072

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.result phitemp 65536

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.result phitemp 32768

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.result phitemp 16384

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.result phitemp 8192

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.result phitemp 4096

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.result phitemp 2048

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.result phitemp 1024

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.result phitemp 512

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.result phitemp 256

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.result phitemp 128

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.result phitemp 64

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.result phitemp 32

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.result phitemp 16

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.result phitemp 8

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.result phitemp 4

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.result phitemp 2

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.result phitemp 1