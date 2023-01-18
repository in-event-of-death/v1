#!/bin/bash

awk '/openpgp.min.js/ {
  print "<script>"
  while(getline < "openpgp.min.js") { print; }
  print "</script>";
next;
}
{print}' < source.html > index.html
