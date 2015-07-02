//
//  main.m
//  Doctor
//
//  Created by XCodeClub on 2015-07-02.
//  Copyright (c) 2015 rcacho. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"
#import "PrescriptionRecord.h"
#import "RecordHolder.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // let's start of by creating doctor and patient instances
        Doctor *nick = [[Doctor alloc] init:@"nick"];
        Doctor *hibbert = [[Doctor alloc] init:@"hibbert"];
        
        
        Patient *homer = [[Patient alloc] init:@"homer" card:YES condition:paranoia];
        Patient *bart = [[Patient alloc] init:@"bart" card:NO condition:depression];
        
        // have patient ask doctor
        [homer askForName:hibbert];
        // have doctor ask patient
        [nick askForName:bart];
        
        [homer visitDoctor:nick];
        
        NSLog(@"%@",[nick patientList]);
        
        
        
    }
    return 0;
}
