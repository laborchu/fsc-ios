//
//  FscColorDefine.h
//  fsc-ios
//
//  Created by laborchu on 15/7/14.
//  Copyright (c) 2015 laborc. All rights reserved.
//

#ifndef fsc_ios_FscColorDefine____FILEEXTENSION___
#define fsc_ios_FscColorDefine____FILEEXTENSION___

#define UIColorFromRGB(rgbValue) [UIColor \
colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#define COLOR_NAVBARTINT       UIColorFromRGB(0x252525)
#define COLOR_CUSTOMVIEWBG     UIColorFromRGB(0xeeeeee)
#define COLOR_CUSTOMTEXT       UIColorFromRGB(0x999999)


#endif
