#!/bin/sh

for p in .*; do
	case "$p" in
	.|..|.git)
		printf "Skipping $p\n"
		continue
		;;
	*)
		printf "Installing $p to $HOME/$p\n"
		#diff -Naur "$p" "$HOME/$p"
		cp -Rf "$p" "$HOME/."
		;;
	esac
done
