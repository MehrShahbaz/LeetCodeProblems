def letter_combinations(digits)
  return [] if digits.empty?

  letter = {
    '2' => ['a','b','c'],
    '3' => ['d','e','f'],
    '4' => ['g','h','i'],
    '5' => ['j','k','l'],
    '6' => ['m','n','o'],
    '7' => ['p','q','r','s'],
    '8' => ['t','u','v'],
    '9' => ['w','x','y','z'],
  }
  arr = digits.split('')
  return letter[digits] if arr.one?

  arr.map! {|x| letter[x]}
  arr[0].product(*arr[1..-1]).map(&:join)
end

digits = "23"
p letter_combinations(digits)

digits = ""
p letter_combinations(digits)

digits = "2"
p letter_combinations(digits)

digits = '234'
p letter_combinations(digits)