// Copyright © Microsoft Open Technologies, Inc.
//
// All Rights Reserved
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// THIS CODE IS PROVIDED *AS IS* BASIS, WITHOUT WARRANTIES OR CONDITIONS
// OF ANY KIND, EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION
// ANY IMPLIED WARRANTIES OR CONDITIONS OF TITLE, FITNESS FOR A
// PARTICULAR PURPOSE, MERCHANTABILITY OR NON-INFRINGEMENT.
//
// See the Apache License, Version 2.0 for the specific language
// governing permissions and limitations under the License.

#import "ADCredentialCollectionController.h"

@implementation ADCredentialCollectionController

@synthesize customView = _customView;
@synthesize usernameField = _usernameField;
@synthesize passwordField = _passwordField;
@synthesize usernameLabel = _usernameLabel;
@synthesize passwordLabel = _passwordLabel;

-(id) init
{
    self = [super init];
    if(self)
    {
        [NSBundle loadNibNamed:@"ADCredentialViewController" owner:self];
//        loaded = [[NSBundle mainBundle] loadNibNamed:@"ADCredentialViewController" owner:self topLevelObjects:nil];
        
        SAFE_ARC_RETAIN(_customView);
        SAFE_ARC_RETAIN(_usernameField);
        SAFE_ARC_RETAIN(_passwordField);
        SAFE_ARC_RETAIN(_usernameLabel);
        SAFE_ARC_RETAIN(_passwordLabel);
    }
    
    return self;
}

-(void)dealloc
{
    [super dealloc];
    SAFE_ARC_RELEASE(_customView);
    SAFE_ARC_RELEASE(_usernameField);
    SAFE_ARC_RELEASE(_passwordField);
    SAFE_ARC_RELEASE(_usernameLabel);
    SAFE_ARC_RELEASE(_passwordLabel);
    _customView = nil;
    _usernameField = nil;
    _passwordField = nil;
    _usernameLabel = nil;
    _passwordLabel = nil;
}

@end