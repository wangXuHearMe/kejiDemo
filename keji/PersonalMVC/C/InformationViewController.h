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
#import "MypictureViewController.h"
NS_ASSUME_NONNULL_BEGIN
@protocol inforImagePassDelegate <NSObject>

- (void)pass:(UIImageView *)imageStr;

@end
@interface InformationViewController : UIViewController
<UITableViewDelegate, UITableViewDataSource, sexDelegate, imagePassDelegate>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) UIButton *sureButton;
@property (nonatomic, strong) NSString *sexStr;
@property (nonatomic, strong) NSString *descriStr;
@property (nonatomic, strong) NSString *nationStr;
@property (nonatomic, strong) NSString *nameStr;
@property (nonatomic, strong) NSString *IDStr;
@property (nonatomic, strong) NSString *majorStr;
@property (nonatomic, strong) UIImageView *imageStr;
@property bool isSex;
@property bool isDescr;
@property bool isNation;
@property (nonatomic, weak) id<inforImagePassDelegate>delegate;
@end

NS_ASSUME_NONNULL_END
