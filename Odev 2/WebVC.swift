//
//  WebVC.swift
//  Odev 2
//
//  Created by Joshua Sands on 17.09.2022.
//

import UIKit
import WebKit

class WebVC: UIViewController, WKUIDelegate {

    var currentIndex = Int()
    
    @IBOutlet var webView: WKWebView!
    
    override func loadView() {
        let webConfig = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfig)
        webView.uiDelegate = self
        view = webView
        
        //Navigation bar hiding
        self.navigationController?.hidesBarsOnSwipe = true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myUrl = URL(string: news().urlArray[currentIndex])
        let myRequest = URLRequest(url: myUrl!)
        webView.load(myRequest)
        
        
        
    }
    
}
