# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end
# @param {ListNode} list1
# @param {ListNode} list2
# @return {ListNode}

def triverse_list(head)
    t = head
    a = []
    while(t != nil)
        a << t.val
        t = t.next
    end
    p a
end

def create_list(nums)
    head = ListNode.new
    t = head
    nums.each_with_index do |x, index|
        t.val = x
        t.next = ListNode.new
        break index == nums.size
        t = t.next
    end
    t.next = nil
    head
end

def merge_two_lists(list1, list2)
    list1.join.to_i
end

list1 = create_list([1,2,4])
triverse_list(list1)