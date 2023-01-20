//
//  Prayer_AssistantApp.swift
//  Prayer Assistant
//
//  Created by Christopher Fernandes on 21/09/22.
//

import SwiftUI

@main
struct Prayer_AssistantApp: App {
    
    var body: some Scene {
        
        WindowGroup {
            ContentView()
            
                .withHostingWindow { window in
                    #if targetEnvironment(macCatalyst)
                    if let titlebar = window?.windowScene?.titlebar {
                        titlebar.titleVisibility = .hidden
                        titlebar.toolbar = nil
                        titlebar.toolbarStyle = .unifiedCompact
                    }
                    #endif
                    
                    
                }
                .background(.ultraThinMaterial)
        }
        
    }
    
}

extension View {
    fileprivate func withHostingWindow(_ callback: @escaping (UIWindow?) -> Void) -> some View {
        self.background(HostingWindowFinder(callback: callback))
    }
}

fileprivate struct HostingWindowFinder: UIViewRepresentable {
    var callback: (UIWindow?) -> ()
    
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        DispatchQueue.main.async { [weak view] in
            self.callback(view?.window)
        }
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
    }
}


