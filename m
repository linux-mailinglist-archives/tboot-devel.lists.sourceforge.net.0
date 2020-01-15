Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E73C13CD81
	for <lists+tboot-devel@lfdr.de>; Wed, 15 Jan 2020 20:54:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:To:Sender:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0NH+3up7egF/n+Hv3L44HYbolC7BZSodoBGEJmK3fAA=; b=HcXt6c52qozleXA9I2NW5G2c8
	NOQeMthYLmEGmAideTsXF+SFiu5abjpb0dHclgy2EUGb36+FA7Np5iD4rTbXs+Ic87BrR7I/r5yWk
	iXap/AdmWURUHn/AiPkBldGeehpwMyAOSXRzGdpAaXlW6E37vjohueQqR1gKoLq+DvFJE=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1iroka-0005fC-9L; Wed, 15 Jan 2020 19:54:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pmoore2@cisco.com>) id 1irokZ-0005f2-AK
 for tboot-devel@lists.sourceforge.net; Wed, 15 Jan 2020 19:54:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
 :Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YZiyzfkLZt8Y0HyW0UUybNPhCIn2/Qh7jEmtsfFzFNg=; b=Ua1wI3XhRDvg+uIXT6MdEZNn0/
 PDknzJehil1fcaaEeXSbo6bnap4v5q6FVjRcLJAdlfUyb4Fdai1kN9yNws1EjEYYv6XlEhrEb7WL1
 K9YwUXJlSdf9qMWWZGIubpptRGFPX146CTB4I0l3XzpdSrlN0M5KnhKI2w2Of68Dwb7k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YZiyzfkLZt8Y0HyW0UUybNPhCIn2/Qh7jEmtsfFzFNg=; b=YiXEr2DBg0AaWFdsLqO0gI0Iux
 OCN86Ss1HxWGA01TTI5P/cNT1JhWY1viHovGHfDFcGq0CvNrpiuDxtvxgtE8NPK6tGkZftNZ6JB6I
 nqS8VmH9XcgGNRiOIZN1A1PcA7+n3+4NoLr7CVtKidoYCmrmwoirq5xUupneLyhS+63c=;
Received: from rcdn-iport-3.cisco.com ([173.37.86.74])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps (TLSv1.2:DHE-RSA-SEED-SHA:128)
 (Exim 4.92.2) id 1irokU-005LKJ-5f
 for tboot-devel@lists.sourceforge.net; Wed, 15 Jan 2020 19:54:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=cisco.com; i=@cisco.com; l=5382; q=dns/txt; s=iport;
 t=1579118081; x=1580327681;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=YZiyzfkLZt8Y0HyW0UUybNPhCIn2/Qh7jEmtsfFzFNg=;
 b=ElqSCinC6JGa/b7o+qOAUbaDKD57xBXnKZA4MtzIG1krJ842PPPqVYbk
 pktC8IyzNl20ofrnwGYaVKRkELo2d3LOHTcdaIWqyc1Yqn1IrKtwLq8cd
 MmFa6wvxSdDoWPgVK805AmTIzB8NXdWsb8cQxoqWSaGbEqRVwqaTHECEc k=;
IronPort-PHdr: =?us-ascii?q?9a23=3AAhZHah+VtGB8YP9uRHGN82YQeigqvan1NQcJ65?=
 =?us-ascii?q?0hzqhDabmn44+8ZB7E/fs4iljPUM2b8P9Ch+fM+4HYEW0bqdfk0jgZdYBUER?=
 =?us-ascii?q?oMiMEYhQslVdaADkrhIaTCZC0hF8MEX1hgrDm2?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0BnCAD+bB9e/49dJa1PFh0BAQEJARE?=
 =?us-ascii?q?FBQGBe4FUKScFgUQgBAsqCoQFg0YDiniCX5gOgUKBEANUCQEBAQwBAS0CAQG?=
 =?us-ascii?q?EQAIXgWgkOBMCAw0BAQQBAQECAQUEbYU3AQuFXgEBAQECARIREQwBATcBDwI?=
 =?us-ascii?q?BCBgCAg8XAgICMBUQAgQOBRoIhU8DDiABAp1eAoE4iGF1gTKCfwEBBYUZGII?=
 =?us-ascii?q?NCYEOKIUchnyCGoNvNT6EBiyDJ4JegUMBjwyeeAYEgjiWMBuabo5cmwACBAI?=
 =?us-ascii?q?EBQIOAQEFgWkigVhwgW6BTlAYDYgBCwEXgQQBB4JEilN0AoEniyUBgQ8BAQ?=
X-IronPort-AV: E=Sophos;i="5.70,323,1574121600"; d="scan'208";a="688736121"
Received: from rcdn-core-7.cisco.com ([173.37.93.143])
 by rcdn-iport-3.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA;
 15 Jan 2020 19:54:32 +0000
Received: from XCH-RCD-004.cisco.com (xch-rcd-004.cisco.com [173.37.102.14])
 by rcdn-core-7.cisco.com (8.15.2/8.15.2) with ESMTPS id 00FJsWRj007937
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=FAIL);
 Wed, 15 Jan 2020 19:54:32 GMT
Received: from xhs-rcd-001.cisco.com (173.37.227.246) by XCH-RCD-004.cisco.com
 (173.37.102.14) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Wed, 15 Jan 2020 13:54:32 -0600
Received: from xhs-aln-001.cisco.com (173.37.135.118) by xhs-rcd-001.cisco.com
 (173.37.227.246) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Wed, 15 Jan 2020 13:54:31 -0600
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (173.37.151.57)
 by xhs-aln-001.cisco.com (173.37.135.118) with Microsoft SMTP Server (TLS) id
 15.0.1473.3 via Frontend Transport; Wed, 15 Jan 2020 13:54:30 -0600
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J/dLSyDM8MZSI5CbapHAwSQuJPaTfXpCjPNxXZQ4Ppkt6eMPwGV4/sL2NRe1C4nk6E7qOwkOKArxoeeHjZHizoM8lUt0FeB1UFL5y/NpuohKO5KjPKyeyLk8PduTyq+Rz6MnWhdA9ph97hz9/cixXMu7slUlQKKTASQonQTirkIgcZ6U6Vs8se09tuqXvb7CQlLtxnuJeR+i7QroA8RV/CjV43YVYMlhOiRXTVubPSCniEqJyOP3q4UrJb7QjBK6fXRkFyuyHolMjK1rwe5lkECW+causpbP2z4sp8zPs1z+eNPdozKyFgMi1WNXza2+Tg/wrI2an9uopuaHKVux1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YZiyzfkLZt8Y0HyW0UUybNPhCIn2/Qh7jEmtsfFzFNg=;
 b=fEI8KVDmV00hwlI7Gp65UgA9S65PK6ZT/+8pKUVUOr51jE5VDn+A7NLBxpXug/ffwavpRATnhprjPu+/sNwKCvcKCc4Y5lFgKLKYdny5ktvCKrPnxK8b28mMzf8pGWmucjepBblt72TI37dnW7PWyf+vvLe1ygjl/aOa39jlD4Z10j1Tutp95PpSlR9xGEuTt6gDKmuUA1FSDI579nTdhbnKA5HB2KIqg8ek3e8ObTOOpPaRDh6XqllO/iv1yp1LA/e7H+9VwcngDyvhVDYEll1gAtkmD4ZirmC0aPbRJ6mmj81o6MuqXV3xfmDwbquZE+6Nm4X9p5KADAEyXEmthA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cisco.com; dmarc=pass action=none header.from=cisco.com;
 dkim=pass header.d=cisco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cisco.onmicrosoft.com; 
 s=selector2-cisco-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YZiyzfkLZt8Y0HyW0UUybNPhCIn2/Qh7jEmtsfFzFNg=;
 b=QA0fU/YK5TYXHMgLcWLZ0yDME1VyuG6p0jptz0tJnJofchhhdfEPs3IpdthT228huop7JDnIwW9hAgxhFYPn0psqic+EV81Bm5mEKq8nSMp2wWBO5mlcxoyPl/m2p3YHxP8hyNCyNYLmsTU/QHFKCnW8/6No6f9u4jEnYQyz6Ow=
Received: from BN7PR11MB2866.namprd11.prod.outlook.com (52.135.246.157) by
 BN7PR11MB2596.namprd11.prod.outlook.com (52.135.245.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.20; Wed, 15 Jan 2020 19:54:29 +0000
Received: from BN7PR11MB2866.namprd11.prod.outlook.com
 ([fe80::f57d:c6e:3ec:c65a]) by BN7PR11MB2866.namprd11.prod.outlook.com
 ([fe80::f57d:c6e:3ec:c65a%7]) with mapi id 15.20.2644.015; Wed, 15 Jan 2020
 19:54:29 +0000
To: "lukasz.hawrylko@linux.intel.com" <lukasz.hawrylko@linux.intel.com>
Thread-Topic: [tboot-devel] VLP policy and TPM2 hash agility
Thread-Index: AQHVwbvDFL0LDZYScESwnSphPlBBU6fZX0EAgAAFX4CACRLBgIAGpqqAgAA+ywCAAP7FgIAAFWyAgAFqwICAAFvzgA==
Date: Wed, 15 Jan 2020 19:54:29 +0000
Message-ID: <bd36cd3313c6a4a4737e76b285eea63d4fa45b7f.camel@cisco.com>
References: <95c91cf5919cf3ebb3058e90bd6af64939dedee1.camel@cisco.com>
 <2c111f3585e0c048ae090e99be2eef9240bf3445.camel@cisco.com>
 <e72bc640db22e2460c41e9718f550a2a443e4a55.camel@cisco.com>
 <0101df1759aa0bfdf2b30c1696af474902c232a9.camel@intel.com>
 <274b39c26ab00d63acecb2f68d0fca516943f8f9.camel@cisco.com>
 <f2a750a91b3739951ea170c76e96f136c9d2fe2a.camel@cisco.com>
 <6149fe3475395aac9743b82acd6ad2a31a8a924c.camel@linux.intel.com>
 <CAHC9VhSj+yWXiSTJDpx+CQENn_xsv7wTu2dkm_bcu46m2CXgAA@mail.gmail.com>
 <50cbd716f02d7cdb7e3911b327328c4f94f83962.camel@linux.intel.com>
In-Reply-To: <50cbd716f02d7cdb7e3911b327328c4f94f83962.camel@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pmoore2@cisco.com; 
x-originating-ip: [128.107.241.172]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6eaf403c-90db-4c39-67d2-08d799f4bbe2
x-ms-traffictypediagnostic: BN7PR11MB2596:
x-microsoft-antispam-prvs: <BN7PR11MB2596675598644B0DFBF19AE6F8370@BN7PR11MB2596.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 02830F0362
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(366004)(376002)(396003)(39860400002)(136003)(199004)(189003)(26005)(186003)(76116006)(5660300002)(91956017)(6486002)(66476007)(6512007)(66556008)(64756008)(2906002)(66946007)(66446008)(71200400001)(36756003)(316002)(2616005)(53546011)(86362001)(6506007)(8676002)(8936002)(81156014)(81166006)(4326008)(478600001)(6916009);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN7PR11MB2596;
 H:BN7PR11MB2866.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: cisco.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: T83N9cxE0iaM3XjDvDKig7DpHmL3ifSQgmjszy5ewob3KxKK/d11Mw1Nl4zSVvrpoLXQJuqhOc7/HkmtnXsiC0muqngvIarnkYxny8Y3CB5P8elD9foHyqp0BsusekkgCLr5Pzz1rqFOOIsEk3oHp+6F5MBv0xosS9W5dkSFp6BLGpLnm+alNg33AMJKVL0ivlzkX/JQ2nSrARfGh79BhdgwNsqSwu/GaTowPbW48IjlbZuwofvrPlhyOoJ47kd6e/rADfalfFDZ8LsdPRe0oNErrQkPYVmF1Tb5p0Gib4zSNJWNSv19ebzl+fcTCmIa+/7xQzAg8IQZvvt+vXTo96gc8mYlxyzqtX5agxJ6r88YXWnJL7UaI+3NEdtWjhI9iHfj5XSsdjynTXyTCXI/KfKLYwaOR+VkHf4N4teW9taUDbBne4Qr9HlqFMuV5uYv
x-ms-exchange-transport-forked: True
Content-ID: <5D129329C29D96418D8FB36FA8B93BE3@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 6eaf403c-90db-4c39-67d2-08d799f4bbe2
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2020 19:54:29.8082 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: P3Va9rbGaUwnPTtdepWSoNwoMUdwdXWD3UN1VIF5HMeXHgdMSNn2qN3eUVvQ5lJai8eZed3xkyRu5seAIVSMqw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2596
X-OriginatorOrg: cisco.com
X-Outbound-SMTP-Client: 173.37.102.14, xch-rcd-004.cisco.com
X-Outbound-Node: rcdn-core-7.cisco.com
X-Spam-Score: -7.1 (-------)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [173.37.86.74 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM white-list
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1irokU-005LKJ-5f
Subject: Re: [tboot-devel] VLP policy and TPM2 hash agility
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

On Wed, 2020-01-15 at 15:25 +0100, Lukasz Hawrylko wrote:
> On Tue, 2020-01-14 at 11:47 -0500, Paul Moore wrote:
> > On Tue, Jan 14, 2020 at 10:31 AM Lukasz Hawrylko
> > <
> > lukasz.hawrylko@linux.intel.com
> > > wrote:
> > > On Tue, 2020-01-14 at 00:18 +0000, Paul Moore (pmoore2) wrote:
> > > > On Mon, 2020-01-13 at 20:33 +0000, Paul Moore (pmoore2) via
> > > > tboot-devel wrote:
> > > > > On Thu, 2020-01-09 at 14:59 +0000, Hawrylko, Lukasz wrote:
> > > > > > On Fri, 2020-01-03 at 20:26 +0000, Paul Moore (pmoore2) via
> > > > > > tboot-devel
> > > > > > wrote:
> > > > > > > Lukasz, is there a way to generate PCR hashes for all
> > > > > > > supported
> > > > > > > algorithms like tboot does for PCR17/18?
> > > > > > > 
> > > > > > > -Paul
> > > > > > > 
> > > > > > 
> > > > > > Hello Paul
> > > > > > 
> > > > > > I looks like you can't create policy with different hash
> > > > > > algorithms,
> > > > > > look at tb_policy_t structure in tb_policy.h There is one
> > > > > > field for
> > > > > > setting hash algorithm that is common to all policy entries.
> > > > > 
> > > > > Have you been able to create a VLP which causes tboot to
> > > > > extend the
> > > > > TPM's sha256 PCR bank?
> > > > > 
> > > > 
> > > > After digging through the code some more, it looks like the key
> > > > to
> > > > making this work is to specify the correct "extpol=" parameter
> > > > on the
> > > > tboot command line. It appears to be TPM and ACM dependent (?)
> > > > so I'm
> > > > not sure this will work for everyone, but on my system
> > > > "extpol=embedded" caused tboot to extend all of the TPM PCR
> > > > banks;
> > > > "extpol=agile" on my system caused the ACM to reset the system.
> > > > 
> > > > -Paul
> > > > 
> > > 
> > > As far as I remember I was able to extend SHA256 PCRs, because
> > > this is
> > > the only way to test my changes in tb_polgen. I am not sure, but I
> > > think
> > > that you have to pass "extpol=sha256" in command line and than you
> > > can
> > > work with SHA256 policies. Did you try to do that? I will try
> > > tomorrow
> > > how agile and embedded options work on my platform.
> > 
> > Yes, "extpol=sha256" did work to extend the sha256 PCR bank, but it
> > didn't extend the sha1 bank; ideally I would be able to do both and
> > that is what "extpol=embedded" did for my system.
> > 
> > I have a suspicion that instead of defaulting to sha1, we may be
> > able
> > to query the ACM to get the TPM2 extpol setting, but I haven't done
> > any serious investigation of that yet.
> > 
> > 
> 
> On my platform both "agile" and "embedded" options extends sha1 and
> sha256 banks. When using "agile" whole process is much longer because
> hash computation is done on TPM. In "embedded" hashes are computed
> locally and result is sent to TPM to extend PCRs. The easiest way to
> find out how that mechanism work is to look at hash_module() function
> in
> policy.c file.
> 
> Interesting thing is that on your platform you can't use "agile"
> method.
> If reset is invoked by SINIT ACM there should be error code value in
> TXT.ERRORCODE register, can you check what is there? TBOOT prints its
> value during each boot, so just allow platform to boot once again
> after
> that reset and you will find TXT.ERRORCODE somewhere in logs.

My TXT.ERRORCODE was set to 0xc0002081 when trying to boot with
extpol=agile.  I don't have the Type2 error code decoder spreadsheet/csv
to decode the error (the TXT specification document doesn't seem to
include the Type2 error codes anymore).

In related news, I added a patch to my working-txtsig GH development
branch which adds the "extpol=acm" option that cause tboot to query the
ACM and and set the extpol based on the ACM header information; it gives
the embedded policy priority when the ACM supports both embedded and
agile policies.

-Paul


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
