//
//  Prescription.h
//  Doctor
//
//  Created by XCodeClub on 2015-07-02.
//  Copyright (c) 2015 rcacho. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "Patient.h"
@class Doctor;

typedef enum PrescriptionType {
    zyprexa, clozapine, lithium
} PrescriptionType;

@interface Prescription : NSObject

@property Patient* prescriber;

@property PrescriptionType type;

-(instancetype) init:(Patient *)aPatient type: (PrescriptionType) type;



@end
