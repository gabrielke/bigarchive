#!/bin/bash
zfs create rpool/f
zfs set quota=10G rpool/f
ln -s /rpool/f f

