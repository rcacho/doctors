//
//  PrescriptionRecord.m
//  Doctor
//
//  Created by XCodeClub on 2015-07-02.
//  Copyright (c) 2015 rcacho. All rights reserved.
//

#import "PrescriptionRecord.h"

@implementation PrescriptionRecord

static PrescriptionRecord *global_record = nil;

-(instancetype) init {
    if (!global_record) {
        self = [super init];
        if (self) {
            self.globalPrescritptionList = [[NSMutableArray alloc] init];
        }

    }
    return self;
}

-(instancetype)getRecord {
    if (global_record == nil) {
        global_record = [[PrescriptionRecord alloc] init];
    }
    return global_record;
}


-(void) addPrescription:(Prescription *)aPrescription {
    NSMutableArray* globalPatientList = [self globalPrescritptionList];
    [globalPatientList addObject:aPrescription];
}

@end
