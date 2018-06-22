//
//  Person.h
//  ObjcBasics
//
//  Created by Haider Khan on 6/18/18.
//  Copyright © 2018 Alok. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property NSString *name;//it's by default atomic, strong, readwrite

@property (nonatomic, strong) NSString *hobby; //it's by default readwrite

@property(nonatomic, strong, readwrite) NSString *address;

-(void)itsAPublicMethod;

@end
