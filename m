Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DD923423AC
	for <lists+tboot-devel@lfdr.de>; Fri, 19 Mar 2021 18:52:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1lNJHu-0004QK-Ss; Fri, 19 Mar 2021 17:51:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <dario.n.oliver@intel.com>) id 1lNJHo-0004QB-C6
 for tboot-devel@lists.sourceforge.net; Fri, 19 Mar 2021 17:51:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=W7w9nI2jvIEwV6ddEXUfcJqZK6TKXCuWGlxKa8eOjuc=; b=cyrQ8GZRk1LQ+g57fyh6vnTl5T
 bMrWTytkeprhLRNg9RFVKdC5UhZBXCHzJ1WZXTpXoyN5y9/oDfkKRYuTDKeES1skMcM2dXTWTViae
 PLosJgy+94qwvJPM9D4A2sHI/t1W3GMgI1LZFNrCVoWWI48TZBNUfuz6wAw0Ik7KhxK4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=W7w9nI2jvIEwV6ddEXUfcJqZK6TKXCuWGlxKa8eOjuc=; b=cF2EcyTLc6ciFPt2SiiVxpPPy9
 n1+CT62JhfXGKaIqgV1ee90FGLrs0jylAD8er/Cf9VJ+jjC0WqKx/4u3P/uXdibh67Q+G1BE0tspi
 AcmImkEPzEt095dFREX2tFf6f7oKdK0DabX+34ZysUhT6EDS6iGnoTlpg8dCJZRmzEsE=;
Received: from mga01.intel.com ([192.55.52.88])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lNJHf-0007kU-Af
 for tboot-devel@lists.sourceforge.net; Fri, 19 Mar 2021 17:51:47 +0000
IronPort-SDR: JfM+YzpiGlr/tbIteiAMW1TPmYYUslxrJWRdtCgxL22SlcJJJ3dQYN7ZkyVfppflY6bnOdClIp
 ufpQrqP3HNDA==
X-IronPort-AV: E=McAfee;i="6000,8403,9928"; a="209971582"
X-IronPort-AV: E=Sophos;i="5.81,262,1610438400"; d="scan'208";a="209971582"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2021 10:51:32 -0700
IronPort-SDR: pXhSns3ZRbP6SIX4QrCkJQHrMPxfRxiYdby01Zrv4PZK2jyBY3qax8G/MLGGL0tOAcvdP4p+gB
 EyDOmU3WK5vg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,262,1610438400"; d="scan'208";a="603217481"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP; 19 Mar 2021 10:51:32 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 19 Mar 2021 10:51:32 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 19 Mar 2021 10:51:32 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Fri, 19 Mar 2021 10:51:32 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Fri, 19 Mar 2021 10:51:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=If9aFdpB1lt0b1zyBck1mKI0QqIjwVVPz9Cpbddgg8XatuUmfD3YkxQou1O+JXodA7zYb9i9gX6TEFxD1wM9SiY1lQ/J/2rwO2cmONtERAfwL9fqLhdVpsRziqK3qdS4u/hZaJ1WOW4CuYE5O93bc+hmzSYW3AjIkFdDRRc1Ts/pAz0O5kkOwtNTKjY4RNJm4x9TQxKAXOW+rDkqVU28SK/RiIqUSnlMSf/3u5si4K+AmBqeOE2jKCkILiTOWQ+KxVnHVtfCJA5j7WhWjaWvznF1k8/mJhfU+zTVoMGVQmdnHFSQMx9K3V2Gxa0JKzB0+OSVDDT2oxiJPER0VashXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=W7w9nI2jvIEwV6ddEXUfcJqZK6TKXCuWGlxKa8eOjuc=;
 b=JtdExuSPNQaOluQzeiUpn/6uQPyr/beB2S1olH1LX6UZfLu4aX2/1aLBfM4TaNB5i5lnBGv2Rx+WBwMrGfmOHt3Ow9+uvMfn3y/PPNWn5ywMzFXvbxWAH8jrdm+Mze9OIVfcFWeFMPf/pS8KcByBE8kTUM83oxRS/sPviMs2r0KBU7CuoHPUDiNEP1N7JEujV6ZwA55HwGubIC2BaUUSNkjv+nKaKsWd6CpOR6EQ9xpAmLWO+YJKQEZ8cu+niUUuMawV9stYpu94dh+88ENLRGTDdfcaBzOhdAM5EMmMLJB2EDEf3QdM3Sn1ZmIjODfHVzfsdy/AMiQeHz/vTbDyZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=W7w9nI2jvIEwV6ddEXUfcJqZK6TKXCuWGlxKa8eOjuc=;
 b=oINKkA0SGyo7mQfSoT9byddadvBGuhmWw/F3xInmfFu8f+84bvF0h0sONm3N1wW6piB0RTPe3IFjKr9o+ZJUGC58K33KA2gClhyEH70HusM3qhgorjCwuKLML9tQBiOwosPL398D39ZPB2cNh7N4DR/KF51HVRWoEUiBaQg79GQ=
Received: from DM6PR11MB4425.namprd11.prod.outlook.com (2603:10b6:5:1d9::31)
 by DM6PR11MB3051.namprd11.prod.outlook.com (2603:10b6:5:61::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.32; Fri, 19 Mar
 2021 17:51:30 +0000
Received: from DM6PR11MB4425.namprd11.prod.outlook.com
 ([fe80::6483:cbea:6db4:d76b]) by DM6PR11MB4425.namprd11.prod.outlook.com
 ([fe80::6483:cbea:6db4:d76b%4]) with mapi id 15.20.3933.032; Fri, 19 Mar 2021
 17:51:30 +0000
From: "Oliver, Dario N" <dario.n.oliver@intel.com>
To: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>,
 "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Thread-Topic: [tboot-devel] Tboot on Intel NUC8i7HVK and Fedora 33
Thread-Index: AdccMXAhpH/o9dBOS6uo0S9oxCXi1wAiFFGAAAr+yWA=
Date: Fri, 19 Mar 2021 17:51:30 +0000
Message-ID: <DM6PR11MB4425DA36A939D9937F14CE8EDB689@DM6PR11MB4425.namprd11.prod.outlook.com>
References: <DM6PR11MB4425A4A47E94DAE32961A0E2DB699@DM6PR11MB4425.namprd11.prod.outlook.com>
 <a92b3ea469052bd058299e4d0edeca0149945d69.camel@linux.intel.com>
In-Reply-To: <a92b3ea469052bd058299e4d0edeca0149945d69.camel@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [50.39.172.55]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 91c4eef3-487d-43c9-0421-08d8eaffa079
x-ms-traffictypediagnostic: DM6PR11MB3051:
x-microsoft-antispam-prvs: <DM6PR11MB3051D21850D57852FAF689C9DB689@DM6PR11MB3051.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: R2bEUnA5c26uj9jbxufoW72UaLBKdsHWNG0WREHkrwhqO9JlidSdEXnThbNaMpHC+D2V8SJWaRhqhS4TidNO5gfOu16I/IGD2RWVU1A/Zaens5+Cmr1W5bhXJCzVzuHuAmqw5d1IFzuuLGB7KSIQs+Mh8/isLFMH9dO7J//5LE5NRtr95aeWfQPZPEEvEyWyox16H/f0wEVRE2C22JacdzqAbgK6pqupc5Bfe9ftW8BbP1g2hYWauSx0KVkUlw7AGDNmHNC0GgCrFG7cMBVAv+oayocr7TUUBZtccLY9crg0XN934AG/JqNbAgCHMs1nJXSbQpJsP8OKM72g1o2EWYUy+v045Qb32yus2C/5tfs7JWGVf4GFI1sdBOJnMcBRimpqxto5wlyUU0rVludSdr3OAhXzZZxvgDqVi+MyNASrZixtpLIcRMMQgfYeCSqa5/WhgGFbGq1qrbBZK0iWzGUIi+oM4Dup1W9a2wloXUEAhQYgJ9lbrVGjYfRu1Xw3BvyZkZcbla1EdXajcN0+4sTEOdH00INfgjjb2GEHhdBBo2td3JAfXXzLoDxBM5oUPB7oiNkpIzt//6I6GHXoXkxs1oCH0wW5WFAaP7wUwWVh7OXmGrBFz+fq8npghWPwfCH5QnTJHOv4WaHFhXj7PHPyQy43Hx0/X0w5dSWGkTayZx88Ix1gPBURbgK5rwnH72G+9hdVa4WouMFQYSsn3CLmDRBSSC0BO6WRn71fLOI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4425.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(39860400002)(376002)(366004)(346002)(136003)(76116006)(186003)(33656002)(55016002)(71200400001)(26005)(66946007)(478600001)(66446008)(966005)(66556008)(38100700001)(9686003)(6506007)(64756008)(66476007)(8936002)(2906002)(52536014)(8676002)(83380400001)(316002)(86362001)(5660300002)(110136005)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?N2Y0OE9oM1ptODlnaWlKSXorcmJVTXlqNm8veDNXbks0eG9OMkRNT2JTbHlx?=
 =?utf-8?B?WURxazJQU013TCtwUnpWbXdkaVJJSXVRcENkdWV5V0JjYnE1cUI2NTV6S2s4?=
 =?utf-8?B?RHhJYzhRQVZhbUI2VTRXcWFyV2lnNGxGYVkvZUcyUFRodm9NZ0RWYXBUNlRl?=
 =?utf-8?B?ZEg3L2NUMFNmcldLdFZnVzdiQ1h0VzdjM29NNXhFZlZnVTg4akU5ODRiOW1n?=
 =?utf-8?B?K1BnbHdYQ3FCVXBFMEdDSGlXcUc2bkdPREdQb25remZFRVdHOTVjUHNLaWRC?=
 =?utf-8?B?RGlCa215QTdXNit3WDBZQ3QrSGQrWHJRSTJwLzh3bUtCQzJNL00xM2pYSVFR?=
 =?utf-8?B?SFhlUkZQU0pTMGlpWE1ub3dzb3UxZFVkSk9aVlArUUo5QlJMTm5YMWZCM2pl?=
 =?utf-8?B?ajhxakhVemNKQXBFcDViampENEJIbmE5VGhFNytmT3RSTEs5dW5UNEVTcGZZ?=
 =?utf-8?B?NTl3TXdKY1J1TUJQMGVSdVpFRzJrdEhaNkh4TlhUcTFmT1RSQ3FJdjIrUlUx?=
 =?utf-8?B?WUFGTUVhU3ZoS1E1NW5PakMvaUJBeWprVGdER1ZXZTJWUGszeTNyUkNaZnEx?=
 =?utf-8?B?WWRQazluL1FlK0tZdFBwa1VJbVJZZjRMUlFPL0pJU1U1cGd5anNUYlp3VGcy?=
 =?utf-8?B?anhXem5BVkRrOE42UEtsQ1k0cjdQb1FEejJBUXVkZE5MRjBrZjE1N3E2V1lw?=
 =?utf-8?B?SUEzNWJvQmcrb0orVnhmQjQrekNCeHB0emYzMUU1ZkdwTzM2RlBIbmk0WExP?=
 =?utf-8?B?c1RkVndzQ3dCUUpBQVVsbVYwSnN2UEd4T283dy9TdVBheG8xNGtCeHd6dGxV?=
 =?utf-8?B?K0RCL05FRFRFeEZ4d3RmK1FVTXVJL3pDSVJwcGo2ckYwYjhmenZSZ3Rrc0FX?=
 =?utf-8?B?aU5LdnN5Z25oKzI0YklFNXdmcWhBM0RoU1dIYlJremp0VVBJZTVZdHl2bjlx?=
 =?utf-8?B?U21hSWU1bnd6cHBCcUNNRDhOL2p5TlVpbFRRVkZFK2pBaytPRnhRaFRHZkFs?=
 =?utf-8?B?NkNMUXl5VnYxU1FoNzAycmkrclM1RzhUQy9kN2dPQmtRVkFPblJIbm5IK01a?=
 =?utf-8?B?akkvWERXSHhBTXhEcGx4cnZURFVsRUJ6eEtBYy9QNFpjODlLYVU5RE5nNm1y?=
 =?utf-8?B?Y0srTi9Cb25RYW5HSXZhZzZlMGVnS29lRGx4bWJtYVg0YmZVZnB1M2pLdlh5?=
 =?utf-8?B?UVZzSlA0VGFWNHc3aHYrd2c0MytGeWU2bXpIQitwYm1CczJHMmhuUjdNdDFR?=
 =?utf-8?B?N2FMSC9QczJLVUxOemhQUmkraVRoYkM2eTg3bVhzcnlTeDh0MXBENjdQVm1S?=
 =?utf-8?B?QUgzT2s1aFhRSzQxR2hyZ0RqMjl6QXpsVnJpalp1d1hhdmFwdVA4azBOTENY?=
 =?utf-8?B?VkVmTzNLaFBNNDVHMVh1UmFWQytOdXNHU0M2QndlTnRkdmpaMmpMZkRRUlhk?=
 =?utf-8?B?LzZwbDh6alBhWEtMUXpkaFdHbUk3V0cvb2lnck9yMGszcnBzSEgrZVh0eFZ1?=
 =?utf-8?B?TVErVGhkcGtnQSt4RitFdGRGZWkzbzZJVzlpUXVNY05EdnBxRWw1bmRQU1Br?=
 =?utf-8?B?aUVwWkxlWFh4dEpDZEFWWExBejJ1aTZJNDYrUHp4Z3RmR0NNaW5XQUFEM0Fw?=
 =?utf-8?B?ZmZYeXpUUTFqV0NucndlQUR3WWZJdGVDY0lUTGhoUlRTZXpKV0VRYkl0VnBC?=
 =?utf-8?B?NDNFUE5pVXZhUHA2dGpuVHZrM1hjdERhV3VYaWVxcERoSWp5ZW5Dc21NeXUw?=
 =?utf-8?Q?JlOPw9RS2tZmoyRjwE=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4425.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 91c4eef3-487d-43c9-0421-08d8eaffa079
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Mar 2021 17:51:30.1341 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Y2pbJXltf+YPbNLiLmRS3ENYIJSxg5t1w9i7fK4xI6/gj47hAMlSRTZFmmxBhJ2D7FxuWr9KCZQGGFjcJ+3W5bNp7XPyqPePGvDHDW+DvGw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3051
X-OriginatorOrg: intel.com
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: readme.md]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.55.52.88 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1lNJHf-0007kU-Af
Subject: Re: [tboot-devel] Tboot on Intel NUC8i7HVK and Fedora 33
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

I am in for testing the 2.x branch with Secure Boot support.

Run into a couple of issues while building:
1. make world fails because of missing README file (it should be README.md?)
2. generated 20_linux_tboot still say tboot version is 1.9.12 (tboot_version="1.9.12")

Anyways, this Dockerfile gets it built:

FROM fedora:33
RUN dnf install -y mercurial-py3 trousers-devel openssl-devel zlib-devel make gcc perl-interpreter
RUN hg clone http://hg.code.sf.net/p/tboot/code -r 2.x tboot-code
WORKDIR tboot-code
RUN cp README.md README && make world

I could not find any docs on what to do after installing 2.x as regards Secure Boot.
Should I sign that with my own key and perform Secure Boot customization?
Can I use the Machine Owner Keys (MOK) feature of the Linux Shim to get that verified?
After rebooting with Secure Boot enabled, I got the error messages saying that multiboot2 and relocator could not be found, which is weird because I still have them installed in "/boot/efi/EFI/fedora/x86_64-efi/"




_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
