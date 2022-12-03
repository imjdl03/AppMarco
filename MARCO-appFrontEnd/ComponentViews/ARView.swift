//
//  ARView.swift
//  MARCO-appFrontEnd
//
//  Created by Sasha Moroz on 24/11/22.
//

import UIKit
import QuickLook

class ARView : UIViewController, QLPreviewControllerDelegate, QLPreviewControllerDataSource
{
    
    
    
    
    
    func numberOfPreviewItems(in controller: QLPreviewController) -> Int {
      return 1
    }
    
    func previewController(_ controller: QLPreviewController, previewItemAt index: Int) -> QLPreviewItem {
      let url = Bundle.main.url(forResource: modelNames[modelIndex], withExtension: "usdz")!
      return url as QLPreviewItem
    }
    
    
}
