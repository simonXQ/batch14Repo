//
//  Person.m
//  ObjcBasics
//
//  Created by Haider Khan on 6/18/18.
//  Copyright © 2018 Alok. All rights reserved.
//

#import "Person.h"

//@interface Person(){
//  NSString *aPerson;
//}
//
//@end
//
//@implementation Person
//
//-(void)setName:(NSString *)name{
////  self.name = name //or below
//
////  [self setName:name];//this will cause deadlock setName will call again and again recursively
//  aPerson = name;
//}
//
//-(NSString *)name{
//  return aPerson;
//}
//
//
//@end

@implementation Person
@synthesize name = _name;

-(void)setName:(NSString *)name{
 
 _name = name;
}

-(NSString *)name{
  return _name;
}

-(void)itsAPublicMethod{
  
//  NSString *str1 = _name;
//  NSString *str2 = self.name;
  NSString *str3 = [self name];
}

-(Person *)initWithName:(NSString *)name{
  
  self = [super init];
  
  if (self != nil){
//    self.name = name;//can create side effects
//    [self setName:name];
    _name = name; //best way
  }
  return self;
}

-(instancetype)init{
  self = [super init];
  
  if (self != nil) {
    _name = @"Default";
  }
  return self;
  
}

@end
