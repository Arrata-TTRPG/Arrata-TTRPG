#import "../typst-boxes.typ": *

= Characters

This chapter deals with what and who characters are; what are they composed of, how are they compiled, and how do we go about creating them? 

== Character Stats

As a component of a character, a character's stats define _what_ they are in the world; what they're capable of, and what they aren't. As an overview, these are aspects of characters that don't deserve an entire section:

- Name: What they're known as. Self-explanatory, but could also include pseudonyms and nicknames.
- Player: Who's responsible for playing the character.
- Age: How long has this character lived in this world.
- Stock: The race or species this character hails from.

== Core Stats

The core stats of a character are generalized parts of them: how strong, fast, and smart they are. These stats are used for generalistic scenarios that involve less tact and more brute force to solve a problem, and are often used to determine the magnitude of a particular check's effectiveness if it succeeds.

The core stats are divided into two groups of three, the first being _mental stats_:

- *Will*: General knowledge or common sense, ability to learn, and ability to resist urges. 
- *Perception*: Ability to see, smell, hear, and detect the environment and subtleties of the world.
- *Conscious*: Ability to process and understand information as well as the speed of cognition.

The second group is the _physical stats_:

- *Power*: Strength and physical capability.
- *Speed*: Agility and swiftness to commit actions.
- *Forte*: Physical health, conditioning, and ability to resist malicious infection.

=== Stat Resources

Stat resources (SRs) are a measure of something that a character has or something they're enduring; things like a curse, wealth, or the support of the people, that's been abstracted into a stat. This can be extremely useful to quantify something not necessarily quantifiable and then to allow something quantified to become part of the system in a way that allows it to be used in rolls.

What stat resources a character has and how they function are things to discuss with the GM and other players. If you feel uncomfortable with this mechanic or would rather use exact numbers or roleplay to represent these things, then feel free to ignore Stat Resources altogether.

Stat resources are divided into being either _Finite_ or _Infinite_.

==== Finite SRs

Finite stat resources are things like wealth, the favor of the people, rations for a journey, and so on. These are things that are destroyed, lost, or diminished as you employ them. 

Finite stat resources generally aren't rolled alone. They're used to add onto and modify rolls, but at a cost. When rolling a finite stat resource, _any failures_ reduce the Quantity of the resource by 1. Once the finite resource's Quantity hits 0, the stat resource cannot be used until its Quantity is increased to 1 or above.

#slantedColorbox(
  title: "Finite Stat Resources Example",
  width: auto,
  radius: 0pt,
  color: black,
)[
#set text(size: 8pt)
  // TODO: Create Finite Stat Resource Example
  _Note: Finite stats are not to be confused with resources._

  _#lorem(100)_
]

==== Infinite SRs

Infinite stat resources are things like curses, reputation, and unusual abilities. infinite stat resources are more complicated than Finite ones, and aren't used up when you use them - much the opposite. Infinite stat resources are like core stats, they typically level up like traditional stats and are used to solve problems all on their own.

#slantedColorbox(
  title: "Infinite Stat Resources Example",
  width: auto,
  radius: 0pt,
  color: black,
)[
#set text(size: 8pt)
  _Note: Infinite stats can be used to represent non-fatal disease._
  
  #lorem(100)
]

=== Skills

Skills are the primary way your character will interact with the world. They're niche abilities and knowledge sets that your character has and is actively developing - these are things you use to _pick locks_, _fight monsters_, _make deals_, and _fight for what you believe in_.

Skills are functionally identical to stats, containing a _Quality_ and _Quantity_, but they also come with a _Root_ - which designates the core stat the skill is derived from. The root of a stat represents what aspects of the character are being leveraged for the skill. This can be helpful when determining what exactly a skill does; often times combat skills will use their _Root_ to determine the damage they deal, _Magic_ skills might use their root to determine how powerful a spell is, and so on.

Skills also come with a description, although this is often not written on one's character sheet. The description details what the skill governs, how it can be used in rolls, and what effects it has. These descriptions are usually open-ended and focus more on giving a basic outline of a skill than the letter of law it's governed by.

#slantedColorbox(
  title: "Skill Example: Blade",
  width: auto,
  radius: 0pt,
  color: black,
)[
#set text(size: 8pt)
  _Note: Skills can be composed of multiple roots._

  *Name*: Blade

  *Root(s)*: Power, Speed

  *Description*: One's aptitude with bladed objects such as daggers, swords, greatswords, and axes. On a successful hit, roll the root to deal damage.
]

==== Multiple Roots

Some skills come with more than one root. In this case, the _composite root_ is calculated to have the highest of the roots' Qualities, and the average of their Quantities.

== Change

*Change* is a core pillar of Arrata; we don't have _worthwhile_ stories if nothing changes. The primary way we make them worthwhile in Arrata is through the change of the characters - how they grow stronger, learn from their mistakes, and develop their quirks.

=== Changing Stats

Leveling is a mechanical process through which characters improve their abilities by performing actions and learning from their experiences. Most stats in the game are levelable, but it's important to consult your GM to confirm whether things like _Resource stats_ are eligible for leveling.

==== Check 'Points'

Each time you make a check for a stat that can be leveled, you gain a 'check' (point). These points accumulate slowly, increasing by +1 for every check made. Once the check pool reaches a value of 2 times the Quantity of the stat, the stat immediately levels up! You can then rejoice as you increase the Quantity by +1, and reset the check pool back to 0.

Depending on your character sheet, the check pool may be represented as a designated area to record the current value, such as filling in empty circles or iterating a number field. Regardless of the method, it's crucial to keep track of your checks, as this is the _only_ way a stat can be leveled.

=== Optional: Intuition

When sufficient check points are available for a stat to level, you don't immediately level that stat. Instead, you must spend an intuition point of any category alongside with all of your check points (_even if there's more than needed!_). I offer this as an interesting addition to leveling to try and force more numbers-inclined players to focus on roleplay while still being able to experience that precious dopamine hit. It also forces the players to spend their characters' Intuition more wisely.

=== Changing Quirks

For the moment, an adequate solution to the "Quirk Change" problem has not been found. Assume Quirks are static and do not change - this will be changed in the future! People changing their Quirks is incredbily important, so if you come up with a homebrew solution, feel free to use and share it.

== Building a Character

Now we have everything. We can use all of the pieces we've learned so far to finally build a character.

First and foremost; when making a new character, what resources are available to make a character should be made known by the GM. These resources are:

- What method is prefered for Core Stats.
- How many _Major Skills_ a character may start with.
- The minimum and maximum number of Quirks.
- The Stocks available and their Quirks.
- A setting to help write a backstory.

=== Choosing Core Stats

Core Stats are the fundamental building blocks of any character, and choosing what they are should be the first or second step taken when making them.

There are two preferred methods of _distributing_ Core Stats; _Rolled_ and _Point Buy_. Which is used is up to the GM.

==== Rolled

When using rolled Core Stats, the GM will specify a roll in Dice Notation. You will make a roll for each Core Stat, and for each value rolled, that will be the Quantity of its specified Stat.

You do not need to lock a roll in for a given stat - often in the character creation stage we will rewrite the character once or twice, so if a given roll does not meet the Quantity demands you have a Stat, you can swap it with the Quantity of another Stat.

==== Point Buy

When using Point Bought Stats, the GM will give you a number as a Point-Buy pool. You will the split this number up and distribute it across each Stat as you wish. 

When spending these points, it's important to note that each Core Stat starts at B1. Spending 1 point on Power will raise it to B2.

Note that this is a shared pool; if the GM specifies a pool of 10, all of the Quantities of your Stats should sum to 16 (10 + 6 Core Stats).

Here is a set of ranges of Point Buy values and what level of experience they would correlate with:

0-10: Amateur. Almost useless in everything.

11-15: Young. Able to do some tasks.

16-25: Mature. Competent at the everyday.

26-35: Skilled. Well-trained and experienced in chosen fields.

36+: Expert. Some of the best.

For a typical game, it's recommended to start out in the 26-35 range, although starting lower can be better for first-timers and those who want a challenge.

==== Buying Quality

You may also spend *5 Quantity* to increase the Quality from Basic to Adept. You may also spend another 5 to go from Adept to Superb.

=== Quirks

Alongside Core Stats, choosing what Quirks a character has 

=== Major Skills

When making a character, the GM will give a value for the maximum number of _Major Skills_ a character may have.

You may choose _up to_ this number of skills to be _Major Skills_ - this means that your character starts with these skills, and the Quality and Quantity is equal to their Root(s). Major Skills are important starting pillars for any character. They represent the past actions and experience of the character, as well as the 

=== Character Sheets

The Character Sheet is an incredibly important part of playing any TTRPG - it's how you track your character's development and store all of their information. It's of the utmost importance to keep track of everything you can on the character sheet and to be honest. Liars who cheat end up ruining the game for everyone and should be removed from the game.

There will be provided a character sheet with this guide in the form of a PDF for you to print, although these require a lot of work to maintain with the current ruleset, so they will often be outdated - keep this in mind. Physical character sheets are nice for in-person sessions as they provide a certain level of intimacy with your character - they are made of your writing and thus are in some way a part of you. 

_Note: Make sure you use a pencil for a physical character sheets._

However, physical character sheets can be wasteful. They can be damaged, lost, written on with pen, eaten by your dog, and a whole many more tragedies. That's why I've created an app to create, track, and store character sheets! Currently it's under the GitHub repos of #link("https://github.com/kalebvonburris/Arrata-APP")[Arrata-APP] and you can find the latest releases under #link("https://github.com/kalebvonburris/Arrata-APP/releases/latest").

#pagebreak()