
import Foundation
import SQLite3

class DBHelper {
    var db: OpaquePointer?
    let dbName = "inventoryDB.sqlite"

    init() {
        self.db = openDatabase()
        self.createTable()
    }

    func openDatabase() -> OpaquePointer? {
        let filePath = try! FileManager.default
            .url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
            .appendingPathComponent(dbName)
        var db: OpaquePointer? = nil
        if sqlite3_open(filePath.path, &db) != SQLITE_OK {
            print("Error opening database")
            return nil
        } else {
            print("Database opened successfully at \(filePath.path)")
            return db
        }
    }

    func createTable() {
        let createTableQuery = """
        CREATE TABLE IF NOT EXISTS User (
            user_id INTEGER PRIMARY KEY AUTOINCREMENT,
            username TEXT NOT NULL,
            password TEXT NOT NULL
        );
        """
        var createTableStmt: OpaquePointer? = nil
        if sqlite3_prepare_v2(db, createTableQuery, -1, &createTableStmt, nil) == SQLITE_OK {
            if sqlite3_step(createTableStmt) == SQLITE_DONE {
                print("User table created.")
            } else {
                print("User table could not be created.")
            }
        }
        sqlite3_finalize(createTableStmt)
    }

    func insertUser(username: String, password: String) {
        let insertQuery = "INSERT INTO User (username, password) VALUES (?, ?);"
        var insertStmt: OpaquePointer? = nil
        if sqlite3_prepare_v2(db, insertQuery, -1, &insertStmt, nil) == SQLITE_OK {
            sqlite3_bind_text(insertStmt, 1, (username as NSString).utf8String, -1, nil)
            sqlite3_bind_text(insertStmt, 2, (password as NSString).utf8String, -1, nil)
            if sqlite3_step(insertStmt) == SQLITE_DONE {
                print("User inserted successfully.")
            } else {
                print("Could not insert user.")
            }
        }
        sqlite3_finalize(insertStmt)
    }

    func fetchUsers() -> [(Int, String, String)] {
        let selectQuery = "SELECT * FROM User;"
        var selectStmt: OpaquePointer? = nil
        var users: [(Int, String, String)] = []
        if sqlite3_prepare_v2(db, selectQuery, -1, &selectStmt, nil) == SQLITE_OK {
            while sqlite3_step(selectStmt) == SQLITE_ROW {
                let id = Int(sqlite3_column_int(selectStmt, 0))
                let username = String(cString: sqlite3_column_text(selectStmt, 1))
                let password = String(cString: sqlite3_column_text(selectStmt, 2))
                users.append((id, username, password))
            }
        }
        sqlite3_finalize(selectStmt)
        return users
    }
    func getSQLitePath() -> String {
        let fileManager = FileManager.default
        let documentsDirectory = fileManager.urls(for: .documentDirectory, in: .userDomainMask).first!
        let sqlitePath = documentsDirectory.appendingPathComponent("inventoryDB.sqlite").path
        return sqlitePath
    }
}
