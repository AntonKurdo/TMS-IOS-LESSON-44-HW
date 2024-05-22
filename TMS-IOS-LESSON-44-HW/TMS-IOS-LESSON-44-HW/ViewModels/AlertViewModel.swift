import Foundation
import SwiftUI

class Alerter: ObservableObject {
    @Published var alert: Alert? {
        didSet { isShowingAlert = alert != nil }
    }
    
    @Published var isShowingAlert = false
    
    static let shared = Alerter()
}
