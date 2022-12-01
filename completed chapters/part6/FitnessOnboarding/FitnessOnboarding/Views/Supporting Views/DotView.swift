import SwiftUI

struct DotView: View {
    let index: Int
    @Binding var currentPage: Int
    
    var body: some View {
        Circle()
            .fill(checkCurrentPage())
            .frame(width: 8, height: 8)
    }
    
    func checkCurrentPage() -> Color {
        if index == currentPage {
            return Color.black
        }
        
        return Color.black.opacity(0.20)
    }
}

struct DotView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DotView(index: 0, currentPage: .constant(0))
                .previewLayout(.fixed(width: 50, height: 10))
            
            DotView(index: 1, currentPage: .constant(0))
                .previewLayout(.fixed(width: 50
                                      , height: 10))
        }
    }
}



