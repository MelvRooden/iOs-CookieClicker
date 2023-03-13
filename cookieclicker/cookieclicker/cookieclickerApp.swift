import SwiftUI

@main
struct cookieclickerApp: App {
    var jar = CookieJar()
    
    var body: some Scene {
        WindowGroup {
            ContentView(jar: jar)
        }
    }
}
