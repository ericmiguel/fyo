#!/bin/bash -e

set -x
autoflake --remove-all-unused-imports --recursive --remove-unused-variables --in-place docs_src fio tests scripts --exclude=__init__.py
black fio tests docs_src scripts
isort fio tests docs_src scripts