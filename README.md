Just a simple Dockerfile to allow installation of additionnal LaTeX packages.

Cause the official Sharelatex image provide TeX Live 2017, `tlmgr` need an upgrade (see : [TeXLive package manager requires an upgrade issue][texlive package manager issue 90]).

Also add some packages for physics papers [see the Dockerfile][list latex packages].

[list latex packages]: https://github.com/ipr-cnrs/sharelatex-docker-image/blob/master/Dockerfile#L18
[texlive package manager issue 90]: https://github.com/sharelatex/sharelatex-docker-image/issues/90
