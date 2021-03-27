---
tags: 數位電路設計, 資工系必修
---
# Gate-Level Minimization
![](https://imgur.com/N68a1IX.jpg)
## Cost Criteria
#### Literal cost
the # of literal appearances in a Boolean expression
#### Gate Input cost
the # of inputs to the gates in the implementation
## The Map Method
相鄰表示只有一個bit不同
### Two-Variable
- 4 minterms
- 4 squares, one for each minterm
![](https://imgur.com/gqeABk6.jpg)
### Three-Variable
- 8 minterms
- 8 squares
![](https://imgur.com/l6FzI1H.jpg)
### Procedure of map minimization of SOP
1. marked 1 for squares for minterms you have
2. Find possible adjacent $2^k$ squares
    - $2^k$: remove k literral 
### Four-Variable
- 16 minterms
- 16 squares
![](https://imgur.com/1eFs9Ws.jpg)

### Prime Implicants
