//
//  InformationViewController.h
//  keji
//
//  Created by 王旭 on 2020/12/17.
//

#import <UIKit/UIKit.h>
#import "SexViewController.h"
#import "NationViewController.h"
#import "DescriptViewController.h"
NS_ASSUME_NONNULL_BEGIN

@interface InformationViewController : UIViewController
<UITableViewDelegate, UITableViewDataSource, sexDelegate>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) UIButton *sureButton;
@property (nonatomic, strong) NSString *sexStr;
@property (nonatomic, strong) NSString *descriStr;
@property (nonatomic, strong) NSString *nationStr;
@property (nonatomic, strong) NSString *nameStr;
@property (nonatomic, strong) NSString *IDStr;
@property (nonatomic, strong) NSString *majorStr;
@property (nonatomic, strong) NSString *imageStr;
@property bool isSex;
@property bool isDescr;
@property bool isNation;
@end

NS_ASSUME_NONNULL_END
