Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 575D0FE5CB
	for <lists+tboot-devel@lfdr.de>; Fri, 15 Nov 2019 20:41:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:To:Sender:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bETSfK5CPvc1YzXH4VN5kK3u+KsPI4Ef8jLkBfB4PrQ=; b=EPoHPJ5ZeXIy3QfHzDG4OixZS
	zntHhLunpgfvIlYqcPj9R35CXRYNyw6TXRIuolMy6Kj+8sChspKBCPx3Xfexi0OL6e7d6qbbPnX7L
	0jhDxBLSwmQtFk6kVBhjmn/tby6S3MvYNZFfDF/c7v4DEJy1m+o/CszGApF0WVvM2IQSg=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1iVhT5-00062v-SK; Fri, 15 Nov 2019 19:41:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pmoore2@cisco.com>) id 1iVhT4-00062k-Iu
 for tboot-devel@lists.sourceforge.net; Fri, 15 Nov 2019 19:41:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
 :Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PIfrHSSSas52DdVNuKU//r915sd+vuE+Su/5t0JPm1o=; b=jnlbWoMc/2vDlNyzPRdRDAseIL
 cEfD5aHcxKAL37Jgt4EBHtgO9GlocuY4GfLPvyOjhELBSE7a5+mv/MfqjA6nVsOxLl+TNy3EEiwjd
 nBT96D0EljqMdA3dLsLH2TvulcOuSV3n5vgAtipBL3cfTGMRuzfPe32RPtKueQhtLI4U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PIfrHSSSas52DdVNuKU//r915sd+vuE+Su/5t0JPm1o=; b=A/+BrqeUr9RK9G0joRK+4spXSa
 lRJjuOrdoY5/64f5xvev3nV9LIVqeRNeO0pP3nuXKJnw+eyTnrDg12slytT6vYGtnJKO6XyDwjo8z
 MiaMUV3eybKFG9Mxw5T0HGb6WI2STjH5FSBirZFX2wz/WFoql7ytu1yh0iRmHq28U2vI=;
Received: from rcdn-iport-2.cisco.com ([173.37.86.73])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps (TLSv1.2:DHE-RSA-SEED-SHA:128)
 (Exim 4.92.2) id 1iVhSv-0015dy-H5
 for tboot-devel@lists.sourceforge.net; Fri, 15 Nov 2019 19:41:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=cisco.com; i=@cisco.com; l=10900; q=dns/txt;
 s=iport; t=1573846869; x=1575056469;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=PIfrHSSSas52DdVNuKU//r915sd+vuE+Su/5t0JPm1o=;
 b=gt+S2ALIXlufPFELvHY5YA9U8rjbdOrf3tALK6HbOdzPHIEnYHUXmYXa
 IqHpdFVmUEX09TuW2eN7Z1s6uPwrcmbxM7EWhdFPS3iSms6HLF3Bi1ZZ3
 tmV3UpZP0G0VL2iYYTHTLxbMx7TmIOqJRJQnj8466LgsaeKnOLa3UyAPe E=;
IronPort-PHdr: =?us-ascii?q?9a23=3A8MkA3Rx8444piWnXCy+N+z0EezQntrPoPwUc9p?=
 =?us-ascii?q?sgjfdUf7+++4j5YhSN/u1j2VnOW4iTq+lJjebbqejBYSQB+t7A1RJKa5lQT1?=
 =?us-ascii?q?kAgMQSkRYnBZudDEr8NvOwRyc7B89FElRi+iLzPA=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0AGAADJ/s5d/5ldJa1kGQEBAQEBAQE?=
 =?us-ascii?q?BAQEBAQEBAQEBEQEBAQEBAQEBAQEBgWoEAQEBAQELAYFKUAVsWCAECyoKhB+?=
 =?us-ascii?q?DRgOEWoYZgl6YAIEuFIEQA1QJAQEBDAEBGAMSAgEBhEACF4IMJDQJDgIDCwE?=
 =?us-ascii?q?BBAEBAQIBBQRthQsGJgyFUQEBAQEDAREREQwBASwLAQsEAgEIEQQBAQECAiY?=
 =?us-ascii?q?CAgImChUICAIEAQ0FGweDAYJGAy4BAqUVAoE4iGB1gTKCfgEBBYUaGIIXCYE?=
 =?us-ascii?q?OKAGMBQ+CF4QjPoQJFhkkgnmCXoE/AYtEIDKCPZ4WBgSCKocZhSWDVoU5G4I?=
 =?us-ascii?q?+h2iPaI5ImggCBAIEBQIOAQEFgVI5gVhwUIEegU4JRxEUim2GLTiDO4RZhXp?=
 =?us-ascii?q?0AYEnjggBJIELAYEOAQE?=
X-IronPort-AV: E=Sophos;i="5.68,309,1569283200"; d="scan'208";a="668715629"
Received: from rcdn-core-2.cisco.com ([173.37.93.153])
 by rcdn-iport-2.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA;
 15 Nov 2019 19:41:00 +0000
Received: from XCH-ALN-013.cisco.com (xch-aln-013.cisco.com [173.36.7.23])
 by rcdn-core-2.cisco.com (8.15.2/8.15.2) with ESMTPS id xAFJf09d012658
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=FAIL);
 Fri, 15 Nov 2019 19:41:00 GMT
Received: from xhs-aln-001.cisco.com (173.37.135.118) by XCH-ALN-013.cisco.com
 (173.36.7.23) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Fri, 15 Nov 2019 13:40:59 -0600
Received: from xhs-aln-001.cisco.com (173.37.135.118) by xhs-aln-001.cisco.com
 (173.37.135.118) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Fri, 15 Nov 2019 13:40:59 -0600
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (173.37.151.57)
 by xhs-aln-001.cisco.com (173.37.135.118) with Microsoft SMTP Server (TLS) id
 15.0.1473.3 via Frontend Transport; Fri, 15 Nov 2019 13:40:59 -0600
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XGr8FII9H78rup40s36r3v1NqVj/NDnfqPQ+v3q5k3oZ++fgLXley6pg3tX7ew3oLuaRZq3AsOXmtbcLyJGOfRIgKA9vMoLLSHyYs+7NgFJVCRLSpQ53NufecPaECGeEF1TuxXjzBMxJEPZtJuE9yTLVyma5V/SbFGQCP2alscW8XvChO7Uu7CCRCZkvHJLkOiqF26TaVpv7SKOSHXcw5cZw+M11VGhBAFXnc4DVuOzhlnvYMru5WNocQNA4IVb6eVDPML8xxbM1qRz5UssDFHUdLmhe+BzVU6zxTSg20mRByfvWGRYy6lh3nW/rW7rYICbvu0HQVzgd4LQzEoEi+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PIfrHSSSas52DdVNuKU//r915sd+vuE+Su/5t0JPm1o=;
 b=Tklk6dygd+pTToHeElHvryDNEG8rW6VckcPpmI+lrIvsbIdfN50ZQyLmvBpzPgDNzEDrIvaLEy2P66a7snvg9Yp8PB5wmOJWNalYQXchX+JTMkaJ/4Z1nt0/ZfR4EZtteFaTG6Mo6dRvk7L7ESPicdUOy6sFKBY8FstS3k7TvLXkg8kFPvAS+TPkp7xgQ9w5fp59LlW3mrBIQikRAw9H13vQL3jIpwrQ96mbYmgBm1KqguwbNQtlR09txtiwkwtUnUqfsYh9IpquHL4zzpZ1jenZ0qU+T1mwPt5PsxVZIxDxILfZ21vsaKdk1j18gRNnhGaS7HjH3ksxcjHRvqc5Hg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cisco.com; dmarc=pass action=none header.from=cisco.com;
 dkim=pass header.d=cisco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cisco.onmicrosoft.com; 
 s=selector2-cisco-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PIfrHSSSas52DdVNuKU//r915sd+vuE+Su/5t0JPm1o=;
 b=EPDGfXONToluYSle/HXcb88MdnZ3pMv+t+TRyPIMynbz5MBnsTO+r+XwSlwM7yL0mV6B3HElk5wkqD2FP2mRLJt/8b96Akk3InKyoCwuM5o2M2MA9LKO7PmRvPybm/M3orVAUr2gIaostwEMO4Uni0DDRrbfuxDRCq9QvsCVa+U=
Received: from BN7PR11MB2866.namprd11.prod.outlook.com (52.135.246.157) by
 BN7PR11MB2834.namprd11.prod.outlook.com (52.135.252.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.22; Fri, 15 Nov 2019 19:40:58 +0000
Received: from BN7PR11MB2866.namprd11.prod.outlook.com
 ([fe80::fc28:bc87:48f1:e4cb]) by BN7PR11MB2866.namprd11.prod.outlook.com
 ([fe80::fc28:bc87:48f1:e4cb%3]) with mapi id 15.20.2451.027; Fri, 15 Nov 2019
 19:40:58 +0000
To: "lukasz.hawrylko@linux.intel.com" <lukasz.hawrylko@linux.intel.com>,
 "Travis.Gilbert@dell.com" <Travis.Gilbert@dell.com>
Thread-Topic: [tboot-devel] Creating a TXT/tboot policy suitable for a modern
 system with TXT+TPM2
Thread-Index: AQHVlCtYW12WBIFGSk+TwpFcVCWnTad9MGGQgAAqOICAATPX0IABqGkAgAD1UgCAAFyugIAAFRaAgAeVtICAAC//AIAC8AOAgABdN4A=
Date: Fri, 15 Nov 2019 19:40:58 +0000
Message-ID: <c967b04a294d2552d0167d52745fb24ccafa1e1c.camel@cisco.com>
References: <681a21560a8a9f41a4be8cdc399cf5008f7adecc.camel@cisco.com>
 <1926e09cfdf84af28414b36c2652f421@AUSX13MPC102.AMER.DELL.COM>
 <52ba4fc58ef941c81458ea95eeaed31b0aa669e1.camel@cisco.com>
 <b4e1bf1374114acdaa3b99d91b43bd64@AUSX13MPC102.AMER.DELL.COM>
 <a250508c1d6ba4cf2b080b6f69803698539f7b0c.camel@cisco.com>
 <2a4c6551b68be437cd02c7987ef75a6d315f0368.camel@linux.intel.com>
 <beabd66d2dffc0d8d08d411588501412cca2fdfe.camel@cisco.com>
 <473a0d4460a64bfe8a96c1942ae21de4@AUSX13MPC102.AMER.DELL.COM>
 <f3f94fc1ba73ff604260a6bfb8e4a8ee8b1e9e00.camel@linux.intel.com>
 <248f9a4ad62243db9b46e8d35eca12a9@AUSX13MPC102.AMER.DELL.COM>
 <0064e5367b67e3caf51f5a1f955db577fe51ccd6.camel@linux.intel.com>
In-Reply-To: <0064e5367b67e3caf51f5a1f955db577fe51ccd6.camel@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pmoore2@cisco.com; 
x-originating-ip: [173.38.117.69]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 00b96bbd-2d77-4218-8d45-08d76a03bd12
x-ms-traffictypediagnostic: BN7PR11MB2834:
x-microsoft-antispam-prvs: <BN7PR11MB2834F3ED2E052030C0DB9134F8700@BN7PR11MB2834.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 02229A4115
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(376002)(136003)(39860400002)(396003)(346002)(199004)(189003)(13464003)(14454004)(118296001)(6486002)(6512007)(6436002)(305945005)(7736002)(2906002)(11346002)(476003)(446003)(86362001)(66446008)(64756008)(66556008)(66476007)(4326008)(316002)(76116006)(229853002)(6246003)(76176011)(25786009)(186003)(102836004)(99286004)(14444005)(36756003)(256004)(4001150100001)(2616005)(66946007)(110136005)(66066001)(26005)(478600001)(6506007)(8936002)(81156014)(81166006)(5660300002)(486006)(71200400001)(71190400001)(53546011)(6116002)(3846002)(2501003)(8676002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN7PR11MB2834;
 H:BN7PR11MB2866.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: cisco.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: k8e/ftwXbRtKhS3B199m8qBJUOMZTBq5ceAjQbRkaETSZvWghvQ73sIBvqF/9+zuEjK/8spYpBKdy9SJi9PFZZTEuT3iuhX/RUFPOha/s4p366ukS/5Cu+sAK6O25uqBYzojowqx1NjrO/Zwk7knobXMS5VTurmhXJNNRA2wKlp5X4KJr08Py1rYL1tq9Ab10WVL6OcxKlSK9VI967Jhbz+gwCLCb8hPutbfEQyhQX8uzH4pe8CD7B6g3rneUlvku0nQBU8tKTBnhv8wSVa1i/LZ9PaL9nMndfZhe2tfU2tncULa2vDYrJVMdVIOWx337H8+upw/H4+6YNA6O7vAK5pde5eI0awpgbgj87/csJQAbddCGP8V+h8ClEcj+VZtM4It2AI48kH+Id5oBoI8+m6N+5c2rs92uJp3OMCyHFUn8NGFj2Jj2kyO9A/JHiS/
x-ms-exchange-transport-forked: True
Content-ID: <E1D3203CE596824D9BA44BB56ABA068D@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 00b96bbd-2d77-4218-8d45-08d76a03bd12
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Nov 2019 19:40:58.3801 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JY+ON60j5GqN0NIWChHUdgJwb/tW6BiYrv+XGW1+tMrdweLpNJ45I9qyvd7a4WGUBYMy2PrDcGtqJsureplF+g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2834
X-OriginatorOrg: cisco.com
X-Outbound-SMTP-Client: 173.36.7.23, xch-aln-013.cisco.com
X-Outbound-Node: rcdn-core-2.cisco.com
X-Spam-Score: -7.6 (-------)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM white-list
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iVhSv-0015dy-H5
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

Thanks Lukasz.  I realize that might be a difficult discussion
internally, but I think it is the right thing to do at this point in
time.

On Fri, 2019-11-15 at 15:07 +0100, Lukasz Hawrylko wrote:
> To be honest I don't know the history of lcp-gen2, personally I prefer
> CLI tools too, so I understand your point. I thought that migration to
> GUI tool was requested by TBOOT users. I going to start internal
> discussion who is using lcp-gen2, maybe we should take a step back and
> instead of developing new tool that nobody is going to use, continue
> support for lcptools-v2.
> 
> 
> On Wed, 2019-11-13 at 17:15 +0000, Travis.Gilbert@dell.com wrote:
> > > -----Original Message-----
> > > From: Lukasz Hawrylko <
> > > lukasz.hawrylko@linux.intel.com
> > > Sent: Wednesday, November 13, 2019 08:24
> > > To: Gilbert, Travis; 
> > > pmoore2@cisco.com
> > > 
> > > Cc: 
> > > tboot-devel@lists.sourceforge.net
> > > 
> > > Subject: Re: [tboot-devel] Creating a TXT/tboot policy suitable
> > > for a modern
> > > system with TXT+TPM2
> > > 
> > > 
> > > Thank you for feedback, I understand your point. I was talking
> > > with tools
> > > maintainer and he started working on migration to Python 3.x and
> > > better CLI
> > > support (together with documentation how to use it). Our idea is
> > > not to add
> > > enormous list parameters to generate LCP with desired options, but
> > > to add
> > > JSON/XML file that will describe LCP in human- readable format.
> > > After
> > > preparing that file (you can do that in VIM) you will feed it into
> > > tool and than
> > > get LCP. I would like to hear your opinion about that idea.
> > > 
> > > The only reason why I don't want to maintain lcptools-v2 is to not
> > > have two
> > > tools that do the same thing.
> > 
> > I understand your desire to avoid unnecessary duplication of work.
> > Please understand my frustration with the situation and lack of
> > communication from Intel. I understand that you weren't directly
> > involved at the time, but you're the face now, so you get the
> > complaints :)
> > 
> > Intel created a separate tool, lcp-gen2, without mentioning it on
> > the mailing list in the months leading up to its release. Until then
> > we *had* one functioning toolset that everyone else was using for
> > TPM 2.0. It was lcptools-v2. Then Intel abandoned it with no
> > warning. Just pushed a whole new toolset at once.
> > 
> > It broke a bunch of testing we had when your ACMs started checking
> > things that lcptools-v2 apparently wasn't writing correctly. Up
> > until the ACM changes, everything was fine. Intel apparently knew
> > this because the lcp-gen2 toolset was merged not too long after and
> > they generated working LCPs.
> > 
> > That's the history of the situation in which we now find ourselves.
> > Now that the air is clear, we can move on and work together on a
> > solution.
> > 
> > > I hope that with your input we can improve lcp-
> > > gen2 so it can replace lcptools-v2 in every case. In my opinion
> > > adding CLI to
> > > GUI application is easier than adding GUI to CLI application,
> > > that's why I
> > > decided to go with lcp-gen2.
> > 
> > We're very happy to work with Intel to get a solution that meets all
> > our needs. We want TXT to be a robust solution for everyone.
> > 
> > > We are working on lcp-gen2 in our local repository, I will ask
> > > maintainer when
> > > he will be ready with Python 3.x migration if that will be less
> > > than month I will
> > > wait for that to release new version.
> > > 
> > > Lukasz
> > > 
> > > On Fri, 2019-11-08 at 18:34 +0000, 
> > > Travis.Gilbert@dell.com
> > >  wrote:
> > > > > -----Original Message-----
> > > > > From: Paul Moore (pmoore2) <
> > > > > pmoore2@cisco.com
> > > > > 
> > > > > 
> > > > > Sent: Friday, November 8, 2019 11:19
> > > > > To:
> > > > > lukasz.hawrylko@linux.intel.com
> > > > > 
> > > > > ; Gilbert, Travis
> > > > > Cc:
> > > > > tboot-devel@lists.sourceforge.net
> > > > > 
> > > > > 
> > > > > Subject: Re: [tboot-devel] Creating a TXT/tboot policy
> > > > > suitable for
> > > > > a modern system with TXT+TPM2
> > > > > 
> > > > > On Fri, 2019-11-08 at 12:47 +0100, Lukasz Hawrylko wrote:
> > > > > > For TPM2.0 LCP generation there is a Python tool lcp-gen2
> > > > > > that is
> > > > > > included in tboot's source code. To be honest I didn't try
> > > > > > to
> > > > > > generate LCP with tboot's VLP inside but it should work. If
> > > > > > not -
> > > > > > this is a bug and need to be fixed.
> > > > > > 
> > > > > > lcptools-v2 will is not maintained, any new features like
> > > > > > new
> > > > > > signing algorithms will not be included there, so I suggest
> > > > > > not to
> > > > > > use it for new designs. We are actively improving lcp-gen2,
> > > > > > if
> > > > > > there is something that is missing in your opinion please
> > > > > > let me know.
> > > > > 
> > > > > A few problems come to mind with lcp-gen2 all of which are
> > > > > blockers:
> > > > > 
> > > > > * I see references to upgrading to newer versions of Python
> > > > > 2.x, but
> > > > > nothing about upgrading to Python 3.x; with Python 2.x going
> > > > > EOL in
> > > > > a few months this needs to happen very soon.
> > > > > 
> > > > > * No documentation.  This is a general problem with the tboot
> > > > > code/tools: there is very little documentation, and what does
> > > > > seem
> > > > > to be present is mostly wrong or incomplete.
> > > > > 
> > > > > * The lcp-gen2 tool appears to be intended mostly as a GUI
> > > > > tool, and
> > > > > I need a CLI tool.  It looks like there might be some sort of
> > > > > "batch
> > > > > build" available from the command line, but I don't see any
> > > > > further
> > > > > explanation or documentation on this ability.
> > > > > 
> > > > > You mention that lcp-gen2 is being actively improved, is this
> > > > > happening offline?  The last commit I see is to the sf.net
> > > > > repo for
> > > > > lcp-gen2 is over six months old.
> > > > > 
> > > > > If these issues can't be resolved within the next month or
> > > > > two, is
> > > > > there any reason why we couldn't continue to make changes to
> > > > > the
> > > 
> > > lcptools-v2 tools?
> > > > > -Paul
> > > > > 
> > > > 
> > > > I'm with Paul. I strongly disagree with discontinuing support
> > > > for lcptools-v2.
> > > > 
> > > > lcp-gen2 requires that you have a Window Manager installed. It
> > > > requires
> > > 
> > > clicking around in a GUI. Both of these limit its use. The most
> > > important thing
> > > it limits is the ability to script LCP creation like I have done.
> > > When I give
> > > someone else an LCP to use, instead of a 10 page document with
> > > pictures
> > > that walks them through clicking everything in lcp-gen2, with
> > > lcptools-v2, I
> > > can just say "Run this script." If that script doesn't error out,
> > > then I *know*
> > > that the LCP was correctly created. In the lcp-gen2 case, I have
> > > to have the
> > > user send me the LCP and other intermediate files and compare them
> > > with
> > > what I expect in order to figure out whether something went wrong
> > > or not.
> > > Troubleshooting for a script is simpler. If for some reason they
> > > can't copy &
> > > paste the console output with the error (very easy), I can have
> > > the user run
> > > the script again while redirecting the output to a file, and then
> > > send me the
> > > file.
> > > > I also have philosophical issues with GUI-only, mostly that it
> > > > violates the
> > > 
> > > UNIX philosophy of "Write programs to handle text streams, because
> > > that is
> > > a universal interface." My evidence for why this should be
> > > considered
> > > consists of my previous paragraph and Paul's concerns.

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
