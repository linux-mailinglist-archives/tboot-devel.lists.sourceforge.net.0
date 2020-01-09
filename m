Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E37501361E3
	for <lists+tboot-devel@lfdr.de>; Thu,  9 Jan 2020 21:38:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:To:Sender:Cc:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uGcIe+NVBNJYsvj/Km3L2xvXeUyplDAlvOPrd0GW1Js=; b=HchzAGQ9b7G9GrQMQgo8Onodr
	L5CdRRilozzVB1gBL1O6j2elxH9fp4KOcXaQCa1LE82nLIkcuX2CC7bXrFwG5MedQZFcjgaME+UCq
	4hTwpc6K6Nzv1ScHJx5aFvDFhEygnAHKO2S9vD/FpO+AtZiWSAJx8GGqmf1UUqG306GrU=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1ipeZl-0000QK-9J; Thu, 09 Jan 2020 20:38:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pmoore2@cisco.com>) id 1ipeZj-0000Q2-Fw
 for tboot-devel@lists.sourceforge.net; Thu, 09 Jan 2020 20:38:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:
 Reply-To:Cc:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zOvLnbIwTzlNy52wqW6DabaT+R7ooXvt6bhlBF+oY28=; b=JXADUsazmddeyTadimCHWlrZUH
 yJW5HRikF+zxVc9xGqj9p0xcfJog9+zHxmKY4QVsaRHbl+h+jjP6s3G2VQUwCA9Ys+ys9lNM8hNxQ
 +mEGd77nm1+vhlcTjk+KCM1nkqmutOCn5IUpA9z0bRDsmII3mpOmtYkVJ6dN543/h1ZU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zOvLnbIwTzlNy52wqW6DabaT+R7ooXvt6bhlBF+oY28=; b=PfMVbDgpygw5hGG/33f9z+NjPl
 DfGEFLrmfDyAMJkWfCRwxWOiUoodGm4rGdzTPUwDo7+cU4IlgFrI6DRD4KNkpNqv0Ad8bPQMHwMT3
 Cq1lPfsXLBXXMb5UZNHOoauLzbEubMdmSz65Vb+I68S9bsSCt5kMfpuzlCxxJ2C2iHX4=;
Received: from alln-iport-5.cisco.com ([173.37.142.92])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps (TLSv1.2:DHE-RSA-SEED-SHA:128)
 (Exim 4.92.2) id 1ipeZg-00ErOq-3i
 for tboot-devel@lists.sourceforge.net; Thu, 09 Jan 2020 20:38:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=cisco.com; i=@cisco.com; l=950; q=dns/txt; s=iport;
 t=1578602316; x=1579811916;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=zOvLnbIwTzlNy52wqW6DabaT+R7ooXvt6bhlBF+oY28=;
 b=jU1xxgoQDbipdXipi27e13TmrwZZXs4KDy5Hk8+odkK2f9+NrRIgy7GV
 vcsTgHyvcjB+/+euQAg4kqQ09kY7LdrZXRhQY+nFP6E0JD5a3IrAxmK52
 JW2XzRCKU7nRP3XT8tPvC04Amx1wYVEGY8rd+GDFtZWFBVVsVtiPUNIXM c=;
IronPort-PHdr: =?us-ascii?q?9a23=3AR60BDRVc8cDl8lEvIT85Zz9Flh7V8LGuZFwc94?=
 =?us-ascii?q?YnhrRSc6+q45XlOgnF6O5wiEPSA92J8OpK3uzRta2oGXcN55qMqjgjSNRNTF?=
 =?us-ascii?q?dE7KdehAk8GIiAAEz/IuTtankiGcNFTlI/13q6KkNSXs35Yg6arw=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0C0HgATjhde/5ldJa1kHQEBOAUFAQI?=
 =?us-ascii?q?JAYFVgVJQBWxYIAQLKgqDf4NGA4sAToIRmA2CUgNUCQEBAQwBASMKAgEBhEA?=
 =?us-ascii?q?CF4FYJDgTAgMNAQEEAQEBAgEFBG2FNwELhV8BAQEDEhERDAEBOA8CAQgYAgI?=
 =?us-ascii?q?mAgICMBUQAgQ1gwWCSgMuAQIMoFACgTiIYXWBMoJ+AQEFgkSCTRiCDAMGgQ4?=
 =?us-ascii?q?oAYYJgwSDC4IahCQ+gmQCgWODEIJegUMBjwOeaQYEgjaHOI5vG5pkjliIV5I?=
 =?us-ascii?q?VAgQCBAUCDgEBBYFpIoFYcIFugU5QGA2NHhcVgzuKU3SBKI5dAYEPAQE?=
X-IronPort-AV: E=Sophos;i="5.69,414,1571702400"; d="scan'208";a="408414527"
Received: from rcdn-core-2.cisco.com ([173.37.93.153])
 by alln-iport-5.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA;
 09 Jan 2020 20:38:26 +0000
Received: from XCH-RCD-009.cisco.com (xch-rcd-009.cisco.com [173.37.102.19])
 by rcdn-core-2.cisco.com (8.15.2/8.15.2) with ESMTPS id 009KcQJT001936
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=FAIL)
 for <tboot-devel@lists.sourceforge.net>; Thu, 9 Jan 2020 20:38:26 GMT
Received: from xhs-rtp-001.cisco.com (64.101.210.228) by XCH-RCD-009.cisco.com
 (173.37.102.19) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Thu, 9 Jan 2020 14:38:25 -0600
Received: from xhs-aln-001.cisco.com (173.37.135.118) by xhs-rtp-001.cisco.com
 (64.101.210.228) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Thu, 9 Jan 2020 15:38:25 -0500
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (173.37.151.57)
 by xhs-aln-001.cisco.com (173.37.135.118) with Microsoft SMTP Server (TLS) id
 15.0.1473.3 via Frontend Transport; Thu, 9 Jan 2020 14:38:24 -0600
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R1+sYJ48JoiN9AyJCUtd5bJyULceVFIV2nC4cCbvqI4mhJ4srR9tOhZQCHmsf9d1Iq3X7s6HYazO2s06cDcuNcbuFxm1wZoVwKjfFZI2vERWb1A5RekS1g7keT2qfQHuNOvrHw0KaM+E2kxI1dh0h70qeME3GLQ1bougEIAKV5mD9ZmKZXqT8NFQIqTiCrr8c8QthAY1Rdz3hodxJICyRaSEbb9ENg6x9e/LU5zdFGfjEYVT4+KitIUIq8YcetlUA7GqrtYTT/fYezpOlAcs6BudUyz46/QLUwAM3A/yFpRM6Zv8O5rFE+sctDaqDhrwMK/lGJEaUPNriu0cApBOeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zOvLnbIwTzlNy52wqW6DabaT+R7ooXvt6bhlBF+oY28=;
 b=lY4fp/Uz3d5LJr6bYyHu1Djxmkf2EhHgWaq2whdKofVn8qowSsjveGBhB2UC+NKMrnjysIF7Sr/WzqK1Jzi4JPj/PxhlmxGpyowzkOmDQfmvPxkcOfkqBOwZ2V9phaNOxWnYuVMtfIVshHICAtXKp6dXRMd9JQtWr4h5b5EQxU+TcZGbhEkQmRcTi5uXWXwEucFam/fe0xzg89boHuZ1yM5jtmNYpgm/PZpjTvnQVdaFlkFoKXX98GL8saDkOyUFnhrflcELFiqm+D7urLtwScaIbYgFGJdxVBu9tCSJH0PzAf5hdb6B6uUS2hG9j85B1SGaTgOccV0xKdSrYeAnew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cisco.com; dmarc=pass action=none header.from=cisco.com;
 dkim=pass header.d=cisco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cisco.onmicrosoft.com; 
 s=selector2-cisco-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zOvLnbIwTzlNy52wqW6DabaT+R7ooXvt6bhlBF+oY28=;
 b=bJl7LkYFcvYMGWlzOkhxO9c9GR0smm8AZ7/L4R0dE2RYpVv0pvZpD+lv9DyS4pR3NGkWANT9QEZnp+mpKMFkAovgHJbundm1rZ55modxywLW4cEXmO/NMCwzravgQsZ7A4Uj2E+CmABbPR2GlveZ0qorQT7Hfq+7EuSFkDN6JxQ=
Received: from BN7PR11MB2866.namprd11.prod.outlook.com (52.135.246.157) by
 BN7PR11MB2612.namprd11.prod.outlook.com (52.135.246.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.10; Thu, 9 Jan 2020 20:38:24 +0000
Received: from BN7PR11MB2866.namprd11.prod.outlook.com
 ([fe80::f57d:c6e:3ec:c65a]) by BN7PR11MB2866.namprd11.prod.outlook.com
 ([fe80::f57d:c6e:3ec:c65a%7]) with mapi id 15.20.2602.018; Thu, 9 Jan 2020
 20:38:24 +0000
To: "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Thread-Topic: [tboot-devel] Creating a TXT/tboot policy suitable for a modern
 system with TXT+TPM2
Thread-Index: AQHVlCtYW12WBIFGSk+TwpFcVCWnTad9MGGQgAAqOICAATPX0IBJ9q+AgBqr3IA=
Date: Thu, 9 Jan 2020 20:38:23 +0000
Message-ID: <6dc85d875bacb4eb5f4fac15ddf20e2e2c3dc9b3.camel@cisco.com>
References: <681a21560a8a9f41a4be8cdc399cf5008f7adecc.camel@cisco.com>
 <1926e09cfdf84af28414b36c2652f421@AUSX13MPC102.AMER.DELL.COM>
 <52ba4fc58ef941c81458ea95eeaed31b0aa669e1.camel@cisco.com>
 <b4e1bf1374114acdaa3b99d91b43bd64@AUSX13MPC102.AMER.DELL.COM>
 <6dfd0122935e8fa2a228d65b2a0cd6f9daac8103.camel@cisco.com>
In-Reply-To: <6dfd0122935e8fa2a228d65b2a0cd6f9daac8103.camel@cisco.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pmoore2@cisco.com; 
x-originating-ip: [173.38.117.83]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e16c63b0-fac6-4ca3-1190-08d79543df72
x-ms-traffictypediagnostic: BN7PR11MB2612:
x-microsoft-antispam-prvs: <BN7PR11MB2612F7A38E581FDFE19FEC46F8390@BN7PR11MB2612.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 02778BF158
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(39860400002)(376002)(346002)(396003)(136003)(199004)(189003)(6512007)(316002)(5660300002)(966005)(6916009)(91956017)(76116006)(66556008)(4001150100001)(66476007)(66446008)(66946007)(64756008)(86362001)(26005)(8676002)(36756003)(81166006)(6506007)(2906002)(81156014)(71200400001)(478600001)(4744005)(2616005)(6486002)(8936002)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN7PR11MB2612;
 H:BN7PR11MB2866.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: cisco.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /hexMk6tEdgiLp83H/52bbnkSYUfVo5niNkubZHyJwczf2YUITi195dcwNTeOYIeRLDhAW7kSWG8gevb6W5BM49RoGS/EH9wZftKtv1pxQvR809+ZeV7aeFAvIzuawBZxIXQN7f4Lo2jPFhnedjkz4WZEjaOMWm5y1DVgt/F8l//ucB/5t3xfDb/yIdt+xvxpxYnMYeEp+4Wq7skmYm3aFhdZ62F7LwNmUsLVo6Js2sI6cWxEE/w1LhIlKSZojMH2BP1Rny2FAQYFmEXB5vLW27+9bi/cIv5pAsiINmZ7lfzOA2NCmxidxxmSlPxvWiIIeOS1WU5O6KCKBLlrFjd7pDLLE9J4aOfIAwMAEJxPHrfxNIu+LrbuJOqNs6Fu+Ng+/X6vaFdX6rEKT25QLNP9WOMHcdB/kS3LA82fU+ZE78r/SIA9d1sqLoT4vG+K+yYg1oVGNO6VScvtHgkmVL+uLQE4LivFIl2SDI0xXC+63JfxQ4lBPDMoGZVUchqCmzALWavDUZ7B4j3nguaedYwyg==
x-ms-exchange-transport-forked: True
Content-ID: <F0CD70862AA386409248051783270F80@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: e16c63b0-fac6-4ca3-1190-08d79543df72
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2020 20:38:23.7898 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: o68WjlHbX3E3dmYCLNCQRxuXLS3zAbLrof7Ayg7ioi2gJf/zzYbJAgn086cA15+rS4yWqUnNAxQd7sBBzZwYXw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2612
X-OriginatorOrg: cisco.com
X-Outbound-SMTP-Client: 173.37.102.19, xch-rcd-009.cisco.com
X-Outbound-Node: rcdn-core-2.cisco.com
X-Spam-Score: -7.6 (-------)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM white-list
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1ipeZg-00ErOq-3i
Subject: Re: [tboot-devel] Creating a TXT/tboot policy suitable for a modern
 system with TXT+TPM2
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
From: "Paul Moore \(pmoore2\) via tboot-devel"
 <tboot-devel@lists.sourceforge.net>
Reply-To: "Paul Moore \(pmoore2\)" <pmoore2@cisco.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tboot-devel-bounces@lists.sourceforge.net

On Mon, 2019-12-23 at 21:20 +0000, Paul Moore (pmoore2) via tboot-devel
wrote:
> It appears that lcptools-v2 doesn't understand the "pconf" type ...

I just added a new "pconf2" policy element type to lcptools-v2 so you
can generate a LCP_PCONF_ELEMENT2 without having to resort to the lcp-
gen2 tools.  As the Intel TXT developers guide isn't as detailed as I
would like, this is based mostly off the lcp-gen2 python code and may
have some bugs.  That said, it is working on my test system tracking
both PCR0 and PCR2.

If you want to play with it, you can find it in my working-txtsig
development branch:

* https://github.com/pcmoore/misc-tboot/tree/working-txtsig

-Paul

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
