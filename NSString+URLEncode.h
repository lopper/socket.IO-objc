//
//  NSString+URLEncode.h
//  Chat
//
//  Created by Patrick Lo on 4/7/14.
//
//

#import <Foundation/Foundation.h>

@interface NSString (URLEncode)
+ (NSString*)encodeURL:(NSString *)string;
@end
