#!/usr/bin/env bash
set -e

# shellcheck disable=SC2128
cd "$(dirname "$(readlink -f "$BASH_SOURCE")")/.."

# see also ".mailmap" for how email and names are deduplicated
{
	cat <<-'EOH'
		# This file lists all individuals having contributed content to the repository.
		# For how it is generated see `generated-authors.sh`
	EOH
	echo
	git log --format='%aN <%aE>' | LC_ALLC.UTF-8 sort -uf
} > AUTHORS
