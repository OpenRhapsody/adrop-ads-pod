Adrop-Ads-iOS
==


Prerequisites
-------------
- Latest version of Xcode with enabled command-line tools
- Swift 5.0
- ios 14.0


Getting Started
----

### 1. Installation

#### CocoaPods
[CocoaPods](https://cocoapods.org) is a dependency manager for Cocoa projects. For usage and installation instructions, visit their website.
To integrate Adrop into your Xcode project using CocoaPods, specify it in your Podfile:

```
pod 'adrop-ads'
```

add this line your Podfile

```
config.build_settings['BUILD_LIBRARY_FOR_DISTRIBUTION'] = 'YES'      
```


### 2. Add adrop_service.json
Get ***adrop_service.json*** from [Adrop](https://adrop.io)

<u>***Add "adrop-service.json" to the root of your Xcode project***</u>


### 3. Initialize

```swift
import AdropAds

@main
struct ExampleApp: App {
    init() {
        Adrop.initialize(production: false /* if release then true */)
    }
}
```

When production is false, you can check error log in SDK


### 4. AdropBanner ***(required unitId, height)***

```swift
struct ContentView: View, AdropBannerDelegate {
    
    func onAdReceived(_ banner: AdropBanner) {
        print("ad received")
    }
    
    func onAdClicked(_ banner: AdropBanner) {
        print("ad clicked")
    }
    
    func onAdFailedToReceive(_ banner: AdropBanner, _ error: AdropErrorCode) {
        print("ad failed to receive, error: \(error)")
    }
    
    
    var bannerView: AdropBannerRepresented
    
    init() {
        let unitId = "ADROP_PUBLIC_TEST_UNIT_ID" // replace your unitId
        self.bannerView = AdropBannerRepresented(unitId: unitId)
        self.bannerView.banner.delegate = self
    }
    
    var body: some View {
        ZStack{
            VStack {
                Button {
                    bannerView.banner.load()
                } label: {
                    Text("requestAd")
                }
                .padding(.all)
            }
            VStack {
                Spacer()
                bannerView.frame(height: 80)
            }
        }
    }
}

```
