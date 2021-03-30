---
tags: 數位電路設計, 資工系必修
---
# Boolean Algebra and Logic Gates
![](https://imgur.com/k29buVu.jpg)
## Truth Table
The basic proof way.

## Postulate/Theorem
![](https://imgur.com/gU0lRbB.jpg)

## Algebraic Manipulation
Term: $wx+yz$ have two terms$\{wx, yz\}$

Literal: a primed or unprimed variable $\{w,x,y,z\}$

### Complement of a Function
By DeMprgan's Theorem

## Canonical Forms
### sum-of-minterms
$F=x'y'z+xy'z'+xyz = m_1+m_4+m_7=\sum{m_{(1,4,7)}}$
![](https://imgur.com/FBRHo8O.jpg)

### product-of-maxterms
$F=(x+y+z)(x+y'+z)(x+y'+z')(x'+y+z')(x'+y'+z)=M_0M_2M_3M_5M_6=\prod{M_{0,2,3,5,6}}$
![](https://imgur.com/fUyN1mH.jpg)

## Standard Forms
2-level gating structure
### sum of products
![](https://imgur.com/koDqSjD.jpg)
### product of sums
![](https://imgur.com/pDyhbCi.jpg)

## Other Logic Gate
![](https://imgur.com/7Xu5OVA.jpg)
選擇有意義的做成GATE(有更多性質者,如分配率,或可組出所有電路者)
- AND
- OR
- NOT
- Buffer
- NAND
commutative but not associative ⇒ not extendable
- NOR
commutative but not associative ⇒ not extendable
- XOR
commutative and associative
- XNOR
commutative and associative

## Postive Logic
High vote be 1
Low vote be 0
## Negative Logic
High vote be 0
Low vote be 1

## Integrated Circuits (ICs)
### level
- SSI: < 10 gates
- MSI: 10 ~ 100 gates
- LSI: 100 ~ 1000 gates
- VLSI: > 1000 gates
### Digital logic families: ckt technology
TTL: transistor-transistor logic

ECL: emitter-coupled logic (speed)

MOS: metal-oxide semiconductor (density)

CMOS: complementary MOS (power)
> The basic ckt in each family is a NAND, NOR, or inverter gate. (Ch3)

## Technology Parameters (not complete know)
- Fan-in: # of inputs available on a gate
- Fan-out: # of standard loads driven by a gate output
- Noise margin: the max external noise voltage superimposed on a normal input value that will not cause an undesirable change in the ckt output
- Cost for a gate: is usually based on the area occupied by the layout cell (∝ the size of the transistors & the wiring in the gate layout)
- Propagation delay: the time required for a change in value of a signal to propagate from input to output
> The operating speed of a ckt is inversely related to the longest propagation delays through the gates of the ckt.
- Power dissipation: the power drawn from the power supply and consumed by the gate
> must be considered in relation to the operating temperature and cooling

![](https://i.imgur.com/YeCKE7h.png)

$Answer = 0.04+0.012\cdot1\\
\quad\quad\quad\quad+0.05+0.014\cdot(1+1)\\
\quad\quad\quad\quad+0.04+0.012\cdot0.95\\
\quad\quad\quad\quad+0.15+0.012\cdot1\\
\quad\quad\quad\quad+0.05+0.014\cdot SL$

Sum of all next gate Inpute load is SL.

Last gate's SL is not known.
