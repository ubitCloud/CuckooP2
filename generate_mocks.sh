##!/bin/sh
#
## Use this string in files you want cuckoo to generate mocks for.
#GENERATE_TAG="// cuckoo: generate"
#
## Set these up on first use.
#PROJECT_NAME="CuckooP2"  # Your project's name
#PROJECT_TEST_NAME="CuckooP2Tests"  # Your test target's name
#
#PROJECT_DIR="."
#PODS_ROOT="Pods"
#CONFIG_FILE="$PROJECT_DIR/Cuckoo.json"
#OUTPUT_FILE="$PROJECT_DIR/${PROJECT_TEST_NAME}/GeneratedMocks/Mocks.swift"  # Adjusted output path
#INPUT_DIR="${PROJECT_DIR}/${PROJECT_NAME}/CuckooP2/CommentList/Service/"
#
## Debug log for path variables
#echo "Running $0;
#CONFIG_FILE=$CONFIG_FILE"
#
## Generate the mocks file.
#"${PODS_ROOT}/Cuckoo/run" generate --configuration "$CONFIG_FILE"
#
## Better to delete the OUTPUT_FILE and start from scratch every time.
#rm -f $OUTPUT_FILE
#
## Xcode build log info
#echo "Running $0;
#INPUT_DIR=$INPUT_DIR
#OUTPUT_FILE=$OUTPUT_FILE"
#
## Find all files containing the GENERATE_TAG string.
#INPUT_FILES=$(grep -Rl --include=*.swift "$GENERATE_TAG" $INPUT_DIR)
##echo $INPUT_FILES
#
## Generate the mocks file with input files.
#"${PODS_ROOT}/Cuckoo/run" generate --testable "$PROJECT_NAME" \
#--output "${OUTPUT_FILE}" $INPUT_FILES
#
## disable swiftformat and swiftlint on generated file.
#echo "// swiftlint:disable all
#// swiftformat:disable all
#$(cat $OUTPUT_FILE)
#// swiftformat:enable all
#// swiftlint:enable all" > $OUTPUT_FILE
#
## nuke all GENERATE_TAG strings that cuckoo copies from the original files.
#sed -i '' "s@$GENERATE_TAG@@g" "$OUTPUT_FILE"
#
#
#
#######################################################################

# Define input and output directories
#INPUT_DIR="./CuckooP2/CuckooP2/CommentList/Service/"
#OUTPUT_DIR="./CuckooP2Tests/GeneratedMocks"
#OUTPUT_FILE="$OUTPUT_DIR/Mocks.swift"
#
## Create the output directory if it doesn't exist
#if [ ! -d "$OUTPUT_DIR" ]; then
#    mkdir -p "$OUTPUT_DIR"
#fi
#
## Clean up old mocks
#if [ -f "$OUTPUT_FILE" ]; then
#    rm "$OUTPUT_FILE"
#fi
#
## Generate the mocks
#./Pods/Cuckoo/run generate --testable "CuckooP2" \
#    --output "$OUTPUT_FILE" \
#    "$INPUT_DIR/CommentViewService.swift"

####################################################################

if [ "$GENERATE_TEST_MOCKS" = "NO" ] ; then exit; fi

# Generate the mocks
"$PODS_ROOT"/Cuckoo/cuckoonator --configuration "$SRCROOT/Cuckoofile.toml" --verbose
