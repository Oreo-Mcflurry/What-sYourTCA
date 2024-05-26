//
//  Reduce.swift
//  What'sYourTCA
//
//  Created by A_Mcflurry on 5/26/24.
//

import Foundation
import ComposableArchitecture


@Reducer
struct CounterFeature {
  @ObservableState
  struct State {
	 var count = 0
  }

  enum Action {
	 case decrementButtonTapped
	 case incrementButtonTapped
  }

  var body: some ReducerOf<Self> {
	 Reduce { state, action in
		switch action {
		case .decrementButtonTapped:
		  state.count -= 1
		  return .none

		case .incrementButtonTapped:
		  state.count += 1
			return .none
		}
	 }
  }
}
