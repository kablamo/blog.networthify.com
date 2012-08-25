---
title: The math behind the calculator
date: '2012-08-17'
description: hi hi hi hi
categories: math
---
<script type="text/javascript"
  src="http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML">
</script>

Networthify.com calculates how many years you have to retirement. Lots of
people have been curious about how it arrives at the magic number.  The answer
to this question is: *Math!*

More specifically the equation which drives the calculator is derived from
two common formulas used for dealing with compound interest. Many people must
have done this before me but I couldn't find an example online and I enjoyed
doing the math anyway.

<img class="src" src="http://farm2.staticflickr.com/1228/1443062022_25e5a0a12b.jpg" width="500" height="333" alt="calculator">
<a class="src" href="http://www.flickr.com/photos/brandonshigeta/1443062022/">photo by brandon shigeta</a>

Before we start with the math, we have to define retirement or else we can't
calculate how long it takes to get there.  This is a bit of a problem because
people will define it differently.  But I'll just go ahead do it anyway.

First, I have no idea what my expenses after retirement are going to be but I
decided it can't be that different from my current expenses. After all I will
still need to pay for food, housing, and entertainment. 

Also, I don't want to ever draw down my retirement nest egg. I want my wealth
to grow, not shrink. I'm being overly safe, but I don't want to have some bad
luck or unexpectedly live to 120 years old and have to lower my standard of
living.  I want my standard of living to go up because thats way more fun.

So this is how I defined retirement:

<p>
  \[ 
    \begin{aligned}
      currentExpenses &amp; = annualIncome - annualSavings \\
      futureExpenses  &amp; = withdrawalRate \times futureValue \\
      currentExpenses &amp; = futureExpenses \\
    \end{aligned}
  \]
</p>

where *futureValue* is my total savings after retirement and *withdrawalRate*
is slightly less than my average annual return on investment.  What we want to
know is how long will it take to save a pile of money equal in size to
*futureValue*.  

Notice there are 2 basic ways to build a pile of money over time:

 1. Earn interest earned on our existing and growing pile of saved up money.
 2. Contribute savings from our annual income.

Happily there are formulas for calculating this stuff.  Lets take a look at them.

<div class="mathHeader">The capital accumulation formula</div>

<p>\[ futureValueA = initialValue \times (1 + interestRate)^n \]</p>

Lets say you have an initial pile of money.  And someone is willing to pay you
some interest for it.  This formula calculates how big your pile of money will
be in the future.

More precisely: it calculates how much money you will have in the future given
an initial balance which earns interest each time period for n time periods.
The time period I use is one month.

<div class="mathHeader">The future value of a series formula</div>

<p>\[ futureValueB = payment \times \frac{ (1 + interestRate)^n - 1 }{ interestRate } \]</p>

This formula also calculates how much money you will have in the future. But
this time you start with no money and contribute a payment each time period for
n time periods while earning interest on your growing pile of money.

Again I want to use a time period of one month.  I'll make a small change and
now this formula calculates what happens when you put some of your salary into
your savings account each month:

<p>
  \[ futureValueB = \frac{annualIncome}{12} \times \frac{ (1 + interestRate)^n - 1 }{ interestRate } \]
</p>

But what we really want is a single formula we can solve for n to figure out
how long it will take to reach retirement.  So lets start doing some
substitutions:

<p>
  \[ 
    \begin{aligned}
                   currentExpenses &amp; = annualIncome - annualSavings \\
                   futureExpenses  &amp; = withdrawalRate \times futureValue \\
                   currentExpenses &amp; = futureExpenses \\
                                   \\
                      futureValue &amp; = futureValueA + futureValueB \\
                                   \\
                   currentExpenses &amp; = withdrawalRate \times (futureValueA + futureValueB) \\
      annualIncome - annualSavings &amp; = withdrawalRate \times (futureValueA + futureValueB) \\
    \end{aligned}
  \] 
</p>

Awesome.  So now its a "simple" matter of solving for n. So after doing substitutions for *futureValueA* and *futureValueB*, 
doing natural log stuff, *handwaving*, *handwaving* -- I arrived at the following:

<p>
  \[
    n = \frac{ln(interestRate \times \frac{\frac{1 - savingsRate}{savingsRate} + withdrawalRate \times initialValue}{withdrawalRate \times initialValue})}{ln(1 + interestRate)}
  \]
</p>

And thats the math behind the calculator.  Here is more reading for the super duper interested:

  * http://betterexplained.com/articles/demystifying-the-natural-logarithm-ln/
  * http://www.patrickschneider.com/blog/2008/03/compound-interest-with-an-initial-balance-and-monthly-contributions/
  * http://en.wikipedia.org/wiki/Compound_interest

