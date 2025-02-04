//
//  ContentView.swift
//  What'sYourTCA
//
//  Created by A_Mcflurry on 5/26/24.
//

import SwiftUI
import ComposableArchitecture

struct ContentView: View {
	let store: StoreOf<CounterFeature>

	var body: some View {
		VStack {
			Text("\(store.count)")
				.font(.largeTitle)
				.padding()
				.background(Color.black.opacity(0.1))
				.cornerRadius(10)
			HStack {
				Button("-") {
					store.send(.decrementButtonTapped)
				}
				.font(.largeTitle)
				.padding()
				.background(Color.black.opacity(0.1))
				.cornerRadius(10)

				Button("+") {
					store.send(.incrementButtonTapped)
				}
				.font(.largeTitle)
				.padding()
				.background(Color.black.opacity(0.1))
				.cornerRadius(10)
			}
		}
	}
}

#Preview {
	ContentView(store: .init(initialState: CounterFeature.State(), reducer: {
		CounterFeature()
	}))
}
