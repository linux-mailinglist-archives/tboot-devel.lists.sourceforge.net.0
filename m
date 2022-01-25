Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D5B3149B518
	for <lists+tboot-devel@lfdr.de>; Tue, 25 Jan 2022 14:31:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1nCLuf-0007ca-Qo; Tue, 25 Jan 2022 13:31:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jun.miao@intel.com>) id 1nCLue-0007bf-Gv
 for tboot-devel@lists.sourceforge.net; Tue, 25 Jan 2022 13:31:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Subject:From:To:Date:Message-ID:
 Content-Type:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=C6EZsX6VzarVn47Ki9K6K2qwY5uAui++h7+QgdWtbkQ=; b=DAR5DP94BuVwLPpaYSaDPFmWlO
 i+EoN3hU0tjea8ZJx012UFKUj3dq4wloaNIkA/4xrX+QhAVAtu4zKOXBPm5uETQ07HMRpDEYisv40
 42tUSTIz5rHnTmr1ZWKd++7JVsz0BEsIoi9ujrwJBGhl24ynOe+TNSf9YeOEYxbYcoEs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Subject:From:To:Date:Message-ID:Content-Type:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=C6EZsX6VzarVn47Ki9K6K2qwY5uAui++h7+QgdWtbkQ=; b=D
 98XlPm857Y++GlP8KzwMsRsmCVInKj7sVjA2vwQorUuHsIT3gLVbb0CvegUtDlZBlZoyVlu5AI0Dz
 FQRs5dkYmelc08BPjkUffNAiRa8cUgslGHk3/SsrBv9/ptKF+mhn1QxemoK4vxt1I7p90L732Z4s/
 ymoyngKVpOwELNrc=;
Received: from mga02.intel.com ([134.134.136.20])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1nCLuZ-00CNHv-Nd
 for tboot-devel@lists.sourceforge.net; Tue, 25 Jan 2022 13:31:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643117463; x=1674653463;
 h=message-id:date:to:from:subject:mime-version;
 bh=qOIH202hwgywjYR50s23D8uIVwouIn27rGRjA6r74+A=;
 b=If9XLrfyWFYYQVmw5QnaKQS03gLn5vKuDaYAzSbFdPDdee9/a1DlrtGl
 Vy8nXNu37PzrZLZTmpgKeuXBbtL7DPYdC0kfalLpL/tEiSKlKz+liqNuL
 t9p45/dG98cR1/bHfo/7eAl5SHT707fdhdSI1SV1FZEqR+wSqJAADldgk
 Pxkadeu61OihdoCu5QiIsR52t5/ad0dn+Oi7EFZ3gk4swX5/K2z2+LgOl
 riK2fbHss5gfJmMJH2IuNWDHtuYETW87E9uAZMFbCQPBk+tBkc90XUHXv
 8PIVqzVH0irn21HbWnBbPm/LlaILtmFbwFZ1esQFDmHhYLDpmwKZ4r07k g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10237"; a="233669477"
X-IronPort-AV: E=Sophos;i="5.88,315,1635231600"; 
 d="scan'208,217";a="233669477"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2022 05:30:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,315,1635231600"; 
 d="scan'208,217";a="695832324"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 25 Jan 2022 05:30:48 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 25 Jan 2022 05:30:48 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 25 Jan 2022 05:30:48 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 25 Jan 2022 05:30:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OOLsnfP0BtIAXmaCV2rJ6ThPQ0BKU8wnrz8vAoezlvaJasvTqgtmUx7Z5fZ8MxdDjzKoobIqZgMvNo4gIJZAFIMM6ajHnE9uL2Ld33UyNHWBGAWg1x0RjRVH1CYxnYeGlwc4wJRWOfl0kaaQJQURCCBoYXlO4rAUn2pgLFEal6b06+ufIN730JZyg7UuvvwtHHPGJ7hF2eQIyTuUXwT5zywrW5BWuvp6AzJe0UrUb8Wzf+Xhw2GVnz2X1C3DtiBQipsM7ESt9mg1snyALZb1HU9C91T9XhQi3o9oyXehjtbEJS9jDVKQWx18k2G/KbasturZwNVtLOlUbii1fOVIhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Lhgwo9j2vR+ewDGiH3cTizJiZ6DbifPocTJluFvwHeg=;
 b=AVZ8Xtkbfo9JlW0qw8HkWjaUJpxifI10zM9lRkpzluQt2TuwQX4ld3rBc3I5LdciQXl+cbGnxKzzUEffptft1yYEzGdRf+0picdqEXaOzynvbwjA8XSsZpTACBoqAbOO68ni9Zyfo4ckBmbCSoGcCvhL/lhtOKv8v3OUk9ylRSXlOyCVVWWgGhssvRNOpXLeVkUQY8hPMLHAd5Rqb2XwqNTscgG3pJLHFNBdn7itHeLFHGrjm66cm2DZgeN2ched8DJkOTjrmn1sxezcluHJlW7K4Jr2aXNkWkIxFyOK/6CH/JIRZ3i/aV4gfDDo+pltVzJZOgE/aRmwDzWWeFwYHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB4739.namprd11.prod.outlook.com (2603:10b6:5:2a0::22)
 by BYAPR11MB2805.namprd11.prod.outlook.com (2603:10b6:a02:c1::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4909.7; Tue, 25 Jan
 2022 13:30:46 +0000
Received: from DM6PR11MB4739.namprd11.prod.outlook.com
 ([fe80::54d:e196:a165:e501]) by DM6PR11MB4739.namprd11.prod.outlook.com
 ([fe80::54d:e196:a165:e501%5]) with mapi id 15.20.4930.015; Tue, 25 Jan 2022
 13:30:45 +0000
Message-ID: <e8d88c3f-cac7-3536-9505-7513c3cb22c5@intel.com>
Date: Tue, 25 Jan 2022 21:30:40 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: <tboot-devel@lists.sourceforge.net>
From: Jun Miao <jun.miao@intel.com>
X-ClientProxiedBy: HK2PR0401CA0008.apcprd04.prod.outlook.com
 (2603:1096:202:2::18) To DM6PR11MB4739.namprd11.prod.outlook.com
 (2603:10b6:5:2a0::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: adfbe721-a5ae-4d5c-8de2-08d9e006e467
X-MS-TrafficTypeDiagnostic: BYAPR11MB2805:EE_
X-Microsoft-Antispam-PRVS: <BYAPR11MB280586E27CFCB713A6F7274D9A5F9@BYAPR11MB2805.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4125;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nEnVLIy0mpbS5vKLAZQX4JalE09BuERDDURGl25UXS+UPzpewWqoMs2IAVMuPqiWxEijlkHAnhUqy0y7pfKIprgWwaQbZZCVQqlMO4MFj5BObKEJGzQMVTjEbGlTtb3/WBTVEbfK+zhOrwTtDMJfyr820F9be/Y9rep87HP4mg9et60Kme91CLIE9mRDOsK+VQlDP5FBepwEgHYDps3vK3CEStnMc88Jsy+2WgI2LT4jUw0gZRPewYIBTb6hT3kFz9PHMUsU4AbNWFKmwhleUfdjgfqfU+4AbeCmjatB6lCp8Hfithiokc1d1ACQNNiJcEA0LgjK3RJoJ85c3RUdXJ0p7pke1bMIJAVLAbWJ8mCpPdmYcc+Q3xFhB8kAAXufrlEqt5QGLkmxGJodULnaLxldlJ3yxRGovdJmGKAQNvMv5DFzEpDkfO8rYF5FPqWQa0XOUmvkvedaRx/SZWNj9MPiwQpeWscnNw3O6w2wdRx4wqyTAyGGgusoj18vrYIPhZ226KqqRTJNkJLGifap0ok9f4gz7xkyu+dvdnPIWXPp3rIdsJNDIKoAk2FSjGX6qEyldQawd2dP6gGjZd8/UkoYaTmRepcK3ft8wUljjQMwCOuhdXzqaWiatNmDhxfVjAX7XZRM486t1ZIsSLVEvky4zdCS7qomxeRRwZyojDEPBW8g7hvS2utEhnCa8NbwJKJ0IJn2IGPpsENi2Wj1BYiXSpEQTa6jkFCq1eIZNBptRD8xjuSL6SaBhLWpzdeweGxkAHAgFt9ySqxlYJ2W0c7HMdBqkupAE5+RQFQKyRgY/NeUl+WhBfQm4Nhe7CRJHJ1GKnOkYpNski3uTpGSUXs/d+z+ZUfP1lCHrddkvMznjqFftFWU1VV9ADkbSI5Y
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4739.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(2906002)(8936002)(82960400001)(83380400001)(166002)(66946007)(316002)(6486002)(2616005)(8676002)(44832011)(5660300002)(38100700002)(86362001)(66476007)(6512007)(508600001)(26005)(6916009)(66556008)(966005)(31686004)(33964004)(31696002)(6666004)(6506007)(186003)(36756003)(2004002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZHJLQzY3bDU2RXV0WDhHcEZQQXd2dFJFY2t5ZmZRL0NKWXVvRWRhNlJvVGxM?=
 =?utf-8?B?bzFZbWpzN3VqMGpWMC82V0hqN2lmM0lZOWNpam1XbURJc2N2YkQ1eTNjWE9k?=
 =?utf-8?B?U2RlUUd2TjFqcDlybW5NcjVQSm5oMUFHVDl6aHhLVTZzZkNQczlQazRXQVl4?=
 =?utf-8?B?aHpZTEpIYVowZlZkYWlhOGJXbkNhbEZKaXVSR3pzREM3ck50WWhsUW4wTFM3?=
 =?utf-8?B?WlpCQ2hhM0FwbGFDWHJmRitsRzVMTmZ6MXNWTHY1L213V2NTU2Y5NmFZYXBk?=
 =?utf-8?B?eU9UNGxRdkdUeTlTOFUrOEVQL3lTUmEwQkxBNEcxRGdNWnFhNkJXYWwwNyty?=
 =?utf-8?B?QmxSaEZabHdVYThldFJKNGh1Nm1aNUpsalNDZTArdFdZVnVtblJjOFA5Ynkw?=
 =?utf-8?B?NXg4UzFrSEVERjd2N1FOUWhwUUUvR1Zxc1pmWk9uL0RoNzRDaC9tN2RYQVhM?=
 =?utf-8?B?TzQxZTJSVk1yd0QyVlRkVDExay92eEJNMm9VWHkrczZTWWIvSTVEL1EweTJy?=
 =?utf-8?B?Q2IvUUs2QU1KclQ3TUUvaUg4dFZzVW1WUThsaXhYbDZQdHcwUGZncTM5ajFU?=
 =?utf-8?B?dHJnU2hNUllJcFI1NS81RTcxSnBaK2NJYzhJOVlLZDkvYTJQSTd0NGRSSGx2?=
 =?utf-8?B?SktoejhLYzBsS2M2UUVPSkdmdVBWcXJKTGltTHBiOWZkTzI3bkdHWkh0REJC?=
 =?utf-8?B?UzdydForWlAzM1VmUjZ0RE51M0g2ZFRsUjJyOWx5U0NiT2NXUUE5Vnpzd0Zq?=
 =?utf-8?B?OFhJYjFXSmVSZDh6WjlQZWhVc2h4SllOUmVhZm5NODNUN2RsVUdQa21QeGM3?=
 =?utf-8?B?UFE3Q0MyQ3c1WnVPV1E3YlpIQUN4dm1KTHcwR2VKTjBjcnlERExiVERNU0dH?=
 =?utf-8?B?cUtmWDJtWGJYZHdOeEd2L0lXUHFCekZmajlQTTM4N1gwNVh2cnpodGFPdTVq?=
 =?utf-8?B?cmdBajRZc0U3RlUzVytUZmMrR2xFeW11S3U4VmNrdVUyWGtLQXFDMnlieGc4?=
 =?utf-8?B?SFptc29tRUM3cWFjN3hjK0pqaTkrTU1SenQ1UE13L2JGMW9kL0RoOHNQWFdH?=
 =?utf-8?B?eTNuYWFPalFiejJZU0RLMUN5YVM2SHVlR1RmeGhtZHMrY3VaUSs2RXhienQ4?=
 =?utf-8?B?RHQ5SzVZM0pDMW9OU1pZcU9hdzZxWE1FOWNmSGp3U1lNU2hyQXRxZ3FXUGV4?=
 =?utf-8?B?WUw3LzFUZnFiTGp6bjQxR3lIYm9KSnZ6SU9UUGhNZmhSSGFGSTIyL21ZUCsy?=
 =?utf-8?B?VlVUVmFKUnJmV3kxYWJGcGttMjZybXZqL1V2TWt4YXlXbzAvbkJLbXdzM00r?=
 =?utf-8?B?Z01PRU9EdnhUa0RGc00rYVBXMjBGNG1mcHhTTWVnMU1CbzVJRDZxV2VwRk12?=
 =?utf-8?B?Nk5zU25VV2FpZmgxNXVHT1NEQ0p0MkJINUNxR0tSczg4ZVZKYTFLNHpuM1J3?=
 =?utf-8?B?TjhhQjlmM0NyUFp2VllKdEdTNnBWWThBMm95TDk5TTdGSGxheHNtUlJzNExx?=
 =?utf-8?B?djVpdXJJTnZhMXYySlJpNjBBUVNwdWFkSktHRFRKdnZ3aDlWVWg2UkRCYm9h?=
 =?utf-8?B?T2xhYXZVNExOUzM2VXBnbEw5dXpLNVBqcGVEd3dRUXl0aVg0eDRVSmNTWFhq?=
 =?utf-8?B?cXE4cDhxMjVkVGpKWkF2QmM1bXJDNjVuSERWQ2t4M1IyekhGL3BYWFJSNDlv?=
 =?utf-8?B?bXlzbDJJY1NNTk0rdHZHdkpjejZCZWpxcWV5UWNORUp1QkRwMkFqSmYrdi9W?=
 =?utf-8?B?Ky9QQ2hucDRCRXowd05pYittdHJrVWVCMVZXRG81ZkcvcGxHQTRiWEJoeVIy?=
 =?utf-8?B?akxKNldJcVlZNmgwZTg3WS8zUTFSenJBUVlWZ1d1d1RPcTJxeXBJR1RlKzFp?=
 =?utf-8?B?eTVnUkhxZDc3WkU0WVpnWlcyWHRIeHdIc2UyYkFYd3NHR3FUS1M2YWEyOU1K?=
 =?utf-8?B?VkdVQjF4ZWVBclB3TG9LRVQ4dzd0a1NqZTBkaGJHL21ud3p4ekE0dHV5SFll?=
 =?utf-8?B?LzVBbEpBWUxrOGVlekJDUVQ5dHhpblhGc25wZzJmS1ovbEI3ZmY5eDR0bE5v?=
 =?utf-8?B?VmFFRnR3QUJlZTQ4NzM1aUpUSmo4S2t6R09aMTBRVy9jM3c0WHAvZXpxYTc4?=
 =?utf-8?B?VkE4SHZnVDlkR2tGcjRaSncxWks4dkc1Snk5a2pDMU9FR3o1c3Z1N1h5Z1o4?=
 =?utf-8?Q?v6hTUBLb6os55+lQDW+mX9A=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: adfbe721-a5ae-4d5c-8de2-08d9e006e467
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4739.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jan 2022 13:30:45.7146 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GfK8HFMn9JMUd8/x8EkSBLAChHi/3nmm+HJTHj3kBB9lAXkBF/4aQYgcYZqm6XxzTgQPNiJPKlkDf/ybOaQZ6w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2805
X-OriginatorOrg: intel.com
X-Spam-Score: -3.2 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: *build log:* common/memlog.c: In function 'memlog_init':
 common/memlog.c:53:20:
 error: writing 1 byte into a region of size 0 [-Werror=stringop-overflow=]
 53 | g_log->uuid = (uuid_t)TBOOT_LOG_UUID; common/memlog.c [...] 
 Content analysis details:   (-3.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.20 listed in wl.mailspike.net]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nCLuZ-00CNHv-Nd
Subject: [tboot-devel] [BUG Report] GCC error: writing 1 byte into a region
 of size 0
X-BeenThere: tboot-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Developer support for Trusted Boot <tboot-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/tboot-devel>,
 <mailto:tboot-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=tboot-devel>
List-Post: <mailto:tboot-devel@lists.sourceforge.net>
List-Help: <mailto:tboot-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/tboot-devel>,
 <mailto:tboot-devel-request@lists.sourceforge.net?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3650051779122581003=="
Errors-To: tboot-devel-bounces@lists.sourceforge.net

--===============3650051779122581003==
Content-Type: multipart/alternative;
	boundary="------------mzXmvpD2js4tsusdxKv9HvMb"
Content-Language: en-US

--------------mzXmvpD2js4tsusdxKv9HvMb
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

*build log:*

common/memlog.c: In function 'memlog_init':
common/memlog.c:53:20: error: writing 1 byte into a region of size 0 
[-Werror=stringop-overflow=] 53 | g_log->uuid = (uuid_t)TBOOT_LOG_UUID;
common/memlog.c:53:20: error: writing 1 byte into a region of size 0 
[-Werror=stringop-overflow=]
common/memlog.c:53:20: error: writing 1 byte into a region of size 0 
[-Werror=stringop-overflow=]
common/memlog.c:53:20: error: writing 1 byte into a region of size 0 
[-Werror=stringop-overflow=]
common/memlog.c:53:20: error: writing 1 byte into a region of size 0 
[-Werror=stringop-overflow=]
common/memlog.c:53:20: error: writing 1 byte into a region of size 0 
[-Werror=stringop-overflow=]
common/memlog.c:68:26: error: writing 1 byte into a region of size 0 
[-Werror=stringop-overflow=] 68 | g_log->zip_count = 0;


build error link: 
https://kojipkgs.fedoraproject.org/work/tasks/2525/81812525/build.log

*environment**:*

jmiao@fedora35:~$ cat /etc/os-release
NAME="Fedora Linux"
VERSION="36 (Workstation Edition Prerelease)"
ID=fedora
VERSION_ID=36
VERSION_CODENAME=""
PLATFORM_ID="platform:f36"
PRETTY_NAME="Fedora Linux 36 (Workstation Edition Prerelease)"
ANSI_COLOR="0;38;2;60;110;180"
LOGO=fedora-logo-icon
CPE_NAME="cpe:/o:fedoraproject:fedora:36"
HOME_URL="https://fedoraproject.org/"
DOCUMENTATION_URL="https://docs.fedoraproject.org/en-US/fedora/rawhide/system-administrators-guide/"
SUPPORT_URL="https://ask.fedoraproject.org/"
BUG_REPORT_URL="https://bugzilla.redhat.com/"
REDHAT_BUGZILLA_PRODUCT="Fedora"
REDHAT_BUGZILLA_PRODUCT_VERSION=rawhide
REDHAT_SUPPORT_PRODUCT="Fedora"
REDHAT_SUPPORT_PRODUCT_VERSION=rawhide
PRIVACY_POLICY_URL="https://fedoraproject.org/wiki/Legal:PrivacyPolicy"
VARIANT="Workstation Edition"
VARIANT_ID=workstation
jmiao@fedora35:~$ gcc --version
gcc (GCC) 12.0.1 20220118 (Red Hat 12.0.1-0)
Copyright (C) 2022 Free Software Foundation, Inc.
This is free software; see the source for copying conditions. There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

--------------mzXmvpD2js4tsusdxKv9HvMb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p><b>build log:</b><br>
    </p>
    common/memlog.c: In function 'memlog_init':<br>
    common/memlog.c:53:20: error: writing 1 byte into a region of size 0
    [-Werror=stringop-overflow=] 53 | g_log-&gt;uuid =
    (uuid_t)TBOOT_LOG_UUID; <br>
    common/memlog.c:53:20: error: writing 1 byte into a region of size 0
    [-Werror=stringop-overflow=] <br>
    common/memlog.c:53:20: error: writing 1 byte into a region of size 0
    [-Werror=stringop-overflow=] <br>
    common/memlog.c:53:20: error: writing 1 byte into a region of size 0
    [-Werror=stringop-overflow=] <br>
    common/memlog.c:53:20: error: writing 1 byte into a region of size 0
    [-Werror=stringop-overflow=] <br>
    common/memlog.c:53:20: error: writing 1 byte into a region of size 0
    [-Werror=stringop-overflow=] <br>
    common/memlog.c:68:26: error: writing 1 byte into a region of size 0
    [-Werror=stringop-overflow=] 68 | g_log-&gt;zip_count = 0;
    <p><br>
    </p>
    <p>build error link:&nbsp;&nbsp;
      <a class="moz-txt-link-freetext" href="https://kojipkgs.fedoraproject.org/work/tasks/2525/81812525/build.log">https://kojipkgs.fedoraproject.org/work/tasks/2525/81812525/build.log</a></p>
    <p><b>environment</b><b>:</b></p>
    <p>jmiao@fedora35:~$ cat /etc/os-release <br>
      NAME=&quot;Fedora Linux&quot;<br>
      VERSION=&quot;36 (Workstation Edition Prerelease)&quot;<br>
      ID=fedora<br>
      VERSION_ID=36<br>
      VERSION_CODENAME=&quot;&quot;<br>
      PLATFORM_ID=&quot;platform:f36&quot;<br>
      PRETTY_NAME=&quot;Fedora Linux 36 (Workstation Edition Prerelease)&quot;<br>
      ANSI_COLOR=&quot;0;38;2;60;110;180&quot;<br>
      LOGO=fedora-logo-icon<br>
      CPE_NAME=&quot;cpe:/o:fedoraproject:fedora:36&quot;<br>
      HOME_URL=<a class="moz-txt-link-rfc2396E" href="https://fedoraproject.org/">&quot;https://fedoraproject.org/&quot;</a><br>
DOCUMENTATION_URL=<a class="moz-txt-link-rfc2396E" href="https://docs.fedoraproject.org/en-US/fedora/rawhide/system-administrators-guide/">&quot;https://docs.fedoraproject.org/en-US/fedora/rawhide/system-administrators-guide/&quot;</a><br>
      SUPPORT_URL=<a class="moz-txt-link-rfc2396E" href="https://ask.fedoraproject.org/">&quot;https://ask.fedoraproject.org/&quot;</a><br>
      BUG_REPORT_URL=<a class="moz-txt-link-rfc2396E" href="https://bugzilla.redhat.com/">&quot;https://bugzilla.redhat.com/&quot;</a><br>
      REDHAT_BUGZILLA_PRODUCT=&quot;Fedora&quot;<br>
      REDHAT_BUGZILLA_PRODUCT_VERSION=rawhide<br>
      REDHAT_SUPPORT_PRODUCT=&quot;Fedora&quot;<br>
      REDHAT_SUPPORT_PRODUCT_VERSION=rawhide<br>
PRIVACY_POLICY_URL=<a class="moz-txt-link-rfc2396E" href="https://fedoraproject.org/wiki/Legal:PrivacyPolicy">&quot;https://fedoraproject.org/wiki/Legal:PrivacyPolicy&quot;</a><br>
      VARIANT=&quot;Workstation Edition&quot;<br>
      VARIANT_ID=workstation<br>
      jmiao@fedora35:~$ gcc --version<br>
      gcc (GCC) 12.0.1 20220118 (Red Hat 12.0.1-0)<br>
      Copyright (C) 2022 Free Software Foundation, Inc.<br>
      This is free software; see the source for copying conditions.&nbsp;
      There is NO<br>
      warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR
      PURPOSE.<br>
    </p>
  </body>
</html>
--------------mzXmvpD2js4tsusdxKv9HvMb--


--===============3650051779122581003==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============3650051779122581003==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel

--===============3650051779122581003==--

