//
//  UILabel+NightVersion.m
//  UILabel+NightVersion
//
//  Copyright (c) 2015 Draveness. All rights reserved.
//
//  These files are generated by ruby script, if you want to modify code
//  in this file, you are supposed to update the ruby code, run it and 
//  test it. And finally open a pull request.

#import "UILabel+NightVersion.h"

#import "UIView+NightVersion.h"

#import "DKNightVersionManager.h"
#import "DKNightVersionConstants.h"

@implementation UILabel (NightVersion)

#pragma mark - ChangeColor

- (void)changeColor {
    
    [super changeColor];
    
    [UIView animateWithDuration:NIGHT_ANIMATION_DURATION animations:^{
        
        [self setTextColor:([DKNightVersionManager currentThemeVersion] == DKThemeVersionNight) ? self.nightTextColor : self.normalTextColor];
        
    }];
}

@end
