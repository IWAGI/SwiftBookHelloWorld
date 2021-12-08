import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var helloWorldLabel: UILabel!
    @IBOutlet weak var clickButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.isHidden = true
        
        clickButton.backgroundColor = .systemGreen
        clickButton.layer.cornerRadius = 20
        clickButton.layer.borderWidth = 2
        clickButton.layer.borderColor = UIColor.darkGray.cgColor
    }

    @IBAction func makeButtonAction(_ sender: UIButton) {
        if resultLabel.isHidden {
            resultLabel.isHidden = false
            clickButton.setTitle("Hide", for: .normal)
        } else {
            resultLabel.isHidden = true
            clickButton.setTitle("Show", for: .normal)
        }
    }
}

