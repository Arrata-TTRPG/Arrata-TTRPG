#import "../typst-boxes.typ": *

= Stats

Now that we've established the basic rules of dice, we can translate those into the mechanics, different parts of Characters, and the components that make them up. A stat is a composition of two elements:

- *Quality*: The $C$ constant used for a conditional roll.
- *Quantity*: The number of $d 6$s to roll.

Stats are values that represent the capability of a single part of something or someone. They represent, in a statistical sense, the upper and lower bounds of what that part can do.

== Quantity

Quantity has already been defined; it is the number of dice rolled, specifically in $d 6$s. It specifies the $Y$ component of $Y d X$ or the value of the dice pool. In a more character-focused sense, Quantity represents the capacity to do what a particular stat does. It defines the upper bound for the stat's capability.

Quantity is an *uncapped* value, meaning that Quantity values can be arbitrarily large, from 1 to whatever lies just below infinity. Luckily, you won't need to purchase $infinity - 1$ $d 6$s, as Arrata will almost always deal with Quantity values from 1 to 10. In rare cases, Quantities might be in excess of 20, but those are extremely rare and represent supernatural forces beyond conventional limits.

== Quality

Quality is the $C$ constant used for a conditional roll for the dice pool. In Arrata, Quantity comes in 3 levels:

- #strong[B]asic:  $C$ = 3.
- #strong[A]dept:  $C$ = 2.
- #strong[S]uperb: $C$ = 1.

When referring to the Quality of a stat, we use the capital first letter of the name of the Quality, as highlighted above.

Here are a few examples of dice notation conditionals and their corresponding Quality:

- $10 d 6>3$ is $B$ Quality.
- $4 d 6>2$ is $A$ Quality.
- $ 5d 6>1$ is $S$ Quality.

Quality is special in terms of characters' stats as it represents not how much a person could do with a stat, but how easily they reach that maximum. Most stats will be of Basic Quality, being Adept or Superb means that stat is beyond conventional ability; usually representing some sort of prodigal ability or technologically advanced method.

== Composition

Stats in Arrata are not written in dice notation. Instead, they are composed in the format $Q Y$ where $Q$ is the letter of the Quality and $Y$ is the value of the Quantity. Additionally, there may be modifiers, which are typically appended to the front of the stat when it's being rolled. Stats that are simply being stored, say on a character sheet, should never have modifiers. Here are three example stats:

#slantedColorbox(
  title: "Stats Outline",
  width: auto,
  radius: 0pt,
  color: black,
)[
#set text(size: 8pt)
_Note: Modifiers are used later, but are important to keep in mind._

  $ overbracket("B", "Quality") #h(-1cm) underbracket(6, "Quantity") quad quad underbracket(100, "Quantity") #h(-0.3cm) overbracket("A", "Quality") quad underbracket("¿?!¡", "Modifiers") #h(-0.35cm) overbracket("S", "Quality") #h(-0.2cm) underbracket("40,000", "Quantity") $
]

Now that stats are defined, we can discuss what they're used for.

== Checks

A critical part of roleplaying is meeting something that is challenging for the character to overcome. When this happens; when an action is contested, a \textbf{Check} is called for. Dice are rolled and compared to a {\em difficulty level} to determine the outcome.

Checks are the core of the vast majority of TTRPGs, and Arrata is no different in this regard. Knowing when a check occurs and what to do are critical pieces of information for GMs and players alike. Not only do they drive the story, but checks are also used to challenge aspects of characters, which allows them to discover, learn, and change. This seemingly secondary role is where you will often find the most drama, and how you choose to pursue challenges and how you guide your character's changes are what this is all about.

=== Success and Failure

Because Arrata uses dice pools and comparisons, every die rolled is defined as either a \emph{Success} or \emph{Failure}. 

Quality defines the threshold for what a success is; if a die is rolled and is greater than its Quality constant, then the die rolled is counted as a success. This is done for each die you roll and the number of successes is summed up. Any die whose value is less than or equal to the Quality (value rolled $<=$ Quality) is called a failure. The sum of the failures of a roll is not usually used for anything, and the need for that operation will be stated ahead of time, so when you make a typical roll, unless specified, don't worry about summing your Failures up, just the Successes.

#slantedColorbox(
  title: "Dice Conditionals Examples",
  width: auto,
  radius: 0pt,
  color: black,
)[
#set text(size: 8pt)
_Note: Successes get probabilistically more occurrent with higher Quality._
#table(columns: (auto, auto),
  [Rolling $B 2$:], [$(4,2) > 3 = 1$ _Success_, $1$ _Failure_],
  [Rolling $A 5$:], [$(2, 6, 1, 3, 5) > 2 = 3$ _Successes_, $2$ _Failures_],
  [Rolling $S 4$:], [$(6, 2, 5, 4) > 1 = 4$ _Successes_, $0$ _Failures_],
)
]

=== Obstacle

In Arrata we refer to the _difficulty level_ as *Obstacle*. When making a check, this value will be provided by the GM, by a specific subsystem, or it may not be provided at all (in which case, consider the Obstacle to be 0). Obstacle defines the lower bound of the number of successes needed to _pass_ the check. If you roll successes below this value, you will _fail_ the check. If an Obstacle value is higher than your stat's Quantity, you may attempt the check, but it may be better to seek alternative strategies.

For nomenclature's sake, Obstacle is shortened to Ob $X$, where Ob stands for Obstacle and $X$ represents the value of the Obstacle for the check. For an entire check, it is written in the form _Stat_ vs _Ob_ $X$.

#slantedColorbox(
  title: "Obstacle Examples",
  width: auto,
  radius: 0pt,
  color: black,
)[
#set text(size: 8pt)
_Note:_ vs _is a $>=$ operator, so $3$_ vs _$3$ is a Success._

#align(center)[
    Rolling $B 2$ vs _Ob_ 1: $B 2 = (2, 2)>3 = 0$ Successes

    0 Successes vs _Ob_ 1: _Failure..._

    Rolling $A 4$ vs _Ob_ 2: $A 4 = (5, 6, 3, 5)>2 = 3$ Successes

    3 Successes vs _Ob_ 2: *Success!*

    Rolling $S 6$ vs _Ob_ 4: $S 6 = (1, 5, 1, 2, 3, 4)>1 = 4$ _Successes_

    4 Successes vs _Ob_ 4: *Success*!
  ]
]

=== Intent

When a check is called for, _Intent_ must be defined for all parties involved. It's the GM's job to sum up these Intents and put forward _outcomes_. For the GM, they should define at least two outcome: Success and Failure. If there is ambiguity, 

=== Extra Successes

When you roll past the Obstacle of a check, it might be that your GM allows for additional boons depending on your intent in the task. If you're trying to attack someone, you might deal them additional wounds, if you're haggling for a better price, you may very well rob them of a golden ring for a measly button. The magnitude of this boon shall be determined by the GM, although moderation is advised; going too far may result in more negative outcomes than expected (see: The Monkey's Paw).

#slantedColorbox(
  title: "A Chef's Roll",
  width: auto,
  radius: 0pt,
  color: black,
)[
#set text(size: 8pt)
    _A cook is making a large volume of stew with their $B 5$ cooking skill. The GM declares that with their ingredients, the Obstacle of the check will be Ob 2. The cook rolls and gets all 5 successes! The GM says that because the cook not only met but surpassed the Obstacle, the resultant stew is incredibly delicious, and the patrons consuming it are mesmerized._

    _Note: There are no extra consequences to having successes under the Obstacle of the check._
]

== Advantage

Events may occur such that a side in a check has manipulated the circumstances in their favor. We refer to this favor as _Advantage_, and multiple instances of favorable conditions induce higher levels of Advantage. For example: exploiting the environment, having a relevant Quirk, playing into your Argos, having the high ground in a fight, and getting Help from another character would all induce a level of advantage, _each_. If someone truly possessed all of those conditions, we would say they _have 5 levels of advantage_. 

When advantage is had, the rolling side with advantage turns their roll into an open-ended roll. In addition, if multiple sources provide a level of advantage higher than 1, or the roll was already open-ended, then the extra levels of advantage turn into $+1D$ each.

With open-ended rolls, remember that any maxes of the die (6) will add $+1D$ to the roll. These 6s that have been rolled and are giving $+1D$ are also counted as successes. 
    
#slantedColorbox(
title: "Advantage Example",
width: auto,
radius: 0pt,
color: black,
)[
#set text(size: 8pt)
  _Note: Open-ended rolls are denoted with a $!$ modifier._

  #align(center)[
    Rolling $B$3 vs _Ob_ 4 with 3 levels of advantage:

    $!B 3 + 2 = !(6, 4, 6, 2, 4)>3 = 4$ Successes $+ !B 2$

    $4$ Successes $+ !(4, 2)>3$

    $4$ Successes vs _Ob_ 4: *Success!*
  ]
]

== Disadvantage

There are also situations where the inverse may be true; the terrain is unfavorable, your Quirks are opposed to the action, it opposes your Argos, having the low ground in combat, and enemies harrying you would all induce a level of disadvantage each.

Disadvantage imposes Evil dice to the roll, and is also obtained in levels. Past the first level of disadvantage, or if the roll already has Evil dice, the check will have +1 Ob imposed per level of extra disadvantage.

Evil dice subtract -1 Success from rolls that result in a minimum value for a d6 (1). 

#slantedColorbox(
  title: "Disadvantage Example",
  width: auto,
  radius: 0pt,
  color: black,
)[
#set text(size: 8pt)
_Note: Rolls with Evil Dice are denoted with a ¡ modifier._
#align(center)[
    Rolling $S 5$ vs _Ob_ 3 with 2 levels of disadvantage: 
    
    $¡ S 5 = (4, 1, 5, 2, 6)>1 = (3 - 1)$ Successes

    2 Successes vs _Ob_ 4:_ Failure..._
]
]

== Help, All at Once

There comes a time when two or more characters will be working towards the same goal at the same time. It could be that someone is attempting to help others, which is called Help, or that they're doing a sensitive task in parallel, which is called All at Once. Choose a character to act as the leader of the roll - this person should be the one who is relying the most on the other characters; the weakest link, the loudest sneak, the dumbest think.

Have the non-leading characters roll first, summing the successes and failures. Subtract the failures from the successes, and give that level of advantage to the leader of the roll. If the number is negative, give that level of disadvantage instead. Also, note down a check for all characters rolling here.

Here is an example of Help:

#slantedColorbox(
  title: "Agnar's Help",
  width: auto,
  radius: 0pt,
  color: black,
)[
#set text(size: 8pt)
    _Agnar woke up at the bottom of a pit with a large boulder on top of him! He's uninjured, but at an awkward angle; luckily, his comrade Steven has arrived to help! Since Agnar is in the disadvantaged position and is the one in need of help, he'll be making this supporting roll with his A5 Power stat, and Steven will be leading the roll with his weaker B4 Power stat. The GM puts that, to free Agnar, the Ob will be 3. Failing to meet that Ob will result in the boulder crushing Agnar's foot, injuring him!_

    _Agnar rolls first: 3 successes - 2 failures, a net of +1! That means Steven gets to roll with a level of advantage! Steven rolls: !(6, 1, 5, 2), 2 successes but he gets to roll an extra B1 because of the help from Agnar: (4), making 3 successes! They both roll the boulder off Agnar, an act that seems to have won Steven some free liquor tonight!_
]

And one of All at Once:

#slantedColorbox(
  title: "All at Once",
  width: auto,
  radius: 0pt,
  color: black,
)[
#set text(size: 8pt)
    _Steven hears the scraping of boots up ahead. Unfortunately, both Agnar and himself lost their weapons in the fall and will need to deploy stealth if they hope to avoid getting gutted. Unfortunately, this calls for a Stealth check, one that falls under All at Once, and Agnar has the tact and Stealthiness of a pregnant horse (B2). Steven sighs, and prepares his A6 Stealth roll. The GM declares that this Stealth check will be an Ob 4._

    _He gets 5 successes - 1 failure! A net +4 advantage for Agnar! That means Agnar rolls a !B5: (6, 6, 3, 4, 1). 3 Successes so far, but he gets 2 more from the open-endedness of the roll: (4, 1). That makes 4 successes! Through some miracle, Steven manages to compensate for Agnar's bumbling mess of a stealth attempt, and they sneak past whatever's prowling these halls in one- well, two pieces._
]
#pagebreak()