# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    o = {}
    nums.each_with_index do |number, index|
        if o[target - number]
            return [o[target - number], index]
        else
            o[number] = index
        end
    end
end

p two_sum([2,7,11,15], 9)