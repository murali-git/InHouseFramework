//
//  ViewController.m
//  InHouseFramework
//
//  Created by Muralisankar on 17/03/17.
//  Copyright © 2017 BNPP. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    BrandViewController *brand;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:[NSBundle bundleForClass:[self class]]];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonClicked:(id)sender {
    brand = [[BrandViewController alloc] initWithNibName:@"BrandViewController" bundle:nil];
    [self.navigationController pushViewController:brand animated:YES];
    
}

@end
