//
//  QLNavigationController.m
//  QLProjectDemo
//
//  Created by Shrek on 16/3/7.
//  Copyright © 2016年 Shreker. All rights reserved.
//

#import "QLNavigationController.h"

@interface QLNavigationController ()

@end

@implementation QLNavigationController

+ (void)initialize {
    /*! --- CONFIGURE THE VARIETY BAR'S PROPERTIES ---
    UINavigationBar *navBar = [UINavigationBar appearance];
    [navBar setBarTintColor:QLMainNavColor];
    [navBar setTintColor:[UIColor whiteColor]];
    [navBar setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor whiteColor]}];
    
    UIBarButtonItem *barButtonItem = [UIBarButtonItem appearanceWhenContainedIn:[QLNavigationController class], nil];
    [barButtonItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor whiteColor]} forState:UIControlStateNormal];
    
    [barButtonItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor lightGrayColor]} forState:UIControlStateDisabled];
     */
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"icon_back"] style:UIBarButtonItemStylePlain target:self action:@selector(backAction)];
    [super pushViewController:viewController animated:animated];
}

- (void)backAction {
    [self popViewControllerAnimated:YES];
}



@end
