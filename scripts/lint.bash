#!/bin/bash

set -e
set -x

mypy fio
flake8 fio tests
black fio tests --check
isort fio tests docs_src scripts --check-only