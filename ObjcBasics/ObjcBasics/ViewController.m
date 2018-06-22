//
//  ViewController.m
//  ObjcBasics
//
//  Created by Haider Khan on 6/18/18.
//  Copyright © 2018 Alok. All rights reserved.
//

#import "ViewController.h"
#import "UILabel+LablelUtilities.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  
  for (NSInteger i = 0; i<=10000; i++) {
//    @autoreleasepool
//    {
    NSLog(@"is is >> %d", i);
//    }
  }
  
  UILabel *lblName = [UILabel new];
  [lblName addBorderWithWidth:5.0 andColor:UIColor.grayColor];
  
  lblName.frame = CGRectMake(0, 0, self.view.frame.size.width, [[self view] frame].size.height);
  [lblName setBackgroundColor:UIColor.orangeColor];
  [lblName setText:@"Hello Obj C"];
  
  [lblName setTextColor:UIColor.brownColor];
  [[self view] addSubview:lblName];
  
  [lblName release];
  
}

-(void)dealloc{
  [super dealloc];

}


- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}


@end
