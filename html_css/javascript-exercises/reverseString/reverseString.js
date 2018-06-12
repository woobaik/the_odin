var reverseString = function(string) {
    array = string.split("");
    reversedArray = []
    for(let i = 0; i < array.length; i++) {
      reversedArray.unshift(array[i]);
    }
    return reversedArray.join('');
  }

module.exports = reverseString
