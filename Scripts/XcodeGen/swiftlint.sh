# build swiftlint
xcrun --sdk macosx swift build -c release \
--package-path ${BUILD_DIR%Build/*}SourcePackages/checkouts/SwiftLint \
--product swiftlint

# run swiftlint
if [ ${XCODE_BUILD_WARNING_AS_ERROR} = "YES" ]; then
  ${BUILD_DIR%Build/*}SourcePackages/checkouts/SwiftLint/.build/release/swiftlint lint --strict
else
  ${BUILD_DIR%Build/*}SourcePackages/checkouts/SwiftLint/.build/release/swiftlint lint
fi
