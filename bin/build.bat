ttree -f etc/ttree.cfg %*
ttree -f etc/ttree-docs.cfg %*
rsync -aq --exclude=.git --exclude=/*.html src/docs/ dest/docs
perl bin/build-docs.pl
