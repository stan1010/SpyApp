struct AlphaNumericCeasarCipher: Cipher
{
    func encode(_ plaintext: String, secret: String) -> String
    {
        var encoded: String = ""
        var uppercaseText = plaintext.uppercased()
        var shiftedUnicode: UInt32
        var shiftedCharacter: String
        
        for character in uppercaseText
        {
            var unicode = character.unicodeScalars.first!.value
            if unicode == 90 // if unicode == "Z"
            {
                shiftedUnicode = unicode - 42
                shiftedCharacter = String(UnicodeScalar(UInt8(shiftedUnicode)))
                encoded = encoded + shiftedCharacter
            }
            else if unicode == 57
            {
                shiftedUnicode = unicode + 8
                shiftedCharacter = String(UnicodeScalar(UInt8(shiftedUnicode)))
                encoded = encoded + shiftedCharacter
            }
            else
            {
                shiftedUnicode = unicode + 1
                shiftedCharacter = String(UnicodeScalar(UInt8(shiftedUnicode)))
                encoded = encoded + shiftedCharacter
            }
        }
        return encoded
    }
    
    func decode(_ plaintext: String, secret: String) -> String
    {
        return ""
    }
}



