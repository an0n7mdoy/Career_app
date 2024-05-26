//
//  GIFView.swift
//  CAS_1
//
//  Created by Simonchik on 10.03.2024.
//

import SwiftUI
import WebKit

struct GIFView: UIViewRepresentable {
    
    private let name: String
    init(_ name: String) {
        self.name = name
    }
    
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        var url = Bundle.main.url(forResource: name, withExtension: "gif")!
        let data = try! Data(contentsOf: url)
        
        webView.load(
            data,
            mimeType: "image/gif",
            characterEncodingName: "UTF-8",
            baseURL: url.deleteLastPathComponent()
        )
       
         return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.reload()
    }
    
    
    
    
    
    
}

#Preview {
    GIFView("анимация кретики кружочки")
}
