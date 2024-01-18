//
//  ContentView.swift
//  GustoIOS
//
//  Created by Carlo Luis Martinez on 18/1/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State private var showingAddView = false
    @Query(sort: [SortDescriptor(\Dungeon.level, order: .reverse)]) var dungeons: [Dungeon]
    @Environment(\.modelContext) private var context
    var body: some View {
        NavigationStack {
            DungeonListView(sort: SortDescriptor(\Dungeon.level, order: .reverse))
        }
        
    }
        
}

#Preview {
    ContentView()
}
