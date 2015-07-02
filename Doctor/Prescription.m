//
//  Prescription.m
//  Doctor
//
//  Created by XCodeClub on 2015-07-02.
//  Copyright (c) 2015 rcacho. All rights reserved.
//

#import "Prescription.h"

@implementation Prescription

-(instancetype) init:(Patient *)aPatient type:(PrescriptionType)type {
    self = [super init];
    if (self) {
        self.prescriber = aPatient;
        self.type = type;
    }
    return self;
}

@end
