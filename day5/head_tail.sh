#!/bin/bash

# Write a program to simulate a coin flip and print out "Heads" or "Tails" accordingly.

echo "Head tail game.."
echo "Tossing the coin:"
if (($RANDOM%2))
then
echo "It's HEAD"
else
echo "It's TAIL"
fi