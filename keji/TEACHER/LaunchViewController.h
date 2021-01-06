//
//  LaunchViewController.h
//  keji
//
//  Created by 王旭 on 2020/12/30.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LaunchViewController : UIViewController
<UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) UIButton *timeLimitButton;
@property (nonatomic, strong) UIButton *startTimeButton;
@property (nonatomic, strong) UIButton *launchSignButton;
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSString *zhutiString;
@property (nonatomic, strong) NSString *shuomingString;
@property (nonatomic, strong) NSString *mingdanString;
@property (nonatomic, strong) NSString *weizhiString;
@property bool isZhuti;
@property bool isShuoming;
@property bool isMingdan;
@property bool isWeizhi;
@end

NS_ASSUME_NONNULL_END
