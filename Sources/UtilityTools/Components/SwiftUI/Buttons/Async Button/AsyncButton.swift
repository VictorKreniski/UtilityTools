//
//  AsyncButton.swift
//
//
//  Created by Victor Kreniski on 21/03/24.
//

import SwiftUI

struct AsyncButton<S: View, L: View>: View {
    
    private let action: () async -> Void
    private let label: S
    private let loading: L
    
    @State private var task: Task<(), Never>?
    
    var body: some View {
        Button {
            guard task == nil else { return }
            task = Task {
                await action()
            }
        } label: {
            if task != nil {
                loading
            } else {
                label
            }
        }
        .allowsHitTesting(task == nil)
    }
    
    init(
        action: @escaping () async -> Void,
        @ViewBuilder label: @escaping () -> S,
        @ViewBuilder loading: @escaping () -> L
    ) {
        self.action = action
        self.label = label()
        self.loading = loading()
    }
}

#Preview {
    VStack {
        AsyncButton {
            Task {
                try await Task.sleep(for: .seconds(3))
            }
        } label: {
            Text("Try me!")
        } loading: {
            ProgressView()
        }
        .buttonStyle(.borderedProminent)
        AsyncButton {
            Task {
                try await Task.sleep(for: .seconds(3))
            }
        } label: {
            Text("Or Click here!")
        } loading: {
            Image(systemName: "ellipsis")
                .symbolEffect(.variableColor.iterative.dimInactiveLayers)
                .font(.title)
        }
        .buttonStyle(.borderedProminent)
    }
}
