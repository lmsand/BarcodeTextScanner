//
//  BarcodeTextScannerApp.swift
//  BarcodeTextScanner
//
//  Created by lexi sanders on 1/6/24.
//

import SwiftUI

@main
struct BarcodeTextScannerApp: App {
    
    @StateObject private var vm = AppViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(vm) // pass to the child views to use
                // an async task to perform before this view appears
                .task {
                    await vm.requestDataScannerAccessStatus()
                }
        }
    }
}
