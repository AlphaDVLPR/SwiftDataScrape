//Jesse Rae Cacanindin August 21, 2019

/* In this project I am going to be messing around with data scraping in swift
 I am going to start by pulling data from Instagram. Eventually I can go into
 pulling data from more difficult website by using queries, appending path
 components, etc. Although, for now we are keeping it simple.
 */
import Foundation

let igbaseURL = "http://www.instagram.com/"
let username = "zaythe_barber"
let followers = "followers"

let url = URL(string: igbaseURL + username + followers)

let task = URLSession.shared.dataTask(with: url!) { (data, resp, error) in
    
    guard let data = data else {
        print("data was nil")
        return
    }
    
    guard let htmlString = String(data: data, encoding: String.Encoding.utf8) else {
        print("Can not cast data into string.")
        return
    }
    print(htmlString)
}
task.resume()
