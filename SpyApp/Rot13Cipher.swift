struct Rot13: Cipher
{
    func encode(_ plaintext: String, secret: String) -> String
    {
        var encoded = ""
        var shiftedUnicode: UInt32
        var shiftedCharacter: String
        for character in plaintext
        {
            
            var unicode = character.unicodeScalars.first!.value
            
            if unicode >= 65 && unicode <= 77 //65 == "A" 77 == "M"
            {
                shiftedUnicode = unicode + 13
                shiftedCharacter = String(UnicodeScalar(UInt8(shiftedUnicode)))
                encoded = encoded + shiftedCharacter
            }
            else if unicode >= 78 && unicode <= 90 //78 == "N" 90 == "Z"
            {
                shiftedUnicode = unicode - 13
                shiftedCharacter = String(UnicodeScalar(UInt8(shiftedUnicode)))
                encoded = encoded + shiftedCharacter
            }
            else if unicode >= 97 && unicode <= 109 //97 == "a" 109 == "m"
            {
                shiftedUnicode = unicode + 13
                shiftedCharacter = String(UnicodeScalar(UInt8(shiftedUnicode)))
                encoded = encoded + shiftedCharacter
            }
            else if unicode >= 110 && unicode <= 122 //110 == "n" 122 == "z"
            {
                shiftedUnicode = unicode - 13
                shiftedCharacter = String(UnicodeScalar(UInt8(shiftedUnicode)))
                encoded = encoded + shiftedCharacter
            }
            else if unicode >= 48 && unicode <= 52 //48 == "0" 52 == "4"
            {
                shiftedUnicode = unicode + 5
                shiftedCharacter = String(UnicodeScalar(UInt8(shiftedUnicode)))
                encoded = encoded + shiftedCharacter
            }
            else if unicode >= 53 && unicode <= 57 //53 == "5" 57 == "9"
            {
                shiftedUnicode = unicode - 5
                shiftedCharacter = String(UnicodeScalar(UInt8(shiftedUnicode)))
                encoded = encoded + shiftedCharacter
            }
            else
            {
                shiftedUnicode = unicode + 0
                shiftedCharacter = String(UnicodeScalar(UInt8(shiftedUnicode)))
                encoded = encoded + shiftedCharacter
            }
            
        }
        return encoded
        
    }
    
    func decode(_ plaintext: String, secret: String) -> String
    {
        var decoded = ""
        var shiftedUnicode: UInt32
        var shiftedCharacter: String
        for character in plaintext
        {
            
            var unicode = character.unicodeScalars.first!.value
            
            if unicode >= 65 && unicode <= 77 //65 == "A" 77 == "M"
            {
                shiftedUnicode = unicode + 13
                shiftedCharacter = String(UnicodeScalar(UInt8(shiftedUnicode)))
                decoded = decoded + shiftedCharacter
            }
            else if unicode >= 78 && unicode <= 90 //78 == "N" 90 == "Z"
            {
                shiftedUnicode = unicode - 13
                shiftedCharacter = String(UnicodeScalar(UInt8(shiftedUnicode)))
                decoded = decoded + shiftedCharacter
            }
            else if unicode >= 97 && unicode <= 109 //97 == "a" 109 == "m"
            {
                shiftedUnicode = unicode + 13
                shiftedCharacter = String(UnicodeScalar(UInt8(shiftedUnicode)))
                decoded = decoded + shiftedCharacter
            }
            else if unicode >= 110 && unicode <= 122 //110 == "n" 122 == "z"
            {
                shiftedUnicode = unicode - 13
                shiftedCharacter = String(UnicodeScalar(UInt8(shiftedUnicode)))
                decoded = decoded + shiftedCharacter
            }
            else if unicode >= 48 && unicode <= 52 //48 == "0" 52 == "4"
            {
                shiftedUnicode = unicode + 5
                shiftedCharacter = String(UnicodeScalar(UInt8(shiftedUnicode)))
                decoded = decoded + shiftedCharacter
            }
            else if unicode >= 53 && unicode <= 57 //53 == "5" 57 == "9"
            {
                shiftedUnicode = unicode - 5
                shiftedCharacter = String(UnicodeScalar(UInt8(shiftedUnicode)))
                decoded = decoded + shiftedCharacter
            }
            else
            {
                shiftedUnicode = unicode + 0
                shiftedCharacter = String(UnicodeScalar(UInt8(shiftedUnicode)))
                decoded = decoded + shiftedCharacter
            }
            
        }
        return decoded
        
    }
}
