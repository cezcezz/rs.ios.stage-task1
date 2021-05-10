#import "NSArray+MinRotated.h"

@implementation NSArray (MinRotated)

- (NSNumber *)minRotated {
    
    if(self.count==0)
        return nil;
    
    long leftIndex =0;
    long rightIndex =self.count-1;
    
    while (rightIndex-leftIndex>1) {
        long midIndex = (leftIndex + rightIndex) / 2;
    if (midIndex > 0 && [self[midIndex] intValue] < [self[midIndex - 1] intValue]){
                  return self[midIndex];
        }
        if ([self[midIndex] intValue] < [self.lastObject intValue])rightIndex = midIndex;
                else leftIndex = midIndex;

        }
    if ([self[leftIndex] intValue] < [self[rightIndex] intValue])return self[leftIndex];
        else return self[rightIndex];
}


@end
