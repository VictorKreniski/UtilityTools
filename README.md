# UtilityTools

UtilityTools is a Swift Package Manager (SPM) package that provides day-to-day extensions and convenient code snippets to accelerate your development process. Initially focused on date-related utilities, the package is designed to expand and incorporate more tools over time.

## Installation

### Swift Package Manager

To integrate this library into your Xcode project using Swift Package Manager, follow these steps:

1. Open your Xcode project.
2. Navigate to the menu `File > Swift Packages > Add Package Dependency...`.
3. Enter the following URL of this repository: `git@github.com:VictorKreniski/UtilityTools.git`.
4. Click **Next** and select the version or branch you want to use.
5. Click **Next** and then **Finish**.

The library will be automatically resolved and linked with your Xcode project.

## Usage

Once you've added the package to your project, you can start using the networking capabilities.

### Import the Library

In the Swift file where you want to use the networking library, import it at the top:

```swift
import UtilityTools
```

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
