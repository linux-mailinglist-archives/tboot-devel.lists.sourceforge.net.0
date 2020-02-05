Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B428A15371A
	for <lists+tboot-devel@lfdr.de>; Wed,  5 Feb 2020 18:58:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Content-ID:Message-ID:Date:To:
	Sender:Cc:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
	:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=sPAQGaVVUsmzbbd7Mk7axDgZdv5uMq8wPNxKnxEX9AA=; b=EhD+DXblF82v6qVMQ1+/Ki0VNk
	ZMNdHa/Xn2Gbspl1e8xkcxBX+xfFiafnsexIur7/u6L27tkk8ioGc1vGL6PMlebsFeq2WgxcmsnQ9
	GbbplxBxdUlGgqyVUUlM3/igaqwvcEeu/O9Z0H3qkx/f47RFuZ5XvCo5/NLpGTie2QaA=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1izOwZ-0002PU-Hw; Wed, 05 Feb 2020 17:58:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pmoore2@cisco.com>) id 1izOwX-0002PC-J1
 for tboot-devel@lists.sourceforge.net; Wed, 05 Feb 2020 17:58:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AXZV1mlZiuPp2drHuUYJuxs1NGWCnO9Sm/ibpSrGcck=; b=EqZIr+mSZ2eLqlb6LAOLjn+9jI
 cJXRgKOmZyMR48WpJJ3Y2aa5RW2C9E/bMHN/CSXNHVo9Z1tyyIntnBtzkpB8XtwDsoeGlMLW4LeRf
 zMX2CPgVpxc6AdbncnckAuQo7/1uJ37V0I2+xcfX24wRGv2QVNPKAnkzJhHBy5fuUg24=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:Message-ID
 :Date:Subject:To:From:Sender:Reply-To:Cc:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=AXZV1mlZiuPp2drHuUYJuxs1NGWCnO9Sm/ibpSrGcck=; b=d
 OK9lcc51DzBJxpvxI1eHh2vVOrzQ9JBN0JI52YwdE7MqfyvqZ3gBnmZ3bpEqpnRDSZZkXdJ3M2w/f
 AA5rkCKPg7O5zgW/w6cgGZmJcLupadP0a+ZL2oqii9jnJNO/Mmae+c6iXW9AISCRmVQXIz60U6Re0
 CpvyqKUzrEhtg9Jg=;
Received: from rcdn-iport-5.cisco.com ([173.37.86.76])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps (TLSv1.2:DHE-RSA-SEED-SHA:128)
 (Exim 4.92.2) id 1izOwU-000Qq8-5x
 for tboot-devel@lists.sourceforge.net; Wed, 05 Feb 2020 17:58:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=cisco.com; i=@cisco.com; l=3420; q=dns/txt; s=iport;
 t=1580925506; x=1582135106;
 h=from:to:subject:date:message-id:content-id:
 content-transfer-encoding:mime-version;
 bh=AXZV1mlZiuPp2drHuUYJuxs1NGWCnO9Sm/ibpSrGcck=;
 b=aNXEvfxyNKoBTxErIboNPk+24sacgPMxyQWDpH61Wv4U0vYj9Vlzj+s5
 I1Ytlv3S4pnTXp1WY/woyoa9B3PbgBQeTQ41MCsxVcrekSa+o4kQB6tpb
 2Zjst+hEazycgkNE2IOV8iZpQoFQ6i1dlVOL1DA/lSmN7bZcyUjFk++Wd E=;
IronPort-PHdr: =?us-ascii?q?9a23=3AyCgzXxy75XesHqDXCy+N+z0EezQntrPoPwUc9p?=
 =?us-ascii?q?sgjfdUf7+++4j5YhSN/u1j2VnOW4iTq+lJjebbqejBYSQB+t7A1RJKa5lQT1?=
 =?us-ascii?q?kAgMQSkRYnBZudDEr8NvOwRyc7B89FElRi+iLzPA=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0AUGACOATte/5JdJa1lHQEBOAUFAQI?=
 =?us-ascii?q?JAYFTAoFSKScFbFggBAsqCoQLg0YDinxOmiOBLoEkA1QJAQEBDAEBHw4CAQG?=
 =?us-ascii?q?EWYIjJDYHDgIDDQEBBAEBAQIBBQRthTcBC4V/EREMAQEsDBEBIgImAgQwFRI?=
 =?us-ascii?q?EJw6DBYJKAy4BAqIDAoE5iGJ1gTKCfwEBBYJEgloYggwJgQ4qAYUdhwSCGoN?=
 =?us-ascii?q?2AQGDTgKBPIM5gl6BQwGPE58TBgSCOgSHRo55G4JIeIcXkDKLNIMugUuGFIE?=
 =?us-ascii?q?Lj06CZwIEAgQFAg4BAQWBWQExgVhwUIEegU4JRxgNj0QBCIJDhAiGS3SBKYp?=
 =?us-ascii?q?jgTMBgQ8BAQ?=
X-IronPort-AV: E=Sophos;i="5.70,406,1574121600"; d="scan'208";a="476698756"
Received: from rcdn-core-10.cisco.com ([173.37.93.146])
 by rcdn-iport-5.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA;
 05 Feb 2020 17:58:16 +0000
Received: from XCH-RCD-005.cisco.com (xch-rcd-005.cisco.com [173.37.102.15])
 by rcdn-core-10.cisco.com (8.15.2/8.15.2) with ESMTPS id 015HwFse021663
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=FAIL)
 for <tboot-devel@lists.sourceforge.net>; Wed, 5 Feb 2020 17:58:15 GMT
Received: from xhs-rtp-003.cisco.com (64.101.210.230) by XCH-RCD-005.cisco.com
 (173.37.102.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Wed, 5 Feb 2020 11:58:14 -0600
Received: from xhs-rcd-001.cisco.com (173.37.227.246) by xhs-rtp-003.cisco.com
 (64.101.210.230) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Wed, 5 Feb 2020 12:58:13 -0500
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (72.163.14.9) by
 xhs-rcd-001.cisco.com (173.37.227.246) with Microsoft SMTP Server
 (TLS) id
 15.0.1473.3 via Frontend Transport; Wed, 5 Feb 2020 11:58:13 -0600
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BoDzCmuWNJYoASSK0Wc/k1pudUL0LKU5XbThUpcNhDC3W3xN8otaRaOOq0CIucgPYm6V20HCdRbvc7VgSRW747lkQKLH2IjtDQvKQFLSaokrGRjKVFR8QUCQOt3oPd/amHDwYusKGnsMTmXo5zSHVBa1FI4E7nlNnoiWUWS6txKDz5/xjWBVm2OhR7AS8Hn1/GyQstc+W49n33EErvxDEt2Yc5ESi5tdO+leXbsATgMkw23VoI4prn2FvEO6YgEZCNK4ZbN25VK9bxWt8zyepeIecNjFbgwzbjhhGJ8ftTcAMCUnLkcFrUkV7WIvfpBXABLlDJmyOCPuk81j0/q6Nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AXZV1mlZiuPp2drHuUYJuxs1NGWCnO9Sm/ibpSrGcck=;
 b=jx2MfzahzD2UJgJmy14515eVwc3QIghQ70pdsJdGoc6/h4tFv3tvYfoudBLlzwUhkXVs8JSXrqsLmjrfmK+LLbc5NIXQi1UhOhQHdvsq6zQr5PY/kqVqC0tCVYHkzEtCqNBF8fRVaQ3ApRT/CPzMZSqdjjcrAJvoIsHx5rd4iemvsCEzlErddq8O0Hm6XGqH9LImqc7U0dPZp+TTGILc01d0Og+KKbgOd49WvSQh6KjlYGrtM473sA4PSvD0RmMuuuKdpuAtNT3RMCRX6vRovCD2xSmi5CuQIcXmk2gFzuK/lAhc4OFd+nOHFIfGoxsMfF42maTF5c+do5X2PiNOgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cisco.com; dmarc=pass action=none header.from=cisco.com;
 dkim=pass header.d=cisco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cisco.onmicrosoft.com; 
 s=selector2-cisco-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AXZV1mlZiuPp2drHuUYJuxs1NGWCnO9Sm/ibpSrGcck=;
 b=PwHJ7LxrSiXgLBf5bMfJbuCtq9LETEcH7/Gn05jzpM1t9Hcp8ATJT+5AVrnkPnP+szp990Dyv7jMW159rkh/g3916myrWrvGRSjaAHg2pcpCOWbIC3tQUywi9RxGGdLQj+xOGGRNr4ghfW7uWrJhpsoFPN0KNWqOQuxWZJY/WTM=
Received: from BN7PR11MB2866.namprd11.prod.outlook.com (52.135.246.157) by
 BN7PR11MB2612.namprd11.prod.outlook.com (52.135.246.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.27; Wed, 5 Feb 2020 17:58:10 +0000
Received: from BN7PR11MB2866.namprd11.prod.outlook.com
 ([fe80::cd3e:44d9:e156:8a93]) by BN7PR11MB2866.namprd11.prod.outlook.com
 ([fe80::cd3e:44d9:e156:8a93%5]) with mapi id 15.20.2707.020; Wed, 5 Feb 2020
 17:58:10 +0000
To: "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Thread-Topic: Update on my tboot kernel signature verification work
Thread-Index: AQHV3E3Tb0F6dqFx6kOT4x+AL/ifYg==
Date: Wed, 5 Feb 2020 17:58:10 +0000
Message-ID: <e8e68d193e448c7bdcb62c4d910d9c935e9bf6d0.camel@cisco.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pmoore2@cisco.com; 
x-originating-ip: [173.38.117.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 397a0915-e078-4510-f883-08d7aa64f66e
x-ms-traffictypediagnostic: BN7PR11MB2612:
x-microsoft-antispam-prvs: <BN7PR11MB2612183A369A64B54082DF31F8020@BN7PR11MB2612.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0304E36CA3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(366004)(39860400002)(376002)(346002)(199004)(189003)(2906002)(966005)(478600001)(6506007)(26005)(186003)(2616005)(71200400001)(66476007)(8676002)(5660300002)(81156014)(81166006)(8936002)(6486002)(6512007)(316002)(6916009)(86362001)(15650500001)(66946007)(76116006)(91956017)(36756003)(66446008)(64756008)(66556008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN7PR11MB2612;
 H:BN7PR11MB2866.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: cisco.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qOOb9+6VW29wNyulfrp1snRSGs2bAbNeFHRE8Iw76/oGXvb+CSP5I5XBxvXCpbSrhc1rfGQDqTceQymJ51tTWHUOVNUGrUguurxzRDwdKtvkPPM7uizg8stLdGhx8kGc1H6fyICdOd04ZGbuXQtEcYDWaJZp6dSuxk6+GoVth+HcmzDYvLWKiHvYYkjyU5EZHCXL8jQKKsw1P8nCR3Hvaw2gw2zeejJ7Hh5IaewGgjyBq9p4JaO/8oejGiv4oHNxKehDEnhbvpqpa+K24kL3m1fnuRdMZwLaG4HUfyaJsrYEnm2NEo3pGeHtAprvs2fzyhTS9bEp1Fmh1ieafKWem4akUtYYSuGDX/U3HViBn8577m2F5+n1jFZR7fLHEYC8c/ebBZAeCZ6hqkbo35Hym/hGCrohbfT80S3pAPzwOfenjJ25RfwOLB/akTdlasafjL+k91uM/67LlaU1p/LaL/4GNXXMnHVkPiuqXJ7p68DA1FzZCpnpW5BUDj4FM6Hg016jp2gLRBlHLOCL6fTZfA==
x-ms-exchange-antispam-messagedata: lGWjNy6/ZEEiku7utC2sajF+nDl0zziDbQQ1S8t6HdEQTs6ynC3BObFihobq+hvWC7RK8s+EiscKhPvyA9wPFGziU0dRs8+3k23YK05SbwCLukkSwsC8XirgTOIXRiwUGDlrqLCc1bQD+xonNHQOUg==
x-ms-exchange-transport-forked: True
Content-ID: <139440402841F4488EADF390EE347575@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 397a0915-e078-4510-f883-08d7aa64f66e
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Feb 2020 17:58:10.2864 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5RR618SS1lgzlmLLq5jEmcY+drMWzMV6b72F8SuuT0OhE7yithjsJvvUkDwjjEvLb92wZzKult5QlqYNTdsA2Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2612
X-OriginatorOrg: cisco.com
X-Outbound-SMTP-Client: 173.37.102.15, xch-rcd-005.cisco.com
X-Outbound-Node: rcdn-core-10.cisco.com
X-Spam-Score: -7.6 (-------)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: readme.md]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [173.37.86.76 listed in wl.mailspike.net]
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
X-Headers-End: 1izOwU-000Qq8-5x
Subject: [tboot-devel] Update on my tboot kernel signature verification work
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

Hello all,

I wanted to provide a quick update on the TXT/sig project and point you
at it's new location on GitHub:

 * https://github.com/anuvu/tboot

... the TXT/sig changes can be found in the master branch.  In addition
to the code changes, I've included a README.md with a lot of information
on how to use the tboot signature verification code, as well as TXT and
tboot in general.  Even if you are not interested in using signed kernel
images, you may find the README.md documentation helpful.

Unfortunately for my TXT/sig efforts, there have been some changes in
the product I am working on and the TXT/sig capability is not expected
to be a critical part of the product.  This means my contributions going
forward are likely to be seriously diminished.  I do have some interest
in pursuing this on my own time, but considering all of the other
demands on my time I'm not certain how much I will be able to
contribute.  I've cleaned the existing patches up as much as time would
allow, and I believe they are in half-reasonable shape; if the tboot
community wants to merge them as they currently are, I'm happy to do
whatever I can on my end to make that happen.  If someone wants to take
these patches and build on top of them, that's fine too.  If there is
anything I can do to help, please let me know, just understand my time
is likely to be limited.

Beyond the TXT/sig patches, I believe the repo mentioned above contains
some other patches which I believe have standalone value:

* "all: ensure we can build on a modern system"

This patch allows tboot to successfully build with GCC v9.  I know there
have been other GCC related patches posted to the mailing list; it might
be worthwhile checking to see if this patch adds additional corrections.

* "lcptools-v2: add pconf2 policy element support"

Adds the ability to create a TPM2 PCONF policy element to the lcptools-
v2 tools.  I realize that there is a strong desire on the part of Intel
to move to the Python GUI tools, but for those of us who prefer the
command line lcptools-v2 tools this may be useful.

* "tboot: get the TPM extpol setting from the ACM"

This patch adds the ability to query the ACM during boot and adjust the
"extpol" setting based on the ACM's reported support (cmdline example:
"extpol=acm").

Hopefully some of this work will prove helpful, even if it is just the
information in README.md.  Thanks for all your help over the past year!

-Paul



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
