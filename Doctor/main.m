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
        
        
        Patient *homer = [[Patient alloc] init:@"homer" condition:paranoia];
        [homer validate];
        Patient *bart = [[Patient alloc] init:@"bart" condition:depression];
        [bart inValidate];
        
        // have patient ask doctor
        [homer askForName:hibbert];
        // have doctor ask patient
        [nick askForName:bart];
        
        [homer visitDoctor:nick];
        [bart visitDoctor:nick];
        // homer should have been added to his list, bart should not have been
        [nick printPatientList];
        
        // have homer ask for medication
        [homer requestMedication:nick];
        
        PrescriptionRecord *record = [hibbert record];
        NSMutableArray *prescriptionlist = [record globalPrescritptionList];
        for (Prescription *prescription in prescriptionlist) {
            Patient *patient = [prescription prescriber];
            NSString *name = [patient name];
            NSLog(@"The name of one of the people in the record is: %@", name);
        }
        
        
        
        
    }
    return 0;
}
