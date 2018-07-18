FROM sharelatex/sharelatex:v1.2.1

# Upgrade to Tex Live 2018 from official instructions :
#	https://www.tug.org/texlive/upgrade.html
RUN cd /usr/local/texlive ; \
    cp -a 2017 2018 ; \
    cd 2018 ; \
    wget --quiet -- http://mirror.ctan.org/systems/texlive/tlnet/update-tlmgr-latest.sh ; \
    sh update-tlmgr-latest.sh  -- --upgrade ; \
    tlmgr update --self --all
