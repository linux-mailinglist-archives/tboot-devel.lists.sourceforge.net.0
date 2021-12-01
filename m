Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 82AB6464A55
	for <lists+tboot-devel@lfdr.de>; Wed,  1 Dec 2021 10:06:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1msLYq-0001Hi-78; Wed, 01 Dec 2021 09:05:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <pawel.randzio@intel.com>)
 id 1msLXU-0006pB-5F; Wed, 01 Dec 2021 09:04:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Xce5c9z/siGQU4WAAs3699ZmYGnDWaEfvy+FINNq7ZQ=; b=lBXmZEqH3Ut0MIGbLnCGZ4ngq8
 cwTOOdTPO9Tj6QUI3rPBhMaEevfmprvcy/CeOE3ESxD/bKLRNyjQfRrgDyVz1Un4o7ACl4E2Zmu/8
 JCIbod5PVxzUyPcTqxCP5fHWQUtQTV7Ov7Q99a1hRW9QCbBpDcbAecH4DyhFF0+cI2eI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Xce5c9z/siGQU4WAAs3699ZmYGnDWaEfvy+FINNq7ZQ=; b=e
 nUzj48nR7tndhIGJ5ki6zcZiGzaC77krHwmGNHbK1U1IQO5aGGelBOA2AEX7UEYFZvptZiRNfy/ZA
 Zv4YNFzMehTXbCb9wZBr7JPgmFGTz0fSumQQ/oaj0EgWoARfuXtRuFkLnnzTz6Gc18CVL8C07VRyO
 BSLZsgnuItdt8NtQ=;
Received: from mga07.intel.com ([134.134.136.100])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1msLXO-0005hF-Nx; Wed, 01 Dec 2021 09:04:33 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10184"; a="299809699"
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; 
 d="scan'208,217";a="299809699"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 01:04:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; 
 d="scan'208,217";a="500158453"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga007.jf.intel.com with ESMTP; 01 Dec 2021 01:04:20 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 1 Dec 2021 01:04:19 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 1 Dec 2021 01:04:19 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.102)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 1 Dec 2021 01:04:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SbGvE2BlUveUSRXkUOLMTwktHvDLTI71R39kXH4c+JMs3SlHcYf+IJ1ImKRw4beS4KDQlqqI8gRL08DQgR2hWHMIqij/pwV3Jno9SPJNZ7PLWLyBeQVHv5nIO9U72YlVvC/H5zCmqW5ryYOuq2GMocA2iwPoBC7PuJZzSIjYZOksfTuL7jHhdw5botbQebSJ6at3T7lJMoZ/Lz2Ry2Z3GZCbdjx4hYEgPfptAkG4PKsDzAmTG/s3IUofAHG70e+w1Te7yD6s4AJz9KdEa2F4enmcZg6WThGCQEoYbdIBU1RFeePBk6wC0JklV4335KNtfOc2dK1TJp9tTqBfTaXgCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mg+IgtatPDy98ieuOTaC/LggcpLOlhbjFDRo81jzRM4=;
 b=jqtYsYtrDeUVvMIKOwlys8ThYRDNnIcXd1Ktt040Emo31PdgInZzyXv2CyHAJwlkRwOhqrV6wuiNGeBZEPGLvlNNIAigviAeF4jDz4DxEMFtxZKQOcGq85fov3I5p7jsNmrK6GPnOBTm0XsPeo8RlelIqZBVpY1JjVWi6hsSCJAvlhx90YqmIKnXHMU7KSQSX5eL8iB17Qq0zbKMNpHtdm2OSM0qlu/CS+3uLTIumDsR1x/Pd4qncLzCzhYppCYpmsFdruUzzpxihyfv0MC6+mcwnWs5a6ktd7Hbuo+hiLuFpPb9/OnvrhaxzzFtr9IhO62GgLf457JNn7VdJbkM7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mg+IgtatPDy98ieuOTaC/LggcpLOlhbjFDRo81jzRM4=;
 b=dskLyYh289cJtr5KRFG0hZBennAljTJ+7+/0yrNL6XXqnoMLGBUfn2zesyZkCjwJJlp//4F5Lpp7egW0UGNBmS4UZcp5K57qHsB+r3Ddm+Y+QvCniWsJfp7aKWCj27P+Bq/3YlvA8PV2IujvzGfs8CSieVFgGzxgJYSbEFVjpOU=
Received: from MN2PR11MB3709.namprd11.prod.outlook.com (2603:10b6:208:f3::22)
 by MN2PR11MB3999.namprd11.prod.outlook.com (2603:10b6:208:154::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.11; Wed, 1 Dec
 2021 09:04:18 +0000
Received: from MN2PR11MB3709.namprd11.prod.outlook.com
 ([fe80::a148:cf13:f00:c1ac]) by MN2PR11MB3709.namprd11.prod.outlook.com
 ([fe80::a148:cf13:f00:c1ac%5]) with mapi id 15.20.4755.014; Wed, 1 Dec 2021
 09:04:17 +0000
From: "Randzio, Pawel" <pawel.randzio@intel.com>
To: "tboot-changelog@lists.sourceforge.net"
 <tboot-changelog@lists.sourceforge.net>, "tboot-devel@lists.sourceforge.net"
 <tboot-devel@lists.sourceforge.net>
Thread-Topic: [ANNOUNCEMENT] PCR Extended Policy - planned DEFEATURING
Thread-Index: AdfmkhUF15SqPaYAQjuMu5Sq+0wVWg==
Date: Wed, 1 Dec 2021 09:04:17 +0000
Message-ID: <MN2PR11MB37098ADEA5A26F9DF189BDE2EB689@MN2PR11MB3709.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.200.16
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 765bed4c-d4ea-4008-730a-08d9b4a98e4a
x-ms-traffictypediagnostic: MN2PR11MB3999:
x-microsoft-antispam-prvs: <MN2PR11MB3999C61E95EFA9C4E649FB4EEB689@MN2PR11MB3999.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ydIgojmRqvLnqhYnhjQhq+7JRme2lkTx0dwvS+cStO6TI7AzbV5ZNwrzJhpRcdRSS9HNPV0cETI1MAfptxKHNt2BzJz9oWbOjIB13zqJ4PLk2Yvtd1+E2x3+dlmKSY6l59uv3PzJL6cbN0dO/XhNalCB4Ch19e56s0bxqc82dxPZvRFC7Hf4vDr9Zs+cX4VVFqZ7fyipxL01/e3DfBYw/h1csYHucX9mTcJ39qIOmqmkp5oe/+60iJu0e0suJbB1Jtvq6+kU/dUVCvUHn/pIbhilirEtuUBiWPGLnsuXLcayxPtsnKo4p9p0q04xuGbydiUDpnqWUJ/p5nW421dgdHh586noE6fFneEYPX4FloRL04x82BWgMopwdZI5DFRIZcCYaVnZWnnCgU4xTj5ZDcwVZXbXLfpZ7iAL2IsGvqtw40hWQRch52CK7PtauRDMfhFD3fo5EP0dJcKCuza5aUoeQm0mb0eaK7yrbQufjAhXOfvHVLafAJjomo3hdssn7dCTBsOEt641LTL9ggWW90R7C96Gi33+42xlwlRkaMG8arPNXrpFBcHptNJe2h4e/ae8WWqXchvmZldTLRN9E62s6yC0CpeKg7zicy0DxaD+pNEdibhrN98mhxKrdLzIUYbop2WCHoHQRriAIOeyUWK1M2uLGMtfsakJDfsSK0AA4EY0ac5ihcmWo+6qTOeJF9I63Z+JHJbtagB8Azm1pA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB3709.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(38070700005)(52536014)(8936002)(508600001)(4744005)(55016003)(9326002)(66946007)(66556008)(2906002)(76116006)(66476007)(6506007)(83380400001)(316002)(7696005)(71200400001)(66446008)(64756008)(450100002)(5660300002)(110136005)(38100700002)(9686003)(86362001)(122000001)(26005)(8676002)(33656002)(82960400001)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?aXmBibJxbwHl9XVMhhBxQ99KuqNK7GgXleRW2cC2y1VJT0w9vOfzQM9UHO?=
 =?iso-8859-2?Q?LN1XbDpr45Ts2IfoSaixhpf2xDtrr2/FcPVlfziGKTsznSkZPhZBcGwUKC?=
 =?iso-8859-2?Q?TnsZrUu04tbf/SsJp80f5MWk5RBfWs2resO8Y98uAQ3vIeCNSlyu9DV0s/?=
 =?iso-8859-2?Q?wjAku3gY3vwXvbKCq7hcHLVIzURsXJmUsqvj2SpF+tzQW2mm2TSPrFOj89?=
 =?iso-8859-2?Q?YnFjFQCDtJlQ6whx07nRYC99wtQxxMkp1eoSV2GaR7ZSYzYAj+CIrRBrv1?=
 =?iso-8859-2?Q?1xKW3PCCZrbsgLeA3SM7fvnmEIDhBQ0EVVlM90RBOKnpzvckvsyVZh3GCe?=
 =?iso-8859-2?Q?ZRdnpfYqLJjolKcV21Xn+GFgm1B4SU6Bc+11BzYHlenpPmyzBMSrPtzxFp?=
 =?iso-8859-2?Q?yp2ZMl4bPnAMMllcB7efF6RmOqeNWQ6UjNuWNDsIJ49aGVNOH/AIVvq03G?=
 =?iso-8859-2?Q?v8WFqSl83XyjNhRZVdEULQObj+RhpJfo8Alg7QRqEPltkUQhIHK/F/YyU9?=
 =?iso-8859-2?Q?4AdnPu0LQAQHKdlUuQBru+PeGjSdn4lQpC2uQSsHiEfRWy4HGMIhVBYYtP?=
 =?iso-8859-2?Q?mkWVudDdbhDYqrze39Ua/zukNpzH4AFV9WbflBGQ5UeodVri97e3EM4t6h?=
 =?iso-8859-2?Q?7Yu6b6EbGbsD0L1jZoknLj7SLkoMEGII9cfeAq+bpVGL+gTWIwyHM6lMvr?=
 =?iso-8859-2?Q?f7vYf0PL678pzkjTuXxGjaXxfi+hmGua4Ps0daszGd99mRPXQK7DDMcYOs?=
 =?iso-8859-2?Q?GeIx0Ru8GXTxd8B/8X/Y3aHfCDwVayNhPUnqPvee7k5q4yp2ftU5ciNG8x?=
 =?iso-8859-2?Q?vjHoyONTE4snCaaIrXHvKcK4+bk/9vHAau843uzaD12/oG8St572hNymck?=
 =?iso-8859-2?Q?bNi8r6T/1IOa4+S7R5tcX5nk5dEEzZUz1hHnUViIYVbuYKYUNBs00tz6jL?=
 =?iso-8859-2?Q?vzd6BQIjZPte1tqkobhWyUChIwLnKLOrXYug8SKZoFsOWhlKxpkk2uXS/j?=
 =?iso-8859-2?Q?l5sOEVoX6illM4BcI6e6W4kYWyFZZKkt7qwTOxH/BNE/Qk6JIrfqkD2Lbl?=
 =?iso-8859-2?Q?yossNM88gstryVlyFhTQoTe1JmHI2ayKrO/RVbF1ICnKSv8/neIJ+hJFIT?=
 =?iso-8859-2?Q?gZElSsTi6umcKdNLLG2Fhp4lb0crta5DTH9nOyzvj0ep96SYenyFRGeaiR?=
 =?iso-8859-2?Q?WcCItLYy8U/9i6SdbkC7bZGiboaAy0lJ92jBV2gBbs/STGyRRsRUohI5nV?=
 =?iso-8859-2?Q?c9DLovieNq0VY1IZwN34tWBWi/KoIe1ZGJiYYs+jgLzt4ZV9tjyr8Q6m+E?=
 =?iso-8859-2?Q?ywtMEOOKcldkT3e0roLFiYqbPPRWaS9BXRGbLVo8MDVWgxEekNs1iK/0b8?=
 =?iso-8859-2?Q?7m609VHznvUHFta4Ra9gdthsXIWs8zqatar8WKOwdBv020S99b8djGihcb?=
 =?iso-8859-2?Q?1Hu3lurq6VYTVSb676HD3RCyQ08j4n3wAl0/51i+bCszveP2rZy3d7J+F8?=
 =?iso-8859-2?Q?kPPDHEqrRdvbL2u+IVqX+3lcC8os7yWrs9p+tUuLd0YYxeO0/byV2NbR1p?=
 =?iso-8859-2?Q?kheOQG69ZCcF3MXGNn/SPLsGOwx9N+u8/0g1Gd1H3i670LKVIocZsAeJzv?=
 =?iso-8859-2?Q?Vwj0jUiaXw3bSZrws3u22QXVpa8jq1RDSYR4+hhkd2mm2Qbanr6zt8gjcb?=
 =?iso-8859-2?Q?GNRzTWZkb/NdoNv61cM=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB3709.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 765bed4c-d4ea-4008-730a-08d9b4a98e4a
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Dec 2021 09:04:17.8542 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: X/obxkCJRakty9zOu1yFxgzWFj4YA/79HfY4lu6C/ctRZDHohf7olm7yItlwkPsYd+zqcX3NdG84mTvoJeElBA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3999
X-OriginatorOrg: intel.com
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello, I would like to inform you that there are plans to
 defeature TBOOT extpol option and fix it to current default. The change
 affects TPM2.0 PCR Extended Policy Support. It has two options: 
 Content analysis details:   (-2.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
X-Headers-End: 1msLXO-0005hF-Nx
X-Mailman-Approved-At: Wed, 01 Dec 2021 09:05:45 +0000
Subject: [tboot-devel] [ANNOUNCEMENT] PCR Extended Policy - planned
 DEFEATURING
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
Content-Type: multipart/mixed; boundary="===============0678068931329671153=="
Errors-To: tboot-devel-bounces@lists.sourceforge.net

--===============0678068931329671153==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR11MB37098ADEA5A26F9DF189BDE2EB689MN2PR11MB3709namp_"

--_000_MN2PR11MB37098ADEA5A26F9DF189BDE2EB689MN2PR11MB3709namp_
Content-Type: text/plain; charset="iso-8859-2"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Hello,

I would like to inform you that there are plans to defeature TBOOT extpol o=
ption and fix it to current default.

The change affects TPM2.0 PCR Extended Policy Support. It has two options:

  *   "Maximum Agility" - hashes computed using TPM2.0
  *   "Maximum Performance" - hashes computed using software, no TPM usage

We want to defeature the "Maximum Agility" option and leave only "Maximum P=
erformance" (current default).

If you have any objections, please inform me.

Thanks,
--Pawe=B3 Randzio
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

--_000_MN2PR11MB37098ADEA5A26F9DF189BDE2EB689MN2PR11MB3709namp_
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
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
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
/* List Definitions */
@list l0
	{mso-list-id:926035484;
	mso-list-type:hybrid;
	mso-list-template-ids:-1121291704 389554828 67698691 67698693 67698689 676=
98691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:Calibri;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l1
	{mso-list-id:1143354861;
	mso-list-type:hybrid;
	mso-list-template-ids:891861542 -1790957720 67698691 67698693 67698689 676=
98691 67698693 67698689 67698691 67698693;}
@list l1:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:20.4pt;
	text-indent:-18.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:Calibri;}
@list l1:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:56.4pt;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l1:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:92.4pt;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l1:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:128.4pt;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l1:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:164.4pt;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l1:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:200.4pt;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l1:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:236.4pt;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l1:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:272.4pt;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l1:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:308.4pt;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l2
	{mso-list-id:2021227097;
	mso-list-type:hybrid;
	mso-list-template-ids:-1492618432 1995604866 67698691 67698693 67698689 67=
698691 67698693 67698689 67698691 67698693;}
@list l2:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:Calibri;}
@list l2:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l2:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l2:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l2:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l2:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l2:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l2:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l2:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
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
<p class=3D"MsoNormal"><span lang=3D"PL">Hello,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"PL"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal">I would like to inform you that there are plans to d=
efeature TBOOT extpol option and fix it to current default.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The change affects TPM2.0 PCR Extended Policy Suppor=
t. It has two options:<o:p></o:p></p>
<ul style=3D"margin-top:0cm" type=3D"disc">
<li class=3D"MsoListParagraph" style=3D"margin-left:0cm;mso-list:l0 level1 =
lfo3">&#8220;Maximum Agility&#8221; &#8211; hashes computed using TPM2.0<o:=
p></o:p></li><li class=3D"MsoListParagraph" style=3D"margin-left:0cm;mso-li=
st:l0 level1 lfo3">&#8220;Maximum Performance&#8221; &#8211; hashes compute=
d using software, no TPM usage<o:p></o:p></li></ul>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We want to defeature the &#8220;Maximum Agility&#822=
1; option and leave only &#8220;Maximum Performance&#8221; (current default=
).<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">If you have any objections, please inform me.<o:p></=
o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<br>
--Pawe=B3 Randzio<o:p></o:p></p>
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
dowy 200.000 PLN.
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

--_000_MN2PR11MB37098ADEA5A26F9DF189BDE2EB689MN2PR11MB3709namp_--



--===============0678068931329671153==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============0678068931329671153==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel

--===============0678068931329671153==--


