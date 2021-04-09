---
tags: 數位電路設計, 資工系必修
---
# Combinational Logic
![](https://i.imgur.com/5e02Bxo.png)
## Introuduction 
- 組合電路
    - 任何輸出只與當下輸入有關係，跟以前的輸入無關
    - 不會有回拉的線路
- 順序電路
    - 輸出與現在輸入和之前產生的狀態有關
    - 會產生新的狀態 by 現在的輸入和之前的狀態

## Combinational Circuits
![](https://i.imgur.com/o4ubd1O.png)

$n$ input variables
    $-> 2^n$ possible binary input combinations.

- It outputs at any time are determined from the present inputs. (no feedback paths or memory elements)


## Analysis Procedure
#### Output Boolean functions
Procedure:
1. Label all gate outputs that are a function of input variables w/ arbitrary symbols. Determine the Boolean function for each gate output.
2. Label the gates that are a function of input variables and previously labeled gates w/ other arbitrary symbols. Find the Boolean functions for these gates.
3. Repeat step 2 until the outputs of the ckt are obtained in terms of input variables.
4. By repeated substitution of previously defined functions, obtain the output Boolean functions in terms of input variables.

![](https://i.imgur.com/AR85uld.png)

一層一層推出 Boolean function ，不用化簡

#### Truth table
Procedure:
- Logic diagram $\rightarrow$ Output Boolean functions
    $\rightarrow$ Truth table
- Logic diagram $\rightarrow$ Truth table
    1. Determine the # of input variables in the ckt.
        For $n$ inputs, form the $2^n$ possible input combinations and list the binary numbers from $0\sim 2^{n-1}$ in a table.
    2. Label the outputs of selected gates w/ arbitrary symbols.
    3. Obtain the truth table for the outputs of those gates that are a function of the input variables only.
    4. Proceed to obtain the truth table for the outputs of those gates that are a function of previously defined values until the columns for all outputs are determined.

直接畫真值表

## Design Procedure
Design:

Procedure:
1. From the specificationsof the ckt, determine the required # of inputs and outputs and assign a symbol to each. **(Specification)**
2. Derive the truth tableor initial Boolean equationsthat defines the required relationship b/t inputs and outputs. **(Formulation)**
    
    確保function正確，重要的一步
3. Obtain the simplified Boolean functionsfor each output as a function of the input variables. **(Optimization: 2-levelor multi-level)**
4. Draw the logic diagram. **(Technology mapping)**
5. Verifythe correctness of the design. **(Verification = Analysis)**
    
    驗證

- Example
    
    BCD code turn to exress-3 code
    
    BCD沒用到的即為Don't care term.
    
## Binary Adder-Subtractor 加減法器
- Half adder: add 2 bits

$x+y=$ 0 or 1

Step 1: Specification
The basic rule for binary addition:

$0+0=0\quad 0$

$0+1=0\quad 1$

$1+0=0\quad 1$

$1+1=1\quad 1$
- Full adder: add 2 input bits and a carry-in bit
- Binary ripple carry adder: add two n-bit binary numbers
- Carry-lookaheadadder
- Binary subtractor
- Binary adder-subtractor