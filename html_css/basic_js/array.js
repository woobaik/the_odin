// using this array,
var array = ["Banana", "Apples", "Oranges", "Blueberries"];


// 1. Remove the Banana from the array.
    var a = array.shift();
// 2. Sort the array in order.
    var b = array.sort();
// 3. Put "Kiwi" at the end of the array.
    var c = array.push("Kiwi");
// 4. Remove "Apples" from the array.
    var d = delete array[0]
// 5. Sort the array in reverse order.
    var e = array.reverse();

// ["Oranges", "Kiwi", "Blueberries"]

// using this array,
var array2 = ["Banana", ["Apples", ["Oranges"], "Blueberries"]];
// access "Oranges".
array2[1][1][0];
