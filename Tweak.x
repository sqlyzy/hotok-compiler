#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

%hook UILabel

- (void)setText:(NSString *)text {
    if ([text containsString:@"BHTikTok++ settings"]) {
        text = [text stringByReplacingOccurrencesOfString:@"BHTikTok++ settings" withString:@"HoTok settings"];
    }
    if ([text containsString:@"BHTikTok"]) {
        text = [text stringByReplacingOccurrencesOfString:@"BHTikTok" withString:@"HoTok"];
    }
    %orig(text);
}

%end
