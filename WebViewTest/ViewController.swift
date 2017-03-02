//
//  ViewController.swift
//  WebViewTest
//
//  Created by Andrii Chernenko on 2017-03-01.
//  Copyright © 2017 Softwerk AB. All rights reserved.
//

import UIKit


let script = "window.setSignals(Math.random());"

class ViewController: UIViewController {

  @IBOutlet weak var webView: UIWebView!
  
  var timer: Timer!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let htmlFileURL = Bundle.main.url(forResource: "index", withExtension: "html")!
    webView.loadRequest(URLRequest(url: htmlFileURL))
    
    timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { [unowned self] _ in
      self.webView.stringByEvaluatingJavaScript(from: script)
    }
  }
}

extension ViewController: UIWebViewDelegate {
  
  
}
