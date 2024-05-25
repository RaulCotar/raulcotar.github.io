# Website thingy

File structure:
- [build]() - automatically generated, holds the site being served
- [pages](pages) - holds all the markdown source for the pages
- [res](res) - holds resources like images, everything in here gets copied to [build/res]()
- [template.html](template.html) pandoc conversion template
- [styles.html](styles.html) used to generate css (included in the template)

The build sytem is a simple [Makefile](Makefile) that compiles everything from [pages](pages) and [res](res) into static web pages.  
I use [Pandoc](https://pandoc.org) for converting [Commonmark] \(with [pandoc extensions]\) to HTML5 with a custom template.

[Commonmark]: https://commonmark.org
[Pandoc extensions]: https://pandoc.org/chunkedhtml-demo/7-extensions.html#extensions

## Page Ideas

- home page be a presentation page for myself and this website/blog
