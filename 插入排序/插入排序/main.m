//
//  main.m
//  插入排序
//
//  Created by 李勇猛 on 2017/6/3.
//  Copyright © 2017年 李勇猛. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int array[] = {3,2, 6, 9, 8, 5, 7, 1, 4};
        
        //为了添加可移植性(採取sizeof())计算数组元素个数count
        
        int count = sizeof(array) /sizeof(array[0]);
        
        for (int i =1; i<count; i++) {
            
            int j = i;
            
            //把数组里的数据 取出来
            int temp = array[j];
            
            //这里会判断temp>array[j-1]如果大于 while会一直执行 直到0 然后跳出循环 
            while (j>0&&temp>array[j-1]) {
                
                array[j] = array[j-1];
                
                j--;
                
            }
            
            array[j] = temp;
            
        
        }
        
        for (int i = 0; i < count; i++) {
            
            printf("[%2d]: %d\n", i, array[i]);
            
        }
       
        
           }
    return 0;
}
