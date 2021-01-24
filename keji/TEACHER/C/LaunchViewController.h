//
//  LaunchViewController.h
//  keji
//
//  Created by 王旭 on 2020/12/30.
//

#import <UIKit/UIKit.h>
#import "ThemeViewController.h"
#import "ListViewController.h"
#import "TimeLimitViewController.h"
#import "StartTimeViewController.h"
#import "ExplainViewController.h"
NS_ASSUME_NONNULL_BEGIN

@interface LaunchViewController : UIViewController
<UITableViewDelegate, UITableViewDataSource, themeDelegate, listDelegate, timeLimitDelegate, startTimeDelegate, explainDelegate>
@property (nonatomic, strong) UIButton *timeLimitButton;
@property (nonatomic, strong) UIButton *startTimeButton;
@property (nonatomic, strong) UIButton *launchSignButton;
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSString *zhutiString;
@property (nonatomic, strong) NSString *shuomingString;
@property (nonatomic, strong) NSString *mingdanString;
@property (nonatomic, strong) NSString *weizhiString;
@property (nonatomic, strong) NSString *limitString;
@property (nonatomic, strong) NSString *startSrting;
@property (nonatomic, strong) NSString *limitTimeString;
@property (nonatomic, strong) NSString *startTimeString;
@property (nonatomic, strong) NSString *shijianxianzhi;
@property (nonatomic, strong) NSString *kaishishijian;
@property bool isZhuti;
@property bool isShuoming;
@property bool isMingdan;
@property bool isWeizhi;
@end

NS_ASSUME_NONNULL_END
