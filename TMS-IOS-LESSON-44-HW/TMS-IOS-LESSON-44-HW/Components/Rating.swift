import SwiftUI

struct Rating: View {
    
    @State
    var rating: Int
    
    var body: some View {
        HStack {
            Image(systemName: "star.fill").resizable().frame(width: 12, height: 12).foregroundColor(rating < 1 ? .black : .yellow)
            Image(systemName: "star.fill").resizable().frame(width: 12, height: 12).foregroundColor(rating < 2 ? .black : .yellow)
            Image(systemName: "star.fill").resizable().frame(width: 12, height: 12).foregroundColor(rating < 3 ? .black : .yellow)
            Image(systemName: "star.fill").resizable().frame(width: 12, height: 12).foregroundColor(rating < 4 ? .black : .yellow)
            Image(systemName: "star.fill").resizable().frame(width: 12, height: 12).foregroundColor(rating < 5 ? .black : .yellow)
        }
    }
}

#Preview {
    Rating(rating: 3)
}
