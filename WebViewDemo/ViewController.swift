//
//  ViewController.swift
//  WebViewDemo
//
//  Created by Deki on 15/11/3.
//  Copyright © 2015年 Deki. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UIWebViewDelegate{

    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var webview1: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    @IBAction func gobackBtn(sender: UIButton) {
        webview1.goBack()
    }
    
    @IBAction func foward(sender: AnyObject) {
        webview1.goForward()
    }
    
    @IBAction func goBtn(sender: AnyObject) {
        
        webview1.loadRequest(NSURLRequest(URL: NSURL(string: "http://\(textField1.text!)")!))
    }
    
    @IBAction func reloadbtn(sender: AnyObject) {
        webview1.reload()
    }
    
    func webViewDidStartLoad(webView: UIWebView) {
        print("did start load")
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        print("did finish load")
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

