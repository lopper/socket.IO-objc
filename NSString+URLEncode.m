//
//  NSString+URLEncode.m
//  Chat
//
//  Created by Patrick Lo on 4/7/14.
//
//

#import "NSString+URLEncode.h"

@implementation NSString (URLEncode)
+ (NSString*)encodeURL:(NSString *)string
{
    NSString *newString = (__bridge_transfer NSString *)CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault, (__bridge CFStringRef)string, NULL, CFSTR(":/?#[]@!$ &'()*+,;=\"<>%{}|\\^~`"), CFStringConvertNSStringEncodingToEncoding(NSUTF8StringEncoding));
    
    if (newString)
    {
        return newString;
    }
    
    return @"";
}
@end
