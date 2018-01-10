#!/bin/sh
test "$(git config --global user.email)" = 'andrewshawcare@gmail.com'
test "$(git config --global user.name)" = 'Andrew Shaw Care'
