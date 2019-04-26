# $phi.bitwise.result = $phi.bitwise.a OR $phi.bitwise.b
# (($phi.bitwise.a + $phi.bitwise.b) - 2*($phi.bitwise.a AND $phi.bitwise.b))

scoreboard players operation $phi.bitwise.result phitemp = $phi.bitwise.a phitemp
scoreboard players operation $phi.bitwise.result phitemp += $phi.bitwise.b phitemp

# AND calculation:
scoreboard players reset $phi.bitwise.and phitemp
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players set $phi.bitwise.and phitemp -2147483648

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.and phitemp 1073741824

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.and phitemp 536870912

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.and phitemp 268435456

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.and phitemp 134217728

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.and phitemp 67108864

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.and phitemp 33554432

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.and phitemp 16777216

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.and phitemp 8388608

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.and phitemp 4194304

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.and phitemp 2097152

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.and phitemp 1048576

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.and phitemp 524288

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.and phitemp 262144

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.and phitemp 131072

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.and phitemp 65536

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.and phitemp 32768

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.and phitemp 16384

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.and phitemp 8192

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.and phitemp 4096

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.and phitemp 2048

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.and phitemp 1024

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.and phitemp 512

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.and phitemp 256

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.and phitemp 128

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.and phitemp 64

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.and phitemp 32

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.and phitemp 16

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.and phitemp 8

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.and phitemp 4

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.and phitemp 2

scoreboard players operation $phi.bitwise.a phitemp *= 2 phiconst
scoreboard players operation $phi.bitwise.b phitemp *= 2 phiconst
execute if score $phi.bitwise.a phitemp matches ..-1 if score $phi.bitwise.b phitemp matches ..-1 run scoreboard players add $phi.bitwise.and phitemp 1
# (End of AND calculation)

scoreboard players operation $phi.bitwise.result phitemp -= $phi.bitwise.and phitemp
scoreboard players operation $phi.bitwise.result phitemp -= $phi.bitwise.and phitemp