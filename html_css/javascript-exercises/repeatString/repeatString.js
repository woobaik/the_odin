var repeatString = function(string, times) {
  result = ""
  if (times < 0) {
    return 'ERROR'
  }
  else {
    for( let i = 0; i < times; i++ ) {
      result += string;
    }
    return result
  }

}

module.exports = repeatString
