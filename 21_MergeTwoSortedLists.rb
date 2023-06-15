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

def merge_two_lists(list1, list2)
  return nil if list1.nil? && list2.nil?

  return list1 || list2 if list1.nil? || list2.nil?

  dummy_head = ListNode.new(nil)
  current_node = dummy_head

  while list1 && list2
    if list1.val <= list2.val
      current_node.next = list1
      list1 = list1.next
    else
      current_node.next = list2
      list2 = list2.next
    end

    current_node = current_node.next
  end

  current_node.next = list1 || list2

  dummy_head.next
end

arr1 = ListNode.new(1)
temp1 = ListNode.new(2)
temp2 = ListNode.new(4)

arr1.next = temp1
temp1.next = temp2

arr2 = ListNode.new(1)
temp1 = ListNode.new(3)
temp2 = ListNode.new(4)

arr2.next = temp1
temp1.next = temp2

p "List1: #{triverse_list(arr1)}"
p "List2: #{triverse_list(arr2)}"
triverse_list(arr2)

temp = merge_two_lists(arr1, arr2)

p "Result: #{triverse_list(temp)}"