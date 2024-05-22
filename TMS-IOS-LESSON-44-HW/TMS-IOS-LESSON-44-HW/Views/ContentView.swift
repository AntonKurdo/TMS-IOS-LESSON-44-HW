import SwiftUI
import Foundation

struct ContentView: View {
    
    @State
    var isTrue = true
    
    @ObservedObject
    var vm: PostsViewModel = PostsViewModel()
    
    var body: some View {
        NavigationView {
            PostsList(vm: vm)
        }
    }
}

#Preview {
    ContentView()
}

