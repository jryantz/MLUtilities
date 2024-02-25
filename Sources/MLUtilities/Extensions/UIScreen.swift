//
//  UIScreen.swift
//  
//
//  Created by Jon Yantz on 6/19/21.
//

#if canImport(UIKit)
import UIKit

public extension UIScreen {
    
    public var screenSize: CGSize {
        
        let screenWidth = self.bounds.size.width
        let screenHeight = self.bounds.size.height
        let scale = self.scale
        
        let width = screenWidth * scale
        let height = screenHeight * scale
                
        return CGSize(width: width, height: height)
        
    }
    
}

#endif
