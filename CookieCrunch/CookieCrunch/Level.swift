//
//  Level.swift
//  CookieCrunch
//
//  Created by Razeware on 13/04/16.
//  Copyright © 2016 Razeware LLC. All rights reserved.
//

import Foundation

let NumColumns = 9
let NumRows = 9

class Level {
    
    // MARK: Properties
    
    // The 2D array that keeps track of where the Cookies are.
    private var cookies = Array2D<Cookie>(columns: NumColumns, rows: NumRows)
    
    // The 2D array that contains the layout of the level.
    private var tiles = Array2D<Tile>(columns: NumColumns, rows: NumRows)
    
    private var possibleSwaps = Set<Swap>();
    
    
    // MARK: Initialization
    
    // Create a level by loading it from a file.
    init(filename: String) {
        guard let dictionary = Dictionary<String, AnyObject>.loadJSONFromBundle(filename) else { return }
        // The dictionary contains an array named "tiles". This array contains
        // one element for each row of the level. Each of those row elements in
        // turn is also an array describing the columns in that row. If a column
        // is 1, it means there is a tile at that location, 0 means there is not.
        guard let tilesArray = dictionary["tiles"] as? [[Int]] else { return }
        
        // Loop through the rows...
        for (row, rowArray) in tilesArray.enumerate() {
            // Note: In Sprite Kit (0,0) is at the bottom of the screen,
            // so we need to read this file upside down.
            let tileRow = NumRows - row - 1
            
            // Loop through the columns in the current r
            for (column, value) in rowArray.enumerate() {
                // If the value is 1, create a tile object.
                if value == 1 {
                    tiles[column, tileRow] = Tile()
                }
            }
        }
    }
    
    
    // MARK: Level Setup
    
    // Fills up the level with new Cookie objects
    func shuffle() -> Set<Cookie> {
        
        var set: Set<Cookie>
        repeat {
            set = createInitialCookies();
            detectPossibleSwaps();
            print("possible swaps \(possibleSwaps)");
        } while {
            possibleSwaps.count == 0;
        }
        
        return set;
    }
    
    private func createInitialCookies() -> Set<Cookie> {
        var set = Set<Cookie>()
        
        for row in 0..<NumRows {
            for column in 0..<NumColumns {
                if tiles[column, row] != nil {
                    var cookieType: CookieType
                    repeat {
                        cookieType = CookieType.random()
                    } while (column >= 2 &&
                        cookies[column - 1, row]?.cookieType == cookieType && cookies[column - 2, row]?.cookieType == cookieType)
                        || (row >= 2 &&
                            cookies[column, row - 1]?.cookieType == cookieType && cookies[column, row - 2]?.cookieType == cookieType)
                    
                    let cookie = Cookie(column: column, row: row, cookieType: cookieType)
                    cookies[column, row] = cookie
                    
                    set.insert(cookie)
                }
            }
        }
        return set
    }
    
    
    // MARK: Query the level
    
    // Determines whether there's a tile at the specified column and row.
    func tileAtColumn(column: Int, row: Int) -> Tile? {
        assert(column >= 0 && column < NumColumns)
        assert(row >= 0 && row < NumRows)
        return tiles[column, row]
    }
    
    // Returns the cookie at the specified column and row, or nil when there is none.
    func cookieAtColumn(column: Int, row: Int) -> Cookie? {
        assert(column >= 0 && column < NumColumns)
        assert(row >= 0 && row < NumRows)
        return cookies[column, row]
    }
    
    func performSwap(swap: Swap) {
        let columnA = swap.cookieA.column
        let rowA = swap.cookieA.row
        let columnB = swap.cookieB.column
        let rowB = swap.cookieB.row
        
        cookies[columnA, rowA] = swap.cookieB
        swap.cookieB.column = columnA
        swap.cookieB.row = rowA
        
        cookies[columnB, rowB] = swap.cookieA
        swap.cookieA.column = columnB
        swap.cookieA.row = rowB
    }
    
    private func hasChainAtColumn(column: Int, row: Int) -> Bool {
        let cookieType = cookies[column, row]!.cookieType;
        
        var horzLength = 1;
        var i = column - 1;
        
    }
}