# Contributing

If you found a mistake, write an [issue][2] or send a pull request.

To contribute, e.g. translation, fork this Git repository, make a new branch, clone the branch to 
your local computer, and edit the `*.md` files. After this, send me a pull 
request of your committed files.

The source files are written in Markdown and converted into HTML using the 
GitHub markdown parser, therefore you can use the [GitHub flavored syntax][1].

## General rules

* Only use ATX style headlines (e.g. `# H1` or `### H3`)
* Always add two empty lines above each headline
* Always add links at the bottom of the document (e.g. `[Google][1]`)
* Use can use plain HTML markup to render tables
* Add line breaks after 80 characters in paragraphs


## Code snippets

To highlight code snippets, please specify the language as follows:

    ```php
    // The code goes here
    ```

GitHub can handle this syntax as well but our Markdown parser cannot handle the
GitHub syntax.


## Images

Links to images should be relative to the current document.

    ![](images/synchronization-options.jpg)


## Internal links

Internal links are links that point to another markup file in the same
subdirectory as the file you are editing. Please use the file name and anchor
to create internal links:

    [1]: 03-managing-pages/style-sheets.md#style-sheets

If you are unsure about formatting, just take a look at the existing files.


## Tools / Helpers

Online Markdown Editor: http://jbt.github.io/markdown-editor


[1]: https://help.github.com/articles/github-flavored-markdown
[2]: https://github.com/BugBuster1701/docs/issues
