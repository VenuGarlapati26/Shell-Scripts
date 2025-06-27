#!/bin/bash
set -x
x=mississippi
grep -o "s" <<<"$x" | wc -l
