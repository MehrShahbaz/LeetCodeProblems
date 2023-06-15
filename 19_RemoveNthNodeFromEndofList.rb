class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end

def triverse_list(head)
  arr = []
  while true do
    break if head.nil?

    arr << head.val
    head = head.next
  end
  arr
end

def remove_nth_from_end(head, n)
  return head unless head

  return head = nil if head.next.nil?

  slow_ptr = head
  fast_ptr = head

  (1..n).each do
    fast_ptr = fast_ptr.next
  end

  if fast_ptr.nil?
    head = head.next
  else
    while fast_ptr.next
      slow_ptr = slow_ptr.next
      fast_ptr = fast_ptr.next
    end

    slow_ptr.next = slow_ptr.next.next
  end

  head
end

temp1 = ListNode.new(1)
# temp2 = ListNode.new(2)
# temp3 = ListNode.new(3)
# temp4 = ListNode.new(4)
# temp5 = ListNode.new(5)

# temp1.next = temp2
# temp2.next = temp3
# temp3.next = temp4
# temp4.next = temp5

p triverse_list(temp1)
temp1 = remove_nth_from_end(temp1, 1)
p triverse_list(temp1)