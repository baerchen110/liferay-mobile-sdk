/**
 * Copyright (c) 2000-2013 Liferay, Inc. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */

#import "LREmailAddressService_v62.h"

/**
 * author Bruno Farache
 */
@implementation LREmailAddressService_v62

- (NSDictionary *)addEmailAddressWithClassName:(NSString *)className classPK:(long long)classPK address:(NSString *)address typeId:(int)typeId primary:(BOOL)primary error:(NSError **)error {
	NSDictionary *_params = @{
		@"className": className,
		@"classPK": @(classPK),
		@"address": address,
		@"typeId": @(typeId),
		@"primary": @(primary)
	};

	NSDictionary *_command = @{@"/emailaddress/add-email-address": _params};

	return (NSDictionary *)[self.session invoke:_command error:error];
}

- (NSDictionary *)addEmailAddressWithClassName:(NSString *)className classPK:(long long)classPK address:(NSString *)address typeId:(int)typeId primary:(BOOL)primary serviceContext:(NSDictionary *)serviceContext error:(NSError **)error {
	NSDictionary *_params = @{
		@"className": className,
		@"classPK": @(classPK),
		@"address": address,
		@"typeId": @(typeId),
		@"primary": @(primary),
		@"serviceContext": serviceContext
	};

	NSDictionary *_command = @{@"/emailaddress/add-email-address": _params};

	return (NSDictionary *)[self.session invoke:_command error:error];
}

- (void)deleteEmailAddressWithEmailAddressId:(long long)emailAddressId error:(NSError **)error {
	NSDictionary *_params = @{
		@"emailAddressId": @(emailAddressId)
	};

	NSDictionary *_command = @{@"/emailaddress/delete-email-address": _params};

	[self.session invoke:_command error:error];
}

- (NSDictionary *)getEmailAddressWithEmailAddressId:(long long)emailAddressId error:(NSError **)error {
	NSDictionary *_params = @{
		@"emailAddressId": @(emailAddressId)
	};

	NSDictionary *_command = @{@"/emailaddress/get-email-address": _params};

	return (NSDictionary *)[self.session invoke:_command error:error];
}

- (NSArray *)getEmailAddressesWithClassName:(NSString *)className classPK:(long long)classPK error:(NSError **)error {
	NSDictionary *_params = @{
		@"className": className,
		@"classPK": @(classPK)
	};

	NSDictionary *_command = @{@"/emailaddress/get-email-addresses": _params};

	return (NSArray *)[self.session invoke:_command error:error];
}

- (NSDictionary *)updateEmailAddressWithEmailAddressId:(long long)emailAddressId address:(NSString *)address typeId:(int)typeId primary:(BOOL)primary error:(NSError **)error {
	NSDictionary *_params = @{
		@"emailAddressId": @(emailAddressId),
		@"address": address,
		@"typeId": @(typeId),
		@"primary": @(primary)
	};

	NSDictionary *_command = @{@"/emailaddress/update-email-address": _params};

	return (NSDictionary *)[self.session invoke:_command error:error];
}

@end