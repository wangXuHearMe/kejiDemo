//
//  PersonalViewController.h
//  keji
//
//  Created by 王旭 on 2020/12/13.
//

#import <UIKit/UIKit.h>
#import "PersonalView.h"
NS_ASSUME_NONNULL_BEGIN

@interface PersonalViewController : UIViewController
<UITableViewDelegate, UITableViewDataSource, UINavigationControllerDelegate>
@property PersonalView *personalView;
//@property UIImageView *touxiangImageView;
@property (nonatomic, strong) NSString *imageStr;
@property (nonatomic, strong) NSString *nameStr;
@property (nonatomic, strong) NSString *majorStr;
@end

NS_ASSUME_NONNULL_END
