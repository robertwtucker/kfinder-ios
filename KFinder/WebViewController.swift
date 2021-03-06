/**
 * Copyright 2017 Robert Tucker
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import UIKit
import WebKit

class WebViewController: UIViewController {
    
    //MARK: Properties
    
    var html: String?
    var urlRequest: URLRequest?
    
    var webView: WKWebView!
    
    
    //MARK: View Lifecycle
    
    override func loadView() {
        super.loadView()
        
        let preferences = WKPreferences()
        preferences.javaScriptEnabled = false
        
        let configuration = WKWebViewConfiguration()
        configuration.preferences = preferences
        
        webView = WKWebView(frame: .zero, configuration: configuration)
        webView.uiDelegate = self
        webView.allowsBackForwardNavigationGestures = false
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Assumption: Caller will set either the HTML string to load or the URL to request
        if let html = html {
            let baseUrl = Bundle.main.url(forResource: "default", withExtension: "css")
            webView.loadHTMLString(html, baseURL: baseUrl)
            return
        }
        // (else)
        guard let urlRequest = urlRequest else {
            print("Neither HTML or URLRequest was set!")
            return
        }
        webView.load(urlRequest)
    }
}


//MARK: - WKUIDelegate

extension WebViewController: WKUIDelegate { }
