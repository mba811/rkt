#!/bin/bash -eu

# Helper script for Continuous Integration Services

if [ "${CI-}" == true ] ; then
	# https://semaphoreci.com/
	if [ "${SEMAPHORE-}" == true ] ; then
		# To avoid having an empty body (and thus a syntax
		# error) when there are no dependencies to install.
		:

		# Most dependencies are already installed on Semaphore.
		# Here we can install any missing dependencies. Whenever
		# Semaphore installs more dependencies on their platform,
		# they should be removed from here to save time.

		# If there is some dependency to install then
		# uncomment the following line and add "sudo apt-get
		# install -y <dep>" after it.

		# sudo apt-get update -qq || true
	fi
fi
