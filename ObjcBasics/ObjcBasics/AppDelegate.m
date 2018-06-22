//
//  AppDelegate.m
//  ObjcBasics
//
//  Created by Haider Khan on 6/18/18.
//  Copyright © 2018 Alok. All rights reserved.
//

#import "AppDelegate.h"
#import "Person.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  // Override point for customization after application launch.
  [self test1];
  [self test2];
  NSString *mergedString = [self mergerString:@"Good" andSecondString:@"Morning"];
  
  [AppDelegate aClassMethodExample];
  
  [self whenToUseMutableVsImmu];
  [self personExamle];
  
  
  NSInteger myInt = 1;
  NSNumber *myNumber = [NSNumber numberWithInteger:myInt];
  
  
  //array of integers
  NSArray *arrOfInts = [NSArray arrayWithObjects:[NSNumber numberWithInteger:1], [NSNumber numberWithInteger:2], [NSNumber numberWithInteger:3], [NSNumber numberWithInteger:4], nil];
  
  //get back
  for (NSNumber *aNumber in arrOfInts) {
    
    NSInteger myIntegers = aNumber.integerValue;
  }
  
  [self dictionaryVsNs];
  return YES;
}

-(void)dictionaryVsNs{
  
  NSDictionary *aDictionary = [[NSDictionary alloc] initWithObjectsAndKeys:@"alok",@"kName", @"133-nyay khand", @"kAddress", nil];
  
  NSString *name = [aDictionary objectForKey:@"kName"];
  NSLog(@"name is > %@", name);
  NSString *adress = [aDictionary objectForKey:@"kAddress"];
  NSLog(@"adress is > %@", adress);

  
  NSArray *objectsArray = [NSArray arrayWithObjects:@"alok", @"133-nyay khand", nil];
  
  NSArray *keysArray = [NSArray arrayWithObjects:@"kName", @"kAddress", nil];
  NSDictionary *anotherDictionary = [NSDictionary dictionaryWithObjects:objectsArray forKeys:keysArray];

  name = [aDictionary objectForKey:@"kName"];
  NSLog(@"name is > %@", name);
  adress = [aDictionary objectForKey:@"kAddress"];
  NSLog(@"adress is > %@", adress);

  
  
}


-(void)personExamle{
  //fix bug
  Person *pObj = [[Person alloc] init];
  [pObj itsAPublicMethod];
  
  [pObj setName:@"alok"];
  [pObj setHobby:@"Teaching"];
  
  NSLog(@"personname is %@ and hobby is %@", pObj.name, pObj.hobby);
  
  pObj.name = @"chao";
  pObj.hobby = @"football";
  NSLog(@"personname is %@ and hobby is %@", [pObj name], [pObj hobby]);
  
  [pObj setAddress:@"133, nyaykhand1"];
  //or we can use . syntax
  pObj.address = @"133, nyaykhand1";
  
  NSLog(@"address is >> %@", [pObj address]);
  NSLog(@"address is > %@", pObj.address);
  
  //thumb rule always use setter and getter? why
}

-(void)test1{
  NSLog(@"void return type");
}

-(NSInteger)test2{
  
  NSInteger aInteger = 10;
  aInteger  = 20;
  aInteger = 30;
  
  NSInteger otherInteger = 30;
  return  aInteger;
}

-(NSString *)mergerString:(NSString *)firstString andSecondString:(NSString *)secondString{
  
  NSString *mergedString = [NSString stringWithFormat:@"%@%@", firstString, secondString];
  //firstString + secondString will not work
  
  mergedString = [NSString stringWithFormat:@"%@, %@", firstString, secondString];
  
  mergedString = [NSString stringWithFormat:@"Very %@, %@", firstString, secondString];
  
  return mergedString;
}

-(NSString *)priceString{
  
  float price = 20.0;
  NSString *priceString = [NSString stringWithFormat:@"The price of donut is %f", price];
  return priceString;
  
}

-(NSString *)priceString1{
  
//  int *i = malloc(sizeof(int));
//  &i = 10;
  
  float price = 20.0;
  
  NSString *descString = @"The price of donut is";
  
  NSString *priceString = [NSString stringWithFormat:@"%@ %f",descString, price];
  return priceString;
  
}

-(NSString *)priceString2{
  
  float price = 20.0;
  
  //@"The price of donut is";
  NSString *strThe = @"The";
  NSString *strPrice = @"price";
  
  
  NSString *priceString = [NSString stringWithFormat:@"%@ %@ of donut is %f", strThe, strPrice, price];
  return priceString;
  
}

+(NSString *)aClassMethodExample{
  
  return @"hi";
}

-(void)arrayExamples{
  
  NSArray *arr1 = [[NSArray alloc] initWithObjects:@"Sunday", @"Monday", @"Tuesday", nil];//initializing any class
  
  for (NSInteger i = 0; i <= arr1.count; i++) {
    
    NSLog(@"value of i is %d", i);
  }
  
  for (NSString *str in arr1) {
    
    NSLog(@"str is %@", str);
  }
  
  NSArray *arr2 = [NSArray new];

  NSArray *arr3 = [[NSArray alloc] init];
  
  NSArray *arr4 = [[NSArray alloc] initWithArray:arr3];
  
  NSMutableArray *aMutableArray1 = [NSMutableArray new];
  [aMutableArray1 addObject:@"JAN"];
  [aMutableArray1 addObject:@"FEB"];
  
  NSMutableArray *aMutableArray12 = [[NSMutableArray alloc] initWithObjects:@"JAN", @"FEB", nil];
  [aMutableArray12 addObject:@"MAR"];
  
  
}

-(void)whenToUseMutableVsImmu{
  
  NSArray *array1 = [[NSArray alloc] initWithObjects:@"SUN", @"MON", @"JAN", nil];
  
  NSMutableArray *mArray = [NSMutableArray arrayWithArray:array1];
  [mArray removeLastObject];
  NSLog(@"array objects are >> %@", mArray);
  
  array1 = mArray;
}


- (void)applicationWillResignActive:(UIApplication *)application {
  // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
  // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
  // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
  // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
  // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
  // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
  // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
