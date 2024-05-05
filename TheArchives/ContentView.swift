//
//  ContentView.swift
//  TheArchives
//
//  Created by Kody Schram on 5/5/24.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    @State private var showAnimation = false

    var body: some View {
        ZStack {
            VStack {
                Image(systemName: "book.fill")
                    .resizable()
                    .scaledToFit()
                Text("Welcome to the Archives")
            }
            .padding(30)
            .onTapGesture {
                withAnimation(.easeInOut(duration: 3)) {
                    showAnimation.toggle()
                }
            }
            .opacity(showAnimation ? 0 : 1)
            .scaleEffect(showAnimation ? 0.5 : 1)
        
            if showAnimation {
                TabView {
                    LibraryView()
                        .opacity(showAnimation ? 1 : 0)
                        .tabItem {
                            Image(systemName: "books.vertical")
                            Text("Library")
                        }
                }
            }
            
        }
    }
}
