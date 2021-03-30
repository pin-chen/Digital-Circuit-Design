---
tags: 數位電路設計, 資工系必修
---

# Digital Systems and Binary Numbers
![](https://imgur.com/TjSYkkD.jpg)

## Binary Signal

![](https://imgur.com/lN3oxXz.jpg)
- 以電壓高低作為0,1訊號分辨依據
- 為避免雜訊干擾，中間有緩衝地帶
- 輸出條件較嚴格，因為下一個gate的輸入

## Binary Numbers
![](https://imgur.com/jA5GiUM.jpg)
- 常識的r進位
- 整數部分以除法
- 小數部分以乘法
- 順序如圖

## Unsigned Binary Number Complement
- 1's complement
    Turn all bit 0 to 1 and 1 to 0. 
- 2's complement
    1's complent + $1\cdot2^0$.
- Unsigned Binary Subtraction by (r−1)’s Complement Addition
- Unsigned Binary Subtraction by r’s Complement Addition
## Signed Binary Number
- Singed-magnitude
    - Range: $2^{n-1}-1 \sim -(2^{n-1}-1)$
    - Def the largest bit be sign bit.
        > Sign bit = 0 for postive numbers
        > Sign bit = 1 for negative numbers
    - The negative number is same as postive number except sign bit.
- Signed-1's complement
    - Range: $2^{n-1}-1 \sim -(2^{n-1}-1)$
    - The negative number is the postive number's 1's complenment.
- Signed-2's complement
    - Range: $2^{n-1}-1 \sim -2^{n-1}$
    - The negative number is the postive number's 2's complenment.
## Overflow
**兩數以二進制相加，取其最高兩位元的進位做XOR，若運算結果為0表示無溢位，為1則產生溢位。**
![](https://imgur.com/McO7oBY.jpg)

## Binary Code
For example: ASCII
#### Binary-Coded Decimal
![](https://imgur.com/BFzN4d4.jpg)
**並沒有使用完所有4位元組合**
![](https://imgur.com/xNLXfKW.jpg)
**須於運算時注意進位，超過1001要再加0110**

#### Unknow
![](https://imgur.com/eqsY5gd.jpg)

#### Gray Code
000, 001, 011, 010 ...

只差一位元的編碼，可降低運算過程中造成的轉換錯誤。

#### Error-Detecting Code
###### Parity bit
Check the number of 1s either even or odd to check the singal is correct or not.

## Binary Logic
- AND: ${X}\land{Y}, {X}\cdot{Y}$
- OR: ${X}\lor{Y}, {X}+{Y}$ 
- NOT: $\lnot{X}, X', \overline{X}$
![](https://imgur.com/6xm2g8B.jpg)
