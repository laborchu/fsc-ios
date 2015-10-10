//
// Created by laborchu on 15/9/1.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import "BbiUtils.h"


@implementation BbiUtils {
}

+ (NSString *)getPublicIcon:(NSString *)code {
    if ([code isEqualToString:PUBLIC_SYS_FSC]) {
        return @"we";
    }else if ([code isEqualToString:PUBLIC_SYS_NOTICE]){
        return @"public_portrait_notice";
    }else if ([code isEqualToString:PUBLIC_SYS_ACT_VOTE]){
        return @"public_portrait_act_vote";
    }else if ([code isEqualToString:PUBLIC_SYS_TEACH]){
        return @"public_portrait_teach";
    }else if ([code isEqualToString:PUBLIC_SYS_RRT_HELPER]){
        return @"public_icon";
    }
    return @"";
}

+ (NSString *)getFileIcon:(NSString *)fileType {

    if ([fileType isEqualToString:@"avi"]) {
        return @"disk_file_avi";
    }else if ([fileType isEqualToString:@"doc"]){
        return @"disk_file_doc";
    }else if ([fileType isEqualToString:@"dxf"]){
        return @"disk_file_dxf";
    }else if ([fileType isEqualToString:@"flash"]){
        return @"disk_file_flash";
    }else if ([fileType isEqualToString:@"flv"]){
        return @"disk_file_flv";
    }else if ([fileType isEqualToString:@"html"]){
        return @"disk_file_html";
    }else if ([fileType isEqualToString:@"jif"]){
        return @"disk_file_jif";
    }else if ([fileType isEqualToString:@"jpg"]){
        return @"disk_file_jpg";
    }else if ([fileType isEqualToString:@"mp4"]){
        return @"disk_file_mp4";
    }else if ([fileType isEqualToString:@"pdf"]){
        return @"disk_file_pdf";
    }else if ([fileType isEqualToString:@"ppt"]){
        return @"disk_file_ppt";
    }else if ([fileType isEqualToString:@"psd"]){
        return @"disk_file_psd";
    }else if ([fileType isEqualToString:@"rar"]){
        return @"disk_file_rar";
    }else if ([fileType isEqualToString:@"raw"]){
        return @"disk_file_raw";
    }else if ([fileType isEqualToString:@"rmvb"]){
        return @"disk_file_rmvb";
    }else if ([fileType isEqualToString:@"txt"]){
        return @"disk_file_txt";
    }else if ([fileType isEqualToString:@"wav"]){
        return @"disk_file_wav";
    }else if ([fileType isEqualToString:@"xls"]){
        return @"disk_file_xls";
    }else if ([fileType isEqualToString:@"zip"]){
        return @"disk_file_zip";
    }
    return @"disk_file";
}

+(NSURL *)getResImgUrl:(NSString *)imgPath{
    return [NSURL URLWithString:[NSString stringWithFormat:@"%@%@", RES_SERVER, imgPath]];
}

@end
