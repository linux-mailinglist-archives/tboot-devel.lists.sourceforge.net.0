Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C74F4DC601
	for <lists+tboot-devel@lfdr.de>; Fri, 18 Oct 2019 15:27:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:To:Sender:Cc:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mpFeK9Bip67Sit6BZTkpn1q6dPP/EXDTFvsCBfuH3bY=; b=MeZri5JMVsJO6zWRGC7Cn/Tut
	NP0K0REj2shtZniD1w5LP0cv6D+7YPq5EZrkeG2XQI2/pcVE7if7XgM8gJvLN05StCID1QmNVmNew
	96fD/ii1BR7Ud0rNY8cZqHD5FZh3mSLdO/wp7UIZxHHYm08ZCbKKrJKBesSL5UXg0vZcY=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1iLSHy-00005b-1c; Fri, 18 Oct 2019 13:27:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pmoore2@cisco.com>) id 1iLSHw-00004w-K9
 for tboot-devel@lists.sourceforge.net; Fri, 18 Oct 2019 13:27:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:
 Reply-To:Cc:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0b/uyzX9fNSBWUn5922t32szk2YDBuP/NRUsQg/8xxs=; b=OnRdfWH+KKk0BcBp6ETDPn/AJN
 AAvsfdRMokgrKhMCzV1f1dppGPzWSauGlNNYp5ytalsFXHvBw7+/9JEtCDWiW8YQoZ+tU/kpo7mB3
 rurAS/KhbXlto1wyrZOmnu6hXUHC9sLUMOvLemitH7uyTN23r9vMG0J226a0lBT6U16c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0b/uyzX9fNSBWUn5922t32szk2YDBuP/NRUsQg/8xxs=; b=ZmRWSKe2vlHFdTXOQspgNFTPvn
 CkVfsbZ6gBKjbbdzay6vBjEX5ct4uUO0AYHqaKFN/vq3ituFTwR9eXn8u5/cGAIwqH8fmyD2XIoxd
 35/3/v2jIl1xd7XM/6IdCtwFmZATXx7I2tX5RT6SvRE/5nw6c8BGbdVAo4n1cLqVPpv0=;
Received: from alln-iport-2.cisco.com ([173.37.142.89])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps (TLSv1.2:DHE-RSA-SEED-SHA:128)
 (Exim 4.92.2) id 1iLSHs-006jYQ-7y
 for tboot-devel@lists.sourceforge.net; Fri, 18 Oct 2019 13:27:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=cisco.com; i=@cisco.com; l=2398; q=dns/txt; s=iport;
 t=1571405244; x=1572614844;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=0b/uyzX9fNSBWUn5922t32szk2YDBuP/NRUsQg/8xxs=;
 b=SZzTcjWl/jahW/Trj2IeNZtmfNY88jQGNMLxBQRfbVwZoktErbpsJ40o
 rVwoRpayklEyyQYfWDRc6Z7tI8ho38dpG4qEYCAiz1pk6YQe84jonWC+o
 y5h2wmncUBJbfyttL+ClWTNLElkb7u057Ihpy62JYv4muM6KsK1MKPzJS Y=;
IronPort-PHdr: =?us-ascii?q?9a23=3AnHhbFhA8XOQg2hoT6rvWUyQJPHJ1sqjoPgMT9p?=
 =?us-ascii?q?ssgq5PdaLm5Zn5IUjD/qs13kTRU9Dd7PRJw6rNvqbsVHZIwK7JsWtKMfkuHw?=
 =?us-ascii?q?QAld1QmgUhBMCfDkiuNPvtaDY3RuxJVURu+DewNk0GUMs=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0AMAQBKvKld/5hdJa1lHAMCBxQEBIF?=
 =?us-ascii?q?qBg0BgUopJwVsVyAECyoKhByDRwOKU02CD5d/gS6BJANUCQEBAQwBASUIAgE?=
 =?us-ascii?q?BhEACF4J2JDUIDgIDCQEBBAEBAQIBBQRthS0BC4VMAQEBAxIREQwBAScBCgY?=
 =?us-ascii?q?PAgEIGAICJgICAjAVEAIEJw6DAYJGAy4BAgymBAKBOIhhdYEygn4BAQWBOAW?=
 =?us-ascii?q?BDIJFGIIXAwaBDigBhRSGeYIXgRGDEj6CYgEBgTqDNYJegT0Bi2GCV51jBgS?=
 =?us-ascii?q?CI4cOjhcbgjuHUY8+ixSDHogljVeDRAIEAgQFAg4BAQWBVAE2gVhwUIEegU5?=
 =?us-ascii?q?QEBSBWxiBBAEBgkqFFIU/dAyBHY4ngTEBgSMBAQ?=
X-IronPort-AV: E=Sophos;i="5.67,311,1566864000"; d="scan'208";a="353218076"
Received: from rcdn-core-1.cisco.com ([173.37.93.152])
 by alln-iport-2.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA;
 18 Oct 2019 13:27:14 +0000
Received: from XCH-RCD-012.cisco.com (xch-rcd-012.cisco.com [173.37.102.22])
 by rcdn-core-1.cisco.com (8.15.2/8.15.2) with ESMTPS id x9IDRE9L001611
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=FAIL)
 for <tboot-devel@lists.sourceforge.net>; Fri, 18 Oct 2019 13:27:14 GMT
Received: from xhs-aln-003.cisco.com (173.37.135.120) by XCH-RCD-012.cisco.com
 (173.37.102.22) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Fri, 18 Oct 2019 08:27:13 -0500
Received: from xhs-rcd-003.cisco.com (173.37.227.248) by xhs-aln-003.cisco.com
 (173.37.135.120) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Fri, 18 Oct 2019 08:27:13 -0500
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (72.163.14.9) by
 xhs-rcd-003.cisco.com (173.37.227.248) with Microsoft SMTP Server
 (TLS) id
 15.0.1473.3 via Frontend Transport; Fri, 18 Oct 2019 08:27:13 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hJAglRmSlqyMBZeItAjKrgKoFmoY2QnJXPjtIa+G7x5vp+cQ/L98AWa/1gflFL/eWvGJzR9hZBd+ntTBsmmWFsUKNJ4NeFMyHIgDN3lhcpQTOjynOAvEqng9sZrOOKVUsvaTKJTVBdGc8HZz3ijifzNeGHdjkGaGZ6pyKKHVN+TGVITBqOgz2clpmjeYyQetgw2ocMuNCTy1zBPasjdUr6syCplTDvG/MYzF0TmKV8K2zdbLiGubKLS1oqUVtDf9IPzyDUjmEORbdraJvZuUXLD8lc5MW9WZMrcL/ab9uBTYErWGmjIucnqSJXH5vwwdpTCC8oAfo7VbPW961QmLBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0b/uyzX9fNSBWUn5922t32szk2YDBuP/NRUsQg/8xxs=;
 b=HFj3Yl3lbHn/A1I/h+9p+mW4ap92qdOnKbXyh266e7h2ODuihopi6yhRAE+6cQXGvl3Pe4CpiuzITHjA9Hn+2zCkotwjWBj6Y7Vj2S2ZquxFEWoi+nVAUQa8EtTt3bSlx5DT6idegf1fxn30HL106JEwxPiYAzEqKhLZ/L9EOAkEQ2KATgSkYRwuBZypFBGY4fj7gF1AjNG1j66d82SYTkba/tyUJQPL0WCQLhKNnmFbvar/TYA+eqd/7B4djTco+klzt9goFGKR+gHPor8BBi3Is/+2fWo9KDdDLJbZZ3+ebjmAyb2gycTWPRgTMq/0OmDpSuhglQpazH2RXKCLdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cisco.com; dmarc=pass action=none header.from=cisco.com;
 dkim=pass header.d=cisco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cisco.onmicrosoft.com; 
 s=selector2-cisco-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0b/uyzX9fNSBWUn5922t32szk2YDBuP/NRUsQg/8xxs=;
 b=H5Pw1hwvJJr7Bcv99bTI3ahKWh0VzxHcDw6fphwp6NpRJkFQeJ1O9DKWKSdLqYfkqAJWgPM5IAQtK6xVOxgESI8JQJc/kire66QPpDTWaSU7dd+NwIqCv106oCyzt6KbsvjzW+JyWvjQ8JRRydVX9GSWw/2QcRFlmLNQf1QGohI=
Received: from BN7PR11MB2866.namprd11.prod.outlook.com (52.135.246.157) by
 BN7PR11MB2625.namprd11.prod.outlook.com (52.135.242.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.21; Fri, 18 Oct 2019 13:27:11 +0000
Received: from BN7PR11MB2866.namprd11.prod.outlook.com
 ([fe80::c0a3:998f:19ea:6c73]) by BN7PR11MB2866.namprd11.prod.outlook.com
 ([fe80::c0a3:998f:19ea:6c73%4]) with mapi id 15.20.2347.024; Fri, 18 Oct 2019
 13:27:11 +0000
To: "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Thread-Topic: [tboot-devel] [RFC] tboot: kernel signature verification
Thread-Index: AQHVbwB0th12F6sDfUCgP40i/qpaH6dgkXwA
Date: Fri, 18 Oct 2019 13:27:11 +0000
Message-ID: <ba9fa4341c9b9fa27c8ea3229f879d25614a900f.camel@cisco.com>
References: <bbaf0eeb3ddb8791533fc9dfba23ed57d3a2c9bd.camel@cisco.com>
In-Reply-To: <bbaf0eeb3ddb8791533fc9dfba23ed57d3a2c9bd.camel@cisco.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pmoore2@cisco.com; 
x-originating-ip: [173.38.117.92]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4315454c-a917-4278-3af4-08d753cee1d0
x-ms-traffictypediagnostic: BN7PR11MB2625:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <BN7PR11MB26251CD2E7A2BE601611ED56F86C0@BN7PR11MB2625.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 01949FE337
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(396003)(366004)(39860400002)(376002)(189003)(199004)(102836004)(6512007)(6306002)(2351001)(2906002)(478600001)(5640700003)(3846002)(14454004)(966005)(66556008)(66446008)(76116006)(91956017)(6116002)(6436002)(118296001)(36756003)(66066001)(316002)(66476007)(25786009)(15650500001)(86362001)(64756008)(66946007)(2616005)(6246003)(11346002)(486006)(476003)(81156014)(229853002)(6486002)(186003)(81166006)(6916009)(6506007)(305945005)(26005)(5660300002)(8676002)(256004)(76176011)(14444005)(71190400001)(99286004)(7736002)(2501003)(71200400001)(8936002)(446003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN7PR11MB2625;
 H:BN7PR11MB2866.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: cisco.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Rxy2AH2qHsKxsjiMxHYH5x0EOuGjkskGOb8FpLx1muuyIBtFknvySA57az4jlDgjRjeznmRiqbld3aqQ1h0hyNzKO3lwmC4LKNPtLrz0LNPhI6SE1cV6TATFDVQrCv8jq0B1zpRDfyrRXnmcZZpDhJJIgh7Hpg5TRCqLhHGsbRIqtmJD3GDc0Pn5lx1+QQzFVrrAFaJJlVfqfpL/f2rqsGRy00K/cEnYo7UGbzr7dsI7pwx7h0Oxk7/+Ip2pZuNtcIceVicCIv2ubnxrc62dAD72aN09s0+6D+SdMwJjhoJbxewEQxsou9oQLzh7fyLsWSX3SSkKCvO4eIBXqkyspRBesLhD4fOUyhlZOztUanW1vrMaUUZxwdheobIA+X192WHMbw8KB61wgp5pAKWGmXN3fkRSshJFyO9g3Q0K4QnpYIKcaahkVSItNDZJ0g/YYFl54TniKJbkr47Yn42E4A==
x-ms-exchange-transport-forked: True
Content-ID: <D995A51F71A0234685A34B84BA5DCCE6@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 4315454c-a917-4278-3af4-08d753cee1d0
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Oct 2019 13:27:11.0744 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9XScxGwDCZFGw6lIg1l/ya0Fc/GJIVQ+Sg0MGE2J1E4iQ19aIF6hDXpGiO07Ko8J35L6o48q3YaVUf7thYLi7g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2625
X-OriginatorOrg: cisco.com
X-Outbound-SMTP-Client: 173.37.102.22, xch-rcd-012.cisco.com
X-Outbound-Node: rcdn-core-1.cisco.com
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
X-Headers-End: 1iLSHs-006jYQ-7y
Subject: Re: [tboot-devel] [RFC] tboot: kernel signature verification
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

On Thu, 2019-09-19 at 15:39 +0000, Paul Moore (pmoore2) via tboot-devel
wrote:
> Hello,
> 
> I've been working on adding PECOFF/kernel signature verification to
> tboot and now that I have a rough working prototype I wanted to bring
> it to the list to see if this is something the tboot community would
> be interested in eventually merging (once the work is more complete
> and polished).
> 
> The patchset is quite large, mostly due to the inclusion of
> libtomcrypt and libtomfastmath to the tboot repository, so I'm going
> to refrain from spamming the list with the full patchset at this early
> stage.  The current patchset can be found on GitHub at the URL below
> (look in the "working-txtsig" branch):
> 
> * https://github.com/pcmoore/misc-tboot/tree/working-txtsig
> 

I've updated the working-txtsig branch with a number of fixes relating
to the ASN.1/PKCS parsing code as well as improved signing/hash
algorithm support (previously limited to SHA256) and the ability to
verify kernels using variable length certificate chains (previously
limited to the immediate signer).  Work on adding certificate support to
the tboot launch control policy is ongoing (it's the next major work
item), but the prototype contains a hard coded Fedora CA which should be
able to verify any modern Fedora kernel.  Just as before, if you have
any questions, concerns, or feedback please get in touch on-list or
privately.

I'll be giving an updated presentation on this effort at the Linux
Security Summit EU later this month, if you are in the area please stop
by and introduce yourself - I'd love to talk about TXT/tboot!

https://events19.linuxfoundation.org/events/linux-security-summit-europe-2019

Thanks,
-Paul


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
