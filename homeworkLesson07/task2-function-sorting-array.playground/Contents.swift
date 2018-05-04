import UIKit
func printBetter(text: String, what: [Int]){
    print("\(text): \(what.map{ String($0) }.joined(separator: " "))")
}
/* for swap
var a = 10
var b = 5
//opcion 1
//(a,b) = (b,a)
//opcion 2
b = a + b
a = b - a
b = b - a
 */
//BUBBLESORT
//iterations for bublesort = n-1
func bubleSorting(of array: inout [Int]) -> [Int]{
    guard array.count > 1 else { return array }
    let arrSize = array.count
    var swapped: Bool
    //bucle to control the iterations
    for iteration in 0..<arrSize-1{
        swapped = false
        for i in 0..<arrSize-iteration-1{
            if array[i] > array[i + 1]{
                //swaping values
                let extra = array[i]
                array[i] = array[i + 1]
                array[i + 1] = extra
                /*array[i+1] = array[i] + array[i + 1]
                array[i] = array[i+1] - array[i]
                array[i+1] = array[i+1] - array[i]*/
                swapped = true
            }
        }
        //if the 2 elements were not swapped break the loop
        if !swapped {
            break
        }
    }
    return array
}

var testArray = [1, 2, 4, 3]
printBetter(text: "initial array", what: testArray)
printBetter(text: "sorted array", what: bubleSorting(of: &testArray))

/*
let newArray = testArray.map{ String($0) }.joined(separator: " ")
print(newArray)
*/

// SELECTION SORT
func selectionSorting(of array: [Int]) -> [Int]{
    guard array.count > 1 else { return array }
    var x = array
    var lowest: Int
    for i in 0..<x.count-1{
        lowest = i
        for j in i+1..<x.count{
            if x[j] < x[lowest]{
                lowest = j
            }
        }
        if i != lowest{
            let extra = x[i]
            x[i] = x[lowest]
            x[lowest] = extra
        }
    }
    return x
}
var testArray2 = [1, 2, 4, 3]
printBetter(text: "initial array", what: testArray2)
printBetter(text: "sorted array", what: selectionSorting(of: testArray2))

//selectionSort
//-> if there is just one value in array, there is not need to sort
//-> i did a copy of the array, cuz the function parameter is unmutable
//-> outer look at each element of the array
//-> inner loop to find the lowest in the rest of the array x[i+1]...x[n-1]
//-> swap the lowest number with the current









