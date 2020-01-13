Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E60DB139AC8
	for <lists+tboot-devel@lfdr.de>; Mon, 13 Jan 2020 21:34:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Reply-To:From:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:
	MIME-Version:In-Reply-To:References:Message-ID:Date:To:Sender:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/a7ikFA1wthTuTCnUvGka8svFXUa36Y3Qsw963jR55I=; b=Fr7Ghj3KSsmqUCN/dD3HTSlU2
	OaB2XLPnPQnMLpAxIOqe6F39BkHAbJQ4OCvAi5/k9qZQ/LfVVs1pxJaWLz3D6f617UnfeVoIT4xIR
	gCDS2qTgp6+Ng5ev3hUAq444uyAHjvOa8PNM11vYxpd5CEJZLLyqZ40m4lTpEdDwAFrXU=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1ir6Pg-0006xG-RX; Mon, 13 Jan 2020 20:34:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pmoore2@cisco.com>) id 1ir6Pf-0006x9-Ee
 for tboot-devel@lists.sourceforge.net; Mon, 13 Jan 2020 20:34:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DjIOnEe3amfhoeuI1p/gsgPd5W2c866S66F3sfL22QQ=; b=nRwOiXquyAhb2lbUA4HDCfxTvn
 WXPK6n/7ynWqKcygtS/IXJG2PkxIItCJ1t2156glixuTh3KSOXaHen8fKY+jvQ53RTy9HVyK/QPgj
 pFGHQ6WGoaomBEYp0gYi/QOqG1TzZ9kYmOgESrC1qhlCZtC2ZOtsXu6BhKTrDs2Bvazc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DjIOnEe3amfhoeuI1p/gsgPd5W2c866S66F3sfL22QQ=; b=APe1BykSEj2KNeUPkuOkjrUoi4
 FuoO3OWncXnde8roWij4IYcmQYeRNcdYv5MVwbTUx2o/KNAtOSS160KNaMVTAh/Vm58oCvZ+ooM6s
 xLTrb/SLMChNNdaqmjhSvoqcglMjOyqpgHgphb4Etsu7CA3bJUm/n9KT92s/uKPs1js0=;
Received: from alln-iport-4.cisco.com ([173.37.142.91])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps (TLSv1.2:DHE-RSA-SEED-SHA:128)
 (Exim 4.92.2) id 1ir6Pb-001MTP-3Z
 for tboot-devel@lists.sourceforge.net; Mon, 13 Jan 2020 20:34:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=cisco.com; i=@cisco.com; l=7868; q=dns/txt; s=iport;
 t=1578947651; x=1580157251;
 h=from:to:subject:date:message-id:references:in-reply-to:
 mime-version; bh=DjIOnEe3amfhoeuI1p/gsgPd5W2c866S66F3sfL22QQ=;
 b=HJSrkWtsbzcLi4NlOS8MF7RTTZYF1n7BRLuIX0eyOKxz0rFrlGh3YvY+
 dhIaU/mS2jp8B4oJxQiTYmJH72m03XW9CiR+7cgjpkxS4qh/4zbY7w5q3
 DOHIb+uLMdH+BsKUJmSdSEzY53v2iyo6kemHx8eAnGdKN738qpbZS3NDN 0=;
IronPort-PHdr: =?us-ascii?q?9a23=3AyBwW3BftzrCLBC/xS1hWpzeAlGMj4e+mNxMJ6p?=
 =?us-ascii?q?chl7NFe7ii+JKnJkHE+PFxlwGRD57D5adCjOzb++D7VGoM7IzJkUhKcYcEFn?=
 =?us-ascii?q?pnwd4TgxRmBceEDUPhK/u/dyk9G95PDndu/mqwNg5eH8OtL1A=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0BoNgAG1Bxe/5xdJa1PFhwBAQE4AQQ?=
 =?us-ascii?q?EAQECAQcBAYFVgVJQBYFEIAQLKgqEAoNGA4sFToIRkyuEYoJSA1QGAwEBAQw?=
 =?us-ascii?q?BAS0CAQGEQAIXgWEkOBMCAw0BAQQBAQECAQUEbYU3DIVfAgEDEhEdAQE4DwI?=
 =?us-ascii?q?BCCsXAgICMCUCBAE0hQJNAy4BAp9oAoE4iBQBTHWBMoJ+AQEFhSIYggwJN38?=
 =?us-ascii?q?BhRyGfIIahCQ+hAYcgzeCXoFDAY8JhVeYJ3UGBII3li0bmmyOW5p2AgQCBAU?=
 =?us-ascii?q?CDgEBBYFpIoFYcIFugU5QGA2IDBiDUIpTdIEoiTSBMwGBDwEB?=
X-IronPort-AV: E=Sophos;i="5.69,430,1571702400"; 
 d="scan'208,217";a="404125972"
Received: from rcdn-core-5.cisco.com ([173.37.93.156])
 by alln-iport-4.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA;
 13 Jan 2020 20:33:52 +0000
Received: from XCH-RCD-009.cisco.com (xch-rcd-009.cisco.com [173.37.102.19])
 by rcdn-core-5.cisco.com (8.15.2/8.15.2) with ESMTPS id 00DKXq1K031418
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=FAIL);
 Mon, 13 Jan 2020 20:33:52 GMT
Received: from xhs-rtp-001.cisco.com (64.101.210.228) by XCH-RCD-009.cisco.com
 (173.37.102.19) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Mon, 13 Jan 2020 14:33:51 -0600
Received: from xhs-rtp-002.cisco.com (64.101.210.229) by xhs-rtp-001.cisco.com
 (64.101.210.228) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Mon, 13 Jan 2020 15:33:49 -0500
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (64.101.32.56) by
 xhs-rtp-002.cisco.com (64.101.210.229) with Microsoft SMTP Server
 (TLS) id
 15.0.1473.3 via Frontend Transport; Mon, 13 Jan 2020 15:33:49 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BCksZ6YnJDz9zDU9F+PZbbTDTFDQLG8vzqsWaC9JwK9c+fLBLt+4J000EqEU0WBRjajYKmZ95m8FsFKF3UodOYLLecVRQbRRWlTiqHo5imdUQHxe8mpw2NJv/wCGr+aoJCyjYTHEGTzVS99d7IT1UbFDjqmmd7h/PvVALIQNHDx+fnUDM2BLh/me9pmd282bSVfmIgdORa+/G3POrKa/jKdxLkhdOM702YcCEB8D+r0vBv27VPdeEDzpxjOYiCNplT3KlGsEraXD/Jhvh6tOgmLHEz9qaamRyQgg8N88T/NHaCdVlCiCfkYlxIvBwJhn5Btt1jHpNN2fkwBs3ohPaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DjIOnEe3amfhoeuI1p/gsgPd5W2c866S66F3sfL22QQ=;
 b=f8mEgknfZCQ7p7DMWrmTC00AhGGd1e3FJAxmQiMltpEZL9HRFi1YgjYX/ws697dbWm9jrnvDQbTyUfJcERZv+CQqXkmm8vI3f9vKpedFrNjZ51Y2NKIWFLrUxRHS4PI+GQC5wVJxVPZFjW3qDrZd/Rr6VzSpsDZXtyimX0uYtb+xataOCup26h82TXrowoUkMpZpQGE78OyMdXkIJj7H8XxMVl/EA9ZaNXN9n0gQKAPEGIoUqUooguqm7sn7Lm7nxMhrNuq20hw/p+GtgZgRMvCozFxFypmDL/muNH/imt67XRITxfiHJFFxZmD7Fvqmswf7Ny2FeHfN/vI08epDow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cisco.com; dmarc=pass action=none header.from=cisco.com;
 dkim=pass header.d=cisco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cisco.onmicrosoft.com; 
 s=selector2-cisco-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DjIOnEe3amfhoeuI1p/gsgPd5W2c866S66F3sfL22QQ=;
 b=r4oxm0O8QOpHnpIXr5/E3GeIqs9sjejDr5NwZ5EKREXISobRYhrNtNNvGDQRNUvaPkNUreUIoDWGYYqgXv/x2zRxM9NUr9JSVtvp/w0YOv4jAFNhnCUD1HTwD2ObnS+FLI+SX8RVgbkzfF3wbszJZoxd63ELF4igqaYoUYxCiro=
Received: from BN7PR11MB2866.namprd11.prod.outlook.com (52.135.246.157) by
 BN7PR11MB2723.namprd11.prod.outlook.com (52.135.242.153) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.10; Mon, 13 Jan 2020 20:33:48 +0000
Received: from BN7PR11MB2866.namprd11.prod.outlook.com
 ([fe80::f57d:c6e:3ec:c65a]) by BN7PR11MB2866.namprd11.prod.outlook.com
 ([fe80::f57d:c6e:3ec:c65a%7]) with mapi id 15.20.2623.015; Mon, 13 Jan 2020
 20:33:48 +0000
To: "lukasz.hawrylko@intel.com" <lukasz.hawrylko@intel.com>,
 "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Thread-Topic: [tboot-devel] VLP policy and TPM2 hash agility
Thread-Index: AQHVwbvDFL0LDZYScESwnSphPlBBU6fZX0EAgAAFX4CACRLBgIAGpqqA
Date: Mon, 13 Jan 2020 20:33:48 +0000
Message-ID: <274b39c26ab00d63acecb2f68d0fca516943f8f9.camel@cisco.com>
References: <95c91cf5919cf3ebb3058e90bd6af64939dedee1.camel@cisco.com>
 <2c111f3585e0c048ae090e99be2eef9240bf3445.camel@cisco.com>
 <e72bc640db22e2460c41e9718f550a2a443e4a55.camel@cisco.com>
 <0101df1759aa0bfdf2b30c1696af474902c232a9.camel@intel.com>
In-Reply-To: <0101df1759aa0bfdf2b30c1696af474902c232a9.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pmoore2@cisco.com; 
x-originating-ip: [128.107.241.180]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 121ea582-c87a-4409-b95e-08d79867e4e7
x-ms-traffictypediagnostic: BN7PR11MB2723:
x-microsoft-antispam-prvs: <BN7PR11MB2723D71B49A86794B2154701F8350@BN7PR11MB2723.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 028166BF91
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(346002)(396003)(366004)(376002)(199004)(189003)(186003)(36756003)(6506007)(26005)(2616005)(86362001)(478600001)(81166006)(81156014)(8676002)(71200400001)(316002)(66476007)(66946007)(66556008)(5660300002)(76116006)(6486002)(110136005)(6512007)(91956017)(64756008)(66446008)(2906002)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN7PR11MB2723;
 H:BN7PR11MB2866.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: cisco.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 78WylTVOAWFILRQm1d/Ctbht+IXcl1tTU+dyL0+LUY8+wweu+mhOzmZoOzADcoz4OhNvk3FPOtBt4Pj273w80wtfdcWDlt7AL5Z8yw6XSaG6JwiUT1XWz1wp3OYDZxZgVrW6w7IxFceXmddduX+OQ+53xblpzPZynDYfRfbCoNuwALRkz2XWhuJ1Y5qQzOmfXaboSM6MvBCskRS48ORaBSMiaVpW5CoLZ50I2Ugz8I1x8g5a+nJxz54Y45vxXvld0/8LlffMCZarW+mawio7JwtPibmFEq+nWB/iMG94SMdoaWRehnxAIx3H0wcQD92TgBhrCf42StQH4+5fHVbjTfoWMM9PUa2FIfZ0Wat+1hoaUQiqcULnGHUgpMOIfAI4p475h5EuCe6Oh1PhUv+l3VqQH5MXOs3oOyHoHNr1XQmUzr/B2jOkFpBLFMAMxHB5
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 121ea582-c87a-4409-b95e-08d79867e4e7
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2020 20:33:48.3550 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IqmGWL/RyIHc93SoqJ4gHbM8PFqA1s6bWhK5QoopD4sird1gzXCeTPkZsKI92rO7748RwqU1smfzBsz1ubL5Ug==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2723
X-OriginatorOrg: cisco.com
X-Outbound-SMTP-Client: 173.37.102.19, xch-rcd-009.cisco.com
X-Outbound-Node: rcdn-core-5.cisco.com
X-Spam-Score: -6.6 (------)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM white-list
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1ir6Pb-001MTP-3Z
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
Content-Type: multipart/mixed; boundary="===============0184001610808245363=="
Errors-To: tboot-devel-bounces@lists.sourceforge.net

--===============0184001610808245363==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_274b39c26ab00d63acecb2f68d0fca516943f8f9camelciscocom_"

--_000_274b39c26ab00d63acecb2f68d0fca516943f8f9camelciscocom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCAyMDIwLTAxLTA5IGF0IDE0OjU5ICswMDAwLCBIYXdyeWxrbywgTHVrYXN6IHdyb3Rl
Og0KDQpPbiBGcmksIDIwMjAtMDEtMDMgYXQgMjA6MjYgKzAwMDAsIFBhdWwgTW9vcmUgKHBtb29y
ZTIpIHZpYSB0Ym9vdC1kZXZlbA0KDQp3cm90ZToNCg0KT24gRnJpLCAyMDIwLTAxLTAzIGF0IDIw
OjA3ICswMDAwLCBQYXVsIE1vb3JlIChwbW9vcmUyKSB2aWEgdGJvb3QtZGV2ZWwNCg0Kd3JvdGU6
DQoNCk9uIFRodSwgMjAyMC0wMS0wMiBhdCAyMjoyNyArMDAwMCwgUGF1bCBNb29yZSAocG1vb3Jl
MikgdmlhIHRib290LQ0KDQpkZXZlbA0KDQp3cm90ZToNCg0KSSBob3BlIGV2ZXJ5b25lIGhhZCBh
IG5pY2UgaG9saWRheSBhbmQgaXMgZW5qb3lpbmcgdGhlIG5ldyB5ZWFyIHRodXMNCg0KZmFyLg0K
DQoNCkFzIHlvdSd2ZSBzZWVuIGluIHRoZSBvdGhlciB0aHJlYWQsIEknbSBwbGF5aW5nIGFyb3Vu
ZCB3aXRoDQoNCmRpZmZlcmVudA0KDQp0Ym9vdC9UWFQgcG9saWNpZXMgYW5kIEkgaGF2ZSBhIHF1
ZXN0aW9uIHJlZ2FyZGluZyB0Ym9vdC9WTFANCg0KcG9saWNpZXMNCg0KdGhhdCBjYW4gZXh0ZW5k
IFBDUnMgdXNpbmcgc29tZXRoaW5nIG90aGVyIHRoYW4gU0hBMTogYXQgcHJlc2VudA0KDQp0Yl9w
b2xnZW4gc2VlbXMgbGltaXRlZCB0byB1c2luZyBTSEExLCBkb2VzIGFueW9uZSBoYXZlIGFueSBw
YXRjaGVzDQoNCnRvDQoNCnVzZSBTSEEyNTYgKG9yIGFub3RoZXIgaGFzaCk/DQoNCg0KVG8gYW5z
d2VyIG15IG93biBxdWVzdGlvbiwgaXQgYXBwZWFycyB0aGF0IEx1a2FzeiBhZGRlZCBzdXBwcG9y
dCBpbg0KDQo1NDk6Y2E5MzU3MDlkOGE2ICgiQWRkIHN1cHBvcnQgZm9yIFNIQTI1NiBpbiB0Yl9w
b2xnZW4iKS4NCg0KDQpMdWthc3osIGlmIEkgd2FudGVkIHRvIGdlbmVyYXRlIGJvdGggU0hBMSBh
bmQgU0hBMjU2IGhhc2hlcyBmb3IgYSBUUE0yDQoNCnN5c3RlbSwgd291bGQgSSBuZWVkIHRvIGNy
ZWF0ZSB0d28gcnVsZXMgaW4gdGhlIFZMUD8gIEZvciBleGFtcGxlIEkgZG8NCg0KdGhlIGZvbGxv
d2luZyBub3cgZm9yIHRoZSBUWFQvc2lnIHBhdGNoZXMgYW5kIFBDUjIwOg0KDQoNCiAjIHRiX3Bv
bGdlbiAtLWFkZCAtLW51bSAwIC0tcGNyIDIwIFwNCg0KICAgICAtLWhhc2ggcGVjb2ZmIHBlY29m
Zi52bHANCg0KDQouLi4gYnV0IHRoYXQgb25seSB3cml0ZXMgdGhlIFNIQTEgaGFzaCBpbnRvIFBD
UjIwLCBwcmVzdW1hYmx5IEkgY291bGQNCg0KZG8NCg0KdGhlIGZvbGxvd2luZyB0byBzdXBwb3J0
IGJvdGggaGFzaGVzPw0KDQoNCiAjIHRiX3BvbGdlbiAtLWFkZCAtLW51bSAwIC0tcGNyIDIwIC0t
YWxnIHNoYTEgXA0KDQogICAgIC0taGFzaCBwZWNvZmYgcGVjb2ZmLnZscA0KDQogIyB0Yl9wb2xn
ZW4gLS1hZGQgLS1udW0gMCAtLXBjciAyMCAtLWFsZyBzaGEyNTYgXA0KDQogICAgIC0taGFzaCBw
ZWNvZmYgcGVjb2ZmLnZscA0KDQoNCg0KSXQgYXBwZWFycyBJIGRpZG4ndCBsb29rIGNsb3NlIGVu
b3VnaCBhdCB0aGUgcGF0Y2gsIHRoZSBoYXNoIGFsZ29yaXRobQ0KDQpzZWxlY3Rpb24gaXMgZG9u
ZSBhdCBWTFAgcG9saWN5IGNyZWF0aW9uIGFuZCBhcHBsaWVzIHRvIGFsbCB0aGUgcnVsZXMuDQoN
Cg0KTHVrYXN6LCBpcyB0aGVyZSBhIHdheSB0byBnZW5lcmF0ZSBQQ1IgaGFzaGVzIGZvciBhbGwg
c3VwcG9ydGVkDQoNCmFsZ29yaXRobXMgbGlrZSB0Ym9vdCBkb2VzIGZvciBQQ1IxNy8xOD8NCg0K
DQotUGF1bA0KDQoNCg0KSGVsbG8gUGF1bA0KDQoNCkkgbG9va3MgbGlrZSB5b3UgY2FuJ3QgY3Jl
YXRlIHBvbGljeSB3aXRoIGRpZmZlcmVudCBoYXNoIGFsZ29yaXRobXMsDQoNCmxvb2sgYXQgdGJf
cG9saWN5X3Qgc3RydWN0dXJlIGluIHRiX3BvbGljeS5oIFRoZXJlIGlzIG9uZSBmaWVsZCBmb3IN
Cg0Kc2V0dGluZyBoYXNoIGFsZ29yaXRobSB0aGF0IGlzIGNvbW1vbiB0byBhbGwgcG9saWN5IGVu
dHJpZXMuDQoNCkhhdmUgeW91IGJlZW4gYWJsZSB0byBjcmVhdGUgYSBWTFAgd2hpY2ggY2F1c2Vz
IHRib290IHRvIGV4dGVuZCB0aGUgVFBNJ3Mgc2hhMjU2IFBDUiBiYW5rPw0KDQotUGF1bA0KDQo=

--_000_274b39c26ab00d63acecb2f68d0fca516943f8f9camelciscocom_
Content-Type: text/html; charset="utf-8"
Content-ID: <18A978E292A6C842B1706E0353AD2703@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64

PGh0bWwgZGlyPSJsdHIiPg0KPGhlYWQ+DQo8bWV0YSBodHRwLWVxdWl2PSJDb250ZW50LVR5cGUi
IGNvbnRlbnQ9InRleHQvaHRtbDsgY2hhcnNldD11dGYtOCI+DQo8L2hlYWQ+DQo8Ym9keSBzdHls
ZT0idGV4dC1hbGlnbjpsZWZ0OyBkaXJlY3Rpb246bHRyOyI+DQo8ZGl2Pk9uIFRodSwgMjAyMC0w
MS0wOSBhdCAxNDo1OSAmIzQzOzAwMDAsIEhhd3J5bGtvLCBMdWthc3ogd3JvdGU6PC9kaXY+DQo8
YmxvY2txdW90ZSB0eXBlPSJjaXRlIiBzdHlsZT0ibWFyZ2luOjAgMCAwIC44ZXg7IGJvcmRlci1s
ZWZ0OjJweCAjNzI5ZmNmIHNvbGlkO3BhZGRpbmctbGVmdDoxZXgiPg0KPHByZT5PbiBGcmksIDIw
MjAtMDEtMDMgYXQgMjA6MjYgJiM0MzswMDAwLCBQYXVsIE1vb3JlIChwbW9vcmUyKSB2aWEgdGJv
b3QtZGV2ZWw8L3ByZT4NCjxwcmU+d3JvdGU6PC9wcmU+DQo8YmxvY2txdW90ZSB0eXBlPSJjaXRl
IiBzdHlsZT0ibWFyZ2luOjAgMCAwIC44ZXg7IGJvcmRlci1sZWZ0OjJweCAjNzI5ZmNmIHNvbGlk
O3BhZGRpbmctbGVmdDoxZXgiPg0KPHByZT5PbiBGcmksIDIwMjAtMDEtMDMgYXQgMjA6MDcgJiM0
MzswMDAwLCBQYXVsIE1vb3JlIChwbW9vcmUyKSB2aWEgdGJvb3QtZGV2ZWw8L3ByZT4NCjxwcmU+
d3JvdGU6PC9wcmU+DQo8YmxvY2txdW90ZSB0eXBlPSJjaXRlIiBzdHlsZT0ibWFyZ2luOjAgMCAw
IC44ZXg7IGJvcmRlci1sZWZ0OjJweCAjNzI5ZmNmIHNvbGlkO3BhZGRpbmctbGVmdDoxZXgiPg0K
PHByZT5PbiBUaHUsIDIwMjAtMDEtMDIgYXQgMjI6MjcgJiM0MzswMDAwLCBQYXVsIE1vb3JlIChw
bW9vcmUyKSB2aWEgdGJvb3QtPC9wcmU+DQo8cHJlPmRldmVsPC9wcmU+DQo8cHJlPndyb3RlOjwv
cHJlPg0KPGJsb2NrcXVvdGUgdHlwZT0iY2l0ZSIgc3R5bGU9Im1hcmdpbjowIDAgMCAuOGV4OyBi
b3JkZXItbGVmdDoycHggIzcyOWZjZiBzb2xpZDtwYWRkaW5nLWxlZnQ6MWV4Ij4NCjxwcmU+SSBo
b3BlIGV2ZXJ5b25lIGhhZCBhIG5pY2UgaG9saWRheSBhbmQgaXMgZW5qb3lpbmcgdGhlIG5ldyB5
ZWFyIHRodXM8L3ByZT4NCjxwcmU+ZmFyLjwvcHJlPg0KPHByZT48YnI+PC9wcmU+DQo8cHJlPkFz
IHlvdSd2ZSBzZWVuIGluIHRoZSBvdGhlciB0aHJlYWQsIEknbSBwbGF5aW5nIGFyb3VuZCB3aXRo
PC9wcmU+DQo8cHJlPmRpZmZlcmVudDwvcHJlPg0KPHByZT50Ym9vdC9UWFQgcG9saWNpZXMgYW5k
IEkgaGF2ZSBhIHF1ZXN0aW9uIHJlZ2FyZGluZyB0Ym9vdC9WTFA8L3ByZT4NCjxwcmU+cG9saWNp
ZXM8L3ByZT4NCjxwcmU+dGhhdCBjYW4gZXh0ZW5kIFBDUnMgdXNpbmcgc29tZXRoaW5nIG90aGVy
IHRoYW4gU0hBMTogYXQgcHJlc2VudDwvcHJlPg0KPHByZT50Yl9wb2xnZW4gc2VlbXMgbGltaXRl
ZCB0byB1c2luZyBTSEExLCBkb2VzIGFueW9uZSBoYXZlIGFueSBwYXRjaGVzPC9wcmU+DQo8cHJl
PnRvPC9wcmU+DQo8cHJlPnVzZSBTSEEyNTYgKG9yIGFub3RoZXIgaGFzaCk/PC9wcmU+DQo8L2Js
b2NrcXVvdGU+DQo8cHJlPjxicj48L3ByZT4NCjxwcmU+VG8gYW5zd2VyIG15IG93biBxdWVzdGlv
biwgaXQgYXBwZWFycyB0aGF0IEx1a2FzeiBhZGRlZCBzdXBwcG9ydCBpbjwvcHJlPg0KPHByZT41
NDk6Y2E5MzU3MDlkOGE2ICgmcXVvdDtBZGQgc3VwcG9ydCBmb3IgU0hBMjU2IGluIHRiX3BvbGdl
biZxdW90OykuPC9wcmU+DQo8cHJlPjxicj48L3ByZT4NCjxwcmU+THVrYXN6LCBpZiBJIHdhbnRl
ZCB0byBnZW5lcmF0ZSBib3RoIFNIQTEgYW5kIFNIQTI1NiBoYXNoZXMgZm9yIGEgVFBNMjwvcHJl
Pg0KPHByZT5zeXN0ZW0sIHdvdWxkIEkgbmVlZCB0byBjcmVhdGUgdHdvIHJ1bGVzIGluIHRoZSBW
TFA/ICBGb3IgZXhhbXBsZSBJIGRvPC9wcmU+DQo8cHJlPnRoZSBmb2xsb3dpbmcgbm93IGZvciB0
aGUgVFhUL3NpZyBwYXRjaGVzIGFuZCBQQ1IyMDo8L3ByZT4NCjxwcmU+PGJyPjwvcHJlPg0KPHBy
ZT4gIyB0Yl9wb2xnZW4gLS1hZGQgLS1udW0gMCAtLXBjciAyMCBcPC9wcmU+DQo8cHJlPiAgICAg
LS1oYXNoIHBlY29mZiBwZWNvZmYudmxwPC9wcmU+DQo8cHJlPjxicj48L3ByZT4NCjxwcmU+Li4u
IGJ1dCB0aGF0IG9ubHkgd3JpdGVzIHRoZSBTSEExIGhhc2ggaW50byBQQ1IyMCwgcHJlc3VtYWJs
eSBJIGNvdWxkPC9wcmU+DQo8cHJlPmRvPC9wcmU+DQo8cHJlPnRoZSBmb2xsb3dpbmcgdG8gc3Vw
cG9ydCBib3RoIGhhc2hlcz88L3ByZT4NCjxwcmU+PGJyPjwvcHJlPg0KPHByZT4gIyB0Yl9wb2xn
ZW4gLS1hZGQgLS1udW0gMCAtLXBjciAyMCAtLWFsZyBzaGExIFw8L3ByZT4NCjxwcmU+ICAgICAt
LWhhc2ggcGVjb2ZmIHBlY29mZi52bHA8L3ByZT4NCjxwcmU+ICMgdGJfcG9sZ2VuIC0tYWRkIC0t
bnVtIDAgLS1wY3IgMjAgLS1hbGcgc2hhMjU2IFw8L3ByZT4NCjxwcmU+ICAgICAtLWhhc2ggcGVj
b2ZmIHBlY29mZi52bHA8L3ByZT4NCjxwcmU+PGJyPjwvcHJlPg0KPC9ibG9ja3F1b3RlPg0KPHBy
ZT48YnI+PC9wcmU+DQo8cHJlPkl0IGFwcGVhcnMgSSBkaWRuJ3QgbG9vayBjbG9zZSBlbm91Z2gg
YXQgdGhlIHBhdGNoLCB0aGUgaGFzaCBhbGdvcml0aG08L3ByZT4NCjxwcmU+c2VsZWN0aW9uIGlz
IGRvbmUgYXQgVkxQIHBvbGljeSBjcmVhdGlvbiBhbmQgYXBwbGllcyB0byBhbGwgdGhlIHJ1bGVz
LjwvcHJlPg0KPHByZT48YnI+PC9wcmU+DQo8cHJlPkx1a2FzeiwgaXMgdGhlcmUgYSB3YXkgdG8g
Z2VuZXJhdGUgUENSIGhhc2hlcyBmb3IgYWxsIHN1cHBvcnRlZDwvcHJlPg0KPHByZT5hbGdvcml0
aG1zIGxpa2UgdGJvb3QgZG9lcyBmb3IgUENSMTcvMTg/PC9wcmU+DQo8cHJlPjxicj48L3ByZT4N
CjxwcmU+LVBhdWw8L3ByZT4NCjxwcmU+PGJyPjwvcHJlPg0KPC9ibG9ja3F1b3RlPg0KPHByZT48
YnI+PC9wcmU+DQo8cHJlPkhlbGxvIFBhdWw8L3ByZT4NCjxwcmU+PGJyPjwvcHJlPg0KPHByZT5J
IGxvb2tzIGxpa2UgeW91IGNhbid0IGNyZWF0ZSBwb2xpY3kgd2l0aCBkaWZmZXJlbnQgaGFzaCBh
bGdvcml0aG1zLDwvcHJlPg0KPHByZT5sb29rIGF0IHRiX3BvbGljeV90IHN0cnVjdHVyZSBpbiB0
Yl9wb2xpY3kuaCBUaGVyZSBpcyBvbmUgZmllbGQgZm9yPC9wcmU+DQo8cHJlPnNldHRpbmcgaGFz
aCBhbGdvcml0aG0gdGhhdCBpcyBjb21tb24gdG8gYWxsIHBvbGljeSBlbnRyaWVzLjwvcHJlPg0K
PHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD48L286cD48L3A+DQo8L2Jsb2NrcXVvdGU+DQo8ZGl2
Pjxicj4NCjwvZGl2Pg0KPGRpdj5IYXZlIHlvdSBiZWVuIGFibGUgdG8gY3JlYXRlIGEgVkxQIHdo
aWNoIGNhdXNlcyB0Ym9vdCB0byBleHRlbmQgdGhlIFRQTSdzIHNoYTI1NiBQQ1IgYmFuaz88L2Rp
dj4NCjxkaXY+PGJyPg0KPC9kaXY+DQo8ZGl2Pi1QYXVsPC9kaXY+DQo8ZGl2Pjxicj4NCjwvZGl2
Pg0KPC9ib2R5Pg0KPC9odG1sPg0K

--_000_274b39c26ab00d63acecb2f68d0fca516943f8f9camelciscocom_--


--===============0184001610808245363==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============0184001610808245363==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel

--===============0184001610808245363==--

