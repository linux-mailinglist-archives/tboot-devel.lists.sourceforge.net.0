Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F9F64D3150
	for <lists+tboot-devel@lfdr.de>; Wed,  9 Mar 2022 15:55:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1nRxjB-000155-KH; Wed, 09 Mar 2022 14:55:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <pawel.randzio@intel.com>) id 1nRxjA-00014t-Ic
 for tboot-devel@lists.sourceforge.net; Wed, 09 Mar 2022 14:55:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pICYzWVgSZ6nEb2tXY7m5Afu1B2l0BzJgetKNPWlr1w=; b=Ms+tq9o6F7Ytupx591CSmeeMv2
 9GHbS+kGl1A52BgXjwJdoUMkI5jDR4Wk4XYSc2IEzo/iVLQbZUEgLBdG7OxjPi77WYsKVojFNOgJr
 23CMU4umNXw0MbVmGsPmVQ7NSYZMgy134iCCp+wEYbsMm8hze/uZXUcYQXNIl794dBvU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pICYzWVgSZ6nEb2tXY7m5Afu1B2l0BzJgetKNPWlr1w=; b=e2WgzGtD7rpmqjv5GwvNxxJtSJ
 rjinHs4tcTOtVDIwPb8GLYKK/g8qB/igGRlyjqbXZUNraFYNG3ljYm9Jv2hPbIgtrtyNhKHKm/9qg
 nYTjlOHgcFAfwfw7DyQH9Rjg4KJExdLNRT+TKCgo01hTlgWNXmz/stMYVSBpPW48BlU8=;
Received: from mga11.intel.com ([192.55.52.93])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nRxj5-0002jf-Mj
 for tboot-devel@lists.sourceforge.net; Wed, 09 Mar 2022 14:55:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646837743; x=1678373743;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:mime-version:content-transfer-encoding;
 bh=pICYzWVgSZ6nEb2tXY7m5Afu1B2l0BzJgetKNPWlr1w=;
 b=XnSvLOMGm6HDK8UmWSLb+O2HrM3obTARTKK9ijZrDWFkufjNa5oWODOw
 SNR6MD3q+BLL0fwfGK6r7g/B3xqc+skeyUo/C0cLJU3kgSe4KhyyLOQOG
 /sa03qOWS6h78S9Ul93b3Bn6YBvLRMJKfKgIIcD/G64nicPNM3mtUtVt+
 lMMGim6Y4qQc6gcFH5OQLUpwBsakRfZSdnvMzyniJ4JH98BwmVaS8hnm/
 QJFJv2/2SpUoT/Vtn2u80Vn1QCBcYsd9o1FtP2g5Y17niKFYJtIdz3ouS
 MeUovzApdjWrnb2YHEGeH1G2QFNHQukbShaOhct96YU4Iyz6yR6MwbwxG Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10280"; a="252559859"
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="252559859"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 06:55:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="510508706"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP; 09 Mar 2022 06:55:37 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 9 Mar 2022 06:55:37 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 9 Mar 2022 06:55:36 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Wed, 9 Mar 2022 06:55:36 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.104)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Wed, 9 Mar 2022 06:55:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ckkRU4FuRoX5m4KF+4kvWEQd26vrBp2cq6wO/RqDbInQPoXk61er1zVZQegD7zsSYdeedr74nvGqoxc8xUP7ME76SmBt4awSNgu+bry1x4rgYbK1tJJmtPg/FF1u9znVwpAixRq/R9fu4B1n5g0cVY2PNMurkLOWIZXKL2BbGFXj7cdwkZA/OIb/EE/wMpcznp7WgD57Hyr5jv59ucmKGkTbXshzFAt/yRTs7mnAB5LCdbh134kKFWCu+ApML1uc6HBmjPtWjUMd7T4nCeWxWHOZsX3o2/WDYPlwj2utuZ501Ybku2eVqO3pWayTO2TELQ7TlQfzSSU6OdFRGS/2pA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BIto9CqygWjyqTTDRl5zNCOwJzw4EkPqG6ezOZM21vE=;
 b=NxYHcZij646j2AFS31ehFkCk48/6hZKjwnY+izjSlzORFs2GDo81bbkplQJLimsMf9i27cXVRMoI5UqSB+FPLQTqg7WispQqb1xct/G/cNF2nbQj3xxwydIXrm5uOR07ATFRPKaV7z3MkiNMfmB/XfKnBaZIqmCNOqs4jY9nF6/yAGV1yXQBcP6DHDjAWjT7gX2Z95vJ99V6+nR6LbjkucMkzpL+gZpHEAIVPyVz7bPASzSuvYR2AHyThTp+Ke2A2uhRycsJJJXJk68XpLNNFciVl56ncgeGbet/b8X0vrRILWpmvYG7fZI6aXM19XMkpPq8H6VapN56daEB1Y0ctw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR1101MB2070.namprd11.prod.outlook.com
 (2603:10b6:910:1c::17) by DM6PR11MB2828.namprd11.prod.outlook.com
 (2603:10b6:5:c6::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.29; Wed, 9 Mar
 2022 14:55:35 +0000
Received: from CY4PR1101MB2070.namprd11.prod.outlook.com
 ([fe80::5cc1:57bd:1689:c5a2]) by CY4PR1101MB2070.namprd11.prod.outlook.com
 ([fe80::5cc1:57bd:1689:c5a2%2]) with mapi id 15.20.5038.027; Wed, 9 Mar 2022
 14:55:34 +0000
From: "Randzio, Pawel" <pawel.randzio@intel.com>
To: Timo Lindfors <timo.lindfors@iki.fi>
Thread-Topic: [tboot-devel] typo in lcp2_crtpollist man page
Thread-Index: AQHYM8TwBb3miqI0f0COwpIreAzo/6y3I5cw
Date: Wed, 9 Mar 2022 14:55:34 +0000
Message-ID: <CY4PR1101MB20707ABEDF79B24F5FE32EA6EB0A9@CY4PR1101MB2070.namprd11.prod.outlook.com>
References: <alpine.DEB.2.20.2203091443270.22263@mail.home>
In-Reply-To: <alpine.DEB.2.20.2203091443270.22263@mail.home>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.401.20
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a6f4fed2-7631-4f9c-9668-08da01dcddac
x-ms-traffictypediagnostic: DM6PR11MB2828:EE_
x-microsoft-antispam-prvs: <DM6PR11MB28282B8D214C7D218CBFE40DEB0A9@DM6PR11MB2828.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SrtLdQHflA8RAHBNl0+FjB+OLDGdE6ZUMOTi0v2O5FxhHdQ5bPJJBFjBJ/zA/t6CRE8414I3n2Zs6GoJZoVNL2CW4dXB4IV8OyD3FfVa9IO2UGbl592uIOVgDRiI+8hepsb+3TY2P3EIt3H/aRkoeYJq73Lrt9Yb8obtJVVgn3IghyUdHAVxlgsGdjbib7Jsx04g6X0qx1i/Fgs1UNcojLOtWlAXv7v1VkNDojZaME1pfj1xlvL9kTLjMsHgHHhuH9o0C6W9Q9Xw+dwhsepJEztC2hU8IqtjKmR7QL9ycUhKhIqcfao82H9vMNEyuPoofnr1Cqq/QC2KbnWy9RFvDcX144BbIITIASAefmD14E6mKSoZY+5pq7Pjg+CTn9zexVrtetrm6V0YJ/Rxzo8bdGlfDZ5IhyE73+DdhFG5HDu9vLX//6N9DDGQHZ2MqY9SCrs3+Q498nypA//OMs5jMYpSR/2ZeCd46scZUpBpbGYvCJHIU9BTwTqCZDbUpl42M0ulMGkgSOCE7Vjad+ZiWoD9MUYhdF0TgWolhMsK1sk68gTYvX2+Y7UNx2DmiSfVS5ouLxwQL9UKshr1uguOEiHTB0OOjO+llI6i0RCjzQJplTbaCCeZ+3sojRA6robp1FbP4QbVJWR9Zxq11ljyCApfpWb3HjwvPCkW37ZlUp9qa6Tl7VxiaYb0toIAYdTz3w/RTiwsVs33/WE2vLmHug==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR1101MB2070.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(8936002)(7696005)(9686003)(8676002)(5660300002)(52536014)(6506007)(186003)(26005)(82960400001)(2906002)(86362001)(558084003)(33656002)(38100700002)(316002)(38070700005)(508600001)(71200400001)(6916009)(4326008)(55016003)(76116006)(66556008)(66446008)(122000001)(64756008)(66946007)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?dHgrNEwzVAVtxav/cne/leb4p1QtivK8KHtt5b1wMSkH0DGT/b1e5Yug05?=
 =?iso-8859-2?Q?zkzQHb3BX59xM1zxFeYkobOuLKvPg9tBxAhjgBFPm0kbITYNHrc/C8bMsW?=
 =?iso-8859-2?Q?aK8sk/8FYI7/ugtivFBJV1vOU0V9ysCls/3+ZSwx/+eK8+NbThf2F9nGW2?=
 =?iso-8859-2?Q?9KKwSKN9QNEZ/rtQ8AZlpczcufFfIwDsAHtyoibWR9r6wEfWm5WUE4BJJ3?=
 =?iso-8859-2?Q?eBr0S2qpNYVSAyEjiJpqLKWmJ90Zf0+roZ2Mf6kwRpxHV2dT4ABNQK/7M/?=
 =?iso-8859-2?Q?DbrhkjibP10IM2tqmZqILxQ5J4GDKo3/8gXFEd3UJvXEFuFFiEAQZrf7x8?=
 =?iso-8859-2?Q?O+AEK+iu0U80m/nX0LRDnF+HxxJKtvLxrIm3KEx7dSlRxeOaCgHpmX4bh4?=
 =?iso-8859-2?Q?wXK8xm2OjPEngibcVk+rykVlBDRWSQsBxPi1QxznEzKMcCn2Gr2jUGdrwB?=
 =?iso-8859-2?Q?F3EIdw7Y/LhSFaNk4dOuB9UQOah1Oo4nebxer2tLsJxGqjB/r1kLOuKvfR?=
 =?iso-8859-2?Q?RqNuX9zGDzKX0NMKUl2aXK00CEUFv6qiCTk70jQ8oGtXJcaNFoJDUfZBRF?=
 =?iso-8859-2?Q?DxgZVU5gGPpR5K6/nhol6c5/Y8UjOTV/zYTyElKxVKQHeChqt2mJrIFPIW?=
 =?iso-8859-2?Q?G3BfUxqv5hy65Z0uYFoGPnxKORlwq8xeJ3eaMEWbsL368gL6Qz/NmJJe61?=
 =?iso-8859-2?Q?hEkPplaS4LCwYvnXX6xSO0z1PhIiiNux8KrOHdz6XcgetVqP/4qMeFv3FR?=
 =?iso-8859-2?Q?7X3c4edDZ0+cHzTrfEt4/AGOdoT1ehh09QhpT4XSQ+Ro3ZLBpm6nEWLpDP?=
 =?iso-8859-2?Q?T09dyOhaBIdsQgCKNHOYFlU2DuWBGiJ7O20ksTR5JnfQbI0Zyo/NGMpEnd?=
 =?iso-8859-2?Q?JM8D5WHkDw0Xn0H5HThePCEKW53plxhUZn87CTzYelcAgyCHCwh7IDtlOM?=
 =?iso-8859-2?Q?anNcCD0BgCMJIvWcE7VzJXfxcT6bOFHEm0glLBkroNysbnM+x5Jmjedo0m?=
 =?iso-8859-2?Q?rW9H2CUo3TU4y0yzpmdhhzHVq2ILd5zrMFb35n2x7Jfjy+hXUHBr0P2UbU?=
 =?iso-8859-2?Q?tPocSoko5cNSQSZmRijhEOYeB2av5GYUJpaDTx2GbGlnvxBY+Fj/JLT7zo?=
 =?iso-8859-2?Q?Wh59fQHjZD3W0wgsJkmMOrIlmc+wkD0WpDQepUWEtdYhNZJDCWL32vSipy?=
 =?iso-8859-2?Q?bPhXBqTtK/5YLFA2+gW0IgiQ6UJoUgn0DqHmAxFCiplaVdEhkfCj2D4EPb?=
 =?iso-8859-2?Q?tQ8xmoGKZmdOpBCCzmMFTYgfuH4xgrYdlMm7khGbesH4CoSRdAhMc9vh38?=
 =?iso-8859-2?Q?RmfoKD1frLWlU7k3WVDkXCv2y9VuhzQRctDjltKek95TrymCsclFwCw0mz?=
 =?iso-8859-2?Q?Rk8sDKBzHVc+obiMUYzzD8e5o3DpNVtimNtFfDTFojJ9/MWdOgf4+a8cYg?=
 =?iso-8859-2?Q?YbXHzTQWvFaC9hV/lLPgkRu9EteTBM0GIClk43OZDgUb0oXDsjAAtyHRWH?=
 =?iso-8859-2?Q?mBt5o3/+aIqtUWJbsksR/fqL8a4AuMsKB8MH6/l6ymjyGoYZ+ZG0IK8fka?=
 =?iso-8859-2?Q?u4WaUc8YsC3khcZWhKotBS5shsNjwxJLiD2/eeMfcLajK/+xJtChXWvc0y?=
 =?iso-8859-2?Q?XKXffMINXJxBhX8zfpx3iynLnwrrE9LqvcV+e1NXqAzNnwekU0NwHQ3A?=
 =?iso-8859-2?Q?=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR1101MB2070.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a6f4fed2-7631-4f9c-9668-08da01dcddac
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Mar 2022 14:55:34.9229 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lPutefgpiT3wfUdv5HS+T0suB6aVM7Rt1HhC7f/fjQVfXVunu3SfcKUn5g08CPg/6zVAKwfqMP1wnvdhwt71Zw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2828
X-OriginatorOrg: intel.com
X-Spam-Score: -5.7 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: > just a quick note: lcp2_crtpollist man page says
 "algorightm"
 but should probably say "algorithm". Thought about sending a patch but it's
 probably easier for you to just fix this directly :) Fixed ; [...] 
 Content analysis details:   (-5.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [192.55.52.93 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nRxj5-0002jf-Mj
Subject: Re: [tboot-devel] typo in lcp2_crtpollist man page
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
Cc: "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: tboot-devel-bounces@lists.sourceforge.net

> just a quick note: lcp2_crtpollist man page says "algorightm" but should =
probably say "algorithm". Thought about sending a patch but it's probably e=
asier for you to just fix this directly :)
Fixed ;)

-Pawe=B3
---------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
ul. Slowackiego 173 | 80-298 Gdansk | Sad Rejonowy Gdansk Polnoc | VII Wydz=
ial Gospodarczy Krajowego Rejestru Sadowego - KRS 101882 | NIP 957-07-52-31=
6 | Kapital zakladowy 200.000 PLN.
Ta wiadomosc wraz z zalacznikami jest przeznaczona dla okreslonego adresata=
 i moze zawierac informacje poufne. W razie przypadkowego otrzymania tej wi=
adomosci, prosimy o powiadomienie nadawcy oraz trwale jej usuniecie; jakiek=
olwiek przegladanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the s=
ole use of the intended recipient(s). If you are not the intended recipient=
, please contact the sender and delete all copies; any review or distributi=
on by others is strictly prohibited.



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
