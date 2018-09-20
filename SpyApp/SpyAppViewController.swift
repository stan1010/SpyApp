import UIKit

class SpyAppViewController: UIViewController
{

    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var secret: UITextField!
    @IBOutlet weak var output: UILabel!

    let factory = CipherFactory()
    var cipher: Cipher?
    
    @IBAction func encodeButtonPressed(_ sender: UIButton)
    {
        let plaintext = input.text!
        let secret = self.secret.text!

        if let cipher = self.cipher
        {
            output.text = cipher.encode(plaintext, secret: secret)
        }
        else
        {
            output.text = "No cipher selected"
        }
    }

    @IBAction func cipherButtonPressed(_ sender: UIButton)
    {
        guard
            var buttonLabel = sender.titleLabel,
            var buttonText = buttonLabel.text
        else
        {
            output.text = "No button or no button text"
            return
        }
        if buttonLabel.text == "Ceasar"
        {
            sender.setTitle("Reverse", for: .normal)
            buttonText = "Reverse"
        }
        if buttonLabel.text == "Reverse"
        {
            sender.setTitle("Rot13", for: .normal)
            buttonText = "Rot13"
        }
        if buttonLabel.text == "Rot13"
        {
            sender.setTitle("Alpha Numeric", for: .normal)
            buttonText = "Alpha Numeric"
        }
        if buttonLabel.text == "Alpha Numeric" || buttonLabel.text == "Pick a Cipher"
        {
            sender.setTitle("Ceasar", for: .normal)
            buttonText = "Ceasar"
        }
        cipher = factory.cipher(for: buttonText)
    }
    
    
    @IBOutlet weak var decodeSecret: UITextField!
    @IBOutlet weak var decodeInput: UITextField!
    
    var decodeCipher: Cipher?
    
    @IBAction func decodeButtonPressed(_ sender: UIButton)
    {
        let plaintext = decodeInput.text!
        let secret = self.decodeSecret.text!

        if let decodeCipher = self.decodeCipher
        {
            output.text = decodeCipher.decode(plaintext, secret: secret)
        }
        else
        {
            output.text = "No cipher selected to decode"
        }

    }
    
    @IBAction func decodeCipherButtonPressed(_ sender: UIButton)
    {
        guard
            var buttonLabel = sender.titleLabel,
            var buttonText = buttonLabel.text
        else
        {
            output.text = "No button or no button text"
            return
        }
        if buttonLabel.text == "Ceasar"
        {
            sender.setTitle("Reverse", for: .normal)
            buttonText = "Reverse"
        }
        if buttonLabel.text == "Reverse"
        {
            sender.setTitle("Rot13", for: .normal)
            buttonText = "Rot13"
        }
        if buttonLabel.text == "Rot13" || buttonLabel.text == "Pick a Cipher to Decrypt"
        {
            sender.setTitle("Ceasar", for: .normal)
            buttonText = "Ceasar"
        }
        decodeCipher = factory.cipher(for: buttonText)
    }
}

