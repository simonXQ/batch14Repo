//
//  UILabel+LablelUtilities.m
//  ObjcBasics
//
//  Created by Haider Khan on 6/19/18.
//  Copyright © 2018 Alok. All rights reserved.
//

#import "UILabel+LablelUtilities.h"

@implementation UILabel (LablelUtilities)
-(void)addBorderWithWidth:(CGFloat)width andColor:(UIColor *)color{
  
  [[self layer] setBorderWidth:width];
  [[self layer] setBorderColor:[color CGColor]];
}

@end
