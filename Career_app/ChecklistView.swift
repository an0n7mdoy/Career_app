//
//  ChecklistView.swift
//  Career_app
//
//  Created by Simonchik on 29.05.2024.
//

import SwiftUI

struct ChecklistView: View {
    
    @State private var items: [ChecklistItem] = []
    @State private var newItem = ""
    @State private var isEditing = false
    
    func addItem() {
            if !newItem.isEmpty {
                items.append(ChecklistItem(text: newItem))
                newItem = ""
            }
        }
    
    func toggleItem(at index: Int) {
            items[index].isChecked.toggle()
        }
    
    func deleteItem(at offsets: IndexSet) {
            items.remove(atOffsets: offsets)
        }
    
    var body: some View {
        VStack {
            // Input Field for Adding New Items
            HStack {
                TextField("Add new item", text: $newItem)
                    .padding()
                    .background(Color(UIColor.systemGray6))
                    .cornerRadius(10)
                Button(action: {
                    addItem()
                }) {
                    Image(systemName: "plus.circle.fill")
                        .foregroundColor(.blue)
                }
            }
            .padding()
            
            // List of Checklist Items
            List {
                ForEach(items.indices, id: \.self) { index in
                    HStack {
                        Button(action: {
                            toggleItem(at: index)
                        }) {
                            Image(systemName: items[index].isChecked ? "checkmark.circle.fill" : "circle")
                        }
                        Text(items[index].text)
                            .strikethrough(isEditing && items[index].isChecked, color: .gray)
                    }
                }
                .onDelete(perform: deleteItem)
            }
            .navigationTitle("Checklist")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        isEditing.toggle()
                    }) {
                        Image(systemName: isEditing ? "checkmark.circle.fill" : "circle")
                    }
                    
                }
            }
            
            #Preview {
                ChecklistView()
            }
        }
    }
