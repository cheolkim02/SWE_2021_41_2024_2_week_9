#!/bin/bash

# Define arrays for test inputs and expected outputs
nums_list=(
    "[2,7,11,15]"
    "[3,2,4]"
    "[3,3]"
)

targets=(
    9
    6
    6
)

answers=(
    "[0, 1]"
    "[1, 2]"
    "[0, 1]"
)

# Get the number of test cases
num_cases= ## Fill num_cases with the number of test cases
pass_count=0

# Loop through each test case
for ((i=0; i<num_cases; i++)); do
    nums= ## Fill nums with the current test case
    target= ## Fill target with the current test case
    answer= ## Fill expected with the current test case
    
    # Run the twoSum function and capture the output
    output=$(python3 -c "from main import twoSum; print(twoSum($nums, $target))")
    
    # Compare the output with the expected output
    if [ "$output" == "$answer" ]; then
        echo "Test case $((i+1)): Passed / Expected: $answer, Got: $output"
        ((pass_count++))
    else
        echo "Test case $((i+1)): Failed / Expected: $answer, Got: $output"
    fi
done

# Print the summary of test results
echo "$pass_count/$num_cases test cases passed"