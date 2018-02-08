#!/bin/bash

# run command 'standard_command.sh suppression_folder binary_file output_file'

valgrind --xml=yes --xml-file={2} --leak-check=yes --gen-suppressions=all --error-exitcode=42 --suppressions={0}/common_suppression.txt --suppressions={0}/todo_suppression.txt --num-callers=24 {1}
