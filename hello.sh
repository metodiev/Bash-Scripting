#!/bin/bash

function greeting() {
    hello="Hello, $name"
    echo $hello
}

echo "Enter name"
read name
val=$(greeting)
echo "Return valuf of the function is $"
