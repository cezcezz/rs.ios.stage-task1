#import <Foundation/Foundation.h>
#import "OddNumbers.h"

@implementation OddNumbers

- (NSInteger)oddNumbers:(NSArray <NSNumber *> *)array {
    
    NSMutableArray *myArray = [NSMutableArray arrayWithArray:array];
    int count=0;
    
    for (int i = 0; i<myArray.count; i++) {
        
        if ([[array objectAtIndex:i]intValue] % 2 !=0){
            count+=1;
        }
    }
    return count;
}
@end
