Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AF45B4651E4
	for <lists+tboot-devel@lfdr.de>; Wed,  1 Dec 2021 16:39:31 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1msRhZ-0008Tj-5y; Wed, 01 Dec 2021 15:39:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <kent.thompson@intel.com>) id 1msRhX-0008Tc-4W
 for tboot-devel@lists.sourceforge.net; Wed, 01 Dec 2021 15:39:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TEcZyYRkq4c9skte3RaD6byuCvV3l0+lxUQERFvHbqE=; b=CkTPTcKww8wPAFCXLnJ4Ty2PfM
 LyUJn7xpY6mSUnNLu/xYkOiOm8CFxxhgYqd5MP3TyqiONCenQW4SQIS+17erKNQjWNPmP2+S1YQpi
 3m61/ZkQJe9OWefmfMmsP2PdATWDsMlhFbXeEpmGAF1IxHSg92sEbDAD5SpKj60PkUW0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-ID:Date:Subject:CC:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=TEcZyYRkq4c9skte3RaD6byuCvV3l0+lxUQERFvHbqE=; b=H
 9KHfT7T05hzYhJOr+bvy3aDAJee6usMkI0RklrhM2OHHgFFFLaqKa8RCaKedfoevBpP+nMrV4Izok
 7gV5Y7HGVVUX5riMNronob/7W55YNXkJGN2LxhkYt6T1Gfd3QS02g8Sd9gUV/icMocQfFqlV9MG2O
 R5ez4OZbMo27r0No=;
Received: from mga12.intel.com ([192.55.52.136])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1msRhS-0004PL-DM
 for tboot-devel@lists.sourceforge.net; Wed, 01 Dec 2021 15:39:19 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10185"; a="216498082"
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; 
 d="json'?scan'208,217";a="216498082"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 07:39:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; 
 d="json'?scan'208,217";a="596358531"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by FMSMGA003.fm.intel.com with ESMTP; 01 Dec 2021 07:39:08 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 1 Dec 2021 07:39:07 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 1 Dec 2021 07:39:07 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 1 Dec 2021 07:39:07 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 1 Dec 2021 07:38:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fB6hLjfFNoacXnfUd+fidUd4TQcX3uNuM1pW5x/jemCe1qfCezQDu86j1E15X8WTYIrXDN5iI3RBzHwontpA6oURdDtr+7iAC5VLFUIfChHE40fhbZFXq77+Bix+BTkNmr9gTuqyPyc/yunYTZTiH3krghYWXyTq5nP5GQcGsvszM5iRkMd47hZBkqo7dRQBhprxlTyWjwqB0SEIqi/szTAXofxou3XNlpEpHT1qMY9lrzoNd16TiRuY78x/exzBU32kXUUODqXkz9EWEw4oapz2/x6cW3Ng7LTaUVkhYBD48nVVtnx2mNh7ERUGwbwAZnkkC0HlUE3nM1s9UnnqJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TEcZyYRkq4c9skte3RaD6byuCvV3l0+lxUQERFvHbqE=;
 b=aLX7GKf7YwSspDtmmg3WZWZSl0bYmxAjXfenYTXSwzt/g/WQnfC1Lr04E8G6n95hQxWBw1pV2whDyrFZmnMr8w462+obH4t5EDiJek/TKeZAGkrH5d0L1UjLDD1Px7c+y6KgZlFeS+tcw4S63OcKJq7Y/OkkeHi0Ucc6zMWwH7QascEzKR50o9T37JRj5kXCCGrAzf1PK6QjyBJ6Q7krv7/2d2R/j5Sfo7QGDrouJBwGda1lY7lT0N2xhulGPuRKdQ1g528eN+fi1p/dy4XKZbLJ6geu3i144BbBuTcaMnPCsNeeBF+N57eMjgWl0FOhObSa6Yp6E7Zlf8yrwO4OCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TEcZyYRkq4c9skte3RaD6byuCvV3l0+lxUQERFvHbqE=;
 b=cBxnHuwJid/wAw4R9CiHGEvNFpFX5qdDwN1yzswRGI09ljvSHJfnggQYT+1/pm9s9gC35lIdbs0La+QuMOp4/CaeAwcHj52n8Qj8yhexwkFzwnGSd1fH2fYe0Z+2KvZ9PaQbvwCWtfa4CopsJ0VOFHQ8hmNe7rMLn0+4e7lg1gk=
Received: from BY5PR11MB3912.namprd11.prod.outlook.com (2603:10b6:a03:190::18)
 by SJ0PR11MB4862.namprd11.prod.outlook.com (2603:10b6:a03:2de::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.15; Wed, 1 Dec
 2021 15:38:44 +0000
Received: from BY5PR11MB3912.namprd11.prod.outlook.com
 ([fe80::844c:3212:cd:82f9]) by BY5PR11MB3912.namprd11.prod.outlook.com
 ([fe80::844c:3212:cd:82f9%5]) with mapi id 15.20.4734.024; Wed, 1 Dec 2021
 15:38:44 +0000
From: "Thompson, Kent" <kent.thompson@intel.com>
To: "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Thread-Topic: PCR17 Replay Issue
Thread-Index: AdfmyAP/4GoOZxsLR1yCZX1ZNkcNbA==
Date: Wed, 1 Dec 2021 15:38:44 +0000
Message-ID: <BY5PR11MB3912A96DA6E5AF69FCFB6674E9689@BY5PR11MB3912.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e28492a8-e9bb-47b1-cb2f-08d9b4e0a8cb
x-ms-traffictypediagnostic: SJ0PR11MB4862:
x-microsoft-antispam-prvs: <SJ0PR11MB4862E329C9672ABFC4D76E4AE9689@SJ0PR11MB4862.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: W36HnGTHZEH7uxloDfJhgkNB364i1BYDMCYCHK38Qk23jsU1t0MTiholt97qWQUxgeQhuk1eJqopbjCi3YGHDGBhQwOpoPHGvLcWzjAC9Rwc7m2cKjvg5G22JOEq4tNsTkhzTRPxoH9iDYCqVxfX0PnCBswgYYNaBUikfUDGgG2hDnHdibQPqBhA3jrW6/ssZ5UgU3sBEi3yVCM6OhWylK89QIZOQgn1H2PaiUdbiWmjxMvuoEo2m65IWTp+0T9ERDunuGCSXrRqkYgKqEkZElp7OwTE+VPaQprQ/TSDr1bxSg2X57CiYsS8naTH6ZW74ewpYSc1Ixi7UBKaeAUj35qFGB4pH8E/1dm8hGu38JdDLOC2xzihqu1ljqI41Fb0dRGwGs0boF/RrUIvR9hb78d0KXjyfZaFasA04ppZSkGbdLJ/HFKJzqBwbsL0fe2G7KQZasvahDMLRBbBgLe2xehZd106zd+D7lCNYhGX75xMJZeMmayYUn2vl7vMT4/TErVJ0IAfdL4Vd+pZvPqkG0/kn8n50+iz9A650i2P6eGplKQxxc+NA1I+xwESIb58C0fXiMhnPgQsHqfazczDurdwAnKNCPIFzB1TfRnu+sZYQ48e0dY6IXu8Hhg3X9dyJh8ApyJPSRDT9IoUPBxok6zbt9rLyBg/cNZD2piP8tn8QTI2Lyn9i1IgO4LOtSsxftZrJCF7gQ57pMdiWbihzg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3912.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(54906003)(122000001)(2906002)(107886003)(38070700005)(316002)(6916009)(9326002)(7696005)(8936002)(38100700002)(8676002)(26005)(508600001)(71200400001)(6506007)(186003)(52536014)(5660300002)(7116003)(99936003)(82960400001)(4744005)(66476007)(76116006)(66446008)(9686003)(64756008)(66946007)(66556008)(55016003)(86362001)(33656002)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8SMLw63u/5XY0RU+ruabKag4zZTjBsY0lkr8NfkeGO5kYy7PIvGCuPHe4PSa?=
 =?us-ascii?Q?V5KG14MQNjy1YnLMaBue1ItthK/PQQ9zZck7iHbsXnmhW1BggvS75/hb0lMY?=
 =?us-ascii?Q?CWIN4i2T53FxMox5gNtwMz4ydKmebk3qdy25m+G91vMX3jYWuDx49ifzDGY7?=
 =?us-ascii?Q?Kxcr5Vehtdi7pAMRAX4x3IyCX4d27oXEQTGxdK5hyG3aHkW9TrGffxgeMdm0?=
 =?us-ascii?Q?RUrJaRpBkVv1kcbbOY0zMl/ddlrbKG0SrugHx7jJog0D+jNg2k8XThrqQswh?=
 =?us-ascii?Q?xjO6I5KlUM1+jvpn01gEEgwrcHZ9okbybpUnrHYk1TS3/TDEg8wSVUqlE/06?=
 =?us-ascii?Q?x9MbV/9ebFLIVkxtX3vdlF3LbMmTgOjlCmh+hfz6Zv30B6eQVlD2j+mZZ/b6?=
 =?us-ascii?Q?U96KtzgmYn0q/6TCltGsyJb7K+E6mZfpDVtroCOgPtoMGC2Q+6IMgq96qs2K?=
 =?us-ascii?Q?QxrJz5FO/NXF78VX9qVO+muBJ2CFo1nxRQOiohOE52bF2b4C3MhytkN0mWv3?=
 =?us-ascii?Q?zRO0dYEB/euVw6nk0hOpj7FBug8i46jCebgzPbzlI2JNcLe9Gaug5dEx0DFa?=
 =?us-ascii?Q?Dl/E3gilwB6okdP/qYmng3eF23GSNh6qhIUcCtqIhrVnn5PMaIT1ePutlWK5?=
 =?us-ascii?Q?3T02PIo4CP2tCihE94dlyyl9edgz/5ocwVIEmAP2aGx/YwL99JK7QeUmT+5F?=
 =?us-ascii?Q?+3kBZxsi4Ga95KvW5Ler1gXZJF9asNgOUY05UpoxxKKnxh2iGB9z9BMkP0Yt?=
 =?us-ascii?Q?of2zrkLdQpv82BOB8Qvdi+98/aL/ZICl+fISH8ae0tc/lL7wr6JD9q9Zwxhu?=
 =?us-ascii?Q?ODfSlB5n4L5wSojkN/kz2BUr1ClFCDOpUoq3lMcBynJ2VGhkLTygrMlskn2W?=
 =?us-ascii?Q?w/XL/lHlGY/iLZHSQGgAndVCQPMw7FYlcpUx4cn53nAMPOeZRB4juJBGcZx2?=
 =?us-ascii?Q?KRJUw9bAmoBOG52uJ8cVErYPltbnckX6i5dC9WTT9qutfBoaVcWShhVTkXXX?=
 =?us-ascii?Q?2Uj2neYZhbLSpP7ppjCBNRxcpRVDZBPHJCj7SB7ZT6E+kgeSEvDBfLbOpBHa?=
 =?us-ascii?Q?cm/JnxuwcrCoMM+ElmrDMOfLePyL9wwWXd9PQtGI2WzWGMFtrEzk5Z0AIM/r?=
 =?us-ascii?Q?WRhZOZd0Y3MowaMeRDXIaFK1Li4wVR9Ky6cIw9iy95o1pBlozNJDJkUHvPRM?=
 =?us-ascii?Q?hBK/uJGq2OcCtCLcC5eRAl9BzIutso0BhcXcLF44yUYf94DkcMXS1vCP3fyq?=
 =?us-ascii?Q?UHn1V2SPSpNN0TSdoleW2CRWStpVd7OpWV/AOgZGbWYbZ0Svbhrvy8HWejQ+?=
 =?us-ascii?Q?zcDy7didad1uhc8EFDMcvAdrlcrYxSKJeWwPWYDe+0129L25alWfFAqbGjEG?=
 =?us-ascii?Q?qWf8qMRyJs1CQsLX1f4ceG7cyLpAGxDYba+HmcLwQzvWqXpiWtplRmHFJc5e?=
 =?us-ascii?Q?ih0JbfuUp+nj7PxmfxcbvdMki4w0iwyU2K+JcZe/j1wcPCLcwQAfs2+QZZj0?=
 =?us-ascii?Q?M0BkyMurPY0bAYgHNJdb2xDPwgU/Nrpg8GTukqoDlRUbG1L0rXwXeiwE/7Ba?=
 =?us-ascii?Q?xYNrHIKe5CjVHWu5Y/qozT4UjBkZ8P3SX0bTfjfEWHwrd60MaMGsFyg6QzAO?=
 =?us-ascii?Q?Cg=3D=3D?=
Content-Type: multipart/mixed;
 boundary="_005_BY5PR11MB3912A96DA6E5AF69FCFB6674E9689BY5PR11MB3912namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3912.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e28492a8-e9bb-47b1-cb2f-08d9b4e0a8cb
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Dec 2021 15:38:44.5468 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wAj8Z5tRYrYNbghIdyLn+WYdGsYJ7MbeQ5kr+UM457QBxEmhNxBhgWiFZE4RHLJok1nOxeD4dwNzfc0s7HP2Dg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4862
X-OriginatorOrg: intel.com
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi,
 We're encountering an issue in that the event log measurements
 in PCR17 (see eventlog.json attachment) are not "replaying" with the PCR's
 final measurement. In other TXT/TBoot environments, the co [...] 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1msRhS-0004PL-DM
Subject: [tboot-devel] PCR17 Replay Issue
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
Cc: "Rawat, Arvind" <arvind.rawat@intel.com>, "Yang,
 Lei Y" <lei.y.yang@intel.com>
Errors-To: tboot-devel-bounces@lists.sourceforge.net

--_005_BY5PR11MB3912A96DA6E5AF69FCFB6674E9689BY5PR11MB3912namp_
Content-Type: multipart/alternative;
	boundary="_000_BY5PR11MB3912A96DA6E5AF69FCFB6674E9689BY5PR11MB3912namp_"

--_000_BY5PR11MB3912A96DA6E5AF69FCFB6674E9689BY5PR11MB3912namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,
We're encountering an issue in that the event log measurements in PCR17 (se=
e eventlog.json attachment) are not "replaying" with the PCR's final measur=
ement.  In other TXT/TBoot environments, the code that produces the event l=
og and performs replay (of PCR17) are reported to work.  In this case, the =
environment is...

Bios:  WLYDCRB1.SYS.0020.P35.2101050157
OS: Fedora 34
Tboot: 10.1.2

Does the tboot team have any recommendations on how to investigate this iss=
ue?  Is it possible that "startup locality" is in play?

Thanks,
Kent


--_000_BY5PR11MB3912A96DA6E5AF69FCFB6674E9689BY5PR11MB3912namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:dt=3D"uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:m=3D"http://sc=
hemas.microsoft.com/office/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-=
html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
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
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
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
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal">We&#8217;re encountering an issue in that the event =
log measurements in PCR17 (see eventlog.json attachment) are not &#8220;rep=
laying&#8221; with the PCR&#8217;s final measurement.&nbsp; In other TXT/TB=
oot environments, the code that produces the event log and performs
 replay (of PCR17) are reported to work.&nbsp; In this case, the environmen=
t is&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Bios:&nbsp; WLYDCRB1.SYS.0020.P35.2101050157<o:p></o=
:p></p>
<p class=3D"MsoNormal">OS: Fedora 34<o:p></o:p></p>
<p class=3D"MsoNormal">Tboot: 10.1.2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Does the tboot team have any recommendations on how =
to investigate this issue?&nbsp; Is it possible that &#8220;startup localit=
y&#8221; is in play?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Kent<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_BY5PR11MB3912A96DA6E5AF69FCFB6674E9689BY5PR11MB3912namp_--

--_005_BY5PR11MB3912A96DA6E5AF69FCFB6674E9689BY5PR11MB3912namp_
Content-Type: application/octet-stream; name="eventlog.json"
Content-Description: eventlog.json
Content-Disposition: attachment; filename="eventlog.json"; size=9935;
	creation-date="Wed, 01 Dec 2021 15:28:00 GMT";
	modification-date="Wed, 01 Dec 2021 15:28:00 GMT"
Content-Transfer-Encoding: base64

WwogIHsKICAgICJwY3IiOiB7CiAgICAgICJpbmRleCI6IDE3LAogICAgICAiYmFuayI6ICJTSEEx
IgogICAgfSwKICAgICJ0cG1fZXZlbnRzIjogWwogICAgICB7CiAgICAgICAgInR5cGVfaWQiOiAi
MHg0MDIiLAogICAgICAgICJ0eXBlX25hbWUiOiAiSEFTSF9TVEFSVCIsCiAgICAgICAgInRhZ3Mi
OiBbCiAgICAgICAgICAiSEFTSF9TVEFSVCIKICAgICAgICBdLAogICAgICAgICJtZWFzdXJlbWVu
dCI6ICI4Njk2Y2YwZjQ2NTU2MzZjYzkzYzU2NmMxYmUyZGFkMzExZGE2NDZjIgogICAgICB9LAog
ICAgICB7CiAgICAgICAgInR5cGVfaWQiOiAiMHg0MTYiLAogICAgICAgICJ0eXBlX25hbWUiOiAi
RVZUWVBFX0tNX0hBU0giLAogICAgICAgICJ0YWdzIjogWwogICAgICAgICAgIkVWVFlQRV9LTV9I
QVNIIgogICAgICAgIF0sCiAgICAgICAgIm1lYXN1cmVtZW50IjogImU4NWMwYTAzMWQzMGM4M2Qz
NGIwMzQ5YmJmZWUwNTM3MzRlNTkyNTkiCiAgICAgIH0sCiAgICAgIHsKICAgICAgICAidHlwZV9p
ZCI6ICIweDQxNyIsCiAgICAgICAgInR5cGVfbmFtZSI6ICJFVlRZUEVfQlBNX0hBU0giLAogICAg
ICAgICJ0YWdzIjogWwogICAgICAgICAgIkVWVFlQRV9CUE1fSEFTSCIKICAgICAgICBdLAogICAg
ICAgICJtZWFzdXJlbWVudCI6ICI3YzRhYzI3MDAzOGU4ZWU4NGY2NTljNWU4ZmY3NmNhYTA5NGM5
ZmY4IgogICAgICB9LAogICAgICB7CiAgICAgICAgInR5cGVfaWQiOiAiMHg0MWEiLAogICAgICAg
ICJ0eXBlX25hbWUiOiAiRVZUWVBFX0JPT1RfUE9MX0hBU0giLAogICAgICAgICJ0YWdzIjogWwog
ICAgICAgICAgIkVWVFlQRV9CT09UX1BPTF9IQVNIIgogICAgICAgIF0sCiAgICAgICAgIm1lYXN1
cmVtZW50IjogIjZlZDIxYzk0ZDc0MzU1YzVmY2JmYzcyNjdlYjNlYzc5YjllMTU5MDEiCiAgICAg
IH0sCiAgICAgIHsKICAgICAgICAidHlwZV9pZCI6ICIweDQwYSIsCiAgICAgICAgInR5cGVfbmFt
ZSI6ICJCSU9TQUNfUkVHX0RBVEEiLAogICAgICAgICJ0YWdzIjogWwogICAgICAgICAgIkJJT1NB
Q19SRUdfREFUQSIKICAgICAgICBdLAogICAgICAgICJtZWFzdXJlbWVudCI6ICJhMDVjMjQyMThi
NzFjNjViMThmMTI3ZTM2ZmE5NTM1MGFlNjMxZjNlIgogICAgICB9LAogICAgICB7CiAgICAgICAg
InR5cGVfaWQiOiAiMHg0MGIiLAogICAgICAgICJ0eXBlX25hbWUiOiAiQ1BVX1NDUlRNX1NUQVQi
LAogICAgICAgICJ0YWdzIjogWwogICAgICAgICAgIkNQVV9TQ1JUTV9TVEFUIgogICAgICAgIF0s
CiAgICAgICAgIm1lYXN1cmVtZW50IjogIjNjNTg1NjA0ZTg3Zjg1NTk3MzczMWZlYTgzZTIxZmFi
OTM5MmQyZmMiCiAgICAgIH0sCiAgICAgIHsKICAgICAgICAidHlwZV9pZCI6ICIweDQwYyIsCiAg
ICAgICAgInR5cGVfbmFtZSI6ICJMQ1BfQ09OVFJPTF9IQVNIIiwKICAgICAgICAidGFncyI6IFsK
ICAgICAgICAgICJMQ1BfQ09OVFJPTF9IQVNIIgogICAgICAgIF0sCiAgICAgICAgIm1lYXN1cmVt
ZW50IjogIjkwNjljYTc4ZTc0NTBhMjg1MTczNDMxYjNlNTJjNWMyNTI5OWU0NzMiCiAgICAgIH0s
CiAgICAgIHsKICAgICAgICAidHlwZV9pZCI6ICIweDQxMiIsCiAgICAgICAgInR5cGVfbmFtZSI6
ICJMQ1BfREVUQUlMU19IQVNIIiwKICAgICAgICAidGFncyI6IFsKICAgICAgICAgICJMQ1BfREVU
QUlMU19IQVNIIgogICAgICAgIF0sCiAgICAgICAgIm1lYXN1cmVtZW50IjogIjViYTkzYzlkYjBj
ZmY5M2Y1MmI1MjFkNzQyMGU0M2Y2ZWRhMjc4NGYiCiAgICAgIH0sCiAgICAgIHsKICAgICAgICAi
dHlwZV9pZCI6ICIweDQwZSIsCiAgICAgICAgInR5cGVfbmFtZSI6ICJTVE1fSEFTSCIsCiAgICAg
ICAgInRhZ3MiOiBbCiAgICAgICAgICAiU1RNX0hBU0giCiAgICAgICAgXSwKICAgICAgICAibWVh
c3VyZW1lbnQiOiAiNWJhOTNjOWRiMGNmZjkzZjUyYjUyMWQ3NDIwZTQzZjZlZGEyNzg0ZiIKICAg
ICAgfSwKICAgICAgewogICAgICAgICJ0eXBlX2lkIjogIjB4NDBmIiwKICAgICAgICAidHlwZV9u
YW1lIjogIk9TU0lOSVREQVRBX0NBUF9IQVNIIiwKICAgICAgICAidGFncyI6IFsKICAgICAgICAg
ICJPU1NJTklUREFUQV9DQVBfSEFTSCIKICAgICAgICBdLAogICAgICAgICJtZWFzdXJlbWVudCI6
ICJjMzRkYjkwMjRkMjYxZjc1YzkwYmM3ZTRiMmNiNTY3NGQxODJkYzUzIgogICAgICB9LAogICAg
ICB7CiAgICAgICAgInR5cGVfaWQiOiAiMHg0MDQiLAogICAgICAgICJ0eXBlX25hbWUiOiAiTUxF
X0hBU0giLAogICAgICAgICJ0YWdzIjogWwogICAgICAgICAgIk1MRV9IQVNIIgogICAgICAgIF0s
CiAgICAgICAgIm1lYXN1cmVtZW50IjogImYxZGEzZTAzNDQzMGI2ZmUwMzhmNmY4ODY1MTZmYWU3
YTk1YjhiNjIiCiAgICAgIH0sCiAgICAgIHsKICAgICAgICAidHlwZV9pZCI6ICIweDQxNCIsCiAg
ICAgICAgInR5cGVfbmFtZSI6ICJOVl9JTkZPX0hBU0giLAogICAgICAgICJ0YWdzIjogWwogICAg
ICAgICAgIk5WX0lORk9fSEFTSCIKICAgICAgICBdLAogICAgICAgICJtZWFzdXJlbWVudCI6ICI1
MmY0OWFkZDY3ZDFjYWFlODM2NmZkOTQyOGI3OGVlZGJhMTdmMDUyIgogICAgICB9LAogICAgICB7
CiAgICAgICAgInR5cGVfaWQiOiAiMHg1MDEiLAogICAgICAgICJ0eXBlX25hbWUiOiAidGJfcG9s
aWN5IiwKICAgICAgICAidGFncyI6IFsKICAgICAgICAgICJ0Yl9wb2xpY3kiCiAgICAgICAgXSwK
ICAgICAgICAibWVhc3VyZW1lbnQiOiAiMGFmYzA3NjE4ZTM3Mzk0ODFmNGMyYWJhZjcwM2NhNGUz
NTUwN2U2ZSIKICAgICAgfSwKICAgICAgewogICAgICAgICJ0eXBlX2lkIjogIjB4NTAxIiwKICAg
ICAgICAidHlwZV9uYW1lIjogInZtbGludXoiLAogICAgICAgICJ0YWdzIjogWwogICAgICAgICAg
InZtbGludXoiCiAgICAgICAgXSwKICAgICAgICAibWVhc3VyZW1lbnQiOiAiNWE3MjUwNzNjMDhj
NjdiODlkYzQ4NTM3ZmUxMWZmMTZiN2ExNWE4MCIKICAgICAgfSwKICAgICAgewogICAgICAgICJ0
eXBlX2lkIjogIjB4NTAxIiwKICAgICAgICAidHlwZV9uYW1lIjogImluaXRyZCIsCiAgICAgICAg
InRhZ3MiOiBbCiAgICAgICAgICAiaW5pdHJkIgogICAgICAgIF0sCiAgICAgICAgIm1lYXN1cmVt
ZW50IjogImVmZDYxNmYxNDhiMzc2MjM3M2QzNDViZGYxOTUyZWI3Mjk4OGI3OTUiCiAgICAgIH0K
ICAgIF0KICB9LAogIHsKICAgICJwY3IiOiB7CiAgICAgICJpbmRleCI6IDE3LAogICAgICAiYmFu
ayI6ICJTSEEyNTYiCiAgICB9LAogICAgInRwbV9ldmVudHMiOiBbCiAgICAgIHsKICAgICAgICAi
dHlwZV9pZCI6ICIweDQwMiIsCiAgICAgICAgInR5cGVfbmFtZSI6ICJIQVNIX1NUQVJUIiwKICAg
ICAgICAidGFncyI6IFsKICAgICAgICAgICJIQVNIX1NUQVJUIgogICAgICAgIF0sCiAgICAgICAg
Im1lYXN1cmVtZW50IjogIjZkYjY1ZmQ1OWZkMzU2ZjY3MjkxNDA1NzFiNWJjZDZiYjNiODM0OTJh
MTZlMWJmMGEzODg0NDQyZmMzYzhhMGUiCiAgICAgIH0sCiAgICAgIHsKICAgICAgICAidHlwZV9p
ZCI6ICIweDQxNiIsCiAgICAgICAgInR5cGVfbmFtZSI6ICJFVlRZUEVfS01fSEFTSCIsCiAgICAg
ICAgInRhZ3MiOiBbCiAgICAgICAgICAiRVZUWVBFX0tNX0hBU0giCiAgICAgICAgXSwKICAgICAg
ICAibWVhc3VyZW1lbnQiOiAiZGRmOTkyNTIzNDhkNzgxYWNiNzg4ZDMwMzM4NWEyMmY5Y2JmZTA1
ZjI2Y2E5ZDI5MzI3YTA4MmIyOThlNDNmZiIKICAgICAgfSwKICAgICAgewogICAgICAgICJ0eXBl
X2lkIjogIjB4NDE3IiwKICAgICAgICAidHlwZV9uYW1lIjogIkVWVFlQRV9CUE1fSEFTSCIsCiAg
ICAgICAgInRhZ3MiOiBbCiAgICAgICAgICAiRVZUWVBFX0JQTV9IQVNIIgogICAgICAgIF0sCiAg
ICAgICAgIm1lYXN1cmVtZW50IjogImY2OTM5YzBkNjY0MDk2NjRiYmMxODk4MGRiNDQ5Yzg5NDYz
Mjk0ODIzZjA2MmIwYzhiYWNlZjk2ZWMzNDhmMWQiCiAgICAgIH0sCiAgICAgIHsKICAgICAgICAi
dHlwZV9pZCI6ICIweDQxYSIsCiAgICAgICAgInR5cGVfbmFtZSI6ICJFVlRZUEVfQk9PVF9QT0xf
SEFTSCIsCiAgICAgICAgInRhZ3MiOiBbCiAgICAgICAgICAiRVZUWVBFX0JPT1RfUE9MX0hBU0gi
CiAgICAgICAgXSwKICAgICAgICAibWVhc3VyZW1lbnQiOiAiYTVlOTM4ZmRkZjE0YzcwNjY4N2I4
ZGY3YzhiMTk5Y2RhNmZkNTJhMWE2YjFjYTgyMDU5NGU1Y2YxMWI5YjM2YiIKICAgICAgfSwKICAg
ICAgewogICAgICAgICJ0eXBlX2lkIjogIjB4NDBhIiwKICAgICAgICAidHlwZV9uYW1lIjogIkJJ
T1NBQ19SRUdfREFUQSIsCiAgICAgICAgInRhZ3MiOiBbCiAgICAgICAgICAiQklPU0FDX1JFR19E
QVRBIgogICAgICAgIF0sCiAgICAgICAgIm1lYXN1cmVtZW50IjogImRjNDQ2ZTk0YmFmMTk1NmYx
NjgzMjU5ZjdiOTdiODkxNGE1ZDkzZWU1ZDFkMDE4ODIxOWI1MzVhNjRiYzAzYmEiCiAgICAgIH0s
CiAgICAgIHsKICAgICAgICAidHlwZV9pZCI6ICIweDQwYiIsCiAgICAgICAgInR5cGVfbmFtZSI6
ICJDUFVfU0NSVE1fU1RBVCIsCiAgICAgICAgInRhZ3MiOiBbCiAgICAgICAgICAiQ1BVX1NDUlRN
X1NUQVQiCiAgICAgICAgXSwKICAgICAgICAibWVhc3VyZW1lbnQiOiAiNjdhYmRkNzIxMDI0ZjBm
ZjRlMGIzZjRjMmZjMTNiYzViYWQ0MmQwYjc4NTFkNDU2ZDg4ZDIwM2QxNWFhYTQ1MCIKICAgICAg
fSwKICAgICAgewogICAgICAgICJ0eXBlX2lkIjogIjB4NDBjIiwKICAgICAgICAidHlwZV9uYW1l
IjogIkxDUF9DT05UUk9MX0hBU0giLAogICAgICAgICJ0YWdzIjogWwogICAgICAgICAgIkxDUF9D
T05UUk9MX0hBU0giCiAgICAgICAgXSwKICAgICAgICAibWVhc3VyZW1lbnQiOiAiZGYzZjYxOTgw
NGE5MmZkYjQwNTcxOTJkYzQzZGQ3NDhlYTc3OGFkYzUyYmM0OThjZTgwNTI0YzAxNGI4MTExOSIK
ICAgICAgfSwKICAgICAgewogICAgICAgICJ0eXBlX2lkIjogIjB4NDEyIiwKICAgICAgICAidHlw
ZV9uYW1lIjogIkxDUF9ERVRBSUxTX0hBU0giLAogICAgICAgICJ0YWdzIjogWwogICAgICAgICAg
IkxDUF9ERVRBSUxTX0hBU0giCiAgICAgICAgXSwKICAgICAgICAibWVhc3VyZW1lbnQiOiAiNmUz
NDBiOWNmZmIzN2E5ODljYTU0NGU2YmI3ODBhMmM3ODkwMWQzZmIzMzczODc2ODUxMWEzMDYxN2Fm
YTAxZCIKICAgICAgfSwKICAgICAgewogICAgICAgICJ0eXBlX2lkIjogIjB4NDBlIiwKICAgICAg
ICAidHlwZV9uYW1lIjogIlNUTV9IQVNIIiwKICAgICAgICAidGFncyI6IFsKICAgICAgICAgICJT
VE1fSEFTSCIKICAgICAgICBdLAogICAgICAgICJtZWFzdXJlbWVudCI6ICI2ZTM0MGI5Y2ZmYjM3
YTk4OWNhNTQ0ZTZiYjc4MGEyYzc4OTAxZDNmYjMzNzM4NzY4NTExYTMwNjE3YWZhMDFkIgogICAg
ICB9LAogICAgICB7CiAgICAgICAgInR5cGVfaWQiOiAiMHg0MGYiLAogICAgICAgICJ0eXBlX25h
bWUiOiAiT1NTSU5JVERBVEFfQ0FQX0hBU0giLAogICAgICAgICJ0YWdzIjogWwogICAgICAgICAg
Ik9TU0lOSVREQVRBX0NBUF9IQVNIIgogICAgICAgIF0sCiAgICAgICAgIm1lYXN1cmVtZW50Ijog
IjcyNzNhMWMyNzUxNTAxYjRkMWMxNjg5ZDIzZGRjMjc3NDFkOTk2OWYzNTFkOTFjNzIxMmYxOTE0
MTZjNjUwMzkiCiAgICAgIH0sCiAgICAgIHsKICAgICAgICAidHlwZV9pZCI6ICIweDQwNCIsCiAg
ICAgICAgInR5cGVfbmFtZSI6ICJNTEVfSEFTSCIsCiAgICAgICAgInRhZ3MiOiBbCiAgICAgICAg
ICAiTUxFX0hBU0giCiAgICAgICAgXSwKICAgICAgICAibWVhc3VyZW1lbnQiOiAiNDIwNmI5NTk4
NGZiNTBiNGQ2NDRlYWY4MWRhODdhODQxMzk2NGViN2I1MGI2OTdlYzRjM2RiY2Q4M2Y3YzA0MSIK
ICAgICAgfSwKICAgICAgewogICAgICAgICJ0eXBlX2lkIjogIjB4NDE0IiwKICAgICAgICAidHlw
ZV9uYW1lIjogIk5WX0lORk9fSEFTSCIsCiAgICAgICAgInRhZ3MiOiBbCiAgICAgICAgICAiTlZf
SU5GT19IQVNIIgogICAgICAgIF0sCiAgICAgICAgIm1lYXN1cmVtZW50IjogIjUzY2Y0OGI1MTU5
YTdmYzZlZGVjZmE4YmVkNTI1NDk1ZjlmMDk2Zjg3MTA5NGZkZmNhZWZkMjY3YjQyM2ZhYWMiCiAg
ICAgIH0sCiAgICAgIHsKICAgICAgICAidHlwZV9pZCI6ICIweDUwMSIsCiAgICAgICAgInR5cGVf
bmFtZSI6ICJ0Yl9wb2xpY3kiLAogICAgICAgICJ0YWdzIjogWwogICAgICAgICAgInRiX3BvbGlj
eSIKICAgICAgICBdLAogICAgICAgICJtZWFzdXJlbWVudCI6ICI3MWJlNTg1MmExNGVhYmVmZWJm
MGRmMGUxYWNjNWRhMjkxODgzYjZkNGM1YWIyMDkxNGVkOTg3YzFkYWYzZjkxIgogICAgICB9LAog
ICAgICB7CiAgICAgICAgInR5cGVfaWQiOiAiMHg1MDEiLAogICAgICAgICJ0eXBlX25hbWUiOiAi
dm1saW51eiIsCiAgICAgICAgInRhZ3MiOiBbCiAgICAgICAgICAidm1saW51eiIKICAgICAgICBd
LAogICAgICAgICJtZWFzdXJlbWVudCI6ICIyNjVmYzBmMWRhODMxNWQxZWJiZmRiZmVjZWNjM2Rl
NWMyNTc5ZTM2YzgwZTYxMTYzNzY3MmI3NTIzMjM5OGUxIgogICAgICB9LAogICAgICB7CiAgICAg
ICAgInR5cGVfaWQiOiAiMHg1MDEiLAogICAgICAgICJ0eXBlX25hbWUiOiAiaW5pdHJkIiwKICAg
ICAgICAidGFncyI6IFsKICAgICAgICAgICJpbml0cmQiCiAgICAgICAgXSwKICAgICAgICAibWVh
c3VyZW1lbnQiOiAiNDVkZWE3YWM2NzFmZmQ1NWZmZjA1ZGUyYTI4NzYyYjg2YjEzMGVkMjE3ODI5
OTMyNDk2ZjgyMWYwMDBjNGYxNSIKICAgICAgfQogICAgXQogIH0sCiAgewogICAgInBjciI6IHsK
ICAgICAgImluZGV4IjogMTgsCiAgICAgICJiYW5rIjogIlNIQTEiCiAgICB9LAogICAgInRwbV9l
dmVudHMiOiBbCiAgICAgIHsKICAgICAgICAidHlwZV9pZCI6ICIweDQxMCIsCiAgICAgICAgInR5
cGVfbmFtZSI6ICJTSU5JVF9QVUJLRVlfSEFTSCIsCiAgICAgICAgInRhZ3MiOiBbCiAgICAgICAg
ICAiU0lOSVRfUFVCS0VZX0hBU0giCiAgICAgICAgXSwKICAgICAgICAibWVhc3VyZW1lbnQiOiAi
ZmVkMzI0ZGU4N2FhZjRjZGFlYzg5MTc2N2E4MmMxM2NmYjExYTc1OSIKICAgICAgfSwKICAgICAg
ewogICAgICAgICJ0eXBlX2lkIjogIjB4NDBiIiwKICAgICAgICAidHlwZV9uYW1lIjogIkNQVV9T
Q1JUTV9TVEFUIiwKICAgICAgICAidGFncyI6IFsKICAgICAgICAgICJDUFVfU0NSVE1fU1RBVCIK
ICAgICAgICBdLAogICAgICAgICJtZWFzdXJlbWVudCI6ICIzYzU4NTYwNGU4N2Y4NTU5NzM3MzFm
ZWE4M2UyMWZhYjkzOTJkMmZjIgogICAgICB9LAogICAgICB7CiAgICAgICAgInR5cGVfaWQiOiAi
MHg0MGYiLAogICAgICAgICJ0eXBlX25hbWUiOiAiT1NTSU5JVERBVEFfQ0FQX0hBU0giLAogICAg
ICAgICJ0YWdzIjogWwogICAgICAgICAgIk9TU0lOSVREQVRBX0NBUF9IQVNIIgogICAgICAgIF0s
CiAgICAgICAgIm1lYXN1cmVtZW50IjogImMzNGRiOTAyNGQyNjFmNzVjOTBiYzdlNGIyY2I1Njc0
ZDE4MmRjNTMiCiAgICAgIH0sCiAgICAgIHsKICAgICAgICAidHlwZV9pZCI6ICIweDQwYyIsCiAg
ICAgICAgInR5cGVfbmFtZSI6ICJMQ1BfQ09OVFJPTF9IQVNIIiwKICAgICAgICAidGFncyI6IFsK
ICAgICAgICAgICJMQ1BfQ09OVFJPTF9IQVNIIgogICAgICAgIF0sCiAgICAgICAgIm1lYXN1cmVt
ZW50IjogIjkwNjljYTc4ZTc0NTBhMjg1MTczNDMxYjNlNTJjNWMyNTI5OWU0NzMiCiAgICAgIH0s
CiAgICAgIHsKICAgICAgICAidHlwZV9pZCI6ICIweDQxMyIsCiAgICAgICAgInR5cGVfbmFtZSI6
ICJMQ1BfQVVUSE9SSVRJRVNfSEFTSCIsCiAgICAgICAgInRhZ3MiOiBbCiAgICAgICAgICAiTENQ
X0FVVEhPUklUSUVTX0hBU0giCiAgICAgICAgXSwKICAgICAgICAibWVhc3VyZW1lbnQiOiAiNWJh
OTNjOWRiMGNmZjkzZjUyYjUyMWQ3NDIwZTQzZjZlZGEyNzg0ZiIKICAgICAgfSwKICAgICAgewog
ICAgICAgICJ0eXBlX2lkIjogIjB4NDE0IiwKICAgICAgICAidHlwZV9uYW1lIjogIk5WX0lORk9f
SEFTSCIsCiAgICAgICAgInRhZ3MiOiBbCiAgICAgICAgICAiTlZfSU5GT19IQVNIIgogICAgICAg
IF0sCiAgICAgICAgIm1lYXN1cmVtZW50IjogIjUyZjQ5YWRkNjdkMWNhYWU4MzY2ZmQ5NDI4Yjc4
ZWVkYmExN2YwNTIiCiAgICAgIH0sCiAgICAgIHsKICAgICAgICAidHlwZV9pZCI6ICIweDUwMSIs
CiAgICAgICAgInR5cGVfbmFtZSI6ICJ0Yl9wb2xpY3kiLAogICAgICAgICJ0YWdzIjogWwogICAg
ICAgICAgInRiX3BvbGljeSIKICAgICAgICBdLAogICAgICAgICJtZWFzdXJlbWVudCI6ICIwYWZj
MDc2MThlMzczOTQ4MWY0YzJhYmFmNzAzY2E0ZTM1NTA3ZTZlIgogICAgICB9CiAgICBdCiAgfSwK
ICB7CiAgICAicGNyIjogewogICAgICAiaW5kZXgiOiAxOCwKICAgICAgImJhbmsiOiAiU0hBMjU2
IgogICAgfSwKICAgICJ0cG1fZXZlbnRzIjogWwogICAgICB7CiAgICAgICAgInR5cGVfaWQiOiAi
MHg0MTAiLAogICAgICAgICJ0eXBlX25hbWUiOiAiU0lOSVRfUFVCS0VZX0hBU0giLAogICAgICAg
ICJ0YWdzIjogWwogICAgICAgICAgIlNJTklUX1BVQktFWV9IQVNIIgogICAgICAgIF0sCiAgICAg
ICAgIm1lYXN1cmVtZW50IjogImRjZjRlMmJhYmIzNTI3ODdhZjcxNGQyNDAzNTMzYzU1NDlmNzU4
MmQ4ODMwMDQyNWQ2NzQwNzhlNjJjZjExOGQiCiAgICAgIH0sCiAgICAgIHsKICAgICAgICAidHlw
ZV9pZCI6ICIweDQwYiIsCiAgICAgICAgInR5cGVfbmFtZSI6ICJDUFVfU0NSVE1fU1RBVCIsCiAg
ICAgICAgInRhZ3MiOiBbCiAgICAgICAgICAiQ1BVX1NDUlRNX1NUQVQiCiAgICAgICAgXSwKICAg
ICAgICAibWVhc3VyZW1lbnQiOiAiNjdhYmRkNzIxMDI0ZjBmZjRlMGIzZjRjMmZjMTNiYzViYWQ0
MmQwYjc4NTFkNDU2ZDg4ZDIwM2QxNWFhYTQ1MCIKICAgICAgfSwKICAgICAgewogICAgICAgICJ0
eXBlX2lkIjogIjB4NDBmIiwKICAgICAgICAidHlwZV9uYW1lIjogIk9TU0lOSVREQVRBX0NBUF9I
QVNIIiwKICAgICAgICAidGFncyI6IFsKICAgICAgICAgICJPU1NJTklUREFUQV9DQVBfSEFTSCIK
ICAgICAgICBdLAogICAgICAgICJtZWFzdXJlbWVudCI6ICI3MjczYTFjMjc1MTUwMWI0ZDFjMTY4
OWQyM2RkYzI3NzQxZDk5NjlmMzUxZDkxYzcyMTJmMTkxNDE2YzY1MDM5IgogICAgICB9LAogICAg
ICB7CiAgICAgICAgInR5cGVfaWQiOiAiMHg0MGMiLAogICAgICAgICJ0eXBlX25hbWUiOiAiTENQ
X0NPTlRST0xfSEFTSCIsCiAgICAgICAgInRhZ3MiOiBbCiAgICAgICAgICAiTENQX0NPTlRST0xf
SEFTSCIKICAgICAgICBdLAogICAgICAgICJtZWFzdXJlbWVudCI6ICJkZjNmNjE5ODA0YTkyZmRi
NDA1NzE5MmRjNDNkZDc0OGVhNzc4YWRjNTJiYzQ5OGNlODA1MjRjMDE0YjgxMTE5IgogICAgICB9
LAogICAgICB7CiAgICAgICAgInR5cGVfaWQiOiAiMHg0MTMiLAogICAgICAgICJ0eXBlX25hbWUi
OiAiTENQX0FVVEhPUklUSUVTX0hBU0giLAogICAgICAgICJ0YWdzIjogWwogICAgICAgICAgIkxD
UF9BVVRIT1JJVElFU19IQVNIIgogICAgICAgIF0sCiAgICAgICAgIm1lYXN1cmVtZW50IjogIjZl
MzQwYjljZmZiMzdhOTg5Y2E1NDRlNmJiNzgwYTJjNzg5MDFkM2ZiMzM3Mzg3Njg1MTFhMzA2MTdh
ZmEwMWQiCiAgICAgIH0sCiAgICAgIHsKICAgICAgICAidHlwZV9pZCI6ICIweDQxNCIsCiAgICAg
ICAgInR5cGVfbmFtZSI6ICJOVl9JTkZPX0hBU0giLAogICAgICAgICJ0YWdzIjogWwogICAgICAg
ICAgIk5WX0lORk9fSEFTSCIKICAgICAgICBdLAogICAgICAgICJtZWFzdXJlbWVudCI6ICI1M2Nm
NDhiNTE1OWE3ZmM2ZWRlY2ZhOGJlZDUyNTQ5NWY5ZjA5NmY4NzEwOTRmZGZjYWVmZDI2N2I0MjNm
YWFjIgogICAgICB9LAogICAgICB7CiAgICAgICAgInR5cGVfaWQiOiAiMHg1MDEiLAogICAgICAg
ICJ0eXBlX25hbWUiOiAidGJfcG9saWN5IiwKICAgICAgICAidGFncyI6IFsKICAgICAgICAgICJ0
Yl9wb2xpY3kiCiAgICAgICAgXSwKICAgICAgICAibWVhc3VyZW1lbnQiOiAiNzFiZTU4NTJhMTRl
YWJlZmViZjBkZjBlMWFjYzVkYTI5MTg4M2I2ZDRjNWFiMjA5MTRlZDk4N2MxZGFmM2Y5MSIKICAg
ICAgfQogICAgXQogIH0KXQo=

--_005_BY5PR11MB3912A96DA6E5AF69FCFB6674E9689BY5PR11MB3912namp_
Content-Type: application/octet-stream; name="platform-info.json"
Content-Description: platform-info.json
Content-Disposition: attachment; filename="platform-info.json"; size=1005;
	creation-date="Wed, 01 Dec 2021 15:30:00 GMT";
	modification-date="Wed, 01 Dec 2021 15:30:00 GMT"
Content-Transfer-Encoding: base64

ewogICJvc19uYW1lIjogIkZlZG9yYSIsCiAgIm9zX3ZlcnNpb24iOiAiMzQiLAogICJvc190eXBl
IjogImxpbnV4IiwKICAiYmlvc192ZXJzaW9uIjogIldMWURDUkIxLlNZUy4wMDIwLlAzNS4yMTAx
MDUwMTU3IiwKICAidm1tX25hbWUiOiAiIiwKICAidm1tX3ZlcnNpb24iOiAiIiwKICAicHJvY2Vz
c29yX2luZm8iOiAiQTQgMDYgMDYgMDAgRkYgRkIgRUIgQkYiLAogICJob3N0X25hbWUiOiAiZmVk
b3JlLTY0My0xIiwKICAiYmlvc19uYW1lIjogIkludGVsIENvcnBvcmF0aW9uIiwKICAiaGFyZHdh
cmVfdXVpZCI6ICI4ODg4ODg4OC04ODg3LTEwMTUtMDkwMi0xNzI5YTVhNWE1YTUiLAogICJwcm9j
ZXNzX2ZsYWdzIjogIkZQVSBWTUUgREUgUFNFIFRTQyBNU1IgUEFFIE1DRSBDWDggQVBJQyBTRVAg
TVRSUiBQR0UgTUNBIENNT1YgUEFUIFBTRS0zNiBDTEZTSCBEUyBBQ1BJIE1NWCBGWFNSIFNTRSBT
U0UyIFNTIEhUVCBUTSBQQkUiLAogICJub19vZl9zb2NrZXRzIjogIjQ4IiwKICAidGJvb3RfaW5z
dGFsbGVkIjogInRydWUiLAogICJpc19kb2NrZXJfZW52IjogImZhbHNlIiwKICAiaGFyZHdhcmVf
ZmVhdHVyZXMiOiB7CiAgICAiVFhUIjogewogICAgICAiZW5hYmxlZCI6ICJ0cnVlIgogICAgfSwK
ICAgICJUUE0iOiB7CiAgICAgICJlbmFibGVkIjogInRydWUiLAogICAgICAibWV0YSI6IHsKICAg
ICAgICAidHBtX3ZlcnNpb24iOiAiMi4wIgogICAgICB9CiAgICB9LAogICAgIkNCTlQiOiB7CiAg
ICAgICJlbmFibGVkIjogInRydWUiLAogICAgICAibWV0YSI6IHsKICAgICAgICAicHJvZmlsZSI6
ICIiLAogICAgICAgICJtc3IiOiAibWvCoHJpc8Kga2ZtIgogICAgICB9CiAgICB9LAogICAgIlVF
RkkiOiB7CiAgICAgICJlbmFibGVkIjogInRydWUiLAogICAgICAibWV0YSI6IHsKICAgICAgICAi
c2VjdXJlX2Jvb3RfZW5hYmxlZCI6IGZhbHNlCiAgICAgIH0KICAgIH0KICB9LAogICJpbnN0YWxs
ZWRfY29tcG9uZW50cyI6IFsKICAgICJ0YWdlbnQiCiAgXQp9

--_005_BY5PR11MB3912A96DA6E5AF69FCFB6674E9689BY5PR11MB3912namp_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--_005_BY5PR11MB3912A96DA6E5AF69FCFB6674E9689BY5PR11MB3912namp_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel

--_005_BY5PR11MB3912A96DA6E5AF69FCFB6674E9689BY5PR11MB3912namp_--

