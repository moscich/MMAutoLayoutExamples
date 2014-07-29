#import <Foundation/Foundation.h>

@class UILabel;

@interface TemporaryViewName : UIView

@property (nonatomic, strong) UIButton *disconnectButton;
@property (nonatomic, strong) UIButton *cancelButton;
@property (nonatomic, strong) UILabel *disconnectConfirmationLabel;

@end