//
//  PrescriptionRecord.h
//  Doctor
//
//  Created by XCodeClub on 2015-07-02.
//  Copyright (c) 2015 rcacho. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Prescription.h"
@class Doctor;

@interface PrescriptionRecord : NSObject

@property NSMutableArray* globalPrescritptionList;

@property PrescriptionRecord* global_record;

-(instancetype) init;

-(void) addPrescription: (Prescription *)aPrescription;


@end
