import SwiftUI

struct ZStackWithSpacerExample: View {
    var body: some View {
        ZStack {//
            Color.blue.opacity(0.2) // Background color for ZStack

            VStack {
                Text("Top Text")
                    .font(.headline)
                    .padding()
                    .background(Color.yellow)

                Spacer() // Pushes content up or down within the VStack

                Text("Bottom Text")
                    .font(.headline)
                    .padding()
                    .background(Color.orange)
            }//vstack
            .frame(maxWidth: .infinity, maxHeight: .infinity) // Expands VStack to fill ZStack
            .background(Color.gray.opacity(0.2))
        }//zstack
        .frame(width: 300, height: 300) // Set size for ZStack container
        .border(Color.gray, width: 1)
    }//view
}//body
#Preview {
    ZStackWithSpacerExample()
}
