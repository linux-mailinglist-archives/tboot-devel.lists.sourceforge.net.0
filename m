Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F0044341052
	for <lists+tboot-devel@lfdr.de>; Thu, 18 Mar 2021 23:29:33 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1lN18v-0004tk-B9; Thu, 18 Mar 2021 22:29:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dario.n.oliver@intel.com>) id 1lN18t-0004tU-L0
 for tboot-devel@lists.sourceforge.net; Thu, 18 Mar 2021 22:29:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vjlDaLg5W+AUTM/lFuw8LTHMvoKim/wawmQ27mDHYBA=; b=X6M6RMOJ3ITPQ6aQ9UKIxYhPNm
 WPrlkIiu99PFm7pEefaf6ymefVzZrtRVgFqHHpqyyM4Mhu+txkWKG6ieieXCHRkeZ9IUo2jpkm8ks
 eurwz+TIs7OULSydUx5SJIfatWLqVUwKDVAWT7aBVsRoeMkSANPE1ODpkCYMeR/PLgSg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:Message-ID:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=vjlDaLg5W+AUTM/lFuw8LTHMvoKim/wawmQ27mDHYBA=; b=G
 eKmY/gv4mccgDb79has6bYH5+JT3/BfTVRy/NXRyDlBR3J3PtWvkD448IUsE1FDZOEUuVW/SnmJsh
 2M1pk0gUfOLXKsalXBftFkBXCHTC8LxJ3NbXtRJYEAYvnayz5IKyydxMqsemblY6rM7sGMNB+wVpe
 v87JvdouWbc6VYE0=;
Received: from mga17.intel.com ([192.55.52.151])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lN18k-00GlNx-L8
 for tboot-devel@lists.sourceforge.net; Thu, 18 Mar 2021 22:29:23 +0000
IronPort-SDR: Xps4aa+7dQTcSd3C3MrpZddXZaDL1uLMCYHnCrGJaapNX4h9H3VcK5vAICJbVoxQGiNKxXZ3zk
 7OdFomFCtP1A==
X-IronPort-AV: E=McAfee;i="6000,8403,9927"; a="169704624"
X-IronPort-AV: E=Sophos;i="5.81,259,1610438400"; d="scan'208";a="169704624"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2021 15:29:08 -0700
IronPort-SDR: GPYY0EFPMOrKTmG72IyRSFxrmnnVY5KBtshVpBlUoHL2SeTxOIjgZn9j8OsX2g4+lFw1JuOtYA
 9CgOmK9kk5EA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,259,1610438400"; d="scan'208";a="374728689"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga006.jf.intel.com with ESMTP; 18 Mar 2021 15:29:08 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 18 Mar 2021 15:29:08 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Thu, 18 Mar 2021 15:29:08 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Thu, 18 Mar 2021 15:29:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Qvn7F9no4uQsT0Xs+EUAikYDJEFttmtQKA/y3H89YBpWcYPl4hQe58IgGjUaFirogjG20kVOZKMT1JAMCFAEn5yjGOeZ4DRM5FM5bp7IcIzqcQ9ZvFSoeJzRHUesHN9FDG90PlWNY54/8ncikDYysHgPaAQB56g93K/rrkv+Rekh7EAVHZncnFKgXmqi85ysiQDL45LnYAShOIkZBhta7ZALsVnyEyrnze2vePie1PysPnjqzN+Rqcfw3630Iz8e7Thg43BOq+vuqT3B53OYqrrSH7sfXEGgD6gHqutfyJivURG6V2QielMbfi1tg1cGF0ZyAut18pnz0eq++/5M4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vjlDaLg5W+AUTM/lFuw8LTHMvoKim/wawmQ27mDHYBA=;
 b=AKB3Hi3KdB5PyMNNHJD/3212+58Ut0woYkIr3dexu4hDtLp0tUq9qENR+9LgQGi5uvnyy05WtLi33tMevr9UAREe5q0e35WHkfALSRKXGCx87JwXfEr3z3esr/JMX/1Ha5N76F7nq5izD0WGW2H9mWb45dLa53W/VWQtLlhQck9lP3JGdaZlCZsg8FuWiZOilc7tqU1QbMwiwd9icfa3/Mq/rh1xscRb2t1hdUjsockzXI1/CBmAVX4nQCWWXOPuKo5N9gXLS67lVbt+aNb5gApQU4tdS1NeghT8IHNFW3K/vimuvjJem1jz2ZQ9Hg9uKbAbnZcrHcbyZ7VqbnNvRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vjlDaLg5W+AUTM/lFuw8LTHMvoKim/wawmQ27mDHYBA=;
 b=FW0H6jRkZKAX//LxUF7U5OAelBxfqmMtW6EXyVHyzt+aeQis94xZzb7qWAqm3/qKDLbFx/PU5usZBxkt0NH5cSLG7MWedMqbQyHN87bGvsCuEynvQUIcQaKGxdWajWZHx/CsDBAa9X++PhRigJHzcj+WYzve3yvjhYGBCm6Lo5k=
Received: from DM6PR11MB4425.namprd11.prod.outlook.com (2603:10b6:5:1d9::31)
 by DM6PR11MB4345.namprd11.prod.outlook.com (2603:10b6:5:202::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.32; Thu, 18 Mar
 2021 22:29:00 +0000
Received: from DM6PR11MB4425.namprd11.prod.outlook.com
 ([fe80::6483:cbea:6db4:d76b]) by DM6PR11MB4425.namprd11.prod.outlook.com
 ([fe80::6483:cbea:6db4:d76b%4]) with mapi id 15.20.3933.032; Thu, 18 Mar 2021
 22:29:00 +0000
From: "Oliver, Dario N" <dario.n.oliver@intel.com>
To: "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Thread-Topic: Tboot on Intel NUC8i7HVK and Fedora 33
Thread-Index: AdccMXAhpH/o9dBOS6uo0S9oxCXi1w==
Date: Thu, 18 Mar 2021 22:29:00 +0000
Message-ID: <DM6PR11MB4425A4A47E94DAE32961A0E2DB699@DM6PR11MB4425.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: lists.sourceforge.net; dkim=none (message not signed)
 header.d=none; lists.sourceforge.net;
 dmarc=none action=none header.from=intel.com;
x-originating-ip: [50.39.172.55]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 96073136-13d7-4a0b-fd12-08d8ea5d3a74
x-ms-traffictypediagnostic: DM6PR11MB4345:
x-microsoft-antispam-prvs: <DM6PR11MB434585AE5DD559200443D864DB699@DM6PR11MB4345.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VBM9eTewayPWhrRRhBkfE7gopeUrHRGSoSnLZFuQQRESRlOhXWN5+M+KNuZq5WMkCDqv85yrOfx77efHVmiNO9x+bdRFI7ks6gCmPFGiD3qZ1QcPCmoV5ZNdIMX9hB/2YHJeNelcMkZAXkcxRtAvlaLoV9oUqNTfPBeW291btmiT29fhaPyLIvYjvux2SkA8+AZR9tAovNALmSA3i1MEJiX7yzuSuN6pfAGS1JncHhlw7ihI3ZWRbw0WOMYaHFCnUnN2TQdZLzTuUz6D4Sif7cUZ2wGV3gGi6rcCed0fSgkTXrfh33UdHwwLsQXGjiYwDqV6KmP/nrYqSmemm7py/edlloW9e3j5fGKuzbzTg9cKMyMRZP8wgyKgBePV3/IlPAzZDVEMvE6oUKwxvZHFCBdvTcxDSvIE/oNZDVJBwRTBCIp2MQouXLJPzimCb+Dzaxe5ZiSnYhibCcGqpNN2dCnzyqubscpTJwy/mYwk2o/2NC5FbjZ8rOuNRsQoi4XBYmyslDYIPa+FiAQlTKzDkaJhBVyz5phG8jfmWE+bfm44kbqc7T3nHqgUwIwI0CHEeQlamYL5OS3z2+CLVpKenrWpPBo4+Tvew5cpnHSecWmkhFVbWJOI0vjrSdgNw4G4tF9F6u8OGQHyNL8bDNpm2fZSVUes35Zf+x7bNIWN+EZTOJgTxnKyc7yAw6ccQGRr
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4425.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(376002)(136003)(366004)(396003)(39860400002)(76116006)(2906002)(26005)(8676002)(66476007)(66946007)(86362001)(55016002)(4001150100001)(8936002)(33656002)(966005)(478600001)(5660300002)(316002)(9686003)(30864003)(186003)(83380400001)(66446008)(64756008)(52536014)(66556008)(38100700001)(6916009)(7696005)(6506007)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?zF5viaOQvqKZTILEdT9NuHIVPZ1XTqtBzZdF50E0MGfFVwSfCO5dIsOTQ48m?=
 =?us-ascii?Q?DkZ7BZYXqRDvvYLujpQYoAqKAaThdbIMBgpAnK93gyWwi+8VxnGM5mVa6gID?=
 =?us-ascii?Q?i69VtDOfCzmE62IAP0VGPH9j/gRWlbR/QVnzvwoMwvPrU6I5yGp2VZHlIuVO?=
 =?us-ascii?Q?qhmYxvkTSfRyVy2rDWkz1LYBkGrBkLJsY7cy9iCSjOnDtLLhmKEOew5G+Ukk?=
 =?us-ascii?Q?YGMBQpbhkJ+nfnNeCTTZWj5jScgE0kqrzcM/9aRTVWfXt6adHmTUdulKCXiY?=
 =?us-ascii?Q?DEkfFwR1utUr6Tp+DAn2An34oPqjckRky1GGi0hs0IZxHtza0BG6ge9HF3i+?=
 =?us-ascii?Q?pcvlhIhjR2oAcTC//lDU7X5L/43/+l8x4p1czzYtrsuGx1Xzv8KH/QpvjDWB?=
 =?us-ascii?Q?1rMgSLMfGbQZ03w661qYedtQZHQrR7nrNulp2jK7xpk+6aIpCrfFbzF6v7an?=
 =?us-ascii?Q?IRieuX6NnTb6ivFT0ikrtWcAIKBHPPeBvyDXrovNh8vkjhOhZKNDv8uRAqoY?=
 =?us-ascii?Q?FYv2N9wkQ5lLT4UjNsUtCfFVcl9HY3PXkDO6S24pin4rePZLt64tuHhheJur?=
 =?us-ascii?Q?e9SmLCgGUyVpzArv12x/gTFBsA20ly//bECOxlIiaKYGEUlJ8w6WHJCTame6?=
 =?us-ascii?Q?EMtb9z3EA/oRAft+CUmQ73lCgx/GqtJl6MQ1NZLJD0J5Q6AjV8Pw5foUv5Jm?=
 =?us-ascii?Q?zVe/xxvPDYJmwhDpw35oYRflwZ8vVkd3ZJ+JIyj8gkDgCUQMbPMs2Gcrbheg?=
 =?us-ascii?Q?gqlrVheex3WMaPtA0lwBOigtOhY1WVmd1ZdT0vzBzmuTy1ZEH01t9zJd9e4h?=
 =?us-ascii?Q?BZqH/xHk3i+LeJrxSnhc7ObBbISCIIgMKiNYZ6DeYninVUP2pKSmf5NEkiSS?=
 =?us-ascii?Q?ywjo/Jd20Mlq37IH2X0LzX8HwGm68/onJDTuhMdb3rTRtNbVrdLA3XwuaOhB?=
 =?us-ascii?Q?hCCwX2y7B9qe0Xy/BVSnNP0Ni4I2wYTlN/HOIZ134AVNUA0YHm/iUY8UpF8r?=
 =?us-ascii?Q?SqSLDuMoZONWXrFAZmnABvomGmsNjjksz1a0ab0rGIKpz5y/tUwtiDyPEIzx?=
 =?us-ascii?Q?Z0QQsKXo45Sb84ahKXr5B64HImzaAhU+1g96pSU+qTJqNe4a+AriEdxo1qss?=
 =?us-ascii?Q?Je2xF97GHiuV8r/STXdztCKKsK+rOXLf/I/PEXHOdlN2dzY1yPY8w6H1z4SA?=
 =?us-ascii?Q?aa3eA3JrsOdbLq92DcS1SuzJNBUd45ziOxR7mxRMCEaSjwZKFRZ09wVEYwmo?=
 =?us-ascii?Q?I1xYYtXHFnXDyt2TVCMUCBVudQ/tFAwtxxG9DN10aFLdHy8vK6Xvp5442bk/?=
 =?us-ascii?Q?RGU=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4425.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 96073136-13d7-4a0b-fd12-08d8ea5d3a74
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Mar 2021 22:29:00.5169 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VVuHIATZcgMm3/mOw2N0JdGNTMUkp4L0QBRodlr0v+o0urgew+6I1y2cJJy2ro94T3tqIXNNvMW+Zzs4awe5VLlqkIr0LGzvKANIyJ4OtbU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4345
X-OriginatorOrg: intel.com
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [192.55.52.151 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1lN18k-00GlNx-L8
Subject: [tboot-devel] Tboot on Intel NUC8i7HVK and Fedora 33
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tboot-devel-bounces@lists.sourceforge.net

Hello! 

I recently went over the experience of installing, configuring and running tboot, and I want to document my experience in this thread and ask some questions.
My setup consists on the following:

1. Intel NUC8i7HVK
2. Linux Kernel 5.8.15
3. tboot-1.9.11-2.fc33.x86_64

My first step was to figure out if my hardware supports a Measured Launch. For that, I guessed that txt-info would help.
The problem is txt-info needs access to /dev/mem, which is forbidden by the Kernel Lockdown functionality, which is turned on by default with my kernel version when Secure Boot is detected.
So, txt-info doesn't work unless Kernel Lockdown is disabled. A way of reproduce this is to boot with Secure Boot disabled, run txt-info successfully, enable Kernel Lockdown, and try to run txt-info again:

[root@localhost test]# mokutil --sb-state
SecureBoot disabled
[root@localhost test]# cat /sys/kernel/security/lockdown
[none] integrity confidentiality
[root@localhost test]# sudo txt-stat
Intel(r) TXT Configuration Registers:
        STS: 0x00000083
        ....
[root@localhost test]# echo integrity > /sys/kernel/security/lockdown
[root@localhost test]# txt-stat
ERROR: cannot open /dev/mem

So, I need to run with Secure Boot disabled. The output of txt-stat is the following:

[root@localhost test]# txt-stat
Intel(r) TXT Configuration Registers:
        STS: 0x00000083
            senter_done: TRUE
            sexit_done: TRUE
            mem_config_lock: FALSE
            private_open: TRUE
            locality_1_open: FALSE
            locality_2_open: FALSE
        ESTS: 0x00
            txt_reset: FALSE
        E2STS: 0x0000000000000004
            secrets: FALSE
        ERRORCODE: 0x00000000
        DIDVID: 0x00000001b0068086
            vendor_id: 0x8086
            device_id: 0xb006
            revision_id: 0x1
        FSBIF: 0xffffffffffffffff
        QPIIF: 0x000000009d003000
        SINIT.BASE: 0x00000000
        SINIT.SIZE: 0B (0x0)
        HEAP.BASE: 0x00000000
        HEAP.SIZE: 0B (0x0)
        DPR: 0x0000000000000000
            lock: FALSE
            top: 0x00000000
            size: 0MB (0B)
        PUBLIC.KEY:
            2d 67 dd d7 5e f9 33 92 66 a5 6f 27 18 95 55 ae
            77 a2 b0 de 77 42 22 e5 de 24 8d be b8 e3 3d d7

***********************************************************
         TXT measured launch: TRUE
         secrets flag set: FALSE
***********************************************************
unable to find TBOOT log

From that output, I guessed that I can do a measured launch ("TXT measured launch: TRUE"). But I wanted to double check that.
According to [1], I guessed that I need SMX (Safer Mode Extensions) in my CPU to actually do a Measured Launch (although this is not mentioned in any place in tboot docs)
Unfortunately, cpuid say that my hardware does not support SMX:

[root@localhost test]# cpuid | grep SMX
      SMX: safer mode extensions              = false

Anyways, the tboot docs say that it will fall-through to a non-TXT boot in the case that it is not supported [2].
So, I just set it up to check what happened. 

I got my 8th_9th_gen_i5_i7-SINIT_81.zip SINIT ACM module from [3], unzipped it and copy the bin file to /boot, and updated that grub configuration.
After the initial boot, I got the error message that multiboot2 and relocator could not be found. So I followed the docs on how to install them. In Fedora they are provided by the grub2-efi-x64-modules package

After reboot and selecting tboot in the grub menu, boot failed and got a recovery shell.
By inspecting the generated /run/initramfs/rdsosreport.txt, the relevant error message I can see is:

systemctl[509]: Failed to switch root: Specified switch root path '/sysroot' does not seems to be an OS tree. os-release file is missing.

By this I guess that the generated tboot generated grub configuration is broken.
After visual inspection and manual edit of the grub.cfg file, I was able to get a valid configuration (rootflags was missing)

[root@localhost fedora]# diff grub.cfg grub.cfg.bak
206c206
<       module2 /vmlinuz-5.8.15-301.fc33.x86_64 root=UUID=f9f79342-5c5b-445e-ac3a-b4731f57e6e2 ro rootflags=subvol=root rhgb quiet intel_iommu=on noefi
---
>       module2 /vmlinuz-5.8.15-301.fc33.x86_64 root=UUID=f9f79342-5c5b-445e-ac3a-b4731f57e6e2 ro rhgb quiet intel_iommu=on noefi

And after that, I got the following tboot log

[root@localhost fedora]# txt-stat
Intel(r) TXT Configuration Registers:
        STS: 0x00000083
            senter_done: TRUE
            sexit_done: TRUE
            mem_config_lock: FALSE
            private_open: TRUE
            locality_1_open: FALSE
            locality_2_open: FALSE
        ESTS: 0x00
            txt_reset: FALSE
        E2STS: 0x0000000000000004
            secrets: FALSE
        ERRORCODE: 0x00000000
        DIDVID: 0x00000001b0068086
            vendor_id: 0x8086
            device_id: 0xb006
            revision_id: 0x1
        FSBIF: 0xffffffffffffffff
        QPIIF: 0x000000009d003000
        SINIT.BASE: 0x00000000
        SINIT.SIZE: 0B (0x0)
        HEAP.BASE: 0x00000000
        HEAP.SIZE: 0B (0x0)
        DPR: 0x0000000000000000
            lock: FALSE
            top: 0x00000000
            size: 0MB (0B)
        PUBLIC.KEY:
            2d 67 dd d7 5e f9 33 92 66 a5 6f 27 18 95 55 ae
            77 a2 b0 de 77 42 22 e5 de 24 8d be b8 e3 3d d7

***********************************************************
         TXT measured launch: TRUE
         secrets flag set: FALSE
***********************************************************
TBOOT log:
         max_size=32706
         zip_count=0
         curr_pos=5308
         buf:
TBOOT: *********************** TBOOT ***********************
TBOOT:    2019-11-25 16:00 +0200 1.9.11
TBOOT: *****************************************************
TBOOT: command line: logging=serial,memory
TBOOT: IA32_FEATURE_CONTROL_MSR: 00000005
TBOOT: ERR: CPU does not support SMX
TBOOT: IA32_FEATURE_CONTROL_MSR: 00000005
TBOOT: ERR: CPU does not support SMX
TBOOT: BSP is cpu 0
TBOOT: original e820 map:
TBOOT:  0000000000000000 - 0000000000058000  (1)
TBOOT:  0000000000058000 - 0000000000059000  (2)
TBOOT:  0000000000059000 - 000000000009e000  (1)
TBOOT:  000000000009e000 - 0000000000100000  (2)
TBOOT:  0000000000100000 - 0000000077a3e000  (1)
TBOOT:  0000000077a3e000 - 0000000077a3f000  (4)
TBOOT:  0000000077a3f000 - 0000000077a40000  (2)
TBOOT:  0000000077a40000 - 000000007e6d5000  (1)
TBOOT:  000000007e6d5000 - 000000007eb99000  (2)
TBOOT:  000000007eb99000 - 000000007ebf8000  (3)
TBOOT:  000000007ebf8000 - 000000007ec58000  (4)
TBOOT:  000000007ec58000 - 000000007f72c000  (2)
TBOOT:  000000007f72c000 - 000000007f7fe000  (20)
TBOOT:  000000007f7fe000 - 000000007f7ff000  (1)
TBOOT:  000000007f7ff000 - 0000000080000000  (2)
TBOOT:  00000000e0000000 - 00000000f0000000  (2)
TBOOT:  00000000fe000000 - 00000000fe011000  (2)
TBOOT:  00000000fec00000 - 00000000fec01000  (2)
TBOOT:  00000000fed00000 - 00000000fed01000  (2)
TBOOT:  00000000fee00000 - 00000000fee01000  (2)
TBOOT:  00000000ff000000 - 0000000100000000  (2)
TBOOT:  0000000100000000 - 000000027f000000  (1)
TBOOT: checking if module  is an SINIT for this platform...
TBOOT:   ACM info_table version mismatch (6)
TBOOT: chipset production fused: 1
TBOOT: chipset ids: vendor: 0x8086, device: 0xb006, revision: 0x1
TBOOT: processor family/model/stepping: 0x906e9
TBOOT: platform id: 0xc000000000000
TBOOT:   1 ACM chipset id entries:
TBOOT:       vendor: 0x8086, device: 0xb008, flags: 0x1, revision: 0x1, extended: 0x0
TBOOT:   chipset id mismatch
TBOOT: checking if module  is an SINIT for this platform...
TBOOT:   ACM size mismatch: acmod_size=2ae9c02, acm_hdr->size*4=c0c0c0c0
TBOOT: no SINIT AC module found
TBOOT: TXT.SINIT.BASE: 0x0
TBOOT: TXT.SINIT.SIZE: 0x0 (0)
TBOOT: SINIT ACM not provided.
TBOOT: reserving tboot memory log (60000 - 67fff) in e820 table
TBOOT: replaced memory map:
TBOOT:  0000000000000000 - 0000000000058000  (1)
TBOOT:  0000000000058000 - 0000000000059000  (2)
TBOOT:  0000000000059000 - 0000000000060000  (1)
TBOOT:  0000000000060000 - 0000000000068000  (2)
TBOOT:  0000000000068000 - 000000000009e000  (1)
TBOOT:  000000000009e000 - 0000000000100000  (2)
TBOOT:  0000000000100000 - 0000000077a3e000  (1)
TBOOT:  0000000077a3e000 - 0000000077a3f000  (4)
TBOOT:  0000000077a3f000 - 0000000077a40000  (2)
TBOOT:  0000000077a40000 - 000000007e6d5000  (1)
TBOOT:  000000007e6d5000 - 000000007eb99000  (2)
TBOOT:  000000007eb99000 - 000000007ebf8000  (3)
TBOOT:  000000007ebf8000 - 000000007ec58000  (4)
TBOOT:  000000007ec58000 - 000000007f72c000  (2)
TBOOT:  000000007f72c000 - 000000007f7fe000  (20)
TBOOT:  000000007f7fe000 - 000000007f7ff000  (1)
TBOOT:  000000007f7ff000 - 0000000080000000  (2)
TBOOT:  00000000e0000000 - 00000000f0000000  (2)
TBOOT:  00000000fe000000 - 00000000fe011000  (2)
TBOOT:  00000000fec00000 - 00000000fec01000  (2)
TBOOT:  00000000fed00000 - 00000000fed01000  (2)
TBOOT:  00000000fee00000 - 00000000fee01000  (2)
TBOOT:  00000000ff000000 - 0000000100000000  (2)
TBOOT:  0000000100000000 - 000000027f000000  (1)
TBOOT: adjusted e820 map:
TBOOT:  0000000000000000 - 0000000000058000  (1)
TBOOT:  0000000000058000 - 0000000000059000  (2)
TBOOT:  0000000000059000 - 0000000000060000  (1)
TBOOT:  0000000000060000 - 0000000000068000  (2)
TBOOT:  0000000000068000 - 000000000009e000  (1)
TBOOT:  000000000009e000 - 0000000000100000  (2)
TBOOT:  0000000000100000 - 0000000077a3e000  (1)
TBOOT:  0000000077a3e000 - 0000000077a3f000  (4)
TBOOT:  0000000077a3f000 - 0000000077a40000  (2)
TBOOT:  0000000077a40000 - 000000007e6d5000  (1)
TBOOT:  000000007e6d5000 - 000000007eb99000  (2)
TBOOT:  000000007eb99000 - 000000007ebf8000  (3)
TBOOT:  000000007ebf8000 - 000000007ec58000  (4)
TBOOT:  000000007ec58000 - 000000007f72c000  (2)
TBOOT:  000000007f72c000 - 000000007f7fe000  (20)
TBOOT:  000000007f7fe000 - 000000007f7ff000  (1)
TBOOT:  000000007f7ff000 - 0000000080000000  (2)
TBOOT:  00000000e0000000 - 00000000f0000000  (2)
TBOOT:  00000000fe000000 - 00000000fe011000  (2)
TBOOT:  00000000fec00000 - 00000000fec01000  (2)
TBOOT:  00000000fed00000 - 00000000fed01000  (2)
TBOOT:  00000000fee00000 - 00000000fee01000  (2)
TBOOT:  00000000ff000000 - 0000000100000000  (2)
TBOOT:  0000000100000000 - 000000027f000000  (1)
TBOOT: got sinit match on module #2
TBOOT: no LCP module found
TBOOT: ELF magic number is not matched, image is not ELF format.
TBOOT: assuming kernel is Linux format
TBOOT: Initrd from 0x7bbeb000 to 0x7e6d4c02
TBOOT: Kernel (protected mode) from 0x1000000 to 0x1b243f0
TBOOT: Kernel (real mode) from 0x69c00 to 0x6d800
TBOOT: Linux cmdline from 0x72900 to 0x72d00:
TBOOT:  root=UUID=f9f79342-5c5b-445e-ac3a-b4731f57e6e2 ro rootflags=subvol=roo
TBOOT:  t rhgb quiet intel_iommu=on noefi
TBOOT: EFI memmap: memmap base: 0x483b0, memmap size: 0x7b0
TBOOT: EFI memmap: descr size: 0x30, descr version: 0x1
TBOOT: transfering control to kernel @0x1000000...

From what I see on the log, I have no SMX, and my SINIT ACM is bad (I guess)

Questions
========

1. Any way to test tboot in hardware that does not support SMX/TXT? Any simulator available?
2. Do I actually need SMX to do a Measured Launch? Or is the presence of "TXT measured launch: TRUE" string the txt-stat enough to say that my hardware supports it?
3. Is the invalid tboot generated grub configuration a bug? If so, where should I submit it?
4. Am I using the correct SINIT ACM module? Is my resulting txt-stat output the expected one for my scenario?

Many thanks! 

References
=========

[1] https://xem.github.io/minix86/manual/intel-x86-and-64-manual-vol2/o_b5573232dd8f1481-1975.html
[2] http://hg.code.sf.net/p/tboot/code/file/tip/README.md
[3] https://software.intel.com/content/www/us/en/develop/articles/intel-trusted-execution-technology.html


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
