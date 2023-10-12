---
title: MEOWS - My (first) web server
author: Raul Cotar
---
MEOWS - My (first) web server
===

The **M**iniscale **E**fficient **O**pen **W**eb **S**erver is the newest addition in my suite of applets that I write during lectures and late at night. As the name implies, it is just a simple server designed to serve static pages while not draining too much battery life - which it achieves. You can check it out [on GitHub](https://github.com/raulcotar/meows).

I intend to use it as a local server for viewing pages of this website while I work on them, and that is reflected in the current design and implementation. Especially the latter, it is... not great. String processing in particular is done in a pretty janky way. On the flip side, it is pretty quick and simple (<180 LOC!) and supports multiple clients.

A version 2.0 is planned. The main 2 functional changes will be:
- server-sent events - a must for my usecase
- the MEOWS *library* and API - to enable scripting and on-demand page generation

Considering this is my first interaction with web sockets, that I wrote everything in a text editor without any plugins, and that I was half asleep during most of the 2-day-long development process, I am quite happy with the results I got so far.
