import SwiftUI

struct ContentView: View {
    @State private var users: [(Int, String, String)] = []
    let dbHelper = DBHelper()

    var body: some View {
        VStack {
            Button("Add Sample User") {
                dbHelper.insertUser(username: "testUser", password: "testPass")
                users = dbHelper.fetchUsers()
            }
            List(users, id: \.0) { user in
                VStack(alignment: .leading) {
                    Text("ID: \(user.0)")
                    Text("Username: \(user.1)")
                    Text("Password: \(user.2)")
                }
            }
        }.onAppear {
            users = dbHelper.fetchUsers()
        }
    }
}
#Preview {
    ContentView()
}