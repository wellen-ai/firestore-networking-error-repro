//
//  ContentView.swift
//  FirestoreNetworkingErrorRepro
//
//  Created by Irwin Billing on 2024-12-07.
//

import SwiftUI
import FirebaseFirestore

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .onAppear {
            self.onAppear()
        }
    }

    private func onAppear() {
        Task {
            let db = Firestore.firestore()
            let result = try await db.collection("users").document("1").getDocument()
        }
    }
}

#Preview {
    ContentView()
}
