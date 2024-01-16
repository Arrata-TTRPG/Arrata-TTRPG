#import "../typst-boxes.typ": *

= Dice

== Why Dice?

Dice are tools that are used to generate random numbers, which are in turn used
to determine the outcome of certain scenarios. By adjusting things like how we
count the value of each die, how many dice are rolled, and what special rules
apply to them, we turn completely random, arbitrary values into probabilities
that reflect the upper and lower bounds of a particular thing.

== Dice Notation

When using and discussing quantities of dice, often the term Dice Notation may
be used. This refers to a system that helps define two things about the dice
being rolled:

- How many dice are to be rolled, represented as $Y$.
- How many sides the dice being rolled have; represented as $X$.

This is composed with a D in between, which stands for dice, in the form $Y D X$,
although I prefer and will use a lowercase d for the rest of this book.
Individual dice are often written without the $Y$ value as $d X$. 

#slantedColorbox(
  title: "Dice Notation Examples",
  width: auto,
  radius: 0pt,
  color: black,
)[
  #set text(size: 8pt)
  _Note: 100-sided dice are often a composition of $1 d 10 + (1 d 10 times 10)$._
  #table(
    columns: (auto, auto),
    inset: 10pt,
    align: horizon,
    [1 6-sided die:],
    [$1 d 6$ or $d 6$],
    [3 dice with 20 sides each:],
    [$3 d 20$],
    [14 dice with 6 sides each:],
    [$14 d 6$],
    [100 dice with 100 sides each:],
    [$100 d 100$],
  )
]

== Rolled Dice

When a roll is made, the result in this book will be recorded in parentheses ()
and each die's result will be separated by commas. These values are chosen at
random for this book, and will be written as $(1, 2, 3, ...)$.

#slantedColorbox(
  title: "Dice Rolling Examples",
  width: auto,
  radius: 0pt,
  color: black,
)[
  #set text(size: 8pt)
  _Note: Ellipses $(r_0,...,r_n)$ are used to represent a range of data._
   
  I rolled a six-sided die and got a $4$:
  $ 1 d 6 = (4) $ 
   
  I rolled 3 twenty-sided dice and got 5, 15, and 20:
  $ 3 d 20 = (5, 14, 20) $
   
  I rolled 100 one-hundred-sided dice and got 99, 65, ..., 23, and 55:
  $ 100 d 100 = (99, 65, ..., 23, 55) $
]

== Addition and Subtraction

There will be cases where a roll would be given or have lost dice to roll, in
which case we represent the change to a quantity of dice as $plus.minus X D$,
where $X$ is the number of dice being added or subtracted and $D$ (always
capitalized) is denoting that $X$ represents a quantity of dice.

Separately, if two different-sided quantities of dice are added, there is no
attempt to unify them into a single roll. Instead, they are left in their
separate states and written as $Y_1$d$X_1$ + $Y_2$d$X_2$.

#slantedColorbox(
  title: "Addition and Subtraction Examples",
  width: auto,
  radius: 0pt,
  color: black,
)[
  #set text(size: 8pt)
  _Note: Different sided dice are never joined together into single a $X d Y$._
  #table(
    columns: (auto, auto),
    [I gained 3d6 for my 6d6 roll:],
    [6d6 + 3D = 9d6],
    [I lost 2d20 for my 4d20 roll:],
    [4d20 - 2D = 2d20],
    [I gained 100d6 for my 5d8 roll:],
    [100d6 + 5d8 = 100d6 + 5d8],
  )
]

== Exploding Dice

There are also cases where dice can "explode". This means that when the maximum
possible value of a die is rolled, the value of that die is kept, and you can
add +1D to the roll, rolling one more die. This can theoretically repeat
infinitely, although the probability of that is essentially impossible.

To denote a roll as exploding, add an exclamation point, $!$, to the front. Here
are a few examples, not that they are summed to show how the value of the
exploded dice affected the outcome:

#slantedColorbox(
  title: "Exploding Dice Examples",
  width: auto,
  radius: 0pt,
  color: black,
)[
  #set text(size: 8pt)
  _Note: Rolled dice that have a modifier applied to them are bolded (*6*)_.
  #table(
    columns: (auto, auto),
    align: horizon,
    [$!X_1 d Y_1$],
    [$= $ !_Result_ $+ X_2 d Y_2$ ... $=$ _Final Result_],
    [!3d6],
    [$=$ (*6* + 2 + 5) $=$ (*6* + 2 + 5) + !1d6 = 13 + (4) $=$ 17],
    [!2d20],
    [$=$ (*20* + *20*) $=$ 40 + !2d20 = 40 + (10 + 15) $=$ 65],
    [!6d2],
    [$=$ (1 + *2* + 1 + 1 + *2* + *2*) $=$ 9 + !3d2 $=$ ...],
  )
]
 

== Evil Dice

In opposition to exploding dice, Arrata will deal with *Evil dice*. Evil dice
are denoted by adding an upside-down exclamation point, $¡$. Instead of giving
the roll an additional die to roll and add to the sum, Evil dice give an extra
D1 that subtracts from the roll.

#slantedColorbox(
  title: "Exploding Dice Examples",
  width: auto,
  radius: 0pt,
  color: black,
)[
  #set text(size: 8pt)
  _Note: Evil dice and Exploding dice can happen simultaneously!_
  #table(
    columns: (auto, auto),
    [$¡X_1 d Y_1$],
    [$= $ ¡_Result_ $- X_2 d Y_2$ ... $=$ _Final Result_],
    [$¡2 d 20$],
    [$= (bold(1) + 5) = 6 - ¡1 d 20 = 6 - (10) = -4$],
    [$¡6 d 6$],
    [$= (4 + 5 + 3 + bold(1) + 2 + 6) = 19 - ¡1 d 6 = 19 - (6) = 13$],
    [$¡3 d 10$],
    [$= (bold(1) + bold(1) + bold(1)) = 3 - ¡3 d 10 = 3 - (bold(1) + 2 + bold(1)) = ...$],
  )
]
== Dice Pools

Arrata functions on *Dice Pools*. This is a way of rolling dice that focuses not
on the sum of the values of the dice rolled, but by comparing each value to a
constant, $C$.

=== Conditionals

For Dice Pools, conditionals are used along with a given constant $C$ to achieve
a specific effect. For Arrata, this conditional is the $>$ comparison operator.
This is used to count the number of dice rolled that are larger than $C$.

#slantedColorbox(
  title: "Dice Conditionals Examples",
  width: auto,
  radius: 0pt,
  color: black,
)[
  #set text(size: 8pt)
  _Note: This condition is $>$, *not* $>=$, so $(3) > 3$ evaluates to $0$, not $1$._
  #table(
    columns: (auto, auto),
    [_Dice Pool $> C$_],
    [_$=$ Result $> C =$ Counted Sum_],
    [$4 d 20>10$],
    [$= (bold(12), bold(13), 4, 1)>10 = 2$],
    [$5 d 4>1$],
    [$= (1, bold(4), bold(2), 1, bold(3))>1 = 3$],
    [$2 d 10>9$],
    [$= (4, 7)>9 = 0$],
  )
]

This counted sum can be used for several schemas, and the value of $C$ can be
used to adjust the probabilities of certain outcomes. The larger $C$ is, the
lower the counted sum is and vice versa.

== The d6

Arrata uses the d6 as its only die to roll. It's a convenient die as they're
extremely stackable, provide a decent window of probabilities, and are often
very cheap and numerous, which is excellent for Arrata because Dice Pool-based
rolls can sometimes call for dozens of dice to be rolled at once.

Because we know all rolls in Arrata use the d6, whenever a Quantity of dice is
discussed, dice notation will not be used. Instead, the roll will be composed
into a *Stat*.


#pagebreak()