//
//  MypictureViewController.h
//  keji
//
//  Created by 王旭 on 2020/12/22.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol imagePassDelegate <NSObject>

- (void)pass:(UIImageView *)imageStr;

@end
@interface MypictureViewController : UIViewController
<UITableViewDelegate, UITableViewDataSource, UINavigationControllerDelegate, UIImagePickerControllerDelegate>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) UIImageView *imageStr;
@property (nonatomic, strong) UIImagePickerController *pickerController;
@property (nonatomic, weak) id<imagePassDelegate>delegate;
@end

NS_ASSUME_NONNULL_END
