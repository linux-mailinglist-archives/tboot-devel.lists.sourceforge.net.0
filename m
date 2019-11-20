Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 501D01046D4
	for <lists+tboot-devel@lfdr.de>; Thu, 21 Nov 2019 00:05:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:To:Sender:Cc:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qSAUtoxf3lf+rjbWz0zq5I6sLVYWNltJjlqtpQXsxEU=; b=k6UlWlBF+aOJaz/1VGQBf0ySK
	NN7MOwXzpN5gR7nizRizphSGP8Wj1JOG0feo0cOL74p6Knk6rmOrteLPBFJbrYTjmYcufW5yUHl+U
	RQKnaAB0wkBSZ/EtPrqD7gYGX8RWyCylPP36OqlBQUZdEExsyxKkF7Q4Zj1uXK6xV3LZo=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1iXZ2c-0002kw-19; Wed, 20 Nov 2019 23:05:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pmoore2@cisco.com>) id 1iXZ2a-0002kq-Kf
 for tboot-devel@lists.sourceforge.net; Wed, 20 Nov 2019 23:05:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:
 Reply-To:Cc:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=s0xN7ntB7uMbHFd5fJOiUbv3rWkeq7zxgRMynRndWp0=; b=HEwWNdPSm7HkXvrhGMHYXleiqr
 V8dWUSewBYfJblGz3n09idlGdnGZhoFo3epEPnP1uZ71r1aS2dAxXsrjnYbZ3rPYAQdYef51Mmfrc
 m7fdGBku9UBpdjlhA1qQION/mnHlPdY5PDR2WydasaKz04MWwbi9GwTRUprG6t+BJjWQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=s0xN7ntB7uMbHFd5fJOiUbv3rWkeq7zxgRMynRndWp0=; b=Yn/VgbVg2IQmzlGRhC2VN9shdB
 yi/T0o4rpGhipQcYfVmBzkl4nJZOgQIlHgx5WxsInNyUPyTQ1BPuGYnXwlAPlcbeKXmnpGLPGTJBm
 fSx6Thh+bxg1N46uKP+s+SorKinFHhhGVtqEd69xeogf/9QP+rPjGAbBtXUPXc4b42DA=;
Received: from rcdn-iport-7.cisco.com ([173.37.86.78])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps (TLSv1.2:DHE-RSA-SEED-SHA:128)
 (Exim 4.92.2) id 1iXZ2Y-00ElN8-8d
 for tboot-devel@lists.sourceforge.net; Wed, 20 Nov 2019 23:05:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=cisco.com; i=@cisco.com; l=3802; q=dns/txt; s=iport;
 t=1574291138; x=1575500738;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=s0xN7ntB7uMbHFd5fJOiUbv3rWkeq7zxgRMynRndWp0=;
 b=M+B1KPvmQ86UT+w6UB+4apRdco/FUQVf40GnpmXr7Yg2VgzkQF1B5z1k
 HV7f3QWOqxR8OkbKC7oclRDz80Tpnr519Y7jJNxHXo0PArGe9RDe3hrM4
 8BNfT0QP92aiWAby3SFHWyljVql0s+1TJ5s1yVQ6zaGtm0Os/9+ptrUiA A=;
IronPort-PHdr: =?us-ascii?q?9a23=3AKpKXcBaFjLF+KGFW155Q7pH/LSx94ef9IxIV55?=
 =?us-ascii?q?w7irlHbqWk+dH4MVfC4el20gebRp3VvvRDjeee87vtX2AN+96giDgDa9QNMn?=
 =?us-ascii?q?1NksAKh0olCc+BB1f8Kavyais9BskYfFRk5Hq8d0NSHZW2ag=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0C4AACoxdVd/40NJK1lHAECAQEHARI?=
 =?us-ascii?q?BBAQBgWsHAQwBgUpQBWxYIAQLKgqEIINGA4RahhJOghCYAIEugSQDVAkBAQE?=
 =?us-ascii?q?MAQEjCgIBAYRAAheCECQ0CQ4CAw0BAQQBAQECAQUEbYU3AQuFUgEBAQMSERE?=
 =?us-ascii?q?MAQE4DwIBCBgCAiYCAgIwFRACBDWDAYJGAy4BAgykRAKBOIhgdYEygn4BAQW?=
 =?us-ascii?q?CSYJDGIIXAwaBDigBhRqGe4IXhCM+gmICgWGDEIJegUABjlSeHQYEgiuHGoU?=
 =?us-ascii?q?miQ8bgj6XVoskgySBQYZ3kVQCBAIEBQIOAQEFgVI5gVhwgW6BTlARFIZRARe?=
 =?us-ascii?q?DUIpTdIEojn8BgQ4BAQ?=
X-IronPort-AV: E=Sophos;i="5.69,223,1571702400"; d="scan'208";a="662209445"
Received: from alln-core-8.cisco.com ([173.36.13.141])
 by rcdn-iport-7.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA;
 20 Nov 2019 23:05:29 +0000
Received: from XCH-RCD-007.cisco.com (xch-rcd-007.cisco.com [173.37.102.17])
 by alln-core-8.cisco.com (8.15.2/8.15.2) with ESMTPS id xAKN5TLh001779
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=FAIL)
 for <tboot-devel@lists.sourceforge.net>; Wed, 20 Nov 2019 23:05:29 GMT
Received: from xhs-rtp-002.cisco.com (64.101.210.229) by XCH-RCD-007.cisco.com
 (173.37.102.17) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Wed, 20 Nov 2019 17:05:29 -0600
Received: from xhs-rcd-001.cisco.com (173.37.227.246) by xhs-rtp-002.cisco.com
 (64.101.210.229) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Wed, 20 Nov 2019 18:05:27 -0500
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (72.163.14.9) by
 xhs-rcd-001.cisco.com (173.37.227.246) with Microsoft SMTP Server
 (TLS) id
 15.0.1473.3 via Frontend Transport; Wed, 20 Nov 2019 17:05:27 -0600
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H2R8CM3MaeLKylfdBjGiNJCaWPHJjJidl7d4Q1mkKKs7n3VNedvUTGsh6pMWGznzBoMRHuCKvhrBCQ2r9w2sqR8fbk+a3ep+bDq3ytPluIJU1kD5ADcSwNmfnvTfkAGgphFyiHAiY5RAWA0PSVCyDObOqNtxMIRtTEL+myQv6dzPeP3CvUmHxW9wyKwT8RV1XGkFX6cz1DjfDPgW+6ddKzVtmrPeF/z5g5V58MepDj46gBKX7wwqWJqC++PvR5/ZsEgW2Df9UAviptDanvXr7jLKdUOMalddwwp07PfVF2Zh4HHrofDURn811wPwOqR4ovVhig5A1Gw0z1dYNGqkgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s0xN7ntB7uMbHFd5fJOiUbv3rWkeq7zxgRMynRndWp0=;
 b=TfZQQpCKw9cniaAKtypzrdMgNHCeiMf3n6otfRBXGOS+TBhGEwjbcBfFKT9lL4BHpJ+P3TQ0O61lfWRcWVOwVDDmuxbFoQQjjDLe94eqDblE3WdeQ560PttVWHwmnzA5sFyJx8sGJeY9+TLT/WATEnVy+8k1cVguboRGPIghQ11IuIWu1dq8sQ0IIvq/K3dVZ+mpls5pzqNdMMPO2pHP0T0fGGy+lv8qLO80HLIqCaAn6alD1UqSBaSFCy6kdHs/qF2PwDCMjYIg5z063vv4Fl5gXYEw3hgnx4jJ5HgxSz5jnzTfDPk2F/aYgAAKzsd1FLks0dQSKY1USzX8Cv84+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cisco.com; dmarc=pass action=none header.from=cisco.com;
 dkim=pass header.d=cisco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cisco.onmicrosoft.com; 
 s=selector2-cisco-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s0xN7ntB7uMbHFd5fJOiUbv3rWkeq7zxgRMynRndWp0=;
 b=lPyGDkDsl2FKuM4XbiGD3WGec1HUd7JhNJZUrEun6EwjzG+opIB2a1XKvYYh4wKdA7ue+O2UzsxBBODOimncnVFCTmaLIKYqoKM18+tW/CWlknJuv9i+IeLDB2ycItQbK5STtx5rHqjHlaKx+ItBdl4NwOwgfR6mStp4Z4ZEABI=
Received: from BN7PR11MB2866.namprd11.prod.outlook.com (52.135.246.157) by
 BN7PR11MB2771.namprd11.prod.outlook.com (52.135.252.158) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.17; Wed, 20 Nov 2019 23:05:26 +0000
Received: from BN7PR11MB2866.namprd11.prod.outlook.com
 ([fe80::fc28:bc87:48f1:e4cb]) by BN7PR11MB2866.namprd11.prod.outlook.com
 ([fe80::fc28:bc87:48f1:e4cb%3]) with mapi id 15.20.2474.018; Wed, 20 Nov 2019
 23:05:26 +0000
To: "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Thread-Topic: [tboot-devel] [RFC] tboot: kernel signature verification
Thread-Index: AQHVbwB0th12F6sDfUCgP40i/qpaH6dgkXwAgDR+gAA=
Date: Wed, 20 Nov 2019 23:05:25 +0000
Message-ID: <fbb29bfec178bb4b4d586df217d202fbe54430a4.camel@cisco.com>
References: <bbaf0eeb3ddb8791533fc9dfba23ed57d3a2c9bd.camel@cisco.com>
 <ba9fa4341c9b9fa27c8ea3229f879d25614a900f.camel@cisco.com>
In-Reply-To: <ba9fa4341c9b9fa27c8ea3229f879d25614a900f.camel@cisco.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pmoore2@cisco.com; 
x-originating-ip: [128.107.241.168]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a897a60e-4256-4162-5855-08d76e0e2135
x-ms-traffictypediagnostic: BN7PR11MB2771:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BN7PR11MB2771CC22E5A9DEA1857FB96CF84F0@BN7PR11MB2771.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 02272225C5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(136003)(396003)(366004)(376002)(53754006)(189003)(199004)(11346002)(5660300002)(476003)(2616005)(102836004)(6506007)(76176011)(71200400001)(26005)(15650500001)(71190400001)(186003)(25786009)(6246003)(6512007)(6306002)(66066001)(486006)(446003)(8936002)(256004)(14444005)(66446008)(64756008)(66946007)(66556008)(66476007)(6116002)(2906002)(86362001)(5640700003)(3846002)(118296001)(6486002)(81156014)(478600001)(4001150100001)(305945005)(6916009)(76116006)(91956017)(7736002)(81166006)(229853002)(6436002)(36756003)(316002)(8676002)(2501003)(99286004)(966005)(2351001)(14454004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN7PR11MB2771;
 H:BN7PR11MB2866.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: cisco.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Jl+8V0dw6FBLqopxg3ukfzj7hD4xtEGvCui/5m69yqL70UJ8aWKuDhBJ2/kZCyejaKpWvDrDJzO1qbkfVk0MtjT93NLrq8rQwzTh2re/b6B1vShesfiL/juI+qvQoUoIDNyTdY+nlFmecIV0jKh1s81QBudX6gpyzos8biodxy5Re+jlQ1EPpA2xNyiIwvmZNeEwPi/Aj1K/FhfaPKAQ26SWs3elcoi2/GVXHKMO/1RD+q3MPM8TvZrOkUz5qrU9EiYfqUADEfrpblIMnyNnUKHpZ7WoKOkQw0BUkJ8wxOuUP9s8T2FziiO3GnyhqX8429xAdwnphbZta0W+IKOZSJQbEhTAhD4goYMSF3ItdueUYfP3S/GkbCbHx/kmq1zEbDWSSEU2V9Hrux5wg5cSAVM+aICBEPGOuH+TnI1vbUmE7N0PwdAjirhBHMI1v49K90XNrfX22tb6Ai4BZAMkp+mLmNV71UW0WSOvXq7PBZE=
x-ms-exchange-transport-forked: True
Content-ID: <A1C262787702AB4E9C5B00E05FF3A8D3@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: a897a60e-4256-4162-5855-08d76e0e2135
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Nov 2019 23:05:26.0117 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XyngO/w8j7UnuJ0+ADvIB8IZjjxTQEZEa1WzrbXuz26HzOT/Ktn6FaHZtDwV7QXOs9b/MSSuaNspFYMMWycvZw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2771
X-OriginatorOrg: cisco.com
X-Outbound-SMTP-Client: 173.37.102.17, xch-rcd-007.cisco.com
X-Outbound-Node: alln-core-8.cisco.com
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
X-Headers-End: 1iXZ2Y-00ElN8-8d
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

On Fri, 2019-10-18 at 13:27 +0000, Paul Moore (pmoore2) via tboot-devel
wrote:
> On Thu, 2019-09-19 at 15:39 +0000, Paul Moore (pmoore2) via
> tboot-devel wrote:
> > Hello,
> > 
> > I've been working on adding PECOFF/kernel signature verification to
> > tboot ...

Hello everyone,

I just pushed another update to my git repository under the working-
txtsig branch:

* https://github.com/pcmoore/misc-tboot/tree/working-txtsig

This update is notable in that it adds the missing policy support; no
longer is the Fedora CA built into the tboot binary, verification
certificates should be included in the LCP and the tboot VLP specifies
which modules are subject to signature verification.  While there is
still work to be done, I believe the code is now feature complete (or
very close to it).  I would appreciate sanity checks on my approach,
especially when it comes to the policy changes.

The commit descriptions have additional information, but in order to
include certificates in the LCP, you would do the following:

 # lcp2_crtpolelt --create \
     --type custom --uuid certificates test.der \
     --out test.elt

... in this case test.der is a DER encoded X509 certificate; multiple
certificates may be concatenated together into the file, tboot will load
each certificate.  Once the policy ELT has been created, it can be
included in the LCP just as you would any other ELT module.

Once you have created a certificate ELT, you need to tell the tboot VLP
to perform PECOFF signature verification on the kernel module; you can
do that with the following command(s):

  # tb_polgen --create --type nonfatal test.vlp
  # tb_polgen --add --num 0 --pcr 20 --hash pecoff test.vlp
  # tb_polgen --show test.vlp
  policy:
         version: 2
         policy_type: TB_POLTYPE_CONT_NON_FATAL
         hash_alg: TB_HALG_SHA1
         policy_control: 00000001 (EXTEND_PCR17)
         num_entries: 1
         policy entry[0]:
                 mod_num: 0
                 pcr: 20
                 hash_type: TB_HTYPE_PECOFF
                 num_hashes: 0

... the pecoff/TB_HTYPE_PECOFF hash type instructs tboot to perform
PECOFF signature verification on the given module.  When selected, the
digest of the trusted root for the signing authority will be extended
into the given PCR, which happens to be PCR 20 in the example above.  As
a point of clarification, the "trusted root" is not necessarily the root
CA of the signature chain, but rather the "nearest" certificate that was
loaded from the LCP which is part of the signature chain.  This should
provide for the most flexibility while preserving a signature root of
trust in the LCP/TPM.

Comments and feedback on this approach are encouraged!

-Paul


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
