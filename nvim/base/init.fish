if set -q PUID && set -q PGID
    usermod --non-unique --uid $PUID abc
    groupmod --non-unique --uid $PGID abc

    chown --quiet -R $PUID:$PGID /home/abc
end

exec runuser --login abc
