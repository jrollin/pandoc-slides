---
title: "Slides with pandoc"
author: Julien Rollin
date: November 4, 2020
---

## About

Make great slides for conf and labs

# Tools

---

- RevealJS
- Pandoc

## Pandoc

![Pandoc](./img/pandoc.png)

## Revealjs

![Revealjs](./img/revealjs.png)

# Tips

## Show some code

---

Code `bash`

```
whatever cmd

```

---


Code `Javascript`

```
//------ lib.js ------
export const sqrt = Math.sqrt;
export function square(x) {
  return x * x;
}
export function diag(x, y) {
  return sqrt(square(x) + square(y));
}

//------ main.js ------
import { square, diag } from "lib";

```

---

Code javascript  with HTML tag


 <pre><code data-trim data-noescape>
(def lazy-fib
  (concat
   [0 1]
   ((fn rfib [a b]
        (lazy-cons (+ a b) (rfib b (+ a b)))) 0 1)))
  </code></pre>

---


Highlight

<pre><code data-line-numbers="3-5|8-10|13-15">
<table>
  <tr>
    <td>Apples</td>
    <td>$1</td>
    <td>7</td>
  </tr>
  <tr>
    <td>Oranges</td>
    <td>$2</td>
    <td>18</td>
  </tr>
  <tr>
    <td>Kiwi</td>
    <td>$3</td>
    <td>1</td>
  </tr>
</table>
</code></pre>


---

Math equations


 `$$ J(\theta_0,\theta_1) = \sum_{i=0} $$`


## Split slides

---

Part 1

---

Part 2

---

Part 3

---

## Layout

---

bullet list:

- list
- list
- list

---

Num list :

1. list
2. list
3. list

---

Checkbox:

- [ ] list
- [ ] list
- [ ] list

---

Quotes:

> My quote !
>
> > My quote !


## Layout 

---

<div class="r-fit-text">BIG</div>

---

<h2 class="r-fit-text">FIT TEXT</h2>
<h2 class="r-fit-text">CAN BE USED FOR MULTIPLE HEADLINES</h2>

---


<h2>Stretch Example</h2>
<img class="r-stretch" src="./img/revealjs.png">
<p>Image byline</p>

## Title 2

### Title 3

#### Title 4

# Thanks !
