def find_sum_of_zero(arr)
  arr = arr.flatten.map(&:to_i)
  possible_subsets = arr.combination(3)
  possible_subsets.find do |subset|
    sum = subset.inject(:+)
    sum.zero?
  end
end

arr1 = [1,2,3,-2,-1]
p arr1
p find_sum_of_zero(arr1)

arr2 = [5, -5, 0, 2, 3, 4,6, 7]
p arr2
p find_sum_of_zero(arr2)
