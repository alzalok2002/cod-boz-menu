#import <UIKit/UIKit.h>

%hook PlayerEntity
- (int)getPoints {
    return 999999; 
}
%end

%hook WeaponEntity
- (int)ammoCount {
    return 999;
}
- (void)consumeAmmo:(int)amount {
    // لا تفعل شيئاً لكي لا ينقص الرصاص
}
%end
