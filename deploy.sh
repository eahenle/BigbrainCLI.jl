#!/bin/bash
julia --project -e 'using BigbrainCLI; deploy(ARGS)' $@
