# Nbmap iOS SDK - Swift Package Manager Distribution

![iOS](https://img.shields.io/badge/iOS-13.0+-blue.svg)
![Swift](https://img.shields.io/badge/Swift-5.3+-orange.svg)
![License](https://img.shields.io/badge/license-MIT-green.svg)

Swift Package Manager distribution repository for NextBillion.ai Maps SDK. Through this repository, you can easily integrate Nbmap SDK into your iOS projects.

## 📦 Integration via Swift Package Manager

### Method 1: Add in Xcode (Recommended)

1. Open your project in Xcode
2. Select menu **File > Add Packages...** (or **File > Swift Packages > Add Package Dependency...**)
3. Enter the repository URL in the search box:
   ```
   https://github.com/nextbillion-ai/maps-native-distribution
   ```
4. Choose a version rule (recommended: "Up to Next Major Version")
5. Click **Add Package**
6. In the popup dialog, select the **Nbmap** library and add it to your target

### Method 2: Add in Package.swift

If your project is a Swift Package, you can add the dependency in the `Package.swift` file:

```swift
// swift-tools-version: 5.3
import PackageDescription

let package = Package(
    name: "YourProject",
    platforms: [
        .iOS(.v13)
    ],
    dependencies: [
        .package(
            url: "https://github.com/nextbillion-ai/maps-native-distribution",
            from: "2.0.2"
        )
    ],
    targets: [
        .target(
            name: "YourTarget",
            dependencies: [
                .product(name: "Nbmap", package: "maps-native-distribution")
            ]
        )
    ]
)
```

## 🛠️ Configuration

### 1. Add Access Key

Add your NextBillion.ai access key in your `Info.plist` file:

```xml
<key>NBMapAccessKey</key>
<string>YOUR_ACCESS_KEY_HERE</string>
```

**How to get an access key?**
Visit [NextBillion.ai Book-a-demo](https://nextbillion.ai/book-a-demo)

### 2. Configure Permissions (Optional)

If you need to display user location, add location permission descriptions in `Info.plist`:

```xml
<key>NSLocationWhenInUseUsageDescription</key>
<string>We need access to your location to show your current position on the map</string>

<key>NSLocationAlwaysAndWhenInUseUsageDescription</key>
<string>We need access to your location to provide a better map experience</string>
```

## 🗺️ Quick Start

### Basic Map View

```swift
import UIKit
import Nbmap

class MapViewController: UIViewController {
    var mapView: NGLMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create map view
        mapView = NGLMapView(frame: view.bounds)
        mapView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        mapView.delegate = self
        
        // Set initial center position and zoom level
        let center = CLLocationCoordinate2D(latitude: 12.97780156, longitude: 77.59656748)
        mapView.setCenter(center, zoomLevel: 12, animated: false)
        
        view.addSubview(mapView)
    }
}

extension MapViewController: NGLMapViewDelegate {
    func mapView(_ mapView: NGLMapView, didFinishLoading style: NGLStyle) {
        print("Map loaded successfully")
    }
}
```

### Add Annotations

```swift
// Add point annotation
let annotation = NGLPointAnnotation()
annotation.coordinate = CLLocationCoordinate2D(latitude: 12.97780156, longitude: 77.59656748)
annotation.title = "Bangalore"
annotation.subtitle = "Karnataka, India"
mapView.addAnnotation(annotation)
```

### Display User Location

```swift
// Enable user location display
mapView.showsUserLocation = true

// Set tracking mode
mapView.userTrackingMode = .follow
```

### Camera Control

```swift
// Smoothly move camera to target location
let camera = NGLMapCamera(
    lookingAtCenter: CLLocationCoordinate2D(latitude: 12.97780156, longitude: 77.59656748),
    acrossDistance: 10000,  // Distance (meters)
    pitch: 60,              // Pitch angle (0-60 degrees)
    heading: 90             // Heading angle (0-360 degrees)
)

mapView.fly(to: camera, withDuration: 2.0, completionHandler: nil)
```

## 📍 Common Features

### Add Polyline

```swift
var coordinates = [
    CLLocationCoordinate2D(latitude: 12.97, longitude: 77.59),
    CLLocationCoordinate2D(latitude: 12.98, longitude: 77.60),
    CLLocationCoordinate2D(latitude: 12.99, longitude: 77.61)
]

let polyline = NGLPolyline(coordinates: &coordinates, count: UInt(coordinates.count))
mapView.addAnnotation(polyline)
```

### Add Polygon

```swift
var coordinates = [
    CLLocationCoordinate2D(latitude: 12.96, longitude: 77.58),
    CLLocationCoordinate2D(latitude: 12.96, longitude: 77.59),
    CLLocationCoordinate2D(latitude: 12.97, longitude: 77.59),
    CLLocationCoordinate2D(latitude: 12.97, longitude: 77.58)
]

let polygon = NGLPolygon(coordinates: &coordinates, count: UInt(coordinates.count))
mapView.addAnnotation(polygon)
```

### Custom Styling

```swift
extension MapViewController: NGLMapViewDelegate {
    // Set polyline color
    func mapView(_ mapView: NGLMapView, strokeColorForShapeAnnotation annotation: NGLShape) -> UIColor {
        return .blue
    }
    
    // Set polygon fill color
    func mapView(_ mapView: NGLMapView, fillColorForPolygonAnnotation annotation: NGLPolygon) -> UIColor {
        return UIColor.blue.withAlphaComponent(0.3)
    }
    
    // Set polyline width
    func mapView(_ mapView: NGLMapView, lineWidthForPolylineAnnotation annotation: NGLPolyline) -> CGFloat {
        return 3.0
    }
}
```

## 🎯 Use Case Examples

### 1. Basic Map Display
The simplest use case, displaying an interactive map view.

### 2. Route Navigation
Display navigation routes using polylines, combined with camera following for navigation effects.

### 3. Area Marking
Mark specific areas using polygons, such as service areas, administrative regions, etc.

### 4. Location Annotation
Mark points of interest, merchant locations, etc., using point annotations.

### 5. Real-time Tracking
Enable user location display to track user movement in real-time.

## 📱 System Requirements

- **iOS**: 12.0+
- **Xcode**: 13.2.1+
- **Swift**: 5.3+

## 🔗 Related Links

- [NextBillion.ai Official Documentation](https://docs.nextbillion.ai/maps/ios-maps-sdk)
- [iOS Maps SDK Getting Started Guide](https://docs.nextbillion.ai/maps/ios-maps-sdk/getting-started)
- [MapView Usage Guide](https://docs.nextbillion.ai/maps/ios-maps-sdk/mapview)
- [Display User Location](https://docs.nextbillion.ai/maps/ios-maps-sdk/display-user-location)
- [API Documentation](https://docs.nextbillion.ai/maps/api/maps)

## 🔄 Alternative Integration Methods

### CocoaPods

```ruby
use_frameworks!

target 'YourAppTarget' do
  pod 'NextBillionMap', '~> 2.0.2'
end
```

### Carthage

```
binary "https://github.com/nextbillion-ai/nextbillion-map-ios/releases/download/v1/carthage/Nbmap.json" ~> 2.0.2
```

## 🐛 Troubleshooting

### 1. Map fails to load?
- Check if `NBMapAccessKey` is correctly configured in `Info.plist`
- Confirm that the access key is valid and not expired
- Check if network connection is working properly

### 2. Unable to display user location?
- Ensure location permission descriptions are added in `Info.plist`
- Check if the app has been granted location access permission
- Confirm that device location services are enabled

### 3. Compilation errors?
- Confirm Xcode version ≥ 13.2.1
- Confirm iOS deployment target ≥ 12.0
- Try cleaning the build folder (Clean Build Folder)

## 🤝 Support

If you have questions or suggestions, please:
- Visit [NextBillion.ai Official Documentation](https://docs.nextbillion.ai)
- Contact technical support: [support@nextbillion.ai](mailto:support@nextbillion.ai)
- Submit an Issue to this repository

---

**Made with ❤️ by NextBillion.ai**
