#!/bin/bash
set -ex

# Get the directory where this script is located
THIS_SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Create the Gradle init.d directory if it doesn't exist
mkdir -p "$HOME/.gradle/init.d"

# Copy the Maven Central URL override init script
cp "$THIS_SCRIPT_DIR/maven-central-url-override.init.gradle.kts" "$HOME/.gradle/init.d/maven-central-url-override.init.gradle.kts"

echo "Maven Central URL override init script copied successfully to $HOME/.gradle/init.d/maven-central-url-override.init.gradle.kts"
