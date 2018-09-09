require "all_sort/version"

module AllSort
 def bubble_sort arr
 	n =arr.length
 	loop do
 		swapped = false
 		(n-1).times do |i|
 			if arr[i] < arr[i+1]
 				arr[i],arr[i+1] = arr[i+1],arr[i]
 				swapped = true
 			end
 		end
 		break if not swapped
 	end
 	arr
 end
 def quick_sort arr
		return [] if arr.empty?
		piv = arr.sample
		left, right = arr.partition(&piv.method(:>))
		return qs(left)+[piv]+qs(right)
 end
 def merge_sort arr
 	return arr if arr.length <=1
 	piv = (arr.length/2)
 	r_array = merge_sort(arr[0..piv-1])
 	l_array = merge_sort(arr[piv..arr.length])
 	merger(r_array, l_array)
 end
 def merger right, left
 	if right.empty?
 		return left
 	elsif left.empty?
 		return right
 	elsif left.first < right.first
 		[left.first] + merger(left[1..left.length],right)
 	else
 		[right.first] + merger(left,right[1..right.length])
 	end
 end
end

