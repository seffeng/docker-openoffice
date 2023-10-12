#!/bin/bash

run() {
    /opt/openoffice4/program/soffice -headless -accept="socket,host=0.0.0.0,port=80;urp;" -nofirststartwizard
}

run

exec "$@"