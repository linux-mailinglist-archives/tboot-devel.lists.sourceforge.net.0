Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CD49F09D6
	for <lists+tboot-devel@lfdr.de>; Tue,  5 Nov 2019 23:50:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Content-ID:Message-ID:Date:To:
	Sender:Cc:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
	:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ACpczWxdLMCUCcoo56YufpyIEMJ4o5Tw6qWRVnBj/rs=; b=g27VuaOSKUV2yzfoSM+ZQo0pJ3
	ODT0deykj4vtpxRUwo2GERE2LssSblsYmCHYYh6s4r8joTU3f/t61fhIrHEy+d7nP0kAXGOjon2Wm
	w+rNHR9WwKUtWAyiWbi8G+pf1a5f1MD5lWe+5nFUaFzUr76zM7aNX7kW6PyzwFdDxG4M=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1iS7eR-0003bG-D3; Tue, 05 Nov 2019 22:50:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pmoore2@cisco.com>) id 1iS7eP-0003aw-8J
 for tboot-devel@lists.sourceforge.net; Tue, 05 Nov 2019 22:50:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hELI2SzH4UHFiKzIz9GPADmkVUht5BJAl9Se6ZSg0fo=; b=Z0sJ6vEst2CGTAWbLMvV8jDyiK
 aaG+K+KacjvB0VWZWW0gwfApwYctwv8yUq2JYdrT8pbpC4IGJlZKAhHcl35yIsHj6mmja7wX+0+XJ
 Dw1YASJwwMuKEWVMiu4sVeVrlHWd87a+TbJ17YOzqeHpylX8VHilW8gRqsAEto2ao1n8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:Message-ID
 :Date:Subject:To:From:Sender:Reply-To:Cc:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=hELI2SzH4UHFiKzIz9GPADmkVUht5BJAl9Se6ZSg0fo=; b=c
 t8XPp8GhNQV8v0hX1DOzHXsNECEJvvnKKKNxTPXzBxTsNdmY67ewTvc1OkXG9WYwoeXu2ULtDFtxd
 y6kjoO2pE/Q8dXUcnGMkeiGn+MDBOzfLVaUasdgdebEXrjPmmb/rfLJXXs5OM/YuFjCJ4So1kZNZc
 +xbbHZ1Ik4XQGsZ0=;
Received: from alln-iport-6.cisco.com ([173.37.142.93])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps (TLSv1.2:DHE-RSA-SEED-SHA:128)
 (Exim 4.92.2) id 1iS7eK-001PTr-8x
 for tboot-devel@lists.sourceforge.net; Tue, 05 Nov 2019 22:50:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=cisco.com; i=@cisco.com; l=884; q=dns/txt; s=iport;
 t=1572994208; x=1574203808;
 h=from:to:subject:date:message-id:content-id:
 content-transfer-encoding:mime-version;
 bh=hELI2SzH4UHFiKzIz9GPADmkVUht5BJAl9Se6ZSg0fo=;
 b=FluLTdWP72NXqHKILVO/wjIb/iMrzEoXgErLTQNCoNp0Ctqajzxd6IXJ
 oxd/IyVT3oq2AtKbnWZdVQBtI3MqSMXOhh9XuKVnCjeuPKSe3mRRRIVsH
 9ySoVAjgrhqhYVle3P4tLB+w2CjGx+ePOsmfJJS9nn8c0cdvm8cEQPdxh Y=;
IronPort-PHdr: =?us-ascii?q?9a23=3A6UwXfBFdltVEWX415XcUo51GYnJ96bzpIg4Y7I?=
 =?us-ascii?q?YmgLtSc6Oluo7vJ1Hb+e4z1A3SRYuO7fVChqKWqK3mVWEaqbe5+HEZON0pNV?=
 =?us-ascii?q?cejNkO2QkpAcqLE0r+eebvaCsgEZ5qX15+9Hb9Ok9QS47z?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0CADAC2+8Fd/40NJK1mHgELHIFzC4F?=
 =?us-ascii?q?LJCwFgUQgBAsqCoQfg0YDin1Omg6BLoEkA1QJAQEBDAEBLQIBAYRZg3ckNAk?=
 =?us-ascii?q?OAgMLAQEEAQEBAgEFBG2FNwyFahERDAEBLAwRASICJgIEMBUSBAE0hUcDLgE?=
 =?us-ascii?q?Cpl8CgTiIYHWBMoJ+AQEFhQUYghcJgQ4ojBSCF4w2gl6BPwGOQJ16BgSCJAO?=
 =?us-ascii?q?VORuCLJc9jkOZXAIEAgQFAg4BAQWBUjk3gSFwUIEegU5QERSDBoNzilN0gSi?=
 =?us-ascii?q?PXQGBDQEB?=
X-IronPort-AV: E=Sophos;i="5.68,271,1569283200"; d="scan'208";a="373582884"
Received: from alln-core-8.cisco.com ([173.36.13.141])
 by alln-iport-6.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA;
 05 Nov 2019 22:49:58 +0000
Received: from XCH-RCD-001.cisco.com (xch-rcd-001.cisco.com [173.37.102.11])
 by alln-core-8.cisco.com (8.15.2/8.15.2) with ESMTPS id xA5Mnw6L004386
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=FAIL);
 Tue, 5 Nov 2019 22:49:58 GMT
Received: from xhs-rcd-003.cisco.com (173.37.227.248) by XCH-RCD-001.cisco.com
 (173.37.102.11) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Tue, 5 Nov 2019 16:49:57 -0600
Received: from xhs-rcd-001.cisco.com (173.37.227.246) by xhs-rcd-003.cisco.com
 (173.37.227.248) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Tue, 5 Nov 2019 16:49:57 -0600
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (72.163.14.9) by
 xhs-rcd-001.cisco.com (173.37.227.246) with Microsoft SMTP Server
 (TLS) id
 15.0.1473.3 via Frontend Transport; Tue, 5 Nov 2019 16:49:57 -0600
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I54zxzsAJ5N+zE1B/UzTeeyLm9Gznwtzb2O4nScKqyerJJQh+xbtGED0y7MoAeoCuBeWKgIcYBcNiibWyjhdzmbObiKItyZy2HadMUck7ANqFoHpO+zNlfe2AQi92AGcFLW++SehYzScFwa4Vt6Ji1/pUCwXYrnXLC1jaqNvsh99lOnX6wYHmZLUQNY+2SXqL0iYhCOLYQCFY+MwPJjbGY7pPUkYO2oyL0Q6Z4I00p5EX8Cg5x9uVjRLKxp+lCq1kZyyZ0yr+IzJNdn5R64wzuBmw7bRrMEUsL7IsJM8eu+0TeIx7I1vkbojqRHcb1nipv+GECsJA0KgCmKn6PVZgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hELI2SzH4UHFiKzIz9GPADmkVUht5BJAl9Se6ZSg0fo=;
 b=j5dZ+lL5Zqz4Uos+ykvuNmkhYBTLhtyz1JpIUbTufAqssJ87gSDEHMQr+yY/+t42Y4NM4CYe30hOZQo9JBrQ++yqbYHsEi3Voh+mGP0XAIRSM/vN9YoKozOFYGo42i6EpivxEPjlV2/ieSd7b2woFa6VkFqL4tDNtAtmRNUXi0Hjx9DVdT4lQUU+Tay3vv4slRDPcRmSPWW/AsAqnjEORSL9nlWX0NI7xIFs1jiM8ZlXgzWdFRzaFxHmoVbWZ/VP65085y7xVyYyk1OI9FqY6SvtrUfO0QpPukaxTuH9RQ1ndHwg7Ff2XeIPqx5oUPxJK04wMpBLg/QLn19x5XxMKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cisco.com; dmarc=pass action=none header.from=cisco.com;
 dkim=pass header.d=cisco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cisco.onmicrosoft.com; 
 s=selector2-cisco-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hELI2SzH4UHFiKzIz9GPADmkVUht5BJAl9Se6ZSg0fo=;
 b=qah/8tCY8bWZp1gJDHjIY5eXAAJI6kCdtRz8TpadIkj/hIhNz8coiLhpYp+PvTCqgDmdNmno0F/ghh2qv1SD8T/grahw+Jt1kZy4xUrm8bW93tiEtjs3kg1dzgpZntg3r9l9CN/8hQntupk0LOH8qCGaQptfv/8JwM0n7mxEp6E=
Received: from BN7PR11MB2866.namprd11.prod.outlook.com (52.135.246.157) by
 BN7PR11MB2788.namprd11.prod.outlook.com (52.135.245.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Tue, 5 Nov 2019 22:49:56 +0000
Received: from BN7PR11MB2866.namprd11.prod.outlook.com
 ([fe80::fc28:bc87:48f1:e4cb]) by BN7PR11MB2866.namprd11.prod.outlook.com
 ([fe80::fc28:bc87:48f1:e4cb%3]) with mapi id 15.20.2408.024; Tue, 5 Nov 2019
 22:49:56 +0000
To: "lukasz.hawrylko@linux.intel.com" <lukasz.hawrylko@linux.intel.com>,
 "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Thread-Topic: Creating a TXT/tboot policy suitable for a modern system with
 TXT+TPM2
Thread-Index: AQHVlCtYW12WBIFGSk+TwpFcVCWnTQ==
Date: Tue, 5 Nov 2019 22:49:56 +0000
Message-ID: <681a21560a8a9f41a4be8cdc399cf5008f7adecc.camel@cisco.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pmoore2@cisco.com; 
x-originating-ip: [128.107.241.171]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d91adf78-8879-4245-cbf2-08d762427afc
x-ms-traffictypediagnostic: BN7PR11MB2788:
x-microsoft-antispam-prvs: <BN7PR11MB27889DB6FA34387899DE67B6F87E0@BN7PR11MB2788.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0212BDE3BE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(136003)(396003)(366004)(376002)(199004)(189003)(99286004)(81166006)(91956017)(6436002)(66476007)(64756008)(6512007)(86362001)(6506007)(486006)(4744005)(305945005)(71200400001)(71190400001)(36756003)(66946007)(478600001)(7736002)(118296001)(2906002)(26005)(76116006)(81156014)(2501003)(5660300002)(14454004)(8676002)(476003)(66556008)(186003)(25786009)(110136005)(66446008)(316002)(102836004)(8936002)(2616005)(6486002)(66066001)(256004)(3846002)(6116002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN7PR11MB2788;
 H:BN7PR11MB2866.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: cisco.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: j6HZBtqn9aPqKEL6+6Q4Z002kzrxBFniNXITHjz4enKA5JEJgVQYmWo4HnHzVfmzZX2qbG24pcAmws6l/bWj7NAHjcjqN4hC6Mowexgqh+IgS/9oykYYHixAMB+G+BREBT3hJXnSA2SB1U77/b1CpCSbTG72CpF9Yy88Y6NQMn020Wl/hJwi2lgRuLDguSaP1xT+FlgM+VeQLlgLPwSjF5vBJHAn84JM0QwECfCUVi1JgNPyXDS/nby2PUcP42usdsweEVG6p6y+TKjkESfO2WajQc3HIuMcj89f6YC3dwls3EixfDoxNgeXulJ96O/yEd1tXC/Dj6BjFreg+Q/8PIIDCRVXAEGazvvju8xledwVac5dau1HSiMt+VM3nBLhWGVFnV2f/2lfo/hEDpVn+ZZK+PGO4PXHrpQEWfero/Sq1xBe30ypxF+EnvsBf//s
x-ms-exchange-transport-forked: True
Content-ID: <5B65A19B5E7F7541910E3DB110E6F47D@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: d91adf78-8879-4245-cbf2-08d762427afc
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2019 22:49:56.4976 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /YVAY0i7xuyciplXq1Kzga3l2yPSgPv6Ja5nnz0LILWGMXdInjouFWcMCM7UYN+gFKewUGUm1SqB3plSV6xEmg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2788
X-OriginatorOrg: cisco.com
X-Outbound-SMTP-Client: 173.37.102.11, xch-rcd-001.cisco.com
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
X-Headers-End: 1iS7eK-001PTr-8x
Subject: [tboot-devel] Creating a TXT/tboot policy suitable for a modern
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tboot-devel-bounces@lists.sourceforge.net

Hi Lukasz, others,

I'm in the process of working on the TXT/sig extensions to the LCP but
I'm running into problems using the tboot tools to create a working LCP
as a baseline.  Simply put, the instructions I've been able to find
either in the sources, the mailing list archives, or through Google
searches do not produce a working LCP on my test system.  The
tools/arguments are either wrong, or the resulting LCP is bogus.

Before I start hacking away at the tools to get them to create a
functional LCP that tboot understands, does anyone have a working how-to 
for creating a LCP using the current sources?

Thanks,
-Paul


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
