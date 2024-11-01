import SwiftUI
import UIKit

/// Entity for starting payze payment process
/// - Use 'start()' function to create and present payment flow
public struct Payze {
    /// - Parameters:
    ///   - sourceViewController: Root view controller which will present payment flow on top of itself
    ///   - colorPalette: Colour configuration of card input screen,uses Payze colours by default
    ///   - companyIcon: Optional parameter to display on payment screen
    ///   - environment: Determines whether payment will be done on development or production environment
    ///   - language: Current localisation, supports: English, Uzbek, and Russian languages
    ///   - transactionId: Payze transactionId
    ///   - amount: Money amount
    ///   - completionHandler: Callback for when payment flow is finished
    public static func start(
        on sourceViewController: UIViewController,
        colorPalette: ColorPalette = .init(),
        companyIcon: Image? = nil,
        environment: ServiceEnvironment,
        language: Language,
        transactionId: String,
        amount: Money,
        completionHandler: @escaping (PaymentCompletionType) -> Void
    ) {
        let configuration = Configuration(
            colorPalette: colorPalette,
            companyIcon: companyIcon,
            environment: environment,
            language: language
        )

        DependencyGraph.registerAllServices(using: configuration)

        let viewModel = ContentViewModel(
            transactionId: transactionId,
            amount: amount,
            completionHandler: completionHandler
        )
        let newViewController = UIHostingController(
            rootView: NavigationView {
                ContentView(viewModel: viewModel)
            }
        )

        if UIDevice.current.userInterfaceIdiom == .phone {
            newViewController.modalPresentationStyle = .fullScreen
        } else if UIDevice.current.userInterfaceIdiom == .pad {
            newViewController.modalPresentationStyle = .formSheet
        }

        sourceViewController.present(
            newViewController,
            animated: true
        )
    }
}
