Input: nums = [5,7,7,8,8,10], target = 8
Output: [3,4]
#Prective Binary search
#Code:
class Solution {
private:
    int FindFirstPosition(vector<int>& nums, int target){
        int  n = nums.size();
        int start = -1,end = n;
        while(end -start > 1){
            int mid = (start + end )/2;
            if(nums[mid] < target){
                start = mid;
            }
            else{
                end = mid;
            }
        }
        if(end < n && nums[end]==target){
            return end;
        }
        return -1; //means target not exit
    }
    int FindLastPosition(vector<int>& nums, int target){
        int n = nums.size();
        int start = -1 , end = n;
        while(end- start > 1){
            int mid = (start + end)/2;
            if(nums[mid] <= target){
                start = mid;
            }
            else{
                end = mid;
            }
        }
        if(start>=0 && nums[start]==target){
            return start;
        }
        return -1;
    }
public:
    vector<int> searchRange(vector<int>& nums, int target) {
        int First = FindFirstPosition(nums,target);
        int Last = FindLastPosition(nums,target);
        return {First,Last};
    }
};
