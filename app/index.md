---
title: Hello world
layout: default
author: John Smith
authors: ["Sixten", "Kalle", "Ivar", "Tore"]
permalink:
---

Hello world

Bland de vanligaste namnen i den engelsk talande världen är; {{page.author}}

<ul>

  {% for author in page.authors %}

    <li>
       {{author}}
    </li>

  {% endfor %}

</ul>

En lista
- Ronald
- Östen
- Viktor
- Egon
- Niklas
