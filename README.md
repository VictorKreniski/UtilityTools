Certainly! Here's the updated README file with the SSH URL for downloading the SPM:

```markdown
# UtilityTools

UtilityTools is a Swift Package Manager (SPM) package that provides day-to-day extensions and convenient code snippets to accelerate your development process. Initially focused on date-related utilities, the package is designed to expand and incorporate more tools over time.

## Installation

### Swift Package Manager

Add the following dependency to your `Package.swift` file:

```swift
dependencies: [
    .package(url: "git@github.com:VictorKreniski/UtilityTools.git", from: "1.0.0")
],
targets: [
    .target(
        name: "YourProjectName",
        dependencies: ["UtilityTools"]
    ),
    // ...
]
```

Replace `"YourProjectName"` with your actual project name, and make sure to use the correct version or the desired version range (`from: "1.0.0"`).

## Features

### Date Extensions

#### Combine Date and Time

```swift
let combinedDate = someDate.combineDate(time: someTime)
```

#### Create All Month Days

```swift
let allMonthDays = someDate.createAllMonthDays()
```

#### End of Day

```swift
let endOfDay = someDate.endOfDay()
```

#### Generate Week Dates

```swift
if let weeklyDates = someDate.generateWeekDates(since: startOfWeekDate) {
    // Use weeklyDates array
}
```

#### Check if Date is Today or in the Past/Future

```swift
let isToday = someDate.isToday()
let isAtLeastToday = someDate.isAtLeastToday()
let isBiggerThanToday = someDate.isBiggerThanToday()
```

#### Start of Day and Start of Week

```swift
let startOfDay = someDate.startOfDay()
let startOfWeek = someDate.startOfWeek()
```

## Contribution

Contributions to UtilityTools are welcome! If you have additional extensions or features that could benefit the community, feel free to open a pull request.

## License

UtilityTools is released under the [MIT License](LICENSE).
```

Feel free to modify any other sections or add more details based on your project's requirements.
