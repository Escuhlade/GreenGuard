import FirebaseAuth
import FirebaseFirestore
import Foundation

class RegisterViewViewModel: ObservableObject {
    
    init() {
        specialCharacterSet = CharacterSet(charactersIn: "!@#$%^&*()-_=+[{]}|;:'\",<.>/?")
        numberSet = CharacterSet(charactersIn: "0123456789")
    }
    
    @Published var name: String = ""
    @Published var email: String = ""
    @Published var password: String = ""
    let specialCharacterSet: CharacterSet
    let numberSet: CharacterSet
    
    func registerAccount() {
        guard validateInputs() else {
            return
        }
        
        Auth.auth().createUser(withEmail: email, password: password){[weak self] result, error in
            
            guard let userId = result?.user.uid else{
                return
            }
            self?.insertUserRecord(id: userId)
            
        }
    }
    
    private func insertUserRecord(id: String){
        let newUser = User(id: id, name: name, email: email, joined: Date().timeIntervalSince1970)
        
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(id)
            .setData(newUser.asDictionary())
    }
    private func validateInputs() -> Bool {
        guard !name.isEmpty else {
            return false
        }
        
        guard email.contains("@") && email.contains(".") && (email.contains("com") || email.contains("ca") || email.contains("co") || email.contains("io")) else {
            return false
        }
        
        guard password.count >= 6 && password.rangeOfCharacter(from: specialCharacterSet) != nil && password.rangeOfCharacter(from: numberSet) != nil else {
            return false
        }
        
        return true
    }
}
