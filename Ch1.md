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
...

## Signed Binary Number
...

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
