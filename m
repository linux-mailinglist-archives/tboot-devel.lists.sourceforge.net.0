Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9508450B3B4
	for <lists+tboot-devel@lfdr.de>; Fri, 22 Apr 2022 11:15:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1nhpO2-0004om-8S; Fri, 22 Apr 2022 09:15:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <pawel.randzio@intel.com>) id 1nhpNj-0004oR-8P
 for tboot-devel@lists.sourceforge.net; Fri, 22 Apr 2022 09:15:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IIdmcg26Ezg1dUrgwPcg0mpAW3oUQdHBLNTw7z4qC+M=; b=NCYjz3BbDOIS3BEr3hUc6OwvS/
 YmcXMwEOjvI/3N1MAPq+4MukbUHzI6eNAG1s8/8kdZrRT9wC6jPi8+ZWo4384gWBaO0te9uAj/9S6
 2222ICHKmz7hc+YozKmpGw6FtQw53H6PWqo6kcF55YVd2RvMDJlPu6+EGHYE9UJbZQRs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IIdmcg26Ezg1dUrgwPcg0mpAW3oUQdHBLNTw7z4qC+M=; b=miUZYa7/CwEAj/CpddZ87LgSSe
 YHHmYDOSXW5fYxf03PS0Oap5DjTJUwkBFNlcmy/XoEbDKFuVUBymD9F0MLQod9RMfzLxq1gDhJSGz
 Wik7ONArmjUMqTnnN57YirEfxPtSR26SU3fNBM0FKf8X9APyVp8z7xpq5j4mi9NMkpME=;
Received: from mga12.intel.com ([192.55.52.136])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nhpNi-006PlB-1J
 for tboot-devel@lists.sourceforge.net; Fri, 22 Apr 2022 09:15:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650618914; x=1682154914;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:mime-version:content-transfer-encoding;
 bh=IIdmcg26Ezg1dUrgwPcg0mpAW3oUQdHBLNTw7z4qC+M=;
 b=DYRCqHIhSW08fBKpMnQ2tzrLbPhOVS4sqy5s+ggEkAGvxCItOIynHS7P
 87PoqzEEsIyS3c4u5CGbWCe1EbE3oXBip7CuARVJZ1QrFcEfPvgPXYTFD
 Nu8WWlwtlJsWSqyXGkQj1zszVAKwJfjpFDQfRjEzfEYA6PWOqVRA8azdG
 UoYFDFiejXb998rT7HJkSFnFq+jvdRMnSii6SAiPEXv0bdv7sfyOu6RRH
 jTOXsBy8eXTr2Xa1dgncf/Gb4hTNDNDoRKz5CpwHo52xpXkUpDqIY69Bc
 dRBW3OA/nUK4S/wz6vQAIxe5BNsAPwKz8mY96wnfe03vsq2q92WTMYLBW w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10324"; a="244555336"
X-IronPort-AV: E=Sophos;i="5.90,281,1643702400"; d="scan'208";a="244555336"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2022 02:15:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,281,1643702400"; d="scan'208";a="556269455"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP; 22 Apr 2022 02:15:08 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 22 Apr 2022 02:15:07 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 22 Apr 2022 02:15:07 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 22 Apr 2022 02:15:07 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.175)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 22 Apr 2022 02:15:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I6r8+BE+zQ9vjFQtDcMaUwVY9qFm6k1nZUv9XtQKmt4XcJCkRdI3DOwWnT6dfMCZ5aCglh185WttAXAz48DmW92GS+04XsU28TFiNipetFjQ02KA4QjtOFd/HSLsv0MD6B6vbZaGT769Mxst8ZnndmsHzte2uhJeqviXjXvq7eHWxkYi3zPhq4rSvP8fOlXc0zXG76mjo/r8sxXgs9n11XJhLxdcYtF9tRJLBTXdJ4xhBoe2CgL4IfLHjqc+kI5jO4gUn69YJGrXGl5yoGXkJT3k8uOPSoCtNJCqt5KSx87yukNIeIYGhNR9SquvtrmG+5eUkrHqOk9uW6dLOj1/7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IUqWFwbveOj9MzJWUODkyxT8pC3/h1CTOJJIbqYKKrk=;
 b=VSFGAkiBg7PdMTTSiwRSoIhDjo4VmSx9wpMlMmPMvi8+LiRplZLLhIMiFw+3mEqj9OEKtJLFYxJkcFYet+WMSBGzrrglUTNQLa+1bSoOzbGrqHn4VNsHB0hVsxgnesJrdlA1Vt7rb1cu/VKSM1rTHmIl44EhXiCtBNJLNZbfEoEJ/iWw2iN1GiInrKVRGFRdNF2Gk2tTibJPLI3ZLWbRbTfpwY+5L3T7gyliQMfKgcdZdi8iRqbNqmPDs0N3DQnEsbIN8MXr9khKHXZmO6WDJR+XIW0i1eVznAG3q2DvRCSPsAKs57pAPazl2XICX14uR44zvjT1Gxkp2r6hqh/dPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR1101MB2070.namprd11.prod.outlook.com
 (2603:10b6:910:1c::17) by BN6PR11MB1331.namprd11.prod.outlook.com
 (2603:10b6:404:49::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.13; Fri, 22 Apr
 2022 09:15:05 +0000
Received: from CY4PR1101MB2070.namprd11.prod.outlook.com
 ([fe80::90ce:27ae:210:5886]) by CY4PR1101MB2070.namprd11.prod.outlook.com
 ([fe80::90ce:27ae:210:5886%8]) with mapi id 15.20.5186.015; Fri, 22 Apr 2022
 09:15:05 +0000
From: "Randzio, Pawel" <pawel.randzio@intel.com>
To: Jason Andryuk <jandryuk@gmail.com>, "Bhungal, Jeevan S"
 <jeevan.s.bhungal@intel.com>, "Crain, Keegan" <keegan.crain@intel.com>,
 "Sehra, Supreeti" <supreeti.sehra@intel.com>, "Gupta, Rahul Kumar"
 <rahul.kumar.gupta@intel.com>
Thread-Topic: [tboot-devel] 11th Gen SINIT ACM
Thread-Index: AQHYPtdwkUG/TYDHf0i2HlLOk3Oqd6zQRTAwgCpkQgCAASovMA==
Date: Fri, 22 Apr 2022 09:15:05 +0000
Message-ID: <CY4PR1101MB20700DA2CD945A201DE4F1BBEBF79@CY4PR1101MB2070.namprd11.prod.outlook.com>
References: <CAKf6xpu=3sWzdjaPpT8AM52gHotAvZVv1aB3QtXGxBmDaU+yeg@mail.gmail.com>
 <CY4PR1101MB207079134D515F45667C719FEB1A9@CY4PR1101MB2070.namprd11.prod.outlook.com>
 <CAKf6xpsgyKdzU8nnPoTHoE+zxgkJX4wpCE5tFhzdC+LOG83Uzg@mail.gmail.com>
In-Reply-To: <CAKf6xpsgyKdzU8nnPoTHoE+zxgkJX4wpCE5tFhzdC+LOG83Uzg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: jeevan.s.bhungal@intel.com, keegan.crain@intel.com,
 supreeti.sehra@intel.com, Rahul.Kumar.Gupta@intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.401.20
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9fea5f08-4b5c-47a9-927c-08da244096f3
x-ms-traffictypediagnostic: BN6PR11MB1331:EE_
x-microsoft-antispam-prvs: <BN6PR11MB133188CA562B03A51696E1CBEBF79@BN6PR11MB1331.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Er9P9CQrDQsELyRloBi6BrQe43MWGI9mQkGKhHyFrZxMxpf1M4LBu36ZZMZt+q/yJdbzNQhH+Kbnd9nGtGtAGlwrqeA2aGDfLJLhJXJRV2is8UYNQrvr2qUWqFOovlO9ldw0GFaH/n116tdCwfutxfsPets6t0i9scerZvnjOHZjHQTaXTzAH6gHdBqgqP1Nq1VQWAocnmJNqCvdfwWiCdw+b812xPw3zayWSPO+MBBgBvgV7fL9SUIeVfg6mP06vFlsxwDToZ711s85d0lPFUaRLGYqz1skHCsjKEiIS346NfaCMqGYNHI0RGioOXnEjBc0egtz/9Wtc6/BYgC0lm58I0ceIlbzmKj0lewYnCAKonglt1xHWkdNq0Q1iiHeBgaodbBW22MfNUcis1eBJXrlAZGuB2ZrMor5bgQIX5HZUMzHCxwzQh/3IFNc92DTQfeXIHn/G9kOQS3PF8i94LpyMjEKd373y3KCwMI7UBVYrit6qCYlUoqKfGd/gcShU89qrycmyj5spFp9WEY8IAVTYSjJSEsCekEcRu+J21PPYBdU+U4JLB3BoRRj92G+BoqlBi5SfINozdJgatEz04dJj7Q5Mrx66T7SztdtEzrWIB1PTJUGlK++og9WM8I2fVCrFuYySQHIlFxhl6EUEo29s5n45mmtjGvcMLKAtR9McMwflsXAUdlT5IwLpJxy5gyTlhi1jnLlhTrL66ExBD5k6czCc3B2/6MaJgjEy1GG/UW9p8l9YP9Yt9MV0aHPxD2HItfM/Hq2F9XCNtwxJJ6Py38oohWdui8ztPpxNjQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR1101MB2070.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(82960400001)(122000001)(110136005)(53546011)(2906002)(38070700005)(26005)(4744005)(9686003)(38100700002)(86362001)(71200400001)(8936002)(33656002)(966005)(5660300002)(52536014)(508600001)(55016003)(107886003)(7696005)(83380400001)(66556008)(66946007)(186003)(66446008)(76116006)(64756008)(66476007)(6636002)(6506007)(4326008)(8676002)(54906003)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Vi9SVHlyL2RvL1ByZWJQa1Z5a21RZnpENDgwVDdkVW1oczAvVmdpcU8rcXdC?=
 =?utf-8?B?THBMQXdwU1JhSWJVS3pVa0NsWHRHQVRCOWwyd0lLdFVkdk44UFB6dkxMY0FL?=
 =?utf-8?B?QVY2b0dXYzI4UkUyQVhRUjJFU3ZxQldXdit1cDR4cGhMV0dOYVJBckpBZnlZ?=
 =?utf-8?B?eTdDYUlsYWgzYXlhR0U4YmdBN0VhUFlkc1I4ekRDdE9sNmROSVQzWDkxeVA4?=
 =?utf-8?B?NkRhRkpQTEo4WitqUG5GdEJaRitWbHFrcVRvY2taMTR2YTBDOStob1BDOGdL?=
 =?utf-8?B?L09ITjJ0aVozdzJaYitHakZFSDVSeG1lUitwUk02TklOY0FlaHNCUUowNEpD?=
 =?utf-8?B?RlMzNE9mNjVadkx5U3hVSUZTcFVSRE1qSTgybWtxWDNObVFmOUdFSE1mUzBV?=
 =?utf-8?B?aEhYTXNlbUJzQVMrNDh4SHJDMXF0dXlkUm9ONGxtSDg0L0o5c0F3ZGRxdk94?=
 =?utf-8?B?RHI3QkptOXRQakRkU3NBbDlGOURtR28xY1dGdGdyUU4xUWxnWi94dzFzbVlv?=
 =?utf-8?B?TmNrZ01NaHo4RVBjMTM2eWRubzhQV3dENU1PN3lXc2hGTXFPNzZjVzVYVGJo?=
 =?utf-8?B?b0pIRlZLV2FTNEptUHp0VlhyZnlFTWRDb0d6R2ZLY3VTb2thV3plU2Q1VTJm?=
 =?utf-8?B?NTUxc3l1bXFlMUJKVFM3eDZGaU5ZOGV6K3o5N2o3cVdSSDFUUm5qOGU5dHlI?=
 =?utf-8?B?dUM3Vndodyt3VTYrUUthZzF4OFBPcVN4ZGRaeWhpTmt3MGZJZmRRK2p4SFB5?=
 =?utf-8?B?Uk9yVUo1QnZWRWRSYUM2b05LYzVOMEZydWl5YVZmNGRqcERZQXg1Rk50ZGVk?=
 =?utf-8?B?QUtIMVlIeEJxWmh6Tm5FSDdBY1hneHdzNWFBdWRVQXBsTWlEZXkyOUxBQitm?=
 =?utf-8?B?S3VXWks2a3RML1RMeUdqTzgxckRsUXBHQnNjcnNkL1JZUVNlMjB2UENQNHY5?=
 =?utf-8?B?Ui96TmZybXd1ZkpaSUZzbmxKSUJUTGdjRElGVCtQdG9YT3FwemZjbjFSQXRJ?=
 =?utf-8?B?MUN5Ym5JWG02ZS9TYkdTUllQNHMxMm1yU1BLN0tsMkpwWGFrN0U3cGoxNG02?=
 =?utf-8?B?dmNhRDNuKzduMzRIZ25xUmRWd2dLVDhUWW94SU1HVWpHNzc1aDFSM3N6TUNY?=
 =?utf-8?B?N21pMk84RDB0VlM1MjRXTDdhd2JWK2N4bUUwN1prZmlNbmFTTnJ1MUVTSTFW?=
 =?utf-8?B?b3dvM1lvdk5uWmtJdk1LZnFkaUdTVnJ2aVc1SjlvWkRZUC9XUXJJazFjWkoy?=
 =?utf-8?B?eDNEM0swUEt6K1cyRkZ5dzlwRVpab2kwaDlzcU9DaG5QazBaOEFsMDIxTzNs?=
 =?utf-8?B?Y1d1dTdlc0dZYXJkcngrN0I0VmdST0NPSW1ESk9VejZBWXlPZ1JiL01Lc0J3?=
 =?utf-8?B?QVl2b1JlNnc4MjNOSVYzMGdPbWdWbDVUQWpaL2QzWkhCeE1wV254K3RGa2pt?=
 =?utf-8?B?eWkwZ2dPcUFCb1BNaE8xbnhxYkpKU3NjdStmRGVtbFdVdVhzeElETFdZOEc0?=
 =?utf-8?B?Wm0vQ05QS1VBQjEyMDJFK3hLVzBrSlgyRWhhYUg0ZGdRUDFlNGsreGlXTURh?=
 =?utf-8?B?M1pnUGdIaldFa3llUUR2M3ZJcE1FK2x6OHh5aURhR3RLL3hucnNkUnFmWnJO?=
 =?utf-8?B?Z0NIK095Ri8yM1NMMGV2Y3IrWm9OU2pVeTh1eXUzcENCYVZ3WlMzY0FjTExx?=
 =?utf-8?B?RTFYbk1pLzJBUGc2M3BCVm82cHF0dG02Y1FUc3ZjRVFSdlBybDlKL05zc3hy?=
 =?utf-8?B?TVFDTlJMKzByck1oRkhmV0RCdnhtQ00wdkVNTHdZTWF3YVAwUktzSG8rMzRQ?=
 =?utf-8?B?TG1KemFPVmx6cUJGa1lLTFZKSE52YWRTRVJPYlFwNHlwanZUYkdIeWlvamVr?=
 =?utf-8?B?czdMZ3JpelBYMHNWWUpHZGxtZFdsYTk2VTc2TkprVVU1bndtbSs1elh4NEF3?=
 =?utf-8?B?QnhqNDQ1VnU0dmtmaXVST1NPc1dGNmRJb2l5d0N6MEFZbnVLc0JnZnBWUEdT?=
 =?utf-8?B?SVFJY1RRL0dmdlp4VGRKYi9oaExYeXY3V3Y3TFlySWswSm5YWDZLeWFWd29a?=
 =?utf-8?B?RXA3dHRvaTIrTGRRV0tyUXM3MjFSTE5hTmJaYU5JUTc2TjRXbHV3VWlPMHJN?=
 =?utf-8?B?d3J6alRuUTFXZ0dQRURaTGRhZS9KNkJDUFJnbXpFSXRqZysrM2UxOTI5dHJX?=
 =?utf-8?B?M29TaUxhZzVUUU1IWnFjdlQzZHoydEhnZXRpTDZ3ZkhYb1JtRGQveXNNWUZD?=
 =?utf-8?B?MVBvUGpodmNHc1Zqb3dncVRya0ZrbzFtMERyZzRKbENLUWlSR0lZNWViY0xH?=
 =?utf-8?B?cmNqOVhyZUY2SWdZdUZaMTJUeGptRnltSjgwNXNJU25Pa0NxUFkvdz09?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR1101MB2070.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9fea5f08-4b5c-47a9-927c-08da244096f3
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Apr 2022 09:15:05.4773 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Dy9vD9278wEHeCUQB+IFQ/TF3VoV1bY0vpGqKQj0fMpNAW6MlFflT+8icXE+zfyH3lAyAmWjehLagYW+dtNZ9w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1331
X-OriginatorOrg: intel.com
X-Spam-Score: -3.2 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Jason, Let me redirect your request to the right people.
 @Bhungal, Jeevan S, @Crain, Keegan, @Gupta, Rahul Kumar, @Sehra, Supreeti
 Content analysis details:   (-3.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nhpNi-006PlB-1J
Subject: Re: [tboot-devel] 11th Gen SINIT ACM
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
Cc: "Fedko, Artem" <artem.fedko@intel.com>,
 "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>,
 "Parmeter, Ben" <ben.parmeter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: tboot-devel-bounces@lists.sourceforge.net

SGkgSmFzb24sDQoNCkxldCBtZSByZWRpcmVjdCB5b3VyIHJlcXVlc3QgdG8gdGhlIHJpZ2h0IHBl
b3BsZS4NCg0KQEJodW5nYWwsIEplZXZhbiBTLCBAQ3JhaW4sIEtlZWdhbiwgDQpAR3VwdGEsIFJh
aHVsIEt1bWFyLCBAU2VocmEsIFN1cHJlZXRpDQoNCldoYXQncyB0aGUgc3RhdHVzIG9mIHRoZSB1
cGRhdGUgZm9yIFNJTklUIEFDTSBwYWdlIEphc29uIG1lbnRpb25lZD8NCigxMC0xMnRoIEdlbiB2
ZXJzaW9ucyBtaXNzaW5nKQ0KDQpLaW5kIHJlZ2FyZHMsDQpQYXdlxYINCg0KLS0tLS1PcmlnaW5h
bCBNZXNzYWdlLS0tLS0NCkZyb206IEphc29uIEFuZHJ5dWsgPGphbmRyeXVrQGdtYWlsLmNvbT4g
DQpTZW50OiBUaHVyc2RheSwgQXByaWwgMjEsIDIwMjIgNToyMiBQTQ0KVG86IFJhbmR6aW8sIFBh
d2VsIDxwYXdlbC5yYW5kemlvQGludGVsLmNvbT4NCkNjOiB0Ym9vdC1kZXZlbEBsaXN0cy5zb3Vy
Y2Vmb3JnZS5uZXQNClN1YmplY3Q6IFJlOiBbdGJvb3QtZGV2ZWxdIDExdGggR2VuIFNJTklUIEFD
TQ0KDQpPbiBGcmksIE1hciAyNSwgMjAyMiBhdCAxMjoxMSBQTSBSYW5kemlvLCBQYXdlbCA8cGF3
ZWwucmFuZHppb0BpbnRlbC5jb20+IHdyb3RlOg0KPg0KPiBIaSBKYXNvbiwNCj4NCj4gSSBmb3J3
YXJkZWQgeW91ciByZXF1ZXN0IHRvIHRoZSBwZW9wbGUgcmVzcG9uc2libGUgd2l0aCBrZWVwaW5n
IHRoZSBzaXRlIHVwIHRvIGRhdGUuDQo+IEkgd2FzIGluZm9ybWVkIHRoYXQgdGhlIGNvbnRlbnRz
IHNob3VsZCBiZSB1cGRhdGVkIHNvb24uIEknbGwga2VlcCBhbiBleWUgb24gdGhhdC4NCg0KSGks
IFBhd2XFgg0KDQpBcmUgdGhlcmUgYW55IHVwZGF0ZXMgb24gdGhlIEFDTXM/ICBJIGRvbid0IHNl
ZSB0aGVtIG9uIGh0dHBzOi8vc29mdHdhcmUuaW50ZWwuY29tL2NvbnRlbnQvd3d3L3VzL2VuL2Rl
dmVsb3AvYXJ0aWNsZXMvaW50ZWwtdHJ1c3RlZC1leGVjdXRpb24tdGVjaG5vbG9neS5odG1sLg0K
DQpUaGFua3MsDQpKYXNvbg0KLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCkludGVsIFRlY2hub2xvZ3kgUG9sYW5kIHNw
LiB6IG8uby4KdWwuIFNsb3dhY2tpZWdvIDE3MyB8IDgwLTI5OCBHZGFuc2sgfCBTYWQgUmVqb25v
d3kgR2RhbnNrIFBvbG5vYyB8IFZJSSBXeWR6aWFsIEdvc3BvZGFyY3p5IEtyYWpvd2VnbyBSZWpl
c3RydSBTYWRvd2VnbyAtIEtSUyAxMDE4ODIgfCBOSVAgOTU3LTA3LTUyLTMxNiB8IEthcGl0YWwg
emFrbGFkb3d5IDIwMC4wMDAgUExOLgpUYSB3aWFkb21vc2Mgd3JheiB6IHphbGFjem5pa2FtaSBq
ZXN0IHByemV6bmFjem9uYSBkbGEgb2tyZXNsb25lZ28gYWRyZXNhdGEgaSBtb3plIHphd2llcmFj
IGluZm9ybWFjamUgcG91Zm5lLiBXIHJhemllIHByenlwYWRrb3dlZ28gb3RyenltYW5pYSB0ZWog
d2lhZG9tb3NjaSwgcHJvc2lteSBvIHBvd2lhZG9taWVuaWUgbmFkYXdjeSBvcmF6IHRyd2FsZSBq
ZWogdXN1bmllY2llOyBqYWtpZWtvbHdpZWsgcHJ6ZWdsYWRhbmllIGx1YiByb3pwb3dzemVjaG5p
YW5pZSBqZXN0IHphYnJvbmlvbmUuClRoaXMgZS1tYWlsIGFuZCBhbnkgYXR0YWNobWVudHMgbWF5
IGNvbnRhaW4gY29uZmlkZW50aWFsIG1hdGVyaWFsIGZvciB0aGUgc29sZSB1c2Ugb2YgdGhlIGlu
dGVuZGVkIHJlY2lwaWVudChzKS4gSWYgeW91IGFyZSBub3QgdGhlIGludGVuZGVkIHJlY2lwaWVu
dCwgcGxlYXNlIGNvbnRhY3QgdGhlIHNlbmRlciBhbmQgZGVsZXRlIGFsbCBjb3BpZXM7IGFueSBy
ZXZpZXcgb3IgZGlzdHJpYnV0aW9uIGJ5IG90aGVycyBpcyBzdHJpY3RseSBwcm9oaWJpdGVkLgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KdGJvb3QtZGV2
ZWwgbWFpbGluZyBsaXN0CnRib290LWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczov
L2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby90Ym9vdC1kZXZlbAo=
