# Payze-iOS-SDK

**Payze iOS SDK** for seamless no-redirect payments.

## Overview
The Payze iOS SDK enables integration of secure, no-redirect payment flows in iOS applications. This SDK is designed to simplify the payment process, offering support for multiple currencies, languages, and environments.

## Installation

### CocoaPods
To integrate Payze-iOS-SDK using CocoaPods, add it to your `Podfile`:

```ruby
pod 'Payze-iOS-SDK', '~> 1.0.0'
```

Then, run `pod install` to install the SDK.

### Swift Package Manager
You can also use Swift Package Manager to add the dependency directly in Xcode:
1. Navigate to **File > Add Packages**.
2. Enter the repository URL: `https://github.com/PayzeTech/Payze-iOS-SDK.git`.
3. Choose the latest release.

## Usage

To start a payment, use the `Payze.start` function with your configuration options. Set up `Payze` with the following parameters:

    ```swift
    import PayzeSDK

    Payze.start(
        on: self, 
        colorPalette: nil, 
        companyIcon: UIImage(named: "companyLogo"), 
        environment: .production, 
        language: .english, 
        transactionId: "your-transaction-id", 
        amount: Money(amount: 100.0, currency: .usd),
        completionHandler: { result in
            switch result {
            case .success:
                print("Payment succeeded!")
            case .fail:
                print("Payment failed.")
            case .inProgress:
                print("Payment in progress.")
            }
        }
    )
    ```

### Parameters
- **sourceViewController**: The view controller presenting the payment screen.
- **colorPalette**: Optional color settings for customizing the UI.
- **companyIcon**: Company logo to display on the payment screen.
- **environment**: Specify `.development` or `.production` for environment selection.
- **language**: Choose from `.english`, `.russian`, or `.uzbekistan`.
- **transactionId**: Unique identifier for the transaction.
- **amount**: Specify `Money` with `amount` and `currency`.

## Supported Configurations

### Language
The SDK currently supports three languages:

    ```swift
    public enum Language {
        case english
        case russian
        case uzbekistan
    }
    ```

### Money Amount
Define the transaction amount and currency with the `Money` structure:

    ```swift
    public struct Money {
        let amount: Double
        let currency: Currency

        public init(amount: Double, currency: Currency) {
            self.amount = amount
            self.currency = currency
        }
    }
    ```

Supported currency types:

    ```swift
    public enum Currency {
        case usd
        case uzs
    }
    ```

### Environment
Define the environment as either development or production:

    ```swift
    public enum ServiceEnvironment {
        case development
        case production
    }
    ```

### Result Callback
The result callback provides feedback on transaction status:

    ```swift
    public enum PaymentCompletionType {
        case fail
        case inProgress
        case success
    }
    ```

Each case can be handled as shown in the `completionHandler` of the `start` function above.

## License
Payze-iOS-SDK is released under the [MIT License](LICENSE).
