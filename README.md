<div align="center">

# `tidy`<sup>1</sup>

✨ a mini app _anyone_ can use to **organize** their **_real-world_ life** 🪄

![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/dwyl/tidy/ci.yml?label=build&style=flat-square&branch=main)
[![codecov.io](https://img.shields.io/codecov/c/github/dwyl/tidy/main.svg?style=flat-square)](https://codecov.io/github/dwyl/tidy?branch=main)
[![Hex.pm](https://img.shields.io/hexpm/v/fields?color=brightgreen&style=flat-square)](https://hex.pm/packages/fields)
[![docs](https://img.shields.io/badge/docs-amaze-brightgreen?style=flat-square)](https://hexdocs.pm/fields/api-reference.html)
[![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat-square)](https://github.com/dwyl/tidy/issues)
[![HitCount](https://hits.dwyl.com/dwyl/tidy.svg)](https://hits.dwyl.com/dwyl/tidy)


</div>

- [`tidy`1](#tidy1)
- [Why? 🤷‍♀️](#why-️)
  - [Why an Build a Mini-App for This?](#why-an-build-a-mini-app-for-this)
    - [The Problem with Using Instant Messages ...](#the-problem-with-using-instant-messages-)
  - [Will Building an App _Magically_ Resolve the Issue? 🪄](#will-building-an-app-magically-resolve-the-issue-)
- [What? ✨](#what-)
- [When? ⏳](#when-)
- [Who? 👥](#who-)
- [How? 💻](#how-)
  - [Run it ⬇️](#run-it-️)
- [TODO: add screenshot!](#todo-add-screenshot)
  - [_Build_ It! 👷‍♀️](#build-it-️)
  - [Feedback! 🙏](#feedback-)
  - [Contributing 👩‍💻](#contributing-)
    - [More Features? 🔔](#more-features-)
- [Where Can This Go? 💭](#where-can-this-go-)
  - [How _Many_ People Are Affected? 💭](#how-many-people-are-affected-)
  - [Is there a "Market" for a `tidy` App?](#is-there-a-market-for-a-tidy-app)
  - [Hoarders? 🙈](#hoarders-)
  - [Other Use Cases?](#other-use-cases)


<hr />

# Why? 🤷‍♀️

Our house is untidy. 
There is clutter 
(`objects` that don't belong 
in a particular room/surface) 
_everywhere_. <br />
It's both mentally and physically _exhausting_
and deeply negative
to both adults 
and _especially_ children. 😢

We need to resolve this as our _highest_ priority
because it affects us every day.

## Why an Build a Mini-App for This?

We _currently_ use instant messages 
([`signal.org`](https://signal.org/))
to ask questions like:
"_**Where** is `XYZ`?_" 
when searching for an `object`
or 
"_**Where** does this belong?_" 
when someone wants to tidy an `object` away
but does not know where it goes. 🤷‍♂️

### The Problem with Using Instant Messages ...

Instant messaging is fine for getting a _fast_ reply.
But it's _horrible_ for 2 specific reasons:

1. The **history** is **lost** almost _immediately_ 
   so we have to **keep asking** the **_same_ questions** ...

2. Any **`new` `person`** joining the house/team 
   has no way of knowing where _anything_ is/belongs.

3. Often the message featuring the question about an `object` 
   gets pushed up by newer messages in a group thread
   and gets forgotten about - i.e. remains unresolved. 🤦‍♀️

So if we `continue` using instant messages,
we still have _exactly_ the same problem
with a bandaid over it and no _permanent_ solution. 🩹

## Will Building an App _Magically_ Resolve the Issue? 🪄

Of course not! 
We aren't pretending that it will. <br />
All we want is a _systematic_ approach to tidying
where everyone in the house/team can communicate
and get answers to the questions they have 
in a timely manner 
and most importantly,
have a _record_ of where things belong
so that when the question arises _again_,
the answer can be surfaced _immediately_.
Rather than having to continually ask the same question(s).

We know that _many_ other people 
have the same problem(s) 
and need a practical solution.


# What? ✨

A micro app with a **_simple_ goal**: 
help you **declutter, tidy & organize** 
your **_physical_ environment**
so you can start living your "***best life***".

# When? ⏳

We want to build this mini app 
so we can _use_ it internally `ASAP`.

# Who? 👥

For now, `tidy` is used 
by the `people` living/working
[`@home`](https://github.com/dwyl/home/issues/256).

But if we can refine the features/functionality,
we will encourage others to use it.

# How? 💻

Try it: 
URL HERE!


## Run it ⬇️

1. Clone the repo:

```sh
git clone git@github.com:dwyl/tidy.git && cd tidy
```

2. Install the dependencies and create the database:

```sh
source .env_sample
mix setup
```

3. Run the app:

```sh
mix s
```

Visit 
[`localhost:4000`](http://localhost:4000) 
from your browser,
you should see something similar to:


# TODO: add screenshot!


## Schema



## _Build_ It! 👷‍♀️

The creation of this mini-app is _fully_ documented in:
[dwyl/book/**tidy**](https://dwyl.github.io/book/tidy/)


## Feedback! 🙏

Your feedback is very much encouraged/welcome! 💬<br />
If you find the repo interesting/useful, please ⭐ on GitHub. <br />
And if you have any questions,
please open an issue:
[tidy/issues](https://github.com/dwyl/tidy/issues) ❓
<br />


## Contributing 👩‍💻

All contributions 
from typo fixes
to feature requests
are always welcome! 🙌

Please start by: <br />
a. **Star** the repo on GitHub 
  so you have a "bookmark" you can return to. ⭐ <br />
b. **Fork** the repo 
  so you have a copy you can "hack" on. 🍴 <br />
c. **Clone** the repo to your `localhost` 
  and run it! 👩‍💻 <br />


For more detail,
please see:
[dwyl/**contributing**](https://github.com/dwyl/contributing)

### More Features? 🔔

Please note that our goal with `tidy`
is _not_ to have _all_ the features; 
again, it's _deliberately_  simple.<br />
We will be adding _lots_ more features
to the _full_
[**App**](https://github.com/dwyl/app). <br />
If you have feature ideas, that's great! 🎉 <br />
Please _share_ them: 
[**app/issues**](https://github.com/dwyl/app/issues)


# Where Can This Go? 💭

We're building an `App`
to help `people` 
keep their life `tidy`
because we _know_ that
it's a _real_ problem
that affects _many_ people. 
## How _Many_ People Are Affected? 💭

If you are lucky enough 
to have grown up 
in a home 
where **_everything_ has a place**
and is **always _perfectly_ tidy**,
count yourself _exceptionally_ lucky!
You lived in a magazine shoot:

![minimalist-magazine-home](https://github.com/dwyl/tidy/assets/194400/a3df4068-197c-40e6-963f-4fac1c2483d3)
Image credit:
[gjgardner.com/learn/minimalist-home-design-ideas](https://www.gjgardner.com.au/learn/planning-your-home/how-s-the-serenity-minimalist-home-design-ideas/)

Magazine minimalism is _not_ the "norm";
**_most_ `people`** 
have some degree of clutter
in their homes. 
Either hidden in their closets 
or in plain sight if they don't have "enough" closet space.
**_Most_ `people`** in a consumer society 
continue buying stuff
and don't have infinite shelf/wardrobe/cupboard space ...
it's _physics_! 

Many `people` have this problem ...

![cluttered-home](https://github.com/dwyl/tidy/assets/194400/aa97ae8d-5a94-4b8d-a98e-0954604ce7c4)

Image credit: 
[go.com/Health/clutter-affects-health](https://abcnews.go.com/Health/clutter-affects-health/story?id=60367240) <br />

[Marie Kondo](https://en.wikipedia.org/wiki/Marie_Kondo)
wouldn't _need_ 
to write 
"_The **Life Changing Magic** of **Tidying Up**_" - 
the NYT Bestseller that has **sold** more than 
[**9 Million Copies**](https://github.com/dwyl/home/issues/256#issuecomment-1742853750) -
if this wasn't a _widespread_ issue.


> Plenty more examples:
[google.com/search?q=clutter&tbm=isch](https://www.google.com/search?q=clutter&tbm=isch) <br />
Just looking at these images triggers anxiety for me ... 😬 <br />
If you feel the same way, read on! 

## Is there a "Market" for a `tidy` App?

Most definitely, yes! <br />
If we can build something that helps `people`
declutter, donate and systematize their real world <br />
the potential for revenue is significant. 

![pain points](https://github.com/dwyl/tidy/assets/194400/d7ab4cab-f8e9-4523-a865-04f50ba963ff)

For me, the "pain point" 
of having clutter in the house
is level `6` "intense".
I literally feel my heart rate spike when I see it.
But I feel _powerless_ to `do` anything
because it's not _my_ stuff. 😢

We suspect that for some `people`
the the pain is closer to an `8`
and they would _gladly_ throw `$100` at _solving_ the problem.
I'm at a `6` and would _gladly_ pay `$10,000` 
to make it go away _immediately_ (_and **permanently**_). 
Because I know it's _costing_ us money in "opportunity cost"
each and every day. 

## Hoarders? 🙈

At the extreme, 
accumulation of `objects` cluttering 
people's homes is called 
[**hoarding disorder**](https://en.wikipedia.org/wiki/Hoarding_disorder). <br />
It is estimated that around **2% – 6%** of the population 
suffers from it:
[iocdf.org/about-hoarding/who-gets-hoarding-disorder](https://hoarding.iocdf.org/about-hoarding/who-gets-hoarding-disorder/) <br />
If these estimates are correct it's 
**tens of _millions_ of `people`**. 

If we can build a _simple_ App 
that can help both the hoarders
and their 
[long-suffering family](https://news.ycombinator.com/item?id=37077012),
we can 
**_significantly_ improve millions of people's lives**.


## Other Use Cases?

Any `person` that can afford to have someone `else` cleaning their house
has understood the value of their time. 
But may be too busy working to keep their house _perfectly_ tidy.
With a tiny tool that allows
your assistant to easily ask 
"Where does this belong?"
busy people can rapidly respond
and **systematically _organize_** their lives. 

<hr />

<sup>1</sup>**`Tidy`** is our
[**Working title**](https://en.wikipedia.org/wiki/Working_title) 
for this mini App
so we can discuss it internally. 💡👩‍💻<br />
If you have a name idea/suggestion
that better describes 
what we are building,
please share! 🙏💬