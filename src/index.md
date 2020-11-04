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

Higlight

```js [1|3-5]
public function foo()
{
   $foo = array(
       'bar' => 'bar'
   )
}

```

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

## Title 2

### Title 3

#### Title 4

# Thanks !
