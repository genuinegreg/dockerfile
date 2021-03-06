#!/bin/bash


which ./btsync &>/dev/null
if [ $? -ne 0 ]; then

    # downloading and expending btsync
    echo "=> Downloading btsync..."
    wget --progress=dot -e dotbytes=10k http://download-lb.utorrent.com/endpoint/btsync/os/linux-x64/track/stable
    tar -xf stable
    rm stable

    # checking btsync executable
    which ./btsync &>/dev/null
    if [ $? -ne 0 ]
    then
        echo "=> Downloading btsync... FAILED"
        exit -1
    fi

    echo "=> Downloading btsync... OK"
fi


# checking defalut params
NAME=${NAME:-default_name}
SECRET=${SECRET:-`./btsync --generate-secret`}

echo "starting btsync node \"$NAME\""

# copy sample config
cp sample.json btsync.conf

sed -i s/##DEVICE_NAME##/$NAME/ btsync.conf
sed -i s/##SECRET##/$SECRET/ btsync.conf

# prepare data directory
mkdir -p /data/folder/
mkdir -p /data/.sync/

echo "=> Running btsync..."

echo "By using this application (btsync), you agree to our Privacy Policy and Terms."
echo "http://www.bittorrent.com/legal/privacy"
echo "http://www.bittorrent.com/legal/terms-of-use"

/btsync --nodaemon --config btsync.conf