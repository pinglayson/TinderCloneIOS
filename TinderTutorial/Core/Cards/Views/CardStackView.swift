//
//  CardStackView.swift
//  TinderTutorial
//
//  Created by Ping Layson on 8/5/2024.
//

import SwiftUI

struct CardStackView: View {
    @EnvironmentObject var matchManager: MatchManager
    @State private var showMatchView = false
    @StateObject var viewModel = CardsViewModel(service: CardService())
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack(spacing: 16) {
                    ZStack {
                        ForEach(viewModel.cardModels) { card in
                            CardView(viewModel: viewModel, model: card)
                        }
                    }
                    
                    if !viewModel.cardModels.isEmpty {
                        SwipeActionButtonsView(viewModel: viewModel)
                    }
                }
                .blur(radius: showMatchView ? 20 : 0)
                
                if showMatchView {
                    UserMatchView(show: $showMatchView)
                }
            }
            .animation(.easeInOut, value: showMatchView)
            .onReceive(matchManager.$matchUser) { user in
                showMatchView = user != nil
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    HStack {
                        Image(systemName: "flame")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 20)
                        Text("tinder")
                            .fontWeight(.heavy)
                    }
                }
            }
        }
    }
}

#Preview {
    CardStackView()
        .environmentObject(MatchManager())
}
