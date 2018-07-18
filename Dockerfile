FROM sharelatex/sharelatex:v1.2.1

# Copy the previous TeX Live environment
RUN cd /usr/local/texlive ; \
    cp -a 2017 2018

# Upgrade to Tex Live 2018 from official instructions :
#	https://www.tug.org/texlive/upgrade.html
RUN cd /usr/local/texlive/2018 ; \
    wget --quiet -- http://mirror.ctan.org/systems/texlive/tlnet/update-tlmgr-latest.sh ; \
    sh update-tlmgr-latest.sh  -- --upgrade ; \
    tlmgr update --self --all

# Set the new PATH for Tex Live 2018
ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/texlive/2018/bin/x86_64-linux/
