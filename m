Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C9C8FB425
	for <lists+tboot-devel@lfdr.de>; Wed, 13 Nov 2019 16:51:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:To:Sender:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=g71CEP70x13N/vqlBTimbuFqHe+nKaptm9+akIr1UIM=; b=I2HAcCr5sXMRZOpFadzVyMdTW
	3o7qNf3xCUQ1jiRQARJ3gSrDK00udhabmur0srm07jOFbiLztZQ30stVjJex220dnb7XiVFYOBpIy
	wvMng+KppssD81MChYQY6mYEIS1Y75sbKdBldSP/a7uIMrBag/PCNqJclf5mRsOsO5StE=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1iUuvR-0008TB-4M; Wed, 13 Nov 2019 15:51:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pmoore2@cisco.com>) id 1iUuvN-0008Sx-0X
 for tboot-devel@lists.sourceforge.net; Wed, 13 Nov 2019 15:51:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
 :Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Y+Y3mM+fuakpVAvUG8CBXlSQ2cLRIOPmQzcVhuT2h0s=; b=WFi9aIQvsE1hDL8gTbSdnDRhKt
 bnc0rCazILjqtNzn6vIlFh3Egc++hH5ZBVuXPl6Cdy/BqeN5ZBLztlbIoZK81Ofeb1RLUz7V3wh24
 u9amq+dQUuq4W1hrhZ12zksBwTC2MmFa7/b0KPYznYXpRRaR232eILRP+LMwm+S/GiSM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Y+Y3mM+fuakpVAvUG8CBXlSQ2cLRIOPmQzcVhuT2h0s=; b=IyYaJzxO7EaiValuMStCBv9vSn
 AEU/QWsg7TDI5WgkHdUZ4Z+1oXpTc/qo29b1mGXQn5POuUfWZt+jcB5t2NLF6ghIjRXKUqngxFmak
 ZAAdagZBOosmxRTN6cmgceUOBUuH0xpGBFbTvMx4pbtTwlhsiO0z36nk8L7FPrFr3IUQ=;
Received: from alln-iport-7.cisco.com ([173.37.142.94])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps (TLSv1.2:DHE-RSA-SEED-SHA:128)
 (Exim 4.92.2) id 1iUuvE-00FHqL-BK
 for tboot-devel@lists.sourceforge.net; Wed, 13 Nov 2019 15:51:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=cisco.com; i=@cisco.com; l=8190; q=dns/txt; s=iport;
 t=1573660268; x=1574869868;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Y+Y3mM+fuakpVAvUG8CBXlSQ2cLRIOPmQzcVhuT2h0s=;
 b=g1KTTyYISAu9BarhwGdP1tg0UKxkGiY8TOk8Zd12YuJ9vjvpucjCoz+X
 5Cv8oCy16dmM87Rgy4CEH1+pJqpbZRXBaoMKOqmT/Hb9uFPJ7k06UXD43
 eLxOUwm0NypM9rrpMYkiRLqfL5rG4xUUJH6jh+VT9t2qtmp2+xfrI1ge2 c=;
IronPort-PHdr: =?us-ascii?q?9a23=3AMD47gRban64aRsEGMiv7aJT/LSx94ef9IxIV55?=
 =?us-ascii?q?w7irlHbqWk+dH4MVfC4el20gebRp3VvvRDjeee87vtX2AN+96giDgDa9QNMn?=
 =?us-ascii?q?1NksAKh0olCc+BB1f8Kavyais9BskYfFRk5Hq8d0NSHZW2ag=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0AGAADCJcxd/49dJa1kGQEBAQEBAQE?=
 =?us-ascii?q?BAQEBAQEBAQEBEQEBAQEBAQEBAQEBgWoEAQEBAQELAYFKUAVsWCAECyoKhB+?=
 =?us-ascii?q?DRgOEWoYbgl6YAIEugSQDVAkBAQEMAQEYAxICAQGEQAIXggkkNAkOAgMLAQE?=
 =?us-ascii?q?EAQEBAgEFBG2FNwyFUQEBAQEDAREREQwBATcBCwQCAQgRBAEBAQICJgICAiY?=
 =?us-ascii?q?KFQgIAgQBDQUigwGCRgMuAQKlJgKBOIhgdYEygn4BAQWFGhiCFwmBDigBjAQ?=
 =?us-ascii?q?PgheBEYMSPoQfGYMdgl6BPwGLYjKCOZ4MBgSCKIcXhSWDVoU1G4I9h2OPXo5?=
 =?us-ascii?q?HmXwCBAIEBQIOAQEFgVI5gVhwUIEegU4JRxEUkRoMFxWDO4RZhXp0AYEnjXw?=
 =?us-ascii?q?BJIELAYEOAQE?=
X-IronPort-AV: E=Sophos;i="5.68,300,1569283200"; d="scan'208";a="362727675"
Received: from rcdn-core-7.cisco.com ([173.37.93.143])
 by alln-iport-7.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA;
 13 Nov 2019 15:50:59 +0000
Received: from XCH-ALN-015.cisco.com (xch-aln-015.cisco.com [173.36.7.25])
 by rcdn-core-7.cisco.com (8.15.2/8.15.2) with ESMTPS id xADFowUH002509
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=FAIL);
 Wed, 13 Nov 2019 15:50:58 GMT
Received: from xhs-rcd-001.cisco.com (173.37.227.246) by XCH-ALN-015.cisco.com
 (173.36.7.25) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Wed, 13 Nov 2019 09:50:58 -0600
Received: from xhs-rtp-001.cisco.com (64.101.210.228) by xhs-rcd-001.cisco.com
 (173.37.227.246) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Wed, 13 Nov 2019 09:50:57 -0600
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (64.101.32.56) by
 xhs-rtp-001.cisco.com (64.101.210.228) with Microsoft SMTP Server
 (TLS) id
 15.0.1473.3 via Frontend Transport; Wed, 13 Nov 2019 10:50:57 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Dbi+fdp0HQxtLhX+nLx9u/4S09RdyQppFua7G8M1WgNCYzuMxDac6RbFQ0DQlb0/Uh2WaXsPgkm7gs3EWSee8G0V+JYCa6UvOOwSx5ouzEa9EcUuDyj66fQ3wTXpRAELc2KxUc+0U8ZetgdGjfOkkLDjcQr+UcLRL/1Bu+LplPuzeTXHeEJxdv+0ZYud7tzOyL3bvUKoWNQYGcSWkx3//SK0DckOlqlsWKUvf/Lbfp4Qvh2G0D08OmlaqkV4cHowN1onUTe6zIAOxwNxxtmxTuniErxY3lnmmIiUTEch+YpBA8ITbhkKQcpQKCIhpAGHI80ldDzhK2KIjkmX8QLmQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y+Y3mM+fuakpVAvUG8CBXlSQ2cLRIOPmQzcVhuT2h0s=;
 b=mkMnWLxXPaJcMN6PJfVpFIH9QT4TRoMInofLrdinbZlNenwIAWXjEuQ3o22PpYa2Vat9xn52fe8EAylTP08fnNOqX0plt/aIhFA967xqZMGmfVdxgMRlGEvtzqOdxL6wFbC0OBiTz/JGv0oAdbL+18gsJGkJuBuouj/H0dyzVpkF61Qdjv3KqhX+14/WLqlyWxH26ZwbHFRkm7zuWZQtfPw1w0wgOvhdRi1TQX4CgbMH5BY/+js3B8+4oPkGMyXcQmGtqebEF10H9ki3+hZsG72+uXfTWXyAnMXP8IzLpcAjU26kVCb6YqyGJJ/WsFDHMnNpnXDzKNL22QHCgbdBew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cisco.com; dmarc=pass action=none header.from=cisco.com;
 dkim=pass header.d=cisco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cisco.onmicrosoft.com; 
 s=selector2-cisco-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y+Y3mM+fuakpVAvUG8CBXlSQ2cLRIOPmQzcVhuT2h0s=;
 b=ukMejxyVjhwap2h2FmmkQRPDh0ewuZ8CPr1GWKAL4aRtBCI059R7xz3UippaMoHV2zstExG9cJJZU9nJGJ8sAfiagbcLZDzpZ2Yj1gstoNT/CutVLGpA8beh89BOt1SLo8QA/CaY7T5W93b9qC/ohpbhJ8W+M4qgW8qs6BYp3vI=
Received: from BN7PR11MB2866.namprd11.prod.outlook.com (52.135.246.157) by
 BN7PR11MB2547.namprd11.prod.outlook.com (52.135.255.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.22; Wed, 13 Nov 2019 15:50:54 +0000
Received: from BN7PR11MB2866.namprd11.prod.outlook.com
 ([fe80::fc28:bc87:48f1:e4cb]) by BN7PR11MB2866.namprd11.prod.outlook.com
 ([fe80::fc28:bc87:48f1:e4cb%3]) with mapi id 15.20.2430.028; Wed, 13 Nov 2019
 15:50:53 +0000
To: "lukasz.hawrylko@linux.intel.com" <lukasz.hawrylko@linux.intel.com>,
 "Travis.Gilbert@dell.com" <Travis.Gilbert@dell.com>
Thread-Topic: [tboot-devel] Creating a TXT/tboot policy suitable for a modern
 system with TXT+TPM2
Thread-Index: AQHVlCtYW12WBIFGSk+TwpFcVCWnTad9MGGQgAAqOICAATPX0IABqGkAgAD1UgCAAFyugIAAFRaAgAeVtICAABhFgA==
Date: Wed, 13 Nov 2019 15:50:53 +0000
Message-ID: <95c9252416abb41d2a654fdffb9208371ecb91c4.camel@cisco.com>
References: <681a21560a8a9f41a4be8cdc399cf5008f7adecc.camel@cisco.com>
 <1926e09cfdf84af28414b36c2652f421@AUSX13MPC102.AMER.DELL.COM>
 <52ba4fc58ef941c81458ea95eeaed31b0aa669e1.camel@cisco.com>
 <b4e1bf1374114acdaa3b99d91b43bd64@AUSX13MPC102.AMER.DELL.COM>
 <a250508c1d6ba4cf2b080b6f69803698539f7b0c.camel@cisco.com>
 <2a4c6551b68be437cd02c7987ef75a6d315f0368.camel@linux.intel.com>
 <beabd66d2dffc0d8d08d411588501412cca2fdfe.camel@cisco.com>
 <473a0d4460a64bfe8a96c1942ae21de4@AUSX13MPC102.AMER.DELL.COM>
 <f3f94fc1ba73ff604260a6bfb8e4a8ee8b1e9e00.camel@linux.intel.com>
In-Reply-To: <f3f94fc1ba73ff604260a6bfb8e4a8ee8b1e9e00.camel@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pmoore2@cisco.com; 
x-originating-ip: [173.38.117.90]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1d43c763-cf6b-40e3-08ee-08d768514403
x-ms-traffictypediagnostic: BN7PR11MB2547:
x-microsoft-antispam-prvs: <BN7PR11MB2547768631FAA27441BB239AF8760@BN7PR11MB2547.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0220D4B98D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(376002)(39860400002)(346002)(366004)(396003)(13464003)(199004)(189003)(6116002)(5660300002)(2906002)(2616005)(11346002)(446003)(486006)(2501003)(6506007)(53546011)(14444005)(102836004)(26005)(256004)(110136005)(76176011)(3846002)(25786009)(71190400001)(476003)(71200400001)(229853002)(305945005)(8936002)(316002)(7736002)(81166006)(81156014)(6512007)(76116006)(8676002)(14454004)(86362001)(6486002)(66556008)(99286004)(66946007)(66446008)(64756008)(4001150100001)(36756003)(118296001)(66476007)(66066001)(6436002)(4326008)(478600001)(6246003)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN7PR11MB2547;
 H:BN7PR11MB2866.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: cisco.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AAVSuSX0vJ15/mwzVeaHjZPrrD1IkLXnBxTqwfue0IoGe7qzQSyCkAKgXPBh7HfOQ15VFYJl4NZkmrMIIEJBulCpXC9kyaFb08jc5CaKH4i219fuyBeGOOkSHoZcmtFddg6Bz/A64ALZ6uNSmmq3rDFqzd8R4a5mSTQFqJeea1dPLBoLwYOQ4uQbDpZHzs/AQBGSOMv7qFKx8wq3ejz0aTvgMZe17XGVyyiExEL9tYttK84ObPfJ/nILj+FNteglcc8wnC57K0t1KR1NUZIq8y0AmKb2/rSHXTm2NAcoSZ5M4djxV4g5eaphRe3ofJYkPNf4Tu5Tfm0g+ySvcuz6Rhj5Uhwex/lyG8WqrSzYoktZXRiL64TgZSSSIYBFejmglmtpsAvpOtGD/qUTvOmjxLqYNTwH7aFal7OYTbsKkwvLtx7X5CwEuvs/dRlXpYgd
x-ms-exchange-transport-forked: True
Content-ID: <ECD85FE73A8AEE4C8BE97C3E92C654EA@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d43c763-cf6b-40e3-08ee-08d768514403
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2019 15:50:53.4416 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MlObrwKyPnQOfF4tgDXdvtV1bRKAfsDcUI+TVzmh0iHcKXLp1Q/ua+dj8U+Ojm1Vd9E1S4DvEFPGmMR0D5H+tQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2547
X-OriginatorOrg: cisco.com
X-Outbound-SMTP-Client: 173.36.7.25, xch-aln-015.cisco.com
X-Outbound-Node: rcdn-core-7.cisco.com
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
X-Headers-End: 1iUuvE-00FHqL-BK
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

I'm glad to hear that Python 3.x support is in the works, but I remain
concerned about the CLI support.  While JSON/XML is better than nothing,
it still adds a bit of pain for those of us wishing to script the tools;
while a parameter based approach might not be pretty, it is much easier
to script.

I'm a bit farther down the patch of sorting out the policy patches for
the TXT/sig work, and as it currently stands it looks like the changes
for lcptools-v2 is going to be very minor.  Essentially it looks like
the only changes I will need to make is to add a predefined custom ELT
UUID for a certificate payload, and even then that is optional (one can
specify the UUID on the command line if necessary).  The other changes
to the tboot policy would live outside lcptools-v2 in tb_polgen.  Would
you be open to merging *small* patches to lcptools-v2?

I *really* don't want to have to deal with a GUI and/or JSON/XML if I
don't have to do so.

On Wed, 2019-11-13 at 15:23 +0100, Lukasz Hawrylko wrote:
> Thank you for feedback, I understand your point. I was talking with
> tools maintainer and he started working on migration to Python 3.x and
> better CLI support (together with documentation how to use it). Our
> idea
> is not to add enormous list parameters to generate LCP with desired
> options, but to add JSON/XML file that will describe LCP in human-
> readable format. After preparing that file (you can do that in VIM)
> you
> will feed it into tool and than get LCP. I would like to hear your
> opinion about that idea.
> 
> The only reason why I don't want to maintain lcptools-v2 is to not
> have
> two tools that do the same thing. I hope that with your input we can
> improve lcp-gen2 so it can replace lcptools-v2 in every case. In my
> opinion adding CLI to GUI application is easier than adding GUI to CLI
> application, that's why I decided to go with lcp-gen2.
> 
> We are working on lcp-gen2 in our local repository, I will ask
> maintainer when he will be ready with Python 3.x migration if that
> will
> be less than month I will wait for that to release new version.
> 
> Lukasz
> 
> On Fri, 2019-11-08 at 18:34 +0000, Travis.Gilbert@dell.com wrote:
> > > -----Original Message-----
> > > From: Paul Moore (pmoore2) <
> > > pmoore2@cisco.com
> > > Sent: Friday, November 8, 2019 11:19
> > > To: 
> > > lukasz.hawrylko@linux.intel.com
> > > ; Gilbert, Travis
> > > Cc: 
> > > tboot-devel@lists.sourceforge.net
> > > 
> > > Subject: Re: [tboot-devel] Creating a TXT/tboot policy suitable
> > > for a modern
> > > system with TXT+TPM2
> > > 
> > > On Fri, 2019-11-08 at 12:47 +0100, Lukasz Hawrylko wrote:
> > > > For TPM2.0 LCP generation there is a Python tool lcp-gen2 that
> > > > is
> > > > included in tboot's source code. To be honest I didn't try to
> > > > generate
> > > > LCP with tboot's VLP inside but it should work. If not - this is
> > > > a bug
> > > > and need to be fixed.
> > > > 
> > > > lcptools-v2 will is not maintained, any new features like new
> > > > signing
> > > > algorithms will not be included there, so I suggest not to use
> > > > it for
> > > > new designs. We are actively improving lcp-gen2, if there is
> > > > something
> > > > that is missing in your opinion please let me know.
> > > 
> > > A few problems come to mind with lcp-gen2 all of which are
> > > blockers:
> > > 
> > > * I see references to upgrading to newer versions of Python 2.x,
> > > but nothing
> > > about upgrading to Python 3.x; with Python 2.x going EOL in a few
> > > months
> > > this needs to happen very soon.
> > > 
> > > * No documentation.  This is a general problem with the tboot
> > > code/tools: there is very little documentation, and what does seem
> > > to be
> > > present is mostly wrong or incomplete.
> > > 
> > > * The lcp-gen2 tool appears to be intended mostly as a GUI tool,
> > > and I need a
> > > CLI tool.  It looks like there might be some sort of "batch build"
> > > available from
> > > the command line, but I don't see any further explanation or
> > > documentation
> > > on this ability.
> > > 
> > > You mention that lcp-gen2 is being actively improved, is this
> > > happening
> > > offline?  The last commit I see is to the sf.net repo for lcp-gen2 
> > > is over six
> > > months old.
> > > 
> > > If these issues can't be resolved within the next month or two, is
> > > there any
> > > reason why we couldn't continue to make changes to the lcptools-v2 
> > > tools?
> > > 
> > > -Paul
> > > 
> > 
> > I'm with Paul. I strongly disagree with discontinuing support for
> > lcptools-v2.
> > 
> > lcp-gen2 requires that you have a Window Manager installed. It
> > requires clicking around in a GUI. Both of these limit its use. The
> > most important thing it limits is the ability to script LCP creation
> > like I have done. When I give someone else an LCP to use, instead of
> > a 10 page document with pictures that walks them through clicking
> > everything in lcp-gen2, with lcptools-v2, I can just say "Run this
> > script." If that script doesn't error out, then I *know* that the
> > LCP was correctly created. In the lcp-gen2 case, I have to have the
> > user send me the LCP and other intermediate files and compare them
> > with what I expect in order to figure out whether something went
> > wrong or not. Troubleshooting for a script is simpler. If for some
> > reason they can't copy & paste the console output with the error
> > (very easy), I can have the user run the script again while
> > redirecting the output to a file, and then send me the file.
> > 
> > I also have philosophical issues with GUI-only, mostly that it
> > violates the UNIX philosophy of "Write programs to handle text
> > streams, because that is a universal interface." My evidence for why
> > this should be considered consists of my previous paragraph and
> > Paul's concerns.
> > 

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
