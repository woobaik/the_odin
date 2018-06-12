var sumAll = function(num1, num2) {
  let result = 0
  let val1 = 0
  let val2 = 0
  if (num1 < num2){
    val1 = num1
    val2 = num2
  }else {
    val1 = num2
    val2 = num1
  }
  if (num1 < 0 || num2 < 0){
    return 'ERROR'
  }else if (typeof num1 !== "number"|| typeof num2 !== "number") {
    return 'ERROR'
  } else
    for (let i = val1; i <= val2; i++){
      result += i
    }
    return result
}

module.exports = sumAll
