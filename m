Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1083CF0BA9
	for <lists+tboot-devel@lfdr.de>; Wed,  6 Nov 2019 02:29:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:To:Sender:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=i93oCgK4qzpp6fkQ4rgzyIqF0LFIK8Z5CGVRIh0B3Is=; b=hiwRQFUDpZhs7ohQFCH939MBG
	qxWUgKbVdVfETGDwQtjP1t2YkHmjLk3HjHQN6lqjqWTNmQVuJbKlwqOI7Mv7bnx0PEQa8TgLadH2t
	oMAfYoczgpLcFDBiEvRZXyg8DvjkgW6C+y0byvmnLKGmDcFULs3Rk+/n+iLhj+balRUuQ=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1iSA82-0001zi-UL; Wed, 06 Nov 2019 01:28:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pmoore2@cisco.com>) id 1iSA81-0001zP-Ph
 for tboot-devel@lists.sourceforge.net; Wed, 06 Nov 2019 01:28:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
 :Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9YN3nX3+aYYzcgBdDnbUyLMJZ5IHG7NzNmo/MNYIZpw=; b=gOR4/a4OI3k8eGIIS0wJ6rYhdl
 Eb5SYjL0j0KYotKA2Hk7PC9+LvMvwsEds0RyuvIlQiSNLDOVFbupLTrDLA5nfgNgk/ZmS2MhYey8v
 znCapJoPtHhmzIny+DoUXWoVCh0oaFzWrUPOGyEw/0SZYQFgUJx91OJx3MezkTob5bFo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9YN3nX3+aYYzcgBdDnbUyLMJZ5IHG7NzNmo/MNYIZpw=; b=O8CKgNgfHVf12eb6M9OK0Bstby
 O6p143CfYAE3sYHtpHR5NdKCn9MgjuGgUUS+f1eIaJOZJqvdbz7a5ihdWpM3+RKg0TKPDSM1nfWMx
 3HqXgAO56fOI1RG1bxzqxeoMvf+ezbFthRc5ibYsWUz2yny7kDVlHWsK6YVYuEnv3jBU=;
Received: from alln-iport-2.cisco.com ([173.37.142.89])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps (TLSv1.2:DHE-RSA-SEED-SHA:128)
 (Exim 4.92.2) id 1iSA7u-001YCb-3W
 for tboot-devel@lists.sourceforge.net; Wed, 06 Nov 2019 01:28:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=cisco.com; i=@cisco.com; l=2480; q=dns/txt; s=iport;
 t=1573003730; x=1574213330;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=9YN3nX3+aYYzcgBdDnbUyLMJZ5IHG7NzNmo/MNYIZpw=;
 b=aF7nEhG8eeZPCE9sB74RhOyj59mw2wVBPCGYnXlkZ4eSFvDVUdqIlOzm
 CJQ+4rbD+6WHAb/jvCcYaDcypEVKxM8PAx3g0fa9S6ALI0JKcKBTYiIb+
 c4L/FP0u4jlLTYjIZJdXGqkHPDK6Icv0ohq19wtyaBqvTLAVEoqqNpae4 s=;
IronPort-PHdr: =?us-ascii?q?9a23=3AjC1HKxNg8DONgmEed9Ul6mtXPHoupqn0MwgJ65?=
 =?us-ascii?q?Eul7NJdOG58o//OFDEu60/l0fHCIPc7f8My/HbtaztQyQh2d6AqzhDFf4ETB?=
 =?us-ascii?q?oZkYMTlg0kDtSCDBjjKfntdSFgNM9DT1RiuXq8NBsdFQ=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0AZAACNIcJd/5FdJa1mGwEBAQEBAQE?=
 =?us-ascii?q?FAQEBEQEBAwMBAQGBagYBAQELAYFKUAVsWCAECyoKhB+DRgOEWoYigl6XfoE?=
 =?us-ascii?q?ugSQDVAkBAQEMAQEYCwoCAQGDe0UCF4N3JDQJDgIDCwEBBAEBAQIBBQRthTc?=
 =?us-ascii?q?BC4VRAQEBAQMBERERDAEBLAsBCwQCAQgRBAEBAQICJgICAiYKFQgIAgQOBSK?=
 =?us-ascii?q?DAYJGAy4BAgyldQKBOIhgdYEygn4BAQWBNAGBFII8GIIXAwaBDigBjBOCF4Q?=
 =?us-ascii?q?jPoJiAYFigxCCXoE/AY5AjnWPBQYEgiSHFYg5PIUyG5lpjkOILpEuAgQCBAU?=
 =?us-ascii?q?CDgEBBYFSOTeBIXBQgR6BGgEBATFQERSDBoNzhFmFenQBgSePUgGBDQEB?=
X-IronPort-AV: E=Sophos;i="5.68,272,1569283200"; d="scan'208";a="366548431"
Received: from rcdn-core-9.cisco.com ([173.37.93.145])
 by alln-iport-2.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA;
 06 Nov 2019 01:28:23 +0000
Received: from XCH-ALN-008.cisco.com (xch-aln-008.cisco.com [173.36.7.18])
 by rcdn-core-9.cisco.com (8.15.2/8.15.2) with ESMTPS id xA61SNXB028090
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=FAIL);
 Wed, 6 Nov 2019 01:28:23 GMT
Received: from xhs-rtp-002.cisco.com (64.101.210.229) by XCH-ALN-008.cisco.com
 (173.36.7.18) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Tue, 5 Nov 2019 19:28:22 -0600
Received: from xhs-rcd-002.cisco.com (173.37.227.247) by xhs-rtp-002.cisco.com
 (64.101.210.229) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Tue, 5 Nov 2019 20:28:21 -0500
Received: from NAM05-DM3-obe.outbound.protection.outlook.com (72.163.14.9) by
 xhs-rcd-002.cisco.com (173.37.227.247) with Microsoft SMTP Server
 (TLS) id
 15.0.1473.3 via Frontend Transport; Tue, 5 Nov 2019 19:28:21 -0600
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J/74WWEr7f11Vrka+t+faUA91O9I9AMDslRAPpPnNymYBX7ikhz231A/pmW74/2ixi3muGnFLyp2uK9uM0Sk0A74w1b895Y1t5iYgPmmzgI3yqWEZqw9PJWdmgo5xVahZbOToq/nHwFGATct5GS8Rfl6e5WocxxhiVBPn1rma6MKN2F5g8QI+wn5ZOMzESqgEaftyDvDOS7sKEnMXlmlbC2RsuKez+2jpEC7YHrPXn8JDF2D/mfbm6KDLZ6jF/ybXV3nfFahJIvtt0u4VBHlU8OaKT09EqPzNhnoJDS3fHHHag6iQ9iYeUyrEIy79q7IDkwOZNokdOJaMSOFfYDATw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9YN3nX3+aYYzcgBdDnbUyLMJZ5IHG7NzNmo/MNYIZpw=;
 b=AEE3r82vplFDQpXHIAiwimK6NnGVcxv9gP2BZTevBu+7oYEnLWb+5gnHFte8o/hJMoh0SOmAKzZxERLKE7fZ7X00GLHBprHe7HI+R0q9xCw8C/yiwtjhm2UFM2r6gd1Peg4vQMmcVU3Vjttfqorv9Lw8ndCmTONLm+vHbUzoM59O2b/urmTyic9ILBUZv1x1BZPPuXeHpFaZxcZs6prQ1FPyJq4TLHmsQKj8p5xhY65rNYeND4icbACmmuvqXfLCq0B0XRWwKa35Mo+t0U1YGpRO7eA+vDNF9VCz+tnOtvBzdlzQA6G/GYoLe0UilwfzbiTroW8vuhihGC1xPs+aBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cisco.com; dmarc=pass action=none header.from=cisco.com;
 dkim=pass header.d=cisco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cisco.onmicrosoft.com; 
 s=selector2-cisco-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9YN3nX3+aYYzcgBdDnbUyLMJZ5IHG7NzNmo/MNYIZpw=;
 b=qOkYMlnr6h7E7ihauN1FdiWxHJqyPtqVOkFhc4UArpKSU8b99xhntF8ZWhH9z9dZVL9lSlYcCWJIEAqpGhw7YJLHTR6giiUAgXqItKhcRH9JhnIrE5WxaSAPE/6QP+KzHjh+YWqc6ITNnbLXkzxOQD1Qme+kbtcRyacwHvrV0bQ=
Received: from DM6PR11MB2873.namprd11.prod.outlook.com (20.176.94.141) by
 DM6PR11MB3513.namprd11.prod.outlook.com (20.177.220.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Wed, 6 Nov 2019 01:28:20 +0000
Received: from DM6PR11MB2873.namprd11.prod.outlook.com
 ([fe80::a0ef:aa0f:fa28:c754]) by DM6PR11MB2873.namprd11.prod.outlook.com
 ([fe80::a0ef:aa0f:fa28:c754%2]) with mapi id 15.20.2408.024; Wed, 6 Nov 2019
 01:28:20 +0000
To: "Travis.Gilbert@dell.com" <Travis.Gilbert@dell.com>
Thread-Topic: Creating a TXT/tboot policy suitable for a modern system with
 TXT+TPM2
Thread-Index: AQHVlCtYW12WBIFGSk+TwpFcVCWnTad9MGGQgAAqOIA=
Date: Wed, 6 Nov 2019 01:28:20 +0000
Message-ID: <52ba4fc58ef941c81458ea95eeaed31b0aa669e1.camel@cisco.com>
References: <681a21560a8a9f41a4be8cdc399cf5008f7adecc.camel@cisco.com>
 <1926e09cfdf84af28414b36c2652f421@AUSX13MPC102.AMER.DELL.COM>
In-Reply-To: <1926e09cfdf84af28414b36c2652f421@AUSX13MPC102.AMER.DELL.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pmoore2@cisco.com; 
x-originating-ip: [128.107.241.171]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9c70b4c3-21bc-4230-1c4a-08d762589b98
x-ms-traffictypediagnostic: DM6PR11MB3513:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <DM6PR11MB3513847092490A08FDF46D0FF8790@DM6PR11MB3513.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 02135EB356
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(366004)(136003)(376002)(346002)(199004)(189003)(13464003)(81156014)(66066001)(66446008)(7736002)(66946007)(5640700003)(305945005)(2501003)(99286004)(66556008)(66476007)(4326008)(186003)(71190400001)(476003)(3846002)(2616005)(6116002)(11346002)(118296001)(6916009)(2906002)(5660300002)(6512007)(86362001)(486006)(256004)(2351001)(6486002)(6246003)(14454004)(25786009)(81166006)(8676002)(446003)(966005)(76176011)(6506007)(316002)(53546011)(102836004)(6306002)(229853002)(76116006)(91956017)(26005)(8936002)(36756003)(71200400001)(478600001)(64756008)(6436002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR11MB3513;
 H:DM6PR11MB2873.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: cisco.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LjPHNxg4v0nGLjyLRPVwRnoDSVafzbUdZ21KyEtHb8PSgI+9lNrjSUwvlnOcEHxlgkeHrxPeE7dQ4wLD16sK/ihvg/edS9RfS4mMcdnc9n7EzlUXqeF+QlPea89K4yaxIJXQjRaejeQaMq+VazQ+AUWsvoAmeYVbxyrsQj2TNBwSpJBM5vcrfarYiwVumiOBSmwOBMzYnKW+HYZG2klFdB8rdvnFOEy27HxgSOSJG4izwO66FXbX1p90rZe4notBJ3rl5pq+A7JdTs3i2URuyWWbd2yTjovn/RgLLspooo0+t2pARsR5cnX/bqpJvwIqsUy0ww5LZQZK43uGnQDfdG+oQ87eM0trLOJt4BYdzYj7D/uqMeS6Mss7nnSE6KjWhGv1xpdKSCNiUNykB0rP9kev+vBhO8qMFTmHFZ0pOj6rJuonsiF96maV6ydu2AcCbsFRK0kuOOnp1cac/SxJQjYW3m8MO+0eu1qcyNhDqro=
x-ms-exchange-transport-forked: True
Content-ID: <35AA58FCF0200341A04F70E4F60091DB@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c70b4c3-21bc-4230-1c4a-08d762589b98
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2019 01:28:20.2856 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PejCJks2XQ8o0m32HkdTnv3y3C7OeK2aguDQlfXUcKfxLVvpUzTgVEk/8MAOrpsVBvvWVdF0H8ABLm+skYdtVw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3513
X-OriginatorOrg: cisco.com
X-Outbound-SMTP-Client: 173.36.7.18, xch-aln-008.cisco.com
X-Outbound-Node: rcdn-core-9.cisco.com
X-Spam-Score: -7.6 (-------)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM white-list
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1iSA7u-001YCb-3W
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
Cc: "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tboot-devel-bounces@lists.sourceforge.net

On Tue, 2019-11-05 at 23:02 +0000, Travis.Gilbert@dell.com wrote:
> > -----Original Message-----
> > From: Paul Moore (pmoore2) via tboot-devel <tboot-
> > devel@lists.sourceforge.net>
> > Sent: Tuesday, November 5, 2019 16:50
> > To: lukasz.hawrylko@linux.intel.com; 
> > tboot-devel@lists.sourceforge.net
> > Subject: [tboot-devel] Creating a TXT/tboot policy suitable for a
> > modern
> > system with TXT+TPM2
> > 
> > 
> > 
> > Hi Lukasz, others,
> > 
> > I'm in the process of working on the TXT/sig extensions to the LCP
> > but I'm
> > running into problems using the tboot tools to create a working LCP
> > as a
> > baseline.  Simply put, the instructions I've been able to find
> > either in the
> > sources, the mailing list archives, or through Google searches do
> > not produce
> > a working LCP on my test system.  The tools/arguments are either
> > wrong, or
> > the resulting LCP is bogus.
> 
> I had to patch lcptools-v2 because I found the same problem. Nothing
> would produce a good LCP.
> 
> > Before I start hacking away at the tools to get them to create a
> > functional LCP
> > that tboot understands, does anyone have a working how-to for
> > creating a
> > LCP using the current sources?
> 
> When I patched lcptools-v2, I added a simple how-to for an MLE LCP,
> it's in the mailing list archives at the link below. If you need more,
> I have a few other examples.
> 
> https://sourceforge.net/p/tboot/mailman/message/35976955/

Thanks Travis, that got me going in the right direction; I needed to add
a tboot policy element to make my system happy, but that was a trivial
addition to your instructions above.

If you're willing to share your other examples, I'd love to see them,
and I'm sure others would as well.

Thanks again.


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
