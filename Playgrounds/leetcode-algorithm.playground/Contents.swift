import UIKit

func ex1(){
    
    // Problem: Two Sum
    // Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
    
    //Input: nums = [2, 7, 11, 15], target = 9
    //Output: [0, 1]  // Because nums[0] + nums[1] = 2 + 7 = 9
    
    // labeled break
    var nums = [2,7,11,15]
    var target = 9
    var result:[Int] = []
    
    outerloop: for i in 0..<nums.count{
        for j in i..<nums.count{
            if(nums[i] + nums[j] == target){
                result = [i,j]
                break outerloop
            }
        }
        
    }
    print(result)
    print("\(nums[0]), \(nums[1])")
}
ex1()
