struct ReverseCipher: Cipher
{
    func encode(_ plaintext: String, secret: String) -> String
    {
        return String(plaintext.reversed())
    }
    
    func decode(_ plaintext: String, secret: String) -> String
    {
        return String(plaintext.reversed())
    }
}
