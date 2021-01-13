//
//  CryptoSHA.swift
//  CryptoSHA
//
//  Created by devzhr on 27/05/2020.
//  Copyright © 2020 devzhr. All rights reserved.
//

import CommonCrypto

public extension String {
    func sha256() -> String{
        if let stringData = self.data(using: String.Encoding.utf8) {
            return hexStringFromData(input: digest(input: stringData as NSData, type: 256))
        }
        return ""
    }
    
    func sha512() -> String{
        if let stringData = self.data(using: String.Encoding.utf8) {
            return hexStringFromData(input: digest(input: stringData as NSData, type: 512))
        }
        return ""
    }
    
    func sha224() -> String{
        if let stringData = self.data(using: String.Encoding.utf8) {
            return hexStringFromData(input: digest(input: stringData as NSData, type: 224))
        }
        return ""
    }
    
    func sha384() -> String{
        if let stringData = self.data(using: String.Encoding.utf8) {
            return hexStringFromData(input: digest(input: stringData as NSData, type: 384))
        }
        return ""
    }

    private func digest(input : NSData, type: Int) -> NSData {
        switch type {
        case 512:
            let digestLength = Int(CC_SHA512_DIGEST_LENGTH)
            var hash = [UInt8](repeating: 0, count: digestLength)
            CC_SHA512(input.bytes, UInt32(input.length), &hash)
            return NSData(bytes: hash, length: digestLength)
        case 224:
            let digestLength = Int(CC_SHA224_DIGEST_LENGTH)
            var hash = [UInt8](repeating: 0, count: digestLength)
            CC_SHA224(input.bytes, UInt32(input.length), &hash)
            return NSData(bytes: hash, length: digestLength)
        case 384:
            let digestLength = Int(CC_SHA384_DIGEST_LENGTH)
            var hash = [UInt8](repeating: 0, count: digestLength)
            CC_SHA384(input.bytes, UInt32(input.length), &hash)
            return NSData(bytes: hash, length: digestLength)
        default:
            let digestLength = Int(CC_SHA256_DIGEST_LENGTH)
            var hash = [UInt8](repeating: 0, count: digestLength)
            CC_SHA256(input.bytes, UInt32(input.length), &hash)
            return NSData(bytes: hash, length: digestLength)
        }
    }

    private  func hexStringFromData(input: NSData) -> String {
        var bytes = [UInt8](repeating: 0, count: input.length)
        input.getBytes(&bytes, length: input.length)

        var hexString = ""
        for byte in bytes {
            hexString += String(format:"%02x", UInt8(byte))
        }

        return hexString
    }
}

