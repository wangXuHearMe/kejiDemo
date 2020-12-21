//
//  SexViewController.h
//  keji
//
//  Created by 王旭 on 2020/12/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol sexDelegate <NSObject>

- (void)pass:(BOOL)isBegin andlabel:(NSString *)sex;

@end
@interface SexViewController : UIViewController
<UITableViewDelegate, UITableViewDelegate>
@property (nonatomic, strong) UITableView *tableView;
@property bool isbegin;
@property (nonatomic, assign) id<sexDelegate> delegate;
@end

NS_ASSUME_NONNULL_END
