#import "NSString+ValidNumber.h"

@implementation NSString (ValidNumber)

- (BOOL)isValidNumber {
    
    NSCharacterSet *allow =[[NSCharacterSet characterSetWithCharactersInString:@"0123456789"] invertedSet];
    NSRange range =[self rangeOfCharacterFromSet:allow];
    return (range.location==NSNotFound)&&(self.length>0);
    
}
    @end
