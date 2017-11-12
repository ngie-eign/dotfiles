#!/bin/sh

for f in .*; do
	case "$f" in
	.|..|.git)
		printf "Skipping $f\n"
		continue
		;;
	*)
		printf "Installing $f to $HOME/$f\n"
		#diff -Naur "$f" "$HOME/$f"
		cp -Rf "$f" "$HOME/."
		;;
	esac
done
