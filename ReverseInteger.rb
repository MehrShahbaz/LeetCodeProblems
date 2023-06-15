# @param {Integer} x
# @return {Integer}
def reverse(x)
    flag = false
    if x < 0
        flag = true
        x *= -1
    end
    x = x.to_s.sub(/0+$/,'').reverse.to_i
    flag ? x*-1 : x
end

p reverse(321)
p reverse(-123)
p reverse(120)