Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E4C3151D9F
	for <lists+tboot-devel@lfdr.de>; Tue,  4 Feb 2020 16:48:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:To:Sender:Cc:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tPVA+TsTNxFP01J90u04KoWkVwMudcnk0687o739LW8=; b=RLgKV75uGHSXx/UZpUKAIIUkE
	d3NqVVCWTr77LDCvBoBHYO8fexxhqkvjCjzXBdcvkC2GNtiRaoRbSv83Uv2VmyNDrnfHfwKmovfyU
	4FMXp0Kd6alsqpKx+Zy3sNgjHogvA9UHC7r/Qyv70liB66yh+VNmFXbnTXKmf1AQbrYZQ=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1iz0RJ-0003d9-Uc; Tue, 04 Feb 2020 15:48:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pmoore2@cisco.com>) id 1iz0RH-0003cw-Pw
 for tboot-devel@lists.sourceforge.net; Tue, 04 Feb 2020 15:48:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:
 Reply-To:Cc:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wdhBGGaisKjCdfAtRFwRkFP2XeIVbH7bm95D6V+pcWo=; b=cOMw3Rgi04jCODpw7m5LF1/JRJ
 iwHn8yTt/PraXl/9imJDpAjMMyYqeIRRxMcHyZQv9Pm2QKq78Nu0e/jPOzGUU6wn9nz9sppljjqzE
 gi6bURxe35UU7miALv1wiCDrMv+kI4Qan0wBxUx5YPbATN2MxnUsiKOc99zAF9lpvqe0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wdhBGGaisKjCdfAtRFwRkFP2XeIVbH7bm95D6V+pcWo=; b=YErSDJgrhUOKAaK7MPo8e1y1rX
 /LY8XKFnNdo8ayI/Is3DBuNSLDq4z3WD5uqFQQkGmBFVa3+5ZjEOIv8Ad8AHNut4QHjC7W78MsJK4
 G3mnpmoRWAhiF6/nQ4MlCgLgaTUuJott1REp13u74OUdT8LqWUmabXlBlpOiAtqxPDZ4=;
Received: from rcdn-iport-3.cisco.com ([173.37.86.74])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps (TLSv1.2:DHE-RSA-SEED-SHA:128)
 (Exim 4.92.2) id 1iz0RC-00Gljh-5F
 for tboot-devel@lists.sourceforge.net; Tue, 04 Feb 2020 15:48:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=cisco.com; i=@cisco.com; l=5338; q=dns/txt; s=iport;
 t=1580831310; x=1582040910;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=wdhBGGaisKjCdfAtRFwRkFP2XeIVbH7bm95D6V+pcWo=;
 b=FdyzaqtrAsLPE+Q6R0812E4+//02kk+KfOecb9oxOx5T81Jaa02QjfDE
 VXqNpL++Y3KYX4GLDqxARS8JL8/FnFRqEneeUN5BIGIteqpeNuND8SOPE
 41STZz2yvYVYZgQ1L5gPRbTZP1eL/THCu1rUWCj7tJ/vakBQCRc0wnPVo c=;
IronPort-PHdr: =?us-ascii?q?9a23=3A6MgTHRFyydL4/FwqhPqNxp1GYnJ96bzpIg4Y7I?=
 =?us-ascii?q?YmgLtSc6Oluo7vJ1Hb+e4z1A3SRYuO7fVChqKWqK3mVWEaqbe5+HEZON0pNV?=
 =?us-ascii?q?cejNkO2QkpAcqLE0r+eebvaCsgEZ5qX15+9Hb9Ok9QS47z?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0AsAwC2kTle/5tdJa1lGwEBAQEBAQE?=
 =?us-ascii?q?FAQEBEQEBAwMBAQGBe4FUUAVsWCAECyoKhAqDRgOLAE6CEZgPgUKBEANUCQE?=
 =?us-ascii?q?BAQwBARgLCgIBAYRAAheCICQ4EwIDDQEBBAEBAQIBBQRthTcMhWYBAQEBAgE?=
 =?us-ascii?q?BARAREQwBASwMBAsCAQgYAgIUCwcCAgIlAQoVEAIEARIigwWCSgMOIAECDKF?=
 =?us-ascii?q?1AoE5iGJ1gTKCfwEBBYUeGIIMAwaBDiqMIoIahCQ+gmQBBIFJaIJBgl6BQwG?=
 =?us-ascii?q?MFIJ/iCeWaQYEgjuHSYknhVMbgkiMVotqLY40iGeSMwIEAgQFAg4BAQWBaSK?=
 =?us-ascii?q?BWHBQgR6BTlAYDY4dCRoVgzuEWYV6dIEpi0eBDQGBDwEB?=
X-IronPort-AV: E=Sophos;i="5.70,402,1574121600"; d="scan'208";a="701906915"
Received: from rcdn-core-4.cisco.com ([173.37.93.155])
 by rcdn-iport-3.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA;
 04 Feb 2020 15:48:20 +0000
Received: from XCH-RCD-008.cisco.com (xch-rcd-008.cisco.com [173.37.102.18])
 by rcdn-core-4.cisco.com (8.15.2/8.15.2) with ESMTPS id 014FmKvY026388
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=FAIL)
 for <tboot-devel@lists.sourceforge.net>; Tue, 4 Feb 2020 15:48:20 GMT
Received: from xhs-rtp-002.cisco.com (64.101.210.229) by XCH-RCD-008.cisco.com
 (173.37.102.18) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Tue, 4 Feb 2020 09:48:19 -0600
Received: from xhs-aln-003.cisco.com (173.37.135.120) by xhs-rtp-002.cisco.com
 (64.101.210.229) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Tue, 4 Feb 2020 10:48:17 -0500
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (173.37.151.57)
 by xhs-aln-003.cisco.com (173.37.135.120) with Microsoft SMTP Server (TLS) id
 15.0.1473.3 via Frontend Transport; Tue, 4 Feb 2020 09:48:17 -0600
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VjvkWOw96T9cMbnFKYtJWotdLGbp7OWsr+/06VcItNBn1CDld3z1neeT/7Rv0fu6Tcp52o6UhGx/hPc5ixJGKaulqovnVj7sElGeQ//ljhP0xrgWSv06Zr2jevxT6Kl05xmjO65arXK3x8YssJbb3QR12ZUnjR1e80040iazzeJYUYhE3wG6Knkv1Qj5VlodIcRP0R1BpG/2ru1LRrPZvViwVj45yALo8lMp53fglKvC/rwScFjDujILDsVOuZqlkFMC+5IXrP/JLCf8DIDvbHbrkC1aHr4H+x+xt2WT4V2wdl4DAqTQJpjPVnPuzoywEbkGwsqLTWuQiqJewMoikg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wdhBGGaisKjCdfAtRFwRkFP2XeIVbH7bm95D6V+pcWo=;
 b=B7DJKVeK3ikNsTIE45Mybrw9sHmdj2Tfpe2CcTRFVM/9nmXJQNgUjDte4vEILls+a3d6TO7yBt5mlR903+YTxLFp+0YQxGYAsVcLVX2wt4Dc1aZQW9unIUmqCHUO+/ayyjtiaTf++PIy5+SOQZTHBEcbuDGFGQGl0l8+iJywbbmgwZt7jTqKS84Hb+LamFbT+YT4zl4j/B18Caf2vebVwFqQ/raDWYVMAZJsWQCz6dPQv8UkcKtPu00dUUkLRBXk2Pxygd91lW4e0SslijWhvRMDsRckdtwT89BV/GNEBTCa8ZwPvxQaVeOKCe4SpUsBcAVO0OdpDaiH0kPH7KeotQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cisco.com; dmarc=pass action=none header.from=cisco.com;
 dkim=pass header.d=cisco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cisco.onmicrosoft.com; 
 s=selector2-cisco-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wdhBGGaisKjCdfAtRFwRkFP2XeIVbH7bm95D6V+pcWo=;
 b=Dhfdw0DcUhxC8ff3I4n8n1YUN1GzHHfkwN2AeWygnbb5p6H6KOmsIEwUc6NEa27Ej9hcKSjmeYnRZax7K8R4pC5M6uHViWqu0W2s/dMVlcVO+16Yqqo5jyfbfRcudg4z8M6JZuubryA4ReP4y/RXGjzOLAb8bCAtvdepJVEeK08=
Received: from BN7PR11MB2866.namprd11.prod.outlook.com (52.135.246.157) by
 BN7PR11MB2865.namprd11.prod.outlook.com (52.135.254.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.32; Tue, 4 Feb 2020 15:48:15 +0000
Received: from BN7PR11MB2866.namprd11.prod.outlook.com
 ([fe80::cd3e:44d9:e156:8a93]) by BN7PR11MB2866.namprd11.prod.outlook.com
 ([fe80::cd3e:44d9:e156:8a93%5]) with mapi id 15.20.2686.034; Tue, 4 Feb 2020
 15:48:15 +0000
To: "olivier.leroy@external.thalesgroup.com"
 <olivier.leroy@external.thalesgroup.com>,
 "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Thread-Topic: [tboot-devel] Intel TXT + TBOOT + TPM 2.0: can't get LCP_ANY
 policy working on Supermicro X11SPM-TF
Thread-Index: AQHV22EGqt0P81817Ums16JNP8TN2qgLHGKAgAABlEOAABBNAA==
Date: Tue, 4 Feb 2020 15:48:15 +0000
Message-ID: <c0af7e84a1bef4ff69a943cdfcb57cbf2914f94e.camel@cisco.com>
References: <3efd665c3f1b4681a0414f12c9c4e666@external.thalesgroup.com>	,
 <19895b6c0f53d73cf695e251cfd0b058c963b67a.camel@cisco.com>
 <bd789e03f5bb40b0a9cf0e734094a39c@external.thalesgroup.com>
In-Reply-To: <bd789e03f5bb40b0a9cf0e734094a39c@external.thalesgroup.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pmoore2@cisco.com; 
x-originating-ip: [173.38.117.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6ac1b770-3d08-4349-af92-08d7a989a625
x-ms-traffictypediagnostic: BN7PR11MB2865:|BN7PR11MB2865:
x-microsoft-antispam-prvs: <BN7PR11MB2865BA4A839B4A655D091773F8030@BN7PR11MB2865.namprd11.prod.outlook.com>
x-ms-exchange-transport-forked: True
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 03030B9493
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(376002)(136003)(39860400002)(366004)(189003)(199004)(2906002)(66946007)(186003)(66476007)(66556008)(76116006)(6512007)(64756008)(26005)(66446008)(5660300002)(36756003)(2616005)(91956017)(86362001)(8936002)(966005)(81156014)(81166006)(8676002)(6506007)(110136005)(316002)(66574012)(478600001)(6486002)(71200400001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN7PR11MB2865;
 H:BN7PR11MB2866.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: cisco.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qpzpJexhPCAjElhDWm1e2Zrl3TMa+2rUHcspJ3XqCH2aBcmoXDczIdC6LnSwAou8xQ/C0LyaHP1C7Ox/2GeJKydvm818nuHcHRDNUu0XquQqFZTL+Is1tleXfDXmDuLtDYbOryabEy/UodsaqJNnKTZfWgqfRe7nfhZfiH3DbR46Up9oEG8c8VQs1tG+QYPiv1jGrMgqysIcbEYW+u+fcOcvUCWZa81Q12dLzcqDw8a8/vU9/ECNDR1PlDIDineAfc9SLulvPw7vMJL2qF9D83yu/DSb09vgaVav6xN5OluX18HOn95PqIsMHf60CZGiQBdPtIAJQznQl2kGm6mHix7Toy2ni+cYZ5r0n/TJKofvI5dmFHm3QyyiOuit4ov8Rhai6T4CTrQYhCtiX2DJnd/E4zUWH1KJMWFe+lJtG0oaVq4OLYLWplH+XG89Fw4IySBa1PrjFPuscAR8SO8OUXeBLLCRNah4HBFt7qco/Z4TwftB4iVihfbbx9vNe1gZ3DlkFEFUYFCH+btJvIrpsQ==
x-ms-exchange-antispam-messagedata: iEh0bQ0d9csqg0jhXKV2AfFfx6xH9ppuXHghGrge576sRIS+P2vhZHGWzQJAXA4e0kWT1dK7e0xqkYEKYF9XRCDjn7VeBdDpryxprEuddwpLiD3FTA7ri/uSHUkBA03KdVm170KC+yUKfB9k3+Lzow==
Content-ID: <4B419D4AFA1C3D499F18B3838DF404B5@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ac1b770-3d08-4349-af92-08d7a989a625
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Feb 2020 15:48:15.6337 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YgR8N/7KTJJ20D3JUumpehqfKqWYVfzh/67+cWPceq6QxD5xyXcLPMmSPlvNjLuK3Yb/0cgiLL7VBvemM2lLqg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2865
X-OriginatorOrg: cisco.com
X-Outbound-SMTP-Client: 173.37.102.18, xch-rcd-008.cisco.com
X-Outbound-Node: rcdn-core-4.cisco.com
X-Spam-Score: -7.6 (-------)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: cisco.com]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [173.37.86.74 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM white-list
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iz0RC-00Gljh-5F
Subject: Re: [tboot-devel] Intel TXT + TBOOT + TPM 2.0: can't get LCP_ANY
 policy working on Supermicro X11SPM-TF
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: tboot-devel-bounces@lists.sourceforge.net

T24gVHVlLCAyMDIwLTAyLTA0IGF0IDE0OjU5ICswMDAwLCBMRSBST1kgT2xpdmllciAtIENvbnRy
YWN0b3Igd3JvdGU6DQo+IEhpLA0KPiANCj4gdGhhbmtzIGZvciB0aGlzIGNoZWNrbGlzdCAsIGJ1
dCB1bmZvcnR1bmF0ZWx5LCBJIGFscmVhZHkgb2JzZXJ2ZWQNCj4gdGhlc2UgbWFuaXB1bGF0aW9u
cywgd2l0aG91dCBzdWNjZXNzLg0KPiANCj4gSSBtdXN0IHNheSB0aGUgc2FtZSBhdHRlbXB0IHdh
cyBkb25lIG9uIHR3byBTdXBlcm1pY3JvIHBsYXRmb3Jtcw0KPiAoQnJvZHdlbGwgYmFzZWQgYW5k
IENhc2NhZGUgTGFrZSBiYXNlZCkgd2l0aCBzYW1lIHJlc3VsdDoNCj4gDQo+IFRCT09UOiAgICAg
OjcwIGJ5dGVzIHJlYWQNCj4gVEJPT1Q6ICAgICA6cmVhZGluZyBmYWlsZWQNCg0KSSdtIHNvcnJ5
IHRvIGhlYXIgdGhhdCBkaWRuJ3QgaGVscC4gIFVuZm9ydHVuYXRlbHkgdGhlIHRib290IGNvZGUg
dGhhdA0KcmVhZHMgdGhlIExDUCBkb2Vzbid0IHByb3ZpZGUgYSBsb3Qgb2YgZGV0YWlsZWQgaW5m
b3JtYXRpb24gYnkgZGVmYXVsdDsNCnlvdSBtYXkgbmVlZCB0byBpbnN0cnVtZW50IHRoZSB0Ym9v
dCBjb2RlIHRvIGRlYnVnIHRoaXMgZnVydGhlci4NCg0KSWYgeW91IGhhdmVuJ3QgZm91bmQgaXQg
YWxyZWFkeSwgYSBnb29kIHN0YXJ0aW5nIHBvaW50IGlzIHRoZQ0KdGJvb3QvY29tbW9uL3BvbGlj
eS5jOnNldF9wb2xpY3koKSBmdW5jdGlvbi4NCg0KPiBEZSA6IFBhdWwgTW9vcmUgKHBtb29yZTIp
IDxwbW9vcmUyQGNpc2NvLmNvbT4NCj4gRW52b3nDqSA6IG1hcmRpIDQgZsOpdnJpZXIgMjAyMCAx
NTo0NA0KPiDDgCA6IExFIFJPWSBPbGl2aWVyIC0gQ29udHJhY3RvcjsgdGJvb3QtZGV2ZWxAbGlz
dHMuc291cmNlZm9yZ2UubmV0DQo+IE9iamV0IDogUmU6IFt0Ym9vdC1kZXZlbF0gSW50ZWwgVFhU
ICsgVEJPT1QgKyBUUE0gMi4wOiBjYW4ndCBnZXQNCj4gTENQX0FOWSBwb2xpY3kgd29ya2luZyBv
biBTdXBlcm1pY3JvIFgxMVNQTS1URg0KPiAgDQo+IE9uIFR1ZSwgMjAyMC0wMi0wNCBhdCAxMzo1
MCArMDAwMCwgTEUgUk9ZIE9saXZpZXIgLSBDb250cmFjdG9yIHdyb3RlOg0KPiA+IFRoZXNlIHR3
byBwb2xpY2llcyBmYWlsIHdpdGggZm9sbG93aW5nIHRib290IGVycm9yOg0KPiA+IFRCT09UOiBu
byBTSU5JVCBwcm92aWRlZCBieSBib290bG9hZGVyOyB1c2luZyBCSU9TIFNJTklUDQo+ID4gLi4u
DQo+ID4gVEJPT1Q6IHJlYWRpbmcgVmVyaWZpZWQgTGF1bmNoIFBvbGljeSBmcm9tIFRQTSBOVi4u
Lg0KPiA+IFRCT09UOiBUUE06IGZhaWwgdG8gZ2V0IHB1YmxpYyBkYXRhIG9mIDB4MDFDMTAxMzEg
aW4gVFBNIE5WDQo+ID4gVEJPT1Q6ICAgICA6cmVhZGluZyBmYWlsZWQNCj4gPiBUQk9PVDogcmVh
ZGluZyBMYXVuY2ggQ29udHJvbCBQb2xpY3kgZnJvbSBUUE0gTlYuLi4NCj4gPiBUQk9PVDogICAg
IDo3MCBieXRlcyByZWFkDQo+ID4gVEJPT1Q6ICAgICA6cmVhZGluZyBmYWlsZWQNCj4gPiBUQk9P
VDogZmFpbGVkIHRvIHJlYWQgcG9saWN5IGZyb20gVFBNIE5WLCB1c2luZyBkZWZhdWx0DQo+ID4g
VEJPT1Q6IHBvbGljeToNCj4gPiANCj4gPiBUaGUgcG9pbnQgaXMgdGhlIFNJTklUIEFDTSByZWFk
cyBteSBMQ1BfQU5ZIHBvbGljeSBmcm9tIFRQTTIgTlZyYW0NCj4gYnV0DQo+ID4gZG9lc24ndCBz
ZWVtIHRvIHVuZGVyc3RhbmQgaXQuDQo+ID4gDQo+ID4gVGhlcmUgYXJlIG5vIHJlYXNvbiBpbmRp
Y2F0ZWQgaW4gdGhlIFRCT09UIGxvZy4NCj4gPiANCj4gPiBPbmUgcmVhc29uIEkgdGhpbmsgb2Yg
Y291bGQgYmUgdGhhdCB0aGUgTlZyYW0gaW5kZXggMHgwMUMxMDEwNg0KPiB3YXNuJ3QNCj4gPiBk
ZWZpbmVkIHdpdGggcHJvcGVyIGF0dHJpYnV0ZXMuDQo+ID4gSSBkZWZpbmUgaXQgd2l0aDoNCj4g
PiANCj4gPiB0cG0yX252ZGVmaW5lIC14IDB4MDFjMTAxMDYgLWEgMHg0MDAwMDAwMSAtcyA3MCAt
dCAweDAyMDQwMDBhIC1QDQo+ID4gcGFzc3dvcmQNCj4gPiANCj4gPiBIb3Bpbmcgc29tZW9uZSB3
aWxsIGhlbHAgbWUgc29sdmUgdGhpcyBwcm9ibGVtLA0KPiANCj4gSGksDQo+IA0KPiBJJ20gbm90
IHN1cmUgaWYgdGhpcyB3b3VsZCBoZWxwLCBidXQgaGVyZSBpcyB0aGUgcHJvY2VzcyBJIHR5cGlj
YWxseQ0KPiBmb2xsb3cgd2hlbiBmaXJzdCBnZXR0aW5nIFRYVCB3b3JraW5nIG9uIGEgVFBNMiBz
eXN0ZW0uDQo+IA0KPiAxLiBSZXNldCAvIENsZWFyIHRoZSBUUE0gYW5kIFRha2UgT3duZXJzaGlw
DQo+IA0KPiBUaGlzIG1heSBub3QgYmUgc3RyaWN0bHkgbmVjZXNzYXJ5IGlmIHlvdSBjYW4gZ3Vh
cmFudGVlIHRoZSBUUE0gaXMgaW4NCj4gYQ0KPiBrbm93biBnb29kIHN0YXRlLCBidXQgaWYgeW91
IGFyZW4ndCBjZXJ0YWluIGFuZCB5b3UgZG9uJ3QgaGF2ZQ0KPiBhbnl0aGluZw0KPiBzdG9yZWQg
aW4gdGhlIFRQTSBJIHRoaW5rIGEgZnVsbCBUUE0gcmVzZXQvY2xlYXIgaXMgYSBzbWFydCBpZGVh
LiAgWW91DQo+IHR5cGljYWxseSBuZWVkIHRvIGRvIHRoZSBUUE0gY2xlYXIgdmlhIHRoZSBCSU9T
IG1lbnUgc3lzdGVtLCBhbmQgb24NCj4gc29tZQ0KPiBzeXN0ZW1zIHlvdSBuZWVkIGFuIGFkbWlu
L3N1cGVydmlzb3IgcGFzc3dvcmQgc2V0IGJlZm9yZSB5b3UgY2FuDQo+IGFjY2Vzcw0KPiB0aGUg
VFBNIGNsZWFyIG9wdGlvbi4gIE9uY2UgdGhlIFRQTSBpcyBjbGVhcmVkIHlvdSBjYW4gdGFrZSBv
d25lcnNoaXANCj4gd2l0aCB0aGUgZm9sbG93aW5nIGNvbW1hbmQ6DQo+IA0KPiAgICMgdHBtMl90
YWtlb3duZXJzaGlwIC1vIDxwYXNzd29yZD4gLWUgPHBhc3N3b3JkPiAtbCA8cGFzc3dvcmQ+DQo+
IA0KPiAyLiBEZWZpbmUgdGhlIExDUCBJbmRleA0KPiANCj4gWW91IGFscmVhZHkga25vdyBob3cg
dG8gZG8gdGhpcywgYnV0IGFmdGVyIHlvdSBjbGVhciB0aGUgVFBNIHlvdSB3aWxsDQo+IG5lZWQg
dG8gcmVkZWZpbmUgdGhlIE5WUkFNIGluZGV4IG9uIHRoZSBUUE0uDQo+IA0KPiAgICMgdHBtMl9u
dmRlZmluZSAteCAweDFjMTAxMDYgLWEgMHg0MDAwMDAwMSAtUCA8cGFzc3dvcmQ+IFwNCj4gICAg
ICAgICAgICAgICAgICAgLXMgNzAgLXQgMHgyMDQwMDBBDQo+IA0KPiAzLiBXcml0ZSB0aGUgVFBN
J3MgUG9ydGlvbiBvZiB0aGUgTENQIGludG8gdGhlIFRQTQ0KPiANCj4gVGhlIExDUCBpcyB0b28g
bGFyZ2UgdG8gZml0IGludG8gdGhlIFRQTSBzbyB3ZSBzcGxpdCBpbnRvICouZGF0YSBhbmQNCj4g
Ki5wb2wgZmlsZXMgd2hlbiBnZW5lcmF0aW5nIGl0IHZpYSB0aGUgbGNwMl9jcnRwb2wgdG9vbC4g
IFlvdSdsbCB3YW50DQo+IHRvDQo+IHBhc3MgdGhlICouZGF0YSBmaWxlIHRvIHRib290IGR1cmlu
ZyBib290IGFuZCB0aGUgKi5wb2wgZmlsZQ0KPiAobGlzdHMucG9sDQo+IGluIHRoZSBleGFtcGxl
IGJlbG93KSB5b3UnbGwgd2FudCB0byB3cml0ZSB0byB0aGUgVFBNIHVzaW5nIHRoZQ0KPiBmb2xs
b3dpbmcgY29tbWFuZDoNCj4gDQo+ICAgIyB0cG0yX252d3JpdGUgLXggMHgxYzEwMTA2IC1hIDB4
NDAwMDAwMDEgLVAgPHBhc3N3b3JkPiBsaXN0cy5wb2wNCj4gDQo+IEhvcGVmdWxseSB0aGF0IGdl
dHMgeW91IGNsb3NlciB0byBhIHdvcmtpbmcgc3lzdGVtLiAgSSdtIGluIHRoZQ0KPiBwcm9jZXNz
DQo+IG9mIHdyaXRpbmcgdXAgc29tZSBiZXR0ZXIgbm90ZXMsIEknbGwgc2VuZCBhIG5vdGUgdG8g
dGhlIGxpc3Qgd2hlbg0KPiB0aGV5DQo+IGFyZSBhdmFpbGFibGUuDQo+IA0KPiBHb29kIGx1Y2sh
DQo+IA0KPiAtUGF1bA0KPiANCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18NCj4gdGJvb3QtZGV2ZWwgbWFpbGluZyBsaXN0DQo+IHRib290LWRldmVsQGxp
c3RzLnNvdXJjZWZvcmdlLm5ldA0KPiBodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0
cy9saXN0aW5mby90Ym9vdC1kZXZlbA0KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCnRib290LWRldmVsIG1haWxpbmcgbGlzdAp0Ym9vdC1kZXZlbEBsaXN0
cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlz
dGluZm8vdGJvb3QtZGV2ZWwK
