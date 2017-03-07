//
//  main.m
//  Word Effects
//
//  Created by Andrew Solesa on 2017-03-06.
//  Copyright © 2017 KSG. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        NSString *Option = @"1 = Uppercase | 2 = Lowercase | 3 = Numberize | 4 = Canadianize | 5 = Respond | 6 = De-Space-It";
        
        while (TRUE)
        {
            NSLog(@"\n");
            
            NSLog(@"%@", Option);
            
            int Choice;
            
            NSLog(@"Pick an option above: ");
            scanf("%i", &Choice);
            
            NSLog(@"Enter a string: ");
            NSString *inputString = [[[NSString alloc] initWithData:[[NSFileHandle fileHandleWithStandardInput] availableData] encoding:NSUTF8StringEncoding] stringByTrimmingCharactersInSet:[NSCharacterSet newlineCharacterSet]];
            
            switch (Choice)
            {
                case 1:
                    inputString = [inputString uppercaseString];
                    
                    NSLog(@"Your string uppercased is: %@", inputString);
                    break;
                    
                case 2:
                    inputString = [inputString lowercaseString];
                    
                    NSLog(@"Your string lowercased is: %@", inputString);
                    break;
                    
                case 3:
                    if ([inputString intValue] != 0)
                    {
                        NSInteger myInt = [inputString intValue];
                        
                        NSLog(@"Your input as an integer is: %li", (long)myInt);
                    }
                    break;
                    
                case 4:
                    inputString = [inputString stringByAppendingString:@", eh?"];
                    
                    NSLog(@"Your string canadianized is: %@", inputString);
                    break;
                    
                case 5:
                    inputString = [inputString substringFromIndex:[inputString length] - 1];
                    
                    if ([inputString isEqual: @"?"])
                    {
                        NSLog(@"I don't know");
                    }
                    else if ([inputString isEqual: @"!"])
                    {
                        NSLog(@"Whoa, calm down!");
                    }
                    break;
                    
                case 6:
                    inputString = [inputString stringByReplacingOccurrencesOfString:(@" ") withString:(@"-")];
                    
                    NSLog(@"%@", inputString);
                    break;
            }
        }
    }
    return 0;
}
