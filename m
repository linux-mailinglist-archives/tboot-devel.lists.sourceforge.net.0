Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A06FB67AE0A
	for <lists+tboot-devel@lfdr.de>; Wed, 25 Jan 2023 10:33:09 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1pKc9O-00068d-DX;
	Wed, 25 Jan 2023 09:33:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pawel.randzio@intel.com>) id 1pKc9D-00068T-Vw
 for tboot-devel@lists.sourceforge.net;
 Wed, 25 Jan 2023 09:32:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3QGE+etkc1rCPAytpG3EDwXjaXlreHKCrAB9Tiakcos=; b=asuZFN0H0VDDp5xvz/83Az/7bl
 AuNms1b/bNVqZUICR26Ff5eP3LZJdeeaj5eKOfgK4k/XeW8eQGWWS+PthJ+QJ9Uh93ppOP/mt6rGN
 SpPnGuIRqptxhzPfMT3HGeDFJ2ghuHkmuhahxiN+NCNf8nbg/hv3pkNjKyUJGMuAYl48=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-ID:Date:Subject:CC:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=3QGE+etkc1rCPAytpG3EDwXjaXlreHKCrAB9Tiakcos=; b=G
 jnh0P7F23JCtqscj46EXQrfTxv5j+SsBZsXDmYEKRExvk9pnmGjILQ+Si2JA25NyImZrCs4WzYj2C
 KhQaz6Ojp0ltpWTcHWoQpfRH2Vjq0wpNOejHdZLYiP81C152M8wgH90CDetJBO7Mi5FWlB2TTqmdV
 QkHwyqc+k8q9tg/E=;
Received: from mga03.intel.com ([134.134.136.65])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pKc98-00FBGz-Nk for tboot-devel@lists.sourceforge.net;
 Wed, 25 Jan 2023 09:32:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674639166; x=1706175166;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=vEgItXFwWeQ30matZ2fp9G7F06qJfWgGPsqGf71nnKg=;
 b=fzdoTGJNuKgJECs6VV4Upkb6IULxAik5donrfH8icWNdAcr6/Bvgxlrh
 zaWtNOVre1y7gQeNrjaXbmcVqU3KeD/JBWRsMONQbpWp40IL8wfcR6Uvy
 bl1pTmSFSMmxdqM12DqdH54QhZQmgRSPEMeMJRitiRxO5E4IzvM1i+wt1
 FXFYY7Dbhb9Hm4JBZ4fwYgmuyzKC2TjUPn+SWQRB7e3aePDSCUGPGkNxQ
 P7za17/jOf5M4OicKIJ7vHLA7bZh9U/pue+Vp4GrGxIo1usZ0lFllwb8L
 YVmjD0YShLypQ+c0EYUUKvsQqk5nWkZ6CN5XQbY6g/ls4sLbhWVg/WXF2 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="328603105"
X-IronPort-AV: E=Sophos;i="5.97,244,1669104000"; 
 d="scan'208,217";a="328603105"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 01:32:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="664388264"
X-IronPort-AV: E=Sophos;i="5.97,244,1669104000"; 
 d="scan'208,217";a="664388264"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 25 Jan 2023 01:32:39 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 25 Jan 2023 01:32:39 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 25 Jan 2023 01:32:39 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 25 Jan 2023 01:32:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V2bd5z5Brl9nBWowyPj/d/N0XJREyNKwZRIwnLLXuGCS2S8E/RCLwE1ixvEKLkn6q+plXtre+EpPISiChny+XK/sa3hl1lWhIdwhdtrKIVzlxiebjW8tOUZjKQnkb2zUw6bcNQkNlPEb1mXLJfbnvZ4WLPSVln98kbZujv30W9MwzTS9xZ3zmGHZvRZziz0DxGdosZtGGDipOxBVA5Op7Le8gP27ZJNGBV9PlUcqKIAePExbHEEsHqn/1vo9HdzBLaZMUvDM2VbaiHn5mRvGS64Li6XP46wUILL7Q8laacQat5dunhecQt9rzz6j53OdaqopQxp+Ry6bOlBZnCBkNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x/u2Gi5+xhUGU9gX/pUFC/SLkdxUsMfL9q0AMB6fqAU=;
 b=D+X7YDmBLaR3iU1esrBkQe/v1QvEwWkpzQNp64n7wnaSzGtet3ZI/3/DyB0cluRbR1A72K3ZGN003d3ZKyNhOYuLF65XthuIpYtmzHLrJFY58ujMbKQCKwHFcIZjdAp/kJBV+WTu2W5MvLqxQAYJhd7vTbvndljXsU1EiMRA9Mk5KBO/qmgkszWbdhqnLFbAHHrzR77CuAxHfIG77r6SjoXRfpk3iDVs5tPCcGcwp6FnZsyMPVUl/cs8HlbmT2C2h7KPxnjOaLzuCv6eNfL6aspEx6unTDrpwiD4SvCGfM4sAkC8msABLpbz9+/fKNRWKEQEZ0aCZ8xA87v+F3vCcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA1PR11MB6711.namprd11.prod.outlook.com (2603:10b6:806:25b::13)
 by PH0PR11MB4981.namprd11.prod.outlook.com (2603:10b6:510:39::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.33; Wed, 25 Jan
 2023 09:32:36 +0000
Received: from SA1PR11MB6711.namprd11.prod.outlook.com
 ([fe80::c7af:7fd6:c2da:ee4f]) by SA1PR11MB6711.namprd11.prod.outlook.com
 ([fe80::c7af:7fd6:c2da:ee4f%9]) with mapi id 15.20.6002.033; Wed, 25 Jan 2023
 09:32:36 +0000
From: "Randzio, Pawel" <pawel.randzio@intel.com>
To: "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>,
 "lukasz@hawrylko.pl" <lukasz@hawrylko.pl>
Thread-Topic: Re: [tboot-devel] [Tboot-changelog] changeset in code: Extend
 low memory range reserved for logs
Thread-Index: AdkwnvtPfMyFC+u6QnCBmsBYzTkh+g==
Date: Wed, 25 Jan 2023 09:32:36 +0000
Message-ID: <SA1PR11MB67114DF914C6A7F2ED5BB4C7EBCE9@SA1PR11MB6711.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SA1PR11MB6711:EE_|PH0PR11MB4981:EE_
x-ms-office365-filtering-correlation-id: 36da5220-8fc7-4319-92a4-08dafeb7183a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: =?iso-8859-2?Q?iZFKr0B/7ycPyKWTJNKBV8fQNQHSfbkYv9coH5ykEq5TGyI3kA8r2GNjKc?=
 =?iso-8859-2?Q?dGlCx3kOT63tjdVQTPCOf4xFl6q+VB9vzLsGRlEbYrS2hf4eHwNRunKqrc?=
 =?iso-8859-2?Q?DCPadvqu1E06uIkV6R28ljQOT/I30N16iNxJXU1xJHH62sSxRQAXnTzwlu?=
 =?iso-8859-2?Q?YN1NljUNTYBs5Cxph/gMG7zmXV5qHk5ASKjthMtpo+N9GEW+e1k7gXGyE1?=
 =?iso-8859-2?Q?L0msTBReoTYtTMNv9FBzp9Qf79dGHENphW87nwXSll6CITmVpJPShOwZ1O?=
 =?iso-8859-2?Q?ghKwqgOJjoJ0f1qaoa0unQiOgFCsy+AQHoWxS/Y5Scy/DZnsLsiQtU+9Ek?=
 =?iso-8859-2?Q?1J7GB8M6Tx7z4XuRYLpXP8/s1tvWdCmBm0mdfnefwjMnv7RQqJLlyXsijA?=
 =?iso-8859-2?Q?LX76lRkkRYJiCQBlgmP9Hc0TFKO09JPg72TQb+YxAoniMRNeHBi5JY3A0w?=
 =?iso-8859-2?Q?ZF1y/sX3gB8UT+f7s+mOwhYRUhE8C0ANl5NCzxvoqmPZEU0pLEoBVg+KLH?=
 =?iso-8859-2?Q?WgkvUTENzUHpZV/UkJ05vJMcIClIr8BZXBtA3nrKrn0oarbEdsuOf0bnLB?=
 =?iso-8859-2?Q?3y7YLeLuGcKnFyA4UfzGOZcIh3JxyHBe4ZveCtrsAezy+BAwBpJOhGjU1K?=
 =?iso-8859-2?Q?lLS9GgLLK2weSzrKfd+ABpncdHLH+zUWEs7tFzc3s7Cw0zlrObCSCP7zME?=
 =?iso-8859-2?Q?awM7lN+xXGVohy3rb6Zhw0u9bOEx/xol8ieEE9NCM5YYHEMsnQxzjxKRM5?=
 =?iso-8859-2?Q?mHK/B0RUR5NMfmM+UdCYPLiE3Byv8aghuDcA7r7vqZKKXCcjK+6HKsj7zn?=
 =?iso-8859-2?Q?amhIT1vfaZcu1Xz97mym7jYJdqB+6M4uzLcWSu4WRJ1JLSYY9CorABfMcO?=
 =?iso-8859-2?Q?BHNCD98uxkRoiGyxqpEwXrNBEDDh5kPYRp0LipVdGAuv6jKj26P0xY4Xle?=
 =?iso-8859-2?Q?XfrP4mPyAe0fjgGWcKRV9HQCxwUAs/6ACPr9gUEOLGL16h1lDvQDe1KMnG?=
 =?iso-8859-2?Q?Nf5AEBsrm0o+/pBeupFLuoOJnU0AfUfBBhCR3EL/uqnrIWZTim3M4MaPre?=
 =?iso-8859-2?Q?sI1iAOLYxpd2+g13yb5EolRyDXJnlkImf3x6LuIerLQ63iXXpjBG9Tp6MI?=
 =?iso-8859-2?Q?nIHzDj+Cj5U4ruIqZ6L4eBF6HjSnFNhwjMBOFgxrFXOIHBJjGILwL7x16H?=
 =?iso-8859-2?Q?ZAXVIhQGkCUToCPBIiiDwkjruY+GQdtj1ZE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:5; SRV:;
 IPV:NLI; SFV:SPM; H:SA1PR11MB6711.namprd11.prod.outlook.com; PTR:; CAT:OSPM;
 SFS:(13230025)(376002)(39860400002)(136003)(346002)(366004)(396003)(451199018)(38100700002)(33656002)(122000001)(83380400001)(54906003)(66556008)(66446008)(64756008)(478600001)(66574015)(8676002)(186003)(66476007)(71200400001)(9686003)(38070700005)(76116006)(110136005)(66946007)(7696005)(55016003)(4744005)(2906002)(86362001)(41300700001)(82960400001)(26005)(5660300002)(52536014)(316002)(6506007)(4326008)(8936002)(71176010)(59356011)(207903002);
 DIR:OUT; SFP:1501; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?E5xd4/fgRnwBtwKSHwLyhWqXufytnMXDbvKxOT4doB4m9G17wByUY+XBMW?=
 =?iso-8859-2?Q?tSf4LgFsapaM1nT8BOhMP75Bj1lc9Y4erYnW68ysUxVXaB8CtztLaAmcjJ?=
 =?iso-8859-2?Q?xRyH3/5vCP+ex/8o5z3Y5cqoXCJoU4cZqA3iBpr09E9Vlk0CGJlJWB3PwK?=
 =?iso-8859-2?Q?VzzfWFfLgzgWm+9ElWbs9GHR3yhI52P0Mw3nBlq7GflMDmAGYz6+lhKHx0?=
 =?iso-8859-2?Q?kRcNSKxVoZydAaG/SKSybffN8eXmzhfXh46gfecvwJ86ReDdrAS14vnHGn?=
 =?iso-8859-2?Q?U586dv8/2lmAHlDKv/8eLZQ3TfI6WsFL3AfGFfAlgDmTBe4g2L27Aj6aON?=
 =?iso-8859-2?Q?9IXXNnommzWwW7nTqBQvFoEcsCNpjMpXjG0LDuWTeXo4OjMMqknUE8DM6x?=
 =?iso-8859-2?Q?Ml46Z2tFlr4MbHx3NCPRn1zwe53z/0rifeaLS8PmnYKEQdYDehT/mdrliI?=
 =?iso-8859-2?Q?vLMrBhfbtD3kyS5ZShtCDQMD/vhi1eceExrh/COl6RWCizzGj4M3R+tYWJ?=
 =?iso-8859-2?Q?t5vWovhu3eU0WmxxqQeP3RlE7NLYU062P1x2cJNp+nd46Qaw35YjFgdAS+?=
 =?iso-8859-2?Q?6G9hfd4pykh/JyMXHHz0J3fBJM7NY4l0FqKmB0e94VdpneVlynRrY95Xuq?=
 =?iso-8859-2?Q?IDkhD3vwmRxTyagdOudTyhbNeekVdPB/ViY7KC1DKf3uH8dLInYRWe1gz4?=
 =?iso-8859-2?Q?R9X3wg5NAAl+xX2mpWJ/FJkR72COrdcp+BHNjuCb3Nhrm5ja6MRuXy5ehP?=
 =?iso-8859-2?Q?rSx1IJJlmh6tbxiAl+MB2kSec1iYMz0LRhv9NPyc3b+owOP8FamFrmAsZt?=
 =?iso-8859-2?Q?u4RGn2Q8PdnVTy7rNW9RcRUzGfqwrwPnGMXHrDiuOXD+Rultl9/g/X3evh?=
 =?iso-8859-2?Q?3kSjJM5QhM1E/1BfwUZoCZU0/1Figx4CXP0XbmmAQ1r5yfxRNr5sIcU/A2?=
 =?iso-8859-2?Q?3CwTp7s7Yf2Q45NMNf9CKhhAxN5goobcWcITlrOUKlarnP9e0e/0K7tFh+?=
 =?iso-8859-2?Q?pNgeeXxaUGgIiwRENswc271mYRSc0/HwM9FvhA1AE2ZEYoTjjW12fJb2JW?=
 =?iso-8859-2?Q?Ufs+1ux+Jx8oN5nRcG4d+gIBofsbgOOlQ50mPpznp6h8ignjjE18b9exqQ?=
 =?iso-8859-2?Q?ZdsttpFdTt5KAfQ5TtU6016L5b8qDuSjpG6CNqdGd9DeMtCRNOXhxRtn2L?=
 =?iso-8859-2?Q?87H8o69ahPlIjPj6GABvzXT8g2BbXSbzUT5y6UqYBzFdDPnz/KCxX/930f?=
 =?iso-8859-2?Q?FAXDcXKlkdiIIi+t/ENlC7RvwR7o5xgAsv50GTumL+1JWzMGxXjfalECt5?=
 =?iso-8859-2?Q?pQ8iVjZbu32zkiXyKrMTQDGYvmJs8IsXTQCApwsk+BcYyiNSjERx73rq3V?=
 =?iso-8859-2?Q?PXUjSTRgPPUTnWFhVZHboOuJ+sdyq3rhumqRQ38X0SmU9zTqIsJHWt4ReQ?=
 =?iso-8859-2?Q?ndPL/Q7lhjBV9agydjLRoxzXgwkqt0cnl0w/7/Rpf5ip7xHEGbSJk7VBNv?=
 =?iso-8859-2?Q?tyqUO5EPA539B5M1TTL5DF7AAgDy/6fXPB3929Fc9Tr7z0NtGDDAGYfjWq?=
 =?iso-8859-2?Q?MpWz/aYrRia/cpPZOgOH6U5/QoBDNETWsQiPqZrAYdcH+ZccJkR2oulDSm?=
 =?iso-8859-2?Q?GOVe+5IGNJxeGkRb5XnUv9o5tk/TAy6kFo?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB6711.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 36da5220-8fc7-4319-92a4-08dafeb7183a
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jan 2023 09:32:36.5152 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QP/AnkTOtbrmK+x6/Evw6dAcs/425FSLTH7vWPbx99KzGj+rsLj46TUOvY5evTFHCyz7C9cDch0JR5g2p/38UA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4981
X-OriginatorOrg: intel.com
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi £ukasz, Sorry for not responding to your e-mail earlier,
    but somehow it failed to reach me through both of my inboxes. Thank you for
    pointing out that memory overlap issue, I was not aware of this. 
 
 Content analysis details:   (-2.5 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
                             medium trust
                             [134.134.136.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pKc98-00FBGz-Nk
Subject: Re: [tboot-devel] [Tboot-changelog] changeset in code: Extend low
 memory range reserved for logs
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
Cc: "pawel.randzio@linux.intel.com" <pawel.randzio@linux.intel.com>
Content-Type: multipart/mixed; boundary="===============6905846192298192213=="
Errors-To: tboot-devel-bounces@lists.sourceforge.net

--===============6905846192298192213==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SA1PR11MB67114DF914C6A7F2ED5BB4C7EBCE9SA1PR11MB6711namp_"

--_000_SA1PR11MB67114DF914C6A7F2ED5BB4C7EBCE9SA1PR11MB6711namp_
Content-Type: text/plain; charset="iso-8859-2"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Hi =A3ukasz,


Sorry for not responding to your e-mail earlier, but somehow it failed to r=
each me through both of my inboxes.
Thank you for pointing out that memory overlap issue, I was not aware of th=
is.

And as I've mentioned in the new commit message: when I tested it on some o=
f our platforms (Xeons mostly)
they didn't have much of an issue with this (somehow), that's why I did not=
 expect anything to come up.

The motivation was to unlock the possible length of logs a little bit,
because high core count CPUs had only several hundred lines of VMXOFF in th=
em.

Now I know that we will need to do it some other way

Anyway - thanks for the heads-up and sorry for that mess :)


Best regards,
Pawe=B3
---------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
ul. Slowackiego 173 | 80-298 Gdansk | Sad Rejonowy Gdansk Polnoc | VII Wydz=
ial Gospodarczy Krajowego Rejestru Sadowego - KRS 101882 | NIP 957-07-52-31=
6 | Kapital zakladowy 200.000 PLN.
Spolka oswiadcza, ze posiada status duzego przedsiebiorcy w rozumieniu usta=
wy z dnia 8 marca 2013 r. o przeciwdzialaniu nadmiernym opoznieniom w trans=
akcjach handlowych.

Ta wiadomosc wraz z zalacznikami jest przeznaczona dla okreslonego adresata=
 i moze zawierac informacje poufne. W razie przypadkowego otrzymania tej wi=
adomosci, prosimy o powiadomienie nadawcy oraz trwale jej usuniecie; jakiek=
olwiek przegladanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the s=
ole use of the intended recipient(s). If you are not the intended recipient=
, please contact the sender and delete all copies; any review or distributi=
on by others is strictly prohibited.

--_000_SA1PR11MB67114DF914C6A7F2ED5BB4C7EBCE9SA1PR11MB6711namp_
Content-Type: text/html; charset="iso-8859-2"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
2">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"PL">Hi =A3ukasz,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"PL"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"PL"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal">Sorry for not responding to your e-mail earlier, but=
 somehow it failed to reach me through both of my inboxes.<o:p></o:p></p>
<p class=3D"MsoNormal">Thank you for pointing out that memory overlap issue=
, I was not aware of this.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">And as I&#8217;ve mentioned in the new commit messag=
e: when I tested it on some of our platforms (Xeons mostly)<o:p></o:p></p>
<p class=3D"MsoNormal">they didn&#8217;t have much of an issue with this (s=
omehow), that&#8217;s why I did not expect anything to come up.<o:p></o:p><=
/p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The motivation was to unlock the possible length of =
logs a little bit,
<o:p></o:p></p>
<p class=3D"MsoNormal">because high core count CPUs had only several hundre=
d lines of VMXOFF in them.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Now I know that we will need to do it some other way=
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Anyway &#8211; thanks for the heads-up and sorry for=
 that mess :)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Pawe=B3<o:p></o:p></p>
</div>
<p>
    <hr/>
    <strong style=3D"line-height: 11.25pt;">
        <span style=3D"font-size: 9pt; color: #595959;">
            <span style=3D"font-family: 'Arial Narrow', sans-serif;">Intel =
Technology Poland sp. z o.o.<br>
            </span>
        </span>
    </strong>
    <span style=3D"color:#595959; font-family: 'Arial Narrow', sans-serif; =
font-size: 9pt; line-height: 11.25pt;">
        ul. S&#322;owackiego 173 | 80-298 Gda&#324;sk | S&#261;d Rejonowy G=
da&#324;sk P&#243;&#322;noc | VII Wydzia&#322; Gospodarczy Krajowego Rejest=
ru S&#261;dowego - KRS 101882 | NIP 957-07-52-316 | Kapita&#322; zak&#322;a=
dowy 200.000 PLN.<br/>
              Sp&#243;&#322;ka o&#347;wiadcza, &#380;e posiada status du&#3=
80;ego przedsi&#281;biorcy w rozumieniu ustawy z dnia 8 marca 2013 r. o prz=
eciwdzia&#322;aniu nadmiernym op&#243;&#378;nieniom w transakcjach handlowy=
ch.
    </span>
</p>
<p>
    <span style=3D"font-size:8.0pt;  font-family:'Arial Narrow',sans-serif;=
 mso-fareast-font-family: 'Times New Roman';mso-bidi-font-family:Arial; col=
or:#595959; mso-ansi-language:EN-US; mso-fareast-language:EN-US; mso-bidi-l=
anguage: PL-PL">
        Ta wiadomo&#347;&#263; wraz z za&#322;&#261;cznikami jest przeznacz=
ona dla okre&#347;lonego adresata i mo&#380;e zawiera&#263; informacje pouf=
ne. W razie przypadkowego otrzymania tej wiadomo&#347;ci, prosimy o powiado=
mienie nadawcy oraz trwa&#322;e jej usuni&#281;cie; jakiekolwiek przegl&#26=
1;danie lub rozpowszechnianie jest zabronione.<br>
        This e-mail and any attachments may contain confidential material f=
or the sole use of the intended recipient(s). If you are not the intended r=
ecipient, please contact the sender and delete all copies; any review or di=
stribution by others is strictly prohibited.
    </span>
</p>
<p class=3D"MsoNormal"><o:p></o:p></p>
</body>
</html>

--_000_SA1PR11MB67114DF914C6A7F2ED5BB4C7EBCE9SA1PR11MB6711namp_--



--===============6905846192298192213==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============6905846192298192213==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel

--===============6905846192298192213==--


