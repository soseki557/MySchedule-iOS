PACKAGE_PATH=${BUILD_DIR%Build/*}"SourcePackages/checkouts/SwiftLint"
SWIFTLINT_PATH=$PACKAGE_PATH"/.build/release/swiftlint"

if [ ! -e ${SWIFTLINT_PATH} ]; then
    xcrun --sdk macosx swift build -c release \
    --package-path $PACKAGE_PATH \
    --product swiftlint
fi

if [ ${XCODE_BUILD_WARNING_AS_ERROR} = "YES" ]; then
    $SWIFTLINT_PATH lint --strict
else
    $SWIFTLINT_PATH lint
fi
