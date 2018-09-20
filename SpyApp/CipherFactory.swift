import Foundation

struct CipherFactory {

    private var ciphers: [String: Cipher] = [
        "Ceasar": CeaserCipher(),
        "Reverse": ReverseCipher(),
        "Rot13" : Rot13(),
        "Alpha Numeric": AlphaNumericCeasarCipher()
    ]

    func cipher(for key: String) -> Cipher {
        return ciphers[key]!
    }
}
