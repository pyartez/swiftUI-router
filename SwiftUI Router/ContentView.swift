//
//  ContentView.swift
//  SwiftUI Router
//
//  Created by Phil Yates on 12/02/2021.
//

import SwiftUI

final class ContentPresenter: ObservableObject {
    @Published var detailView: AnyView = AnyView(DetailView())
    func getDetailView() -> AnyView {
        return AnyView(DetailView())
    }
}

struct ContentView: View {
    @ObservedObject private var presenter: ContentPresenter
    
    init(presenter: ContentPresenter) {
        self.presenter = presenter
    }
    
    var body: some View {
        NavigationView(content: {
            NavigationLink(destination: presenter.detailView) {
                Text("Navigate")
            }
        })
        
    }
}

struct DetailView: View {
    var body: some View {
        Text("Detail View")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(presenter: ContentPresenter())
    }
}
