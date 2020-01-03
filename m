Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 953ED12FD68
	for <lists+tboot-devel@lfdr.de>; Fri,  3 Jan 2020 21:07:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:To:Sender:Cc:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Hr0TIMVnNnLFB2ZPEqG2l5xlhCrH1SOelFzsNiY57XY=; b=Vvf+ADUb++FCCzdapS4p9ASgI
	l+rqzPWng0UkQeAVkuT/hReZukCA/8M2bIo7p3pBQwDLWREhrQ0yHK66ptAOiTTjdoMvPheuWXb1C
	BTzk8iQWi7P8qYyr5+gIIvIbq3tYXcH4pA9VER4ka300e9mnN+QxJTg7pfMHlfuNcp158=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1inTE7-00066q-IZ; Fri, 03 Jan 2020 20:07:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pmoore2@cisco.com>) id 1inTE6-00066j-EQ
 for tboot-devel@lists.sourceforge.net; Fri, 03 Jan 2020 20:07:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:
 Reply-To:Cc:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bGGZZPskCEXH1+xnuHis2qkkb04yIiMMramr3VpOZTA=; b=BAOAtE1ULVb7b2nFRrmqfoC1ML
 kQUl4/b/YZkQYx4xrMHQjgqMa+Zo+g5BDcQFQF0QteFyAJ6y6ijlbwM9MbwCvYevfXTQ3KOBbiawn
 Pf5I4haaxdRqwzGtFqkxnUGAwF1sIEmhtJSewW1MPf7uA3bIr9p2GgK/+dXrjYe2TxzM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bGGZZPskCEXH1+xnuHis2qkkb04yIiMMramr3VpOZTA=; b=WfxW9gl3P+vNpUk+HrhZ3nL+nc
 EMJaNm5Fawz5AHEh4MJBsqYrIxmEpdHeSPiNcR+qh+gRFg9RJsVLNvv2gLdz3v8J8wXVeFSibybcF
 Ne1kGv7mDzWh4HpPBERuVwZgU0OLx/DMwx+ho1c4pi8oEn7ZRDloNCgUMno6C4qVWxEE=;
Received: from alln-iport-1.cisco.com ([173.37.142.88])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps (TLSv1.2:DHE-RSA-SEED-SHA:128)
 (Exim 4.92.2) id 1inTE2-008sRQ-U4
 for tboot-devel@lists.sourceforge.net; Fri, 03 Jan 2020 20:07:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=cisco.com; i=@cisco.com; l=1614; q=dns/txt; s=iport;
 t=1578082034; x=1579291634;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=bGGZZPskCEXH1+xnuHis2qkkb04yIiMMramr3VpOZTA=;
 b=Ztm4FBClKJrPn41SnRgZCOcGS4nnvt5K/9BNSu+UbQNt30WMNxk90qFJ
 72CMJeut+ybVtzqpjjgph11NhyK9GubyqEO6iV4r0GU8rFnGX09LJyXoC
 zSMkQv+LNmbizoPGsEKm9zBNcOGlOaSjJbsyzgsFbLx8x61Xf+JzCOyE8 g=;
IronPort-PHdr: =?us-ascii?q?9a23=3AbBqYvBBwWOZNaMU8wxsEUyQJPHJ1sqjoPgMT9p?=
 =?us-ascii?q?ssgq5PdaLm5Zn5IUjD/qs13kTRU9Dd7PRJw6rNvqbsVHZIwK7JsWtKMfkuHw?=
 =?us-ascii?q?QAld1QmgUhBMCfDkiuNPvtaDY3RuxJVURu+DewNk0GUMs=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0BTIQBung9e/5tdJa1mHQI4BQUDCYF?=
 =?us-ascii?q?VAoFSUAWBRCAECyoKg3+DRgOLAE6CEZgNgS6BJANUBgMBAQEMAQEtAgEBhEA?=
 =?us-ascii?q?CF4FSJDYHDgIDDQEBBAEBAQIBBQRthTcMhV8BAQEDEhERDAEBOA8CAQgYAgI?=
 =?us-ascii?q?mAgICMBUQAgQBNIVHAy4BAqBaAoE4iBQBTHWBMoJ+AQEFhQsYggwJN1coAYw?=
 =?us-ascii?q?YghqEJD6EIieDEIJegUMBjnqdaXUGBII1lhobmlqOU5pZAgQCBAUCDgEBBYF?=
 =?us-ascii?q?ZATGBWHCBboFOUBgNjR0Yg1CKU3SBKItNgTMBgQ8BAQ?=
X-IronPort-AV: E=Sophos;i="5.69,391,1571702400"; d="scan'208";a="396191781"
Received: from rcdn-core-4.cisco.com ([173.37.93.155])
 by alln-iport-1.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA;
 03 Jan 2020 20:07:05 +0000
Received: from XCH-ALN-005.cisco.com (xch-aln-005.cisco.com [173.36.7.15])
 by rcdn-core-4.cisco.com (8.15.2/8.15.2) with ESMTPS id 003K75ho004741
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=FAIL);
 Fri, 3 Jan 2020 20:07:05 GMT
Received: from xhs-rtp-001.cisco.com (64.101.210.228) by XCH-ALN-005.cisco.com
 (173.36.7.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Fri, 3 Jan 2020 14:07:04 -0600
Received: from xhs-rtp-002.cisco.com (64.101.210.229) by xhs-rtp-001.cisco.com
 (64.101.210.228) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Fri, 3 Jan 2020 15:07:04 -0500
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (64.101.32.56) by
 xhs-rtp-002.cisco.com (64.101.210.229) with Microsoft SMTP Server
 (TLS) id
 15.0.1473.3 via Frontend Transport; Fri, 3 Jan 2020 15:07:04 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nX+UA8QcLql9dA2u/etc6iCa/1CnygqmPj0aBF1p+kXDajBo/SFvZuyLFt8gJT6XxgXfOt3NCbr4J8bRnuPaco0D8HnYaGXtMCknexwYZlTcEUXKc4p8lhTA9qxzA4J4nrMNqv0IkJsBlNwmFr0aJqoLUrDCLCapwGgHH2V/A2lSFhErTE9yw+wNTE95LDk9qbUHAZkMl0O14L/lExjxlzq/Lxq8nu/hH5I0SRmvl2kXMcljmKBX/UKFABOA9V+goeeUr06HwyGPWPYBrWckdD6P7aWw728RKrlC0NDkMHfwqB3O4X13DrK+CHAq7LYwkmzhtDV6KophQSwYIihZ0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bGGZZPskCEXH1+xnuHis2qkkb04yIiMMramr3VpOZTA=;
 b=H4QQ5AAF38eH/qE3vlp1sts6hqOqMhvUwpdfkq0ydYqiebg/zFQLOPecjd1jtl+NAVYKGL+EPriyQ2t77fdRW1QzDzf+qpyqPDmCceWEIV1oWHglosUZPWQ1hEiSpIDTjM4PVH8of2AeY9oilJsvxisDGNHVCiSYXsmUTMnT6cCpei6hEPqVqNvmTZtjIcA2pCqL0Av+Ozt/P4x5QrcnLOJcL6cmUEby0QO7Gvj6TS0mkoCx8j3BgNx/0jddK4peaEbU5ra+2V0m7j+peJkQD+MCuxeAFBmU4FmsvFoRLNcrNqU8WJd27Pdfk/Gyj+9N90+HV+ZVeSANiaMJ8x7L7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cisco.com; dmarc=pass action=none header.from=cisco.com;
 dkim=pass header.d=cisco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cisco.onmicrosoft.com; 
 s=selector2-cisco-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bGGZZPskCEXH1+xnuHis2qkkb04yIiMMramr3VpOZTA=;
 b=x/f/to68Q+lP3k+XKBWVXvut1gNBgMTRhEyu7X13bMDFbqw0/2bgTtOqudlWPr80aaiA1tP13/OzuRzpDLUnC7GyM8L4Bz7c5qdpnI0BGwRgE5EadIxclWyzWvjlXfN0mn0T35UJ3C56aSCVCmaK6Jpznwt1+xvLLivElk217A4=
Received: from BN7PR11MB2866.namprd11.prod.outlook.com (52.135.246.157) by
 BN7PR11MB2769.namprd11.prod.outlook.com (52.135.245.161) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.12; Fri, 3 Jan 2020 20:07:02 +0000
Received: from BN7PR11MB2866.namprd11.prod.outlook.com
 ([fe80::f57d:c6e:3ec:c65a]) by BN7PR11MB2866.namprd11.prod.outlook.com
 ([fe80::f57d:c6e:3ec:c65a%7]) with mapi id 15.20.2602.012; Fri, 3 Jan 2020
 20:07:02 +0000
To: "lukasz.hawrylko@intel.com" <lukasz.hawrylko@intel.com>,
 "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Thread-Topic: [tboot-devel] VLP policy and TPM2 hash agility
Thread-Index: AQHVwbvDFL0LDZYScESwnSphPlBBU6fZX0EA
Date: Fri, 3 Jan 2020 20:07:02 +0000
Message-ID: <2c111f3585e0c048ae090e99be2eef9240bf3445.camel@cisco.com>
References: <95c91cf5919cf3ebb3058e90bd6af64939dedee1.camel@cisco.com>
In-Reply-To: <95c91cf5919cf3ebb3058e90bd6af64939dedee1.camel@cisco.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pmoore2@cisco.com; 
x-originating-ip: [173.38.117.83]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a1ac9c24-c6b3-48b3-c2e2-08d790887fc1
x-ms-traffictypediagnostic: BN7PR11MB2769:
x-microsoft-antispam-prvs: <BN7PR11MB2769C0A9DED5186BC1338354F8230@BN7PR11MB2769.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0271483E06
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(39860400002)(396003)(366004)(376002)(346002)(189003)(199004)(5660300002)(478600001)(2906002)(6486002)(91956017)(2616005)(66446008)(8676002)(186003)(71200400001)(36756003)(26005)(81166006)(8936002)(81156014)(86362001)(76116006)(66946007)(6506007)(316002)(6512007)(66556008)(66476007)(64756008)(110136005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN7PR11MB2769;
 H:BN7PR11MB2866.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: cisco.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8MLJrYQ5ef40MLSTixJwa5hOfV3ax5Bhalcccl2uy2DOU4qzYtQ9iOYfN22Sb22IVYMFRLuaXq8MGFhABFlmUVNb+ufy+ZR9b4ekDpYL+OsVK64CPDT1DNgR03epeOBjC4UbNuS/IUAtCwXBgTNQkQgM9Dou9JPoKrSHfg9yQqXl8Z/rWouEamo22BKqWvKNLjGN/ys86uqAHG1vYqwQy2AVWGkUYuVA0VcjDeVehgBApGQOAzENWC4rWUp4tW1IuZ26eFvFKN89WBbeXE1l/2A1UAFDxO4R+7FGha1jyFctSDIQFPyubJaxyVDmSg/kDC1hfh8FVimYOKUrKjiF1TcU4F5gm0ksGjsh4CBrAymcjLzfeFzvArFl4QRqpPEYs6k35HLNtJPLsO9BcECeWuzSeh6PUjQQ2DQnF01Wzv7n01qM6YeHxq5DxAaljOTv
x-ms-exchange-transport-forked: True
Content-ID: <51950A4334575A488C4A77BCEB364D8A@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: a1ac9c24-c6b3-48b3-c2e2-08d790887fc1
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jan 2020 20:07:02.9131 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jPKGbQYfJpNERXRtr36AyHzETvKLPFGvEcomJ0XzdUDVfjQk/t+N12HDorPvMw8mxcPk85sz+2S2+wH+CLV8gA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2769
X-OriginatorOrg: cisco.com
X-Outbound-SMTP-Client: 173.36.7.15, xch-aln-005.cisco.com
X-Outbound-Node: rcdn-core-4.cisco.com
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
X-Headers-End: 1inTE2-008sRQ-U4
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tboot-devel-bounces@lists.sourceforge.net

On Thu, 2020-01-02 at 22:27 +0000, Paul Moore (pmoore2) via tboot-devel
wrote:
> I hope everyone had a nice holiday and is enjoying the new year thus
> far.
> 
> As you've seen in the other thread, I'm playing around with different
> tboot/TXT policies and I have a question regarding tboot/VLP policies
> that can extend PCRs using something other than SHA1: at present
> tb_polgen seems limited to using SHA1, does anyone have any patches to
> use SHA256 (or another hash)?

To answer my own question, it appears that Lukasz added suppport in
549:ca935709d8a6 ("Add support for SHA256 in tb_polgen").

Lukasz, if I wanted to generate both SHA1 and SHA256 hashes for a TPM2
system, would I need to create two rules in the VLP?  For example I do
the following now for the TXT/sig patches and PCR20:

 # tb_polgen --add --num 0 --pcr 20 \
     --hash pecoff pecoff.vlp

... but that only writes the SHA1 hash into PCR20, presumably I could do
the following to support both hashes?

 # tb_polgen --add --num 0 --pcr 20 --alg sha1 \
     --hash pecoff pecoff.vlp
 # tb_polgen --add --num 0 --pcr 20 --alg sha256 \
     --hash pecoff pecoff.vlp

-Paul

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
