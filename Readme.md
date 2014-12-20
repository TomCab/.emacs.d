# New-user friendly Emacs configuration

It helps to make the Emacs learning curve a little bit less steep,
particularly by offering a choice of self-completing commands and by
expanding at point in the minibuffer. This allows the new user to get to
know new commands a bit at a time and to enhance the mnemonic process.

The dark background, larger characters and highlighting help to make
everything more readable and to delay the onset of eye fatigue.

I took the configuration files written by Daniel Higginbotham and changed
several things according to my needs. The original configuration files can be
obtained here:

https://github.com/flyingmachine/emacs-for-clojure

And a great explanation on how to use Emacs to code in Clojure can be found
here - also by Daniel Higginbotham:

http://www.braveclojure.com/basic-emacs/


## Support for Racket and other Lisp(y) languages

"Racket-mode", with its DrRacket-style REPL, parentheses matching,
Racket-specific highlighting and indentation help a lot to avoid many
mistakes while "Racketeering".


## Support for R programming and data viewing

ESS and related packages provide ample support for coding in R and enhance
the readibility of the code.

RStudio is great, but the point is that I don't want to learn to use a
new IDE each time I code in a new language. If I can code in R from
within Emacs, then I do it. I'd rather spend my time learning the ins-and-outs
of the language than to waste it learning to use a new IDE each time.


## Support for Markdown files

The ELPA package "markdown-mode" v2.0 is compatible with Emacs24 or higher.
Although it seems to be compatible with prior versions, if you run into any
problems, you can remove the version installed automatically by "init.el" and
then download and install a prior version. Prior versions can be obtained
here:

http://jblevins.org/projects/markdown-mode/

Be aware, that, if you do this, you have to remove the item "markdown-mode"
from the package list in "init.el" before you restart Emacs, otherwise
the prior version of the package will be replaced by the latest.


## Manage Git from within Emacs

The same objective as above: not having to learn to use another git client to
manage my local and remote Git repositories.
