import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultTextView: UITextView!
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var country: UITextField!
    @IBOutlet weak var age: UITextField!
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.isHidden = true
    }
    
    @IBAction func addButton(_ sender: Any) {
        viewDetails()
    }
    
    @IBAction func submitButton(_ sender: Any) {
        if areAllFieldsFilled() {
            messageLabel.text = "Successfully submitted!"
            viewDetails()
        } else {
            messageLabel.text = "Complete the missing Info!"
        }
        messageLabel.isHidden = false
    }
    
    @IBAction func clearButton(_ sender: Any) {
        firstName.text = ""
        lastName.text = ""
        country.text = ""
        age.text = ""
        messageLabel.isHidden = true
        resultTextView.text = ""
    }
    
    private func areAllFieldsFilled() -> Bool {
        return !(firstName.text?.isEmpty ?? true) &&
            !(lastName.text?.isEmpty ?? true) &&
            !(country.text?.isEmpty ?? true) &&
            !(age.text?.isEmpty ?? true)
    }
    
    private func viewDetails(){
        let firstNameText = firstName.text ?? ""
        let lastNameText = lastName.text ?? ""
        let countryText = country.text ?? ""
        let ageText = age.text ?? ""
        
        resultTextView.text = """
            Full Name: \(firstNameText) \(lastNameText)
            Country: \(countryText)
            Age: \(ageText)
            """
    }
}

