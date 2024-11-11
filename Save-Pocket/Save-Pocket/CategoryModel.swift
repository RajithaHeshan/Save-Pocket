
import Foundation
import FirebaseFirestore
//import FirebaseFirestoreSwift
import Combine

class CategoryModel: ObservableObject {
    @Published var categories: [Category] = []

    private var db = Firestore.firestore()

    init() {
        fetchCategories()
    }

    // Add a new category to Firestore
    func addCategory(name: String, icon: String = "plus") {
        let newCategory = Category(name: name, icon: icon)
        do {
            _ = try db.collection("categories").addDocument(from: newCategory)
        } catch let error {
            print("Error adding category to Firestore: \(error.localizedDescription)")
        }
    }

    // Fetch categories from Firestore
    func fetchCategories() {
        db.collection("categories").addSnapshotListener { (querySnapshot, error) in
            if let error = error {
                print("Error fetching categories: \(error.localizedDescription)")
                return
            }

            self.categories = querySnapshot?.documents.compactMap { document in
                try? document.data(as: Category.self)
            } ?? []
        }
    }
}

// Define Category struct that conforms to Codable
struct Category: Identifiable, Codable {
    @DocumentID var id: String?
    var name: String
    var icon: String
}
