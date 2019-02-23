#!/usr/bin/env bash

get_latest_release() {
  curl --silent "https://api.github.com/repos/fatedier/frp/releases/latest" | # Get latest release from GitHub api
    grep '"published_at":' |                                            # Get tag line
    sed -E 's/.*"([^"]+)".*/\1/'                           # Pluck JSON value
}

release_date=`date -d $(get_latest_release) +"%Y%m%d"`
expration_date=`date -d "-10 days"  +"%Y%m%d"`

if [ $expration_date -ge $release_date ];
then
    exit 0;
fi
exit 1;