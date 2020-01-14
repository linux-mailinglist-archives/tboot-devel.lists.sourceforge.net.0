Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A540B139DF3
	for <lists+tboot-devel@lfdr.de>; Tue, 14 Jan 2020 01:19:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Reply-To:From:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:
	MIME-Version:In-Reply-To:References:Message-ID:Date:To:Sender:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nYgMOt4qa+LyxFNtBNdfMwOgOf8xfJZS2yurPpAuVj4=; b=WtxAv8v03KUFDKHXy8UzgvO5H
	lJTlDGWbJffIHUONTkEiULnQvYbDzyxesjAG6rUWkaJPclitItaOFojKkqqHHb+kRKvbmbxOpe52Z
	Sj3CIBsHg8OEvqr2DtlVfRulZV7JitqsSQnIr4eGA5vRDNCMcw+AuHHzlvyt8ShV9bsQM=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1ir9v2-00006n-SR; Tue, 14 Jan 2020 00:18:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pmoore2@cisco.com>) id 1ir9uy-00006b-7C
 for tboot-devel@lists.sourceforge.net; Tue, 14 Jan 2020 00:18:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RDzruxu7yGTgXFfFCTMOjmXwM3A+sscsEWLGQz94gm8=; b=SBAzCoujqtS0DkQoqVdHQ/azRB
 CKJzfI4GpHLoJIJIAXjU92JCy3YNtu3J2SEP7UZ+RXMyVnqKAb6AXL5FhQ9AtOU5dIPUnI3fHvHBK
 xW33qChsxpBW4T4Y+3gHiEn3YZvYqoSNbE5EgSkHk5DDcfud93EafJcaGvuRgxunkMGM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RDzruxu7yGTgXFfFCTMOjmXwM3A+sscsEWLGQz94gm8=; b=TUNX/iJPjMEwIAqUke7Yf2RuLS
 ZlYJz1bsln9qLO5qEVJcejYXP/DfXvknHOuYazfUIxAskoBAsn9pC8/QRIyCvEW3IB+NYNhU5oPwc
 qtqBBRhh+C2hgvDaSErZqxxH5aDOXYCvn6hqrl2cbX7wPPvi8SITKRPyR4mm5AGbqFSs=;
Received: from rcdn-iport-9.cisco.com ([173.37.86.80])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps (TLSv1.2:DHE-RSA-SEED-SHA:128)
 (Exim 4.92.2) id 1ir9uv-003yjx-Jf
 for tboot-devel@lists.sourceforge.net; Tue, 14 Jan 2020 00:18:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=cisco.com; i=@cisco.com; l=9442; q=dns/txt; s=iport;
 t=1578961125; x=1580170725;
 h=from:to:subject:date:message-id:references:in-reply-to:
 mime-version; bh=RDzruxu7yGTgXFfFCTMOjmXwM3A+sscsEWLGQz94gm8=;
 b=aMqKmsYAhRzurxqRitClRaxOVXWoJC5CMnZu+uZaQOpLVBHd0N4d66P2
 ixE9YytboNcoFfp2P50ccS0S7Bu+3FQrSYtHBMmCQnu6iantFB80UyNyA
 hb2jdqPE8CeCoN4bA13d9VdfN8tpb2ISjCdrOLw2RKsYT1q7Ci8VGhgmJ w=;
IronPort-PHdr: =?us-ascii?q?9a23=3A5wAeBhDkorm/17rZ+SbQUyQJPHJ1sqjoPgMT9p?=
 =?us-ascii?q?ssgq5PdaLm5Zn5IUjD/qs13kTRU9Dd7PRJw6rNvqbsVHZIwK7JsWtKMfkuHw?=
 =?us-ascii?q?QAld1QmgUhBMCfDkiuNPvtaDY3RuxJVURu+DewNk0GUMs=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0AqGgBoBx1e/4kNJK1PFh0BATgFBQE?=
 =?us-ascii?q?CCQGBVYFSUAWBRCAECyoKhAODRgOLBU6CEZMshGKBQoEQA1QGAwEBAQwBAS0?=
 =?us-ascii?q?CAQGEQAIXgWEkOBMCAw0BAQQBAQECAQUEbYU3DIVfAgEDEhEdAQE4DwIBCCs?=
 =?us-ascii?q?XAgICMCUCBAE0hQJNAy4BAp9xAoE4iBQBTHWBMoJ+AQEFhRwYggwJN38BhRy?=
 =?us-ascii?q?GfIIahCQ+hAYcEIMngl6BQwGPCYVXmCd1BgSCOJYtG5psjluadgIEAgQFAg4?=
 =?us-ascii?q?BAQWBaSKBWHCBboFOUBgNiAwYg1CKU3SBKIh/gTMBgQ8BAQ?=
X-IronPort-AV: E=Sophos;i="5.69,430,1571702400"; 
 d="scan'208,217";a="613148613"
Received: from alln-core-4.cisco.com ([173.36.13.137])
 by rcdn-iport-9.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA;
 14 Jan 2020 00:18:36 +0000
Received: from XCH-ALN-010.cisco.com (xch-aln-010.cisco.com [173.36.7.20])
 by alln-core-4.cisco.com (8.15.2/8.15.2) with ESMTPS id 00E0IaTE003902
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=FAIL);
 Tue, 14 Jan 2020 00:18:36 GMT
Received: from xhs-rcd-002.cisco.com (173.37.227.247) by XCH-ALN-010.cisco.com
 (173.36.7.20) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Mon, 13 Jan 2020 18:18:36 -0600
Received: from xhs-rtp-002.cisco.com (64.101.210.229) by xhs-rcd-002.cisco.com
 (173.37.227.247) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Mon, 13 Jan 2020 18:18:35 -0600
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (64.101.32.56) by
 xhs-rtp-002.cisco.com (64.101.210.229) with Microsoft SMTP Server
 (TLS) id
 15.0.1473.3 via Frontend Transport; Mon, 13 Jan 2020 19:18:35 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XCnY9/RZ6WMsBkXLNbK8enBZwPMmwUb8kJgcnZfj59/igIob5Bx1EbG5D4qYJ58HVZkyyDR3+A4ZkmtSHcofIPz6zugZLiLR96OqT0t1mFanEud/IsJ7uI67IVBQNqDf91SIP8jytat8BkWzFFTQKcUrl8AfzoZsBUoOfVbWZvR2qAs0/paPxr+Oizo4q1pZ6PCKPonur+aWAb6gNeYrD3r7PQPoaBu+xhWZ0tVWQkcxfWlUx250dBifPPVJNhz+3KYKk0H/F/tRITGySkTCI0X0s6O6k1DEOHHp4WRbm5RtnTgFikmfaLC7QZp3GURNGVoaWJNKIKIuCI51zHKz/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RDzruxu7yGTgXFfFCTMOjmXwM3A+sscsEWLGQz94gm8=;
 b=kX+neaG1lrDoGv4+JWWxBR7Uw810w3TCVaOR6rTNgiAzcYH+wRf3OGvgBTqBDaYUh/FNkyI8h7LrNxXQDa0VnF/JgBRf3cneWL1ajC6hofOUcFH6nqdKkb8LI5vrjGRTsq4TmMsfvHwnoGcNMb7kHtavpICIOiHO4HEZ6dQSZdg/C2sWDsp9pD2td8cX0TZxMnMPLVwv1vGlf+OnnoKEva3dYKmhgCIlICmA3nnDzh/e9llNBiet5ffAha8zd+3DliPzTOrMDaVWSb2tSP6r4Zoift+8Bb5MCFjaMHdu/vm/KrvUrMvaduD1dEKC4IsdleZtt3U49oXjDI0cu9L8QA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cisco.com; dmarc=pass action=none header.from=cisco.com;
 dkim=pass header.d=cisco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cisco.onmicrosoft.com; 
 s=selector2-cisco-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RDzruxu7yGTgXFfFCTMOjmXwM3A+sscsEWLGQz94gm8=;
 b=G6e5oEPGZA4Lnm6LmGcoHgo/P7j4zcRT8XZA+H9ccNIXFYp8V2vN1zC2CYE2D1gMM93E4Q16rlBJxlLuq7qwNHaRX2Jr5K61dQsdS4j9yKkAU61nB6Q8muN21pDpDE4vH9QN0qtuqI2IkDQytPzniNfcZ0OL1G06tRkQGaUY55s=
Received: from BN7PR11MB2866.namprd11.prod.outlook.com (52.135.246.157) by
 BN7PR11MB2578.namprd11.prod.outlook.com (52.135.245.24) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.10; Tue, 14 Jan 2020 00:18:34 +0000
Received: from BN7PR11MB2866.namprd11.prod.outlook.com
 ([fe80::f57d:c6e:3ec:c65a]) by BN7PR11MB2866.namprd11.prod.outlook.com
 ([fe80::f57d:c6e:3ec:c65a%7]) with mapi id 15.20.2623.015; Tue, 14 Jan 2020
 00:18:34 +0000
To: "lukasz.hawrylko@intel.com" <lukasz.hawrylko@intel.com>,
 "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Thread-Topic: [tboot-devel] VLP policy and TPM2 hash agility
Thread-Index: AQHVwbvDFL0LDZYScESwnSphPlBBU6fZX0EAgAAFX4CACRLBgIAGpqqAgAA+ywA=
Date: Tue, 14 Jan 2020 00:18:33 +0000
Message-ID: <f2a750a91b3739951ea170c76e96f136c9d2fe2a.camel@cisco.com>
References: <95c91cf5919cf3ebb3058e90bd6af64939dedee1.camel@cisco.com>
 <2c111f3585e0c048ae090e99be2eef9240bf3445.camel@cisco.com>
 <e72bc640db22e2460c41e9718f550a2a443e4a55.camel@cisco.com>
 <0101df1759aa0bfdf2b30c1696af474902c232a9.camel@intel.com>
 <274b39c26ab00d63acecb2f68d0fca516943f8f9.camel@cisco.com>
In-Reply-To: <274b39c26ab00d63acecb2f68d0fca516943f8f9.camel@cisco.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pmoore2@cisco.com; 
x-originating-ip: [128.107.241.180]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6c607b54-6603-43e0-1ea8-08d798874aed
x-ms-traffictypediagnostic: BN7PR11MB2578:
x-microsoft-antispam-prvs: <BN7PR11MB2578A47DED4119DBC4F09CD1F8340@BN7PR11MB2578.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 028256169F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(366004)(346002)(136003)(376002)(396003)(199004)(189003)(66556008)(66446008)(66476007)(76116006)(91956017)(66946007)(2616005)(64756008)(36756003)(6486002)(2906002)(71200400001)(8936002)(5660300002)(186003)(6512007)(316002)(110136005)(86362001)(81156014)(8676002)(81166006)(6506007)(478600001)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN7PR11MB2578;
 H:BN7PR11MB2866.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: cisco.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CpaxBcdMEIqtJHz67Bn+rP0GrOgHuqyyOjrAcA1RWxCPWA2hbRKmIG7HvAoOUUSBgDLulUak+xTLLnp8uuG3EY/Nka9IlCLm0M0lPa5zKfBM2R+cuTf/3KncfeaPzli3E6gnyvS355JE1C5GlBs2DnH/bBN0qAMyy2gq96u1JWafw2Nm7/YYgaAVG6h1jnNePvDpdDh6lEj311LjUXTySKebFbhxrMPSEXHNt8i1tjGqITorsvYDIEmqzQ8dwHv/ZtDOaLgJN9Itevo/FCYe84XcpGEiAQLD/i/SmhMFK8hUG6CDfQsjATFqb9MUXNAhOMZrnwrQtzHP8eoeatliZ3AqOFUFH1zXGZXQq8P/5u9r4avjurZy7KPAkgDLRGKanDusXq1g2FJtswYm0hxqEPmXeisGECF7uEf1dgehL1C38lg0ovHXTe1+W3ln8IOf
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c607b54-6603-43e0-1ea8-08d798874aed
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2020 00:18:33.9496 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: d/gtTBr1WyV+NEb4a0htW692sOWKnoGS+kkezXHifsKWGQPnDl3TgspmxX3cJJzJpD2D2dCFFEPqOXqhodO7pA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2578
X-OriginatorOrg: cisco.com
X-Outbound-SMTP-Client: 173.36.7.20, xch-aln-010.cisco.com
X-Outbound-Node: alln-core-4.cisco.com
X-Spam-Score: -6.6 (------)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [173.37.86.80 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM white-list
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1ir9uv-003yjx-Jf
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
Content-Type: multipart/mixed; boundary="===============7284881305740534865=="
Errors-To: tboot-devel-bounces@lists.sourceforge.net

--===============7284881305740534865==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_f2a750a91b3739951ea170c76e96f136c9d2fe2acamelciscocom_"

--_000_f2a750a91b3739951ea170c76e96f136c9d2fe2acamelciscocom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCAyMDIwLTAxLTEzIGF0IDIwOjMzICswMDAwLCBQYXVsIE1vb3JlIChwbW9vcmUyKSB2
aWEgdGJvb3QtZGV2ZWwgd3JvdGU6DQpPbiBUaHUsIDIwMjAtMDEtMDkgYXQgMTQ6NTkgKzAwMDAs
IEhhd3J5bGtvLCBMdWthc3ogd3JvdGU6DQoNCk9uIEZyaSwgMjAyMC0wMS0wMyBhdCAyMDoyNiAr
MDAwMCwgUGF1bCBNb29yZSAocG1vb3JlMikgdmlhIHRib290LWRldmVsDQoNCndyb3RlOg0KDQpP
biBGcmksIDIwMjAtMDEtMDMgYXQgMjA6MDcgKzAwMDAsIFBhdWwgTW9vcmUgKHBtb29yZTIpIHZp
YSB0Ym9vdC1kZXZlbA0KDQp3cm90ZToNCg0KT24gVGh1LCAyMDIwLTAxLTAyIGF0IDIyOjI3ICsw
MDAwLCBQYXVsIE1vb3JlIChwbW9vcmUyKSB2aWEgdGJvb3QtDQoNCmRldmVsDQoNCndyb3RlOg0K
DQpJIGhvcGUgZXZlcnlvbmUgaGFkIGEgbmljZSBob2xpZGF5IGFuZCBpcyBlbmpveWluZyB0aGUg
bmV3IHllYXIgdGh1cw0KDQpmYXIuDQoNCg0KQXMgeW91J3ZlIHNlZW4gaW4gdGhlIG90aGVyIHRo
cmVhZCwgSSdtIHBsYXlpbmcgYXJvdW5kIHdpdGgNCg0KZGlmZmVyZW50DQoNCnRib290L1RYVCBw
b2xpY2llcyBhbmQgSSBoYXZlIGEgcXVlc3Rpb24gcmVnYXJkaW5nIHRib290L1ZMUA0KDQpwb2xp
Y2llcw0KDQp0aGF0IGNhbiBleHRlbmQgUENScyB1c2luZyBzb21ldGhpbmcgb3RoZXIgdGhhbiBT
SEExOiBhdCBwcmVzZW50DQoNCnRiX3BvbGdlbiBzZWVtcyBsaW1pdGVkIHRvIHVzaW5nIFNIQTEs
IGRvZXMgYW55b25lIGhhdmUgYW55IHBhdGNoZXMNCg0KdG8NCg0KdXNlIFNIQTI1NiAob3IgYW5v
dGhlciBoYXNoKT8NCg0KDQpUbyBhbnN3ZXIgbXkgb3duIHF1ZXN0aW9uLCBpdCBhcHBlYXJzIHRo
YXQgTHVrYXN6IGFkZGVkIHN1cHBwb3J0IGluDQoNCjU0OTpjYTkzNTcwOWQ4YTYgKCJBZGQgc3Vw
cG9ydCBmb3IgU0hBMjU2IGluIHRiX3BvbGdlbiIpLg0KDQoNCkx1a2FzeiwgaWYgSSB3YW50ZWQg
dG8gZ2VuZXJhdGUgYm90aCBTSEExIGFuZCBTSEEyNTYgaGFzaGVzIGZvciBhIFRQTTINCg0Kc3lz
dGVtLCB3b3VsZCBJIG5lZWQgdG8gY3JlYXRlIHR3byBydWxlcyBpbiB0aGUgVkxQPyAgRm9yIGV4
YW1wbGUgSSBkbw0KDQp0aGUgZm9sbG93aW5nIG5vdyBmb3IgdGhlIFRYVC9zaWcgcGF0Y2hlcyBh
bmQgUENSMjA6DQoNCg0KICMgdGJfcG9sZ2VuIC0tYWRkIC0tbnVtIDAgLS1wY3IgMjAgXA0KDQog
ICAgIC0taGFzaCBwZWNvZmYgcGVjb2ZmLnZscA0KDQoNCi4uLiBidXQgdGhhdCBvbmx5IHdyaXRl
cyB0aGUgU0hBMSBoYXNoIGludG8gUENSMjAsIHByZXN1bWFibHkgSSBjb3VsZA0KDQpkbw0KDQp0
aGUgZm9sbG93aW5nIHRvIHN1cHBvcnQgYm90aCBoYXNoZXM/DQoNCg0KICMgdGJfcG9sZ2VuIC0t
YWRkIC0tbnVtIDAgLS1wY3IgMjAgLS1hbGcgc2hhMSBcDQoNCiAgICAgLS1oYXNoIHBlY29mZiBw
ZWNvZmYudmxwDQoNCiAjIHRiX3BvbGdlbiAtLWFkZCAtLW51bSAwIC0tcGNyIDIwIC0tYWxnIHNo
YTI1NiBcDQoNCiAgICAgLS1oYXNoIHBlY29mZiBwZWNvZmYudmxwDQoNCg0KDQpJdCBhcHBlYXJz
IEkgZGlkbid0IGxvb2sgY2xvc2UgZW5vdWdoIGF0IHRoZSBwYXRjaCwgdGhlIGhhc2ggYWxnb3Jp
dGhtDQoNCnNlbGVjdGlvbiBpcyBkb25lIGF0IFZMUCBwb2xpY3kgY3JlYXRpb24gYW5kIGFwcGxp
ZXMgdG8gYWxsIHRoZSBydWxlcy4NCg0KDQpMdWthc3osIGlzIHRoZXJlIGEgd2F5IHRvIGdlbmVy
YXRlIFBDUiBoYXNoZXMgZm9yIGFsbCBzdXBwb3J0ZWQNCg0KYWxnb3JpdGhtcyBsaWtlIHRib290
IGRvZXMgZm9yIFBDUjE3LzE4Pw0KDQoNCi1QYXVsDQoNCg0KDQpIZWxsbyBQYXVsDQoNCg0KSSBs
b29rcyBsaWtlIHlvdSBjYW4ndCBjcmVhdGUgcG9saWN5IHdpdGggZGlmZmVyZW50IGhhc2ggYWxn
b3JpdGhtcywNCg0KbG9vayBhdCB0Yl9wb2xpY3lfdCBzdHJ1Y3R1cmUgaW4gdGJfcG9saWN5Lmgg
VGhlcmUgaXMgb25lIGZpZWxkIGZvcg0KDQpzZXR0aW5nIGhhc2ggYWxnb3JpdGhtIHRoYXQgaXMg
Y29tbW9uIHRvIGFsbCBwb2xpY3kgZW50cmllcy4NCg0KSGF2ZSB5b3UgYmVlbiBhYmxlIHRvIGNy
ZWF0ZSBhIFZMUCB3aGljaCBjYXVzZXMgdGJvb3QgdG8gZXh0ZW5kIHRoZSBUUE0ncyBzaGEyNTYg
UENSIGJhbms/DQoNCg0KQWZ0ZXIgZGlnZ2luZyB0aHJvdWdoIHRoZSBjb2RlIHNvbWUgbW9yZSwg
aXQgbG9va3MgbGlrZSB0aGUga2V5IHRvIG1ha2luZyB0aGlzIHdvcmsgaXMgdG8gc3BlY2lmeSB0
aGUgY29ycmVjdCAiZXh0cG9sPSIgcGFyYW1ldGVyIG9uIHRoZSB0Ym9vdCBjb21tYW5kIGxpbmUu
IEl0IGFwcGVhcnMgdG8gYmUgVFBNIGFuZCBBQ00gZGVwZW5kZW50ICg/KSBzbyBJJ20gbm90IHN1
cmUgdGhpcyB3aWxsIHdvcmsgZm9yIGV2ZXJ5b25lLCBidXQgb24gbXkgc3lzdGVtICJleHRwb2w9
ZW1iZWRkZWQiIGNhdXNlZCB0Ym9vdCB0byBleHRlbmQgYWxsIG9mIHRoZSBUUE0gUENSIGJhbmtz
OyAiZXh0cG9sPWFnaWxlIiBvbiBteSBzeXN0ZW0gY2F1c2VkIHRoZSBBQ00gdG8gcmVzZXQgdGhl
IHN5c3RlbS4NCg0KLVBhdWwNCg0K

--_000_f2a750a91b3739951ea170c76e96f136c9d2fe2acamelciscocom_
Content-Type: text/html; charset="utf-8"
Content-ID: <BB590510EAC0DC498C54C7F03BF4795D@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64

PGh0bWwgZGlyPSJsdHIiPg0KPGhlYWQ+DQo8bWV0YSBodHRwLWVxdWl2PSJDb250ZW50LVR5cGUi
IGNvbnRlbnQ9InRleHQvaHRtbDsgY2hhcnNldD11dGYtOCI+DQo8L2hlYWQ+DQo8Ym9keSBzdHls
ZT0idGV4dC1hbGlnbjpsZWZ0OyBkaXJlY3Rpb246bHRyOyI+DQo8ZGl2Pk9uIE1vbiwgMjAyMC0w
MS0xMyBhdCAyMDozMyAmIzQzOzAwMDAsIFBhdWwgTW9vcmUgKHBtb29yZTIpIHZpYSB0Ym9vdC1k
ZXZlbCB3cm90ZTo8L2Rpdj4NCjxibG9ja3F1b3RlIHR5cGU9ImNpdGUiIHN0eWxlPSJtYXJnaW46
MCAwIDAgLjhleDsgYm9yZGVyLWxlZnQ6MnB4ICM3MjlmY2Ygc29saWQ7cGFkZGluZy1sZWZ0OjFl
eCI+DQo8ZGl2Pk9uIFRodSwgMjAyMC0wMS0wOSBhdCAxNDo1OSAmIzQzOzAwMDAsIEhhd3J5bGtv
LCBMdWthc3ogd3JvdGU6PC9kaXY+DQo8YmxvY2txdW90ZSB0eXBlPSJjaXRlIiBzdHlsZT0ibWFy
Z2luOjAgMCAwIC44ZXg7IGJvcmRlci1sZWZ0OjJweCAjNzI5ZmNmIHNvbGlkO3BhZGRpbmctbGVm
dDoxZXgiPg0KPHByZT5PbiBGcmksIDIwMjAtMDEtMDMgYXQgMjA6MjYgJiM0MzswMDAwLCBQYXVs
IE1vb3JlIChwbW9vcmUyKSB2aWEgdGJvb3QtZGV2ZWw8L3ByZT4NCjxwcmU+d3JvdGU6PC9wcmU+
DQo8YmxvY2txdW90ZSB0eXBlPSJjaXRlIiBzdHlsZT0ibWFyZ2luOjAgMCAwIC44ZXg7IGJvcmRl
ci1sZWZ0OjJweCAjNzI5ZmNmIHNvbGlkO3BhZGRpbmctbGVmdDoxZXgiPg0KPHByZT5PbiBGcmks
IDIwMjAtMDEtMDMgYXQgMjA6MDcgJiM0MzswMDAwLCBQYXVsIE1vb3JlIChwbW9vcmUyKSB2aWEg
dGJvb3QtZGV2ZWw8L3ByZT4NCjxwcmU+d3JvdGU6PC9wcmU+DQo8YmxvY2txdW90ZSB0eXBlPSJj
aXRlIiBzdHlsZT0ibWFyZ2luOjAgMCAwIC44ZXg7IGJvcmRlci1sZWZ0OjJweCAjNzI5ZmNmIHNv
bGlkO3BhZGRpbmctbGVmdDoxZXgiPg0KPHByZT5PbiBUaHUsIDIwMjAtMDEtMDIgYXQgMjI6Mjcg
JiM0MzswMDAwLCBQYXVsIE1vb3JlIChwbW9vcmUyKSB2aWEgdGJvb3QtPC9wcmU+DQo8cHJlPmRl
dmVsPC9wcmU+DQo8cHJlPndyb3RlOjwvcHJlPg0KPGJsb2NrcXVvdGUgdHlwZT0iY2l0ZSIgc3R5
bGU9Im1hcmdpbjowIDAgMCAuOGV4OyBib3JkZXItbGVmdDoycHggIzcyOWZjZiBzb2xpZDtwYWRk
aW5nLWxlZnQ6MWV4Ij4NCjxwcmU+SSBob3BlIGV2ZXJ5b25lIGhhZCBhIG5pY2UgaG9saWRheSBh
bmQgaXMgZW5qb3lpbmcgdGhlIG5ldyB5ZWFyIHRodXM8L3ByZT4NCjxwcmU+ZmFyLjwvcHJlPg0K
PGJyPg0KPHByZT5BcyB5b3UndmUgc2VlbiBpbiB0aGUgb3RoZXIgdGhyZWFkLCBJJ20gcGxheWlu
ZyBhcm91bmQgd2l0aDwvcHJlPg0KPHByZT5kaWZmZXJlbnQ8L3ByZT4NCjxwcmU+dGJvb3QvVFhU
IHBvbGljaWVzIGFuZCBJIGhhdmUgYSBxdWVzdGlvbiByZWdhcmRpbmcgdGJvb3QvVkxQPC9wcmU+
DQo8cHJlPnBvbGljaWVzPC9wcmU+DQo8cHJlPnRoYXQgY2FuIGV4dGVuZCBQQ1JzIHVzaW5nIHNv
bWV0aGluZyBvdGhlciB0aGFuIFNIQTE6IGF0IHByZXNlbnQ8L3ByZT4NCjxwcmU+dGJfcG9sZ2Vu
IHNlZW1zIGxpbWl0ZWQgdG8gdXNpbmcgU0hBMSwgZG9lcyBhbnlvbmUgaGF2ZSBhbnkgcGF0Y2hl
czwvcHJlPg0KPHByZT50bzwvcHJlPg0KPHByZT51c2UgU0hBMjU2IChvciBhbm90aGVyIGhhc2gp
PzwvcHJlPg0KPC9ibG9ja3F1b3RlPg0KPGJyPg0KPHByZT5UbyBhbnN3ZXIgbXkgb3duIHF1ZXN0
aW9uLCBpdCBhcHBlYXJzIHRoYXQgTHVrYXN6IGFkZGVkIHN1cHBwb3J0IGluPC9wcmU+DQo8cHJl
PjU0OTpjYTkzNTcwOWQ4YTYgKCZxdW90O0FkZCBzdXBwb3J0IGZvciBTSEEyNTYgaW4gdGJfcG9s
Z2VuJnF1b3Q7KS48L3ByZT4NCjxicj4NCjxwcmU+THVrYXN6LCBpZiBJIHdhbnRlZCB0byBnZW5l
cmF0ZSBib3RoIFNIQTEgYW5kIFNIQTI1NiBoYXNoZXMgZm9yIGEgVFBNMjwvcHJlPg0KPHByZT5z
eXN0ZW0sIHdvdWxkIEkgbmVlZCB0byBjcmVhdGUgdHdvIHJ1bGVzIGluIHRoZSBWTFA/ICBGb3Ig
ZXhhbXBsZSBJIGRvPC9wcmU+DQo8cHJlPnRoZSBmb2xsb3dpbmcgbm93IGZvciB0aGUgVFhUL3Np
ZyBwYXRjaGVzIGFuZCBQQ1IyMDo8L3ByZT4NCjxicj4NCjxwcmU+ICMgdGJfcG9sZ2VuIC0tYWRk
IC0tbnVtIDAgLS1wY3IgMjAgXDwvcHJlPg0KPHByZT4gICAgIC0taGFzaCBwZWNvZmYgcGVjb2Zm
LnZscDwvcHJlPg0KPGJyPg0KPHByZT4uLi4gYnV0IHRoYXQgb25seSB3cml0ZXMgdGhlIFNIQTEg
aGFzaCBpbnRvIFBDUjIwLCBwcmVzdW1hYmx5IEkgY291bGQ8L3ByZT4NCjxwcmU+ZG88L3ByZT4N
CjxwcmU+dGhlIGZvbGxvd2luZyB0byBzdXBwb3J0IGJvdGggaGFzaGVzPzwvcHJlPg0KPGJyPg0K
PHByZT4gIyB0Yl9wb2xnZW4gLS1hZGQgLS1udW0gMCAtLXBjciAyMCAtLWFsZyBzaGExIFw8L3By
ZT4NCjxwcmU+ICAgICAtLWhhc2ggcGVjb2ZmIHBlY29mZi52bHA8L3ByZT4NCjxwcmU+ICMgdGJf
cG9sZ2VuIC0tYWRkIC0tbnVtIDAgLS1wY3IgMjAgLS1hbGcgc2hhMjU2IFw8L3ByZT4NCjxwcmU+
ICAgICAtLWhhc2ggcGVjb2ZmIHBlY29mZi52bHA8L3ByZT4NCjxicj4NCjwvYmxvY2txdW90ZT4N
Cjxicj4NCjxwcmU+SXQgYXBwZWFycyBJIGRpZG4ndCBsb29rIGNsb3NlIGVub3VnaCBhdCB0aGUg
cGF0Y2gsIHRoZSBoYXNoIGFsZ29yaXRobTwvcHJlPg0KPHByZT5zZWxlY3Rpb24gaXMgZG9uZSBh
dCBWTFAgcG9saWN5IGNyZWF0aW9uIGFuZCBhcHBsaWVzIHRvIGFsbCB0aGUgcnVsZXMuPC9wcmU+
DQo8YnI+DQo8cHJlPkx1a2FzeiwgaXMgdGhlcmUgYSB3YXkgdG8gZ2VuZXJhdGUgUENSIGhhc2hl
cyBmb3IgYWxsIHN1cHBvcnRlZDwvcHJlPg0KPHByZT5hbGdvcml0aG1zIGxpa2UgdGJvb3QgZG9l
cyBmb3IgUENSMTcvMTg/PC9wcmU+DQo8YnI+DQo8cHJlPi1QYXVsPC9wcmU+DQo8YnI+DQo8L2Js
b2NrcXVvdGU+DQo8YnI+DQo8cHJlPkhlbGxvIFBhdWw8L3ByZT4NCjxicj4NCjxwcmU+SSBsb29r
cyBsaWtlIHlvdSBjYW4ndCBjcmVhdGUgcG9saWN5IHdpdGggZGlmZmVyZW50IGhhc2ggYWxnb3Jp
dGhtcyw8L3ByZT4NCjxwcmU+bG9vayBhdCB0Yl9wb2xpY3lfdCBzdHJ1Y3R1cmUgaW4gdGJfcG9s
aWN5LmggVGhlcmUgaXMgb25lIGZpZWxkIGZvcjwvcHJlPg0KPHByZT5zZXR0aW5nIGhhc2ggYWxn
b3JpdGhtIHRoYXQgaXMgY29tbW9uIHRvIGFsbCBwb2xpY3kgZW50cmllcy48L3ByZT4NCjxwIGNs
YXNzPSJNc29Ob3JtYWwiPjxvOnA+PC9vOnA+PC9wPg0KPC9ibG9ja3F1b3RlPg0KPGRpdj48YnI+
DQo8L2Rpdj4NCjxkaXY+SGF2ZSB5b3UgYmVlbiBhYmxlIHRvIGNyZWF0ZSBhIFZMUCB3aGljaCBj
YXVzZXMgdGJvb3QgdG8gZXh0ZW5kIHRoZSBUUE0ncyBzaGEyNTYgUENSIGJhbms/PC9kaXY+DQo8
ZGl2Pjxicj4NCjwvZGl2Pg0KPC9ibG9ja3F1b3RlPg0KPGRpdj48YnI+DQo8L2Rpdj4NCjxkaXY+
QWZ0ZXIgZGlnZ2luZyB0aHJvdWdoIHRoZSBjb2RlIHNvbWUgbW9yZSwgaXQgbG9va3MgbGlrZSB0
aGUga2V5IHRvIG1ha2luZyB0aGlzIHdvcmsgaXMgdG8gc3BlY2lmeSB0aGUgY29ycmVjdCAmcXVv
dDtleHRwb2w9JnF1b3Q7IHBhcmFtZXRlciBvbiB0aGUgdGJvb3QgY29tbWFuZCBsaW5lLiBJdCBh
cHBlYXJzIHRvIGJlIFRQTSBhbmQgQUNNIGRlcGVuZGVudCAoPykgc28gSSdtIG5vdCBzdXJlIHRo
aXMgd2lsbCB3b3JrIGZvciBldmVyeW9uZSwgYnV0IG9uDQogbXkgc3lzdGVtICZxdW90O2V4dHBv
bD1lbWJlZGRlZCZxdW90OyBjYXVzZWQgdGJvb3QgdG8gZXh0ZW5kIGFsbCBvZiB0aGUgVFBNIFBD
UiBiYW5rczsgJnF1b3Q7ZXh0cG9sPWFnaWxlJnF1b3Q7IG9uIG15IHN5c3RlbSBjYXVzZWQgdGhl
IEFDTSB0byByZXNldCB0aGUgc3lzdGVtLjwvZGl2Pg0KPGRpdj48YnI+DQo8L2Rpdj4NCjxkaXY+
LVBhdWw8L2Rpdj4NCjxkaXY+PGJyPg0KPC9kaXY+DQo8YmxvY2txdW90ZSB0eXBlPSJjaXRlIiBz
dHlsZT0ibWFyZ2luOjAgMCAwIC44ZXg7IGJvcmRlci1sZWZ0OjJweCAjNzI5ZmNmIHNvbGlkO3Bh
ZGRpbmctbGVmdDoxZXgiPg0KPHByZT48L3ByZT4NCjwvYmxvY2txdW90ZT4NCjwvYm9keT4NCjwv
aHRtbD4NCg==

--_000_f2a750a91b3739951ea170c76e96f136c9d2fe2acamelciscocom_--


--===============7284881305740534865==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============7284881305740534865==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel

--===============7284881305740534865==--

