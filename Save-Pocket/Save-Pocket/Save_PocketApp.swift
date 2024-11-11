

import SwiftUI
import Firebase

@main
struct Save_PocketApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            //ContentView()
            ContentView().environmentObject(CategoryModel())
        }
    }
}

