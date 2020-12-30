//
//  SceneDelegate.m
//  keji
//
//  Created by 王旭 on 2020/12/2.
//

#import "SceneDelegate.h"
#import "MainViewController.h"
#import "MidViewController.h"
#import "PersonalViewController.h"
#import "LaunchViewController.h"
@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
    // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
    // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
    self.window = [[UIWindow alloc] initWithWindowScene:scene];
//    MainViewController *mainViewController = [[MainViewController alloc] init];
    MainViewController *main = [MainViewController new];
    MidViewController *mid = [MidViewController new];
    PersonalViewController *personal = [PersonalViewController new];
    LaunchViewController *launch = [LaunchViewController new];
       
    //创建导航栏
    UINavigationController* nav1 = [[UINavigationController alloc] initWithRootViewController:main];
    UINavigationController* nav2 = [[UINavigationController alloc] initWithRootViewController:mid];
    UINavigationController* nav3 = [[UINavigationController alloc] initWithRootViewController:personal];
    UINavigationController *nav4 = [[UINavigationController alloc] initWithRootViewController:launch];
    //调色
    nav1.navigationBar.barTintColor = [UIColor colorWithRed:0.05 green:0.1 blue:0.7 alpha:1.0];
    [nav1.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:18], NSForegroundColorAttributeName:[UIColor whiteColor]}];
    nav2.navigationBar.barTintColor = [UIColor colorWithRed:0.05 green:0.1 blue:0.7 alpha:1.0];
    [nav2.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:18], NSForegroundColorAttributeName:[UIColor whiteColor]}];
    nav3.navigationBar.barTintColor = [UIColor colorWithRed:0.05 green:0.1 blue:0.7 alpha:1.0];
    [nav3.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:18], NSForegroundColorAttributeName:[UIColor whiteColor]}];
    nav4.navigationBar.barTintColor = [UIColor colorWithRed:0.05 green:0.1 blue:0.7 alpha:1.0];
    [nav4.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:18], NSForegroundColorAttributeName:[UIColor whiteColor]}];
            
    nav1.navigationBarHidden = YES;
    //创建分栏控制器
    UITabBarController* tbController = [UITabBarController new];
    tbController.tabBar.barTintColor = [UIColor whiteColor];
    NSArray* arrayVc = [NSArray arrayWithObjects: nav1, nav2, nav3, nav4, nil];
            
    tbController.viewControllers = arrayVc;
    self.window.rootViewController = tbController;
    tbController.tabBar.translucent = YES;  //不透明
    [self.window makeKeyAndVisible];
}


- (void)sceneDidDisconnect:(UIScene *)scene {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
}


- (void)sceneDidBecomeActive:(UIScene *)scene {
    // Called when the scene has moved from an inactive state to an active state.
    // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
}


- (void)sceneWillResignActive:(UIScene *)scene {
    // Called when the scene will move from an active state to an inactive state.
    // This may occur due to temporary interruptions (ex. an incoming phone call).
}


- (void)sceneWillEnterForeground:(UIScene *)scene {
    // Called as the scene transitions from the background to the foreground.
    // Use this method to undo the changes made on entering the background.
}


- (void)sceneDidEnterBackground:(UIScene *)scene {
    // Called as the scene transitions from the foreground to the background.
    // Use this method to save data, release shared resources, and store enough scene-specific state information
    // to restore the scene back to its current state.
}


@end
