Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C5C912FDE1
	for <lists+tboot-devel@lfdr.de>; Fri,  3 Jan 2020 21:26:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:To:Sender:Cc:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Vp9JGwYlriGGY4jmydu4y0Ra5B3DQg7Aru8t2i3+6Co=; b=gzO11vD5puceUd9oicLPyqag7
	uJCRaZfCDCHp/FAG9oh7/VNZtr5rzZtIGvb0SrVtB21/l3Je6wklU+Q8IYSygsc7ctXI6m77RKqaG
	B11aCyCoaRvLfkKZmXL0yD/qpxfe/CiOZvaAt0kXHoUyE4PhC1P4C46V9kAG3UcPxnxv8=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1inTWe-0006qY-I3; Fri, 03 Jan 2020 20:26:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pmoore2@cisco.com>) id 1inTWc-0006qQ-M4
 for tboot-devel@lists.sourceforge.net; Fri, 03 Jan 2020 20:26:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:
 Reply-To:Cc:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6u9kZveaFFGcnO3Y76mOxn0S6SWn9CykUzAq4sru3TA=; b=WhHuPsl68UzGVkfeIMTDBQY1dT
 HHYsLN62iUc3XEHwCl8xzIykFGfSgDSOGCYcYJUsRETDjGzhKemzdlv4RaD5Q1VCXc5lpY6ixsn8b
 I4nvtvWR+WUUP7lvISgtjJhUxvfJa2u1p+9ezvKadWuvexhTsbCcWtpciJeaJKL+989c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6u9kZveaFFGcnO3Y76mOxn0S6SWn9CykUzAq4sru3TA=; b=Tur/HZJIbQvZ/7wl2WtcEcKhpV
 ZsVm3G1ZpleBGJ5IQSZBtLpbBQHHIqJNfbiQLsV68DqcQqfEVkpeeB1VRp4+UPZ6zFDm6h+ZUrcTW
 TAjWyIn+TtYxlDn7AVJU6ebKoUGxrhJhabbJbkqv/uYKSn056/up+mehNCnXlK+i1rjw=;
Received: from rcdn-iport-9.cisco.com ([173.37.86.80])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps (TLSv1.2:DHE-RSA-SEED-SHA:128)
 (Exim 4.92.2) id 1inTWb-008tX4-4a
 for tboot-devel@lists.sourceforge.net; Fri, 03 Jan 2020 20:26:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=cisco.com; i=@cisco.com; l=2190; q=dns/txt; s=iport;
 t=1578083184; x=1579292784;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=6u9kZveaFFGcnO3Y76mOxn0S6SWn9CykUzAq4sru3TA=;
 b=RITFCNAkxxFEve/3DXc8tV19Uor+R+ITsHF8bPmdGk+9dRzIHPRn/zNb
 H7XszgxADoVPS9/PuyUvse/c1VJaSizO7UzAS8y+TqqFSRYpw/y4kQHZa
 c93MjVCGsS8GmO6EcnLqe1osPhiSqvDVKxlOIQrSDaadrYoiIlZ7YYZGG E=;
IronPort-PHdr: =?us-ascii?q?9a23=3AxG+S+xG5VP0YFr3bPwMGDJ1GYnJ96bzpIg4Y7I?=
 =?us-ascii?q?YmgLtSc6Oluo7vJ1Hb+e4z1A3SRYuO7fVChqKWqK3mVWEaqbe5+HEZON0pNV?=
 =?us-ascii?q?cejNkO2QkpAcqLE0r+eebvaCsgEZ5qX15+9Hb9Ok9QS47z?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0BTIQDaog9e/5FdJa1mHQI4BQUDCYF?=
 =?us-ascii?q?VAoFSUAWBRCAECyoKg3+DRgOLAU6CEZgNgS6BJANUBgMBAQEMAQEtAgEBhEA?=
 =?us-ascii?q?CF4FSJDYHDgIDDQEBBAEBAQIBBQRthTcMhV8BAQEDEhERDAEBOA8CAQgYAgI?=
 =?us-ascii?q?mAgICMBUQAgQBNIVHAy4BAqBSAoE4iBQBTHWBMoJ+AQEFhQsYggwJN1coAYw?=
 =?us-ascii?q?YghqEJD6EIieDEIJegUMBjnqdaXUGBII1lhobmlqOU5pZAgQCBAUCDgEBBYF?=
 =?us-ascii?q?ZAy+BWHCBboFOUBgNjR0Yg1CKU3SBKItNgTMBgQ8BAQ?=
X-IronPort-AV: E=Sophos;i="5.69,391,1571702400"; d="scan'208";a="607212458"
Received: from rcdn-core-9.cisco.com ([173.37.93.145])
 by rcdn-iport-9.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA;
 03 Jan 2020 20:26:18 +0000
Received: from XCH-RCD-009.cisco.com (xch-rcd-009.cisco.com [173.37.102.19])
 by rcdn-core-9.cisco.com (8.15.2/8.15.2) with ESMTPS id 003KQIDp003533
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=FAIL);
 Fri, 3 Jan 2020 20:26:18 GMT
Received: from xhs-rcd-003.cisco.com (173.37.227.248) by XCH-RCD-009.cisco.com
 (173.37.102.19) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Fri, 3 Jan 2020 14:26:17 -0600
Received: from xhs-rtp-002.cisco.com (64.101.210.229) by xhs-rcd-003.cisco.com
 (173.37.227.248) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Fri, 3 Jan 2020 14:26:17 -0600
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (64.101.32.56) by
 xhs-rtp-002.cisco.com (64.101.210.229) with Microsoft SMTP Server
 (TLS) id
 15.0.1473.3 via Frontend Transport; Fri, 3 Jan 2020 15:26:16 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Th2VkaZhfz8GSSN2FPpMPNUWokEKxBfPSTKst/yybHq1G5cu0622GzCZuPdBV50mUV3CHhhgfrlW/MFs3FqFwWFVYT/wKu6uXLVcANFkrvCpSq5GXRuDJYV/Gx8kHmGXF5n47UrXswY4EddxOmlM8Io6OH9qp5sYL9Fz/zmbu2FBPXoe7CDBhLcNVxLVY0LP3R7XAylAwTO20db6J+0eAOoErYJDX+mtjncryrVVSQuUI9K9ZhHwehFUzffA5td2c1wyB5Did8H74DUGw8VVnLx8gswIqqsbNsMPJZTv/L89NaPXSiJW706h1LvhOmntQFhj2oku8U25HhrDs/QOVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6u9kZveaFFGcnO3Y76mOxn0S6SWn9CykUzAq4sru3TA=;
 b=niC4/+YZcfcCNrxt//xzXhVwlhzb0r/6t9PYw8WuwH7OK8yjEvgRqK8yn+GASkXTgz3Zj5kUnn0rLHjnXZxsEPojorJhxm3MCMiRz+j0jHt41eb3vYfpP/RK45NmRtItPE5dQUhf+9NcsPcxWjwhZP32PGSBkoXsPRk+VoaiQlKuC0T59YX6xVM0VkjGH8X9W1k8/mErFuHm20CY4Fy/oL3LIDu9qeOEbf4GFEbF0buAbeKasplg66Ha8PSHRo9k5EpNajJ8GhkzSKaQsZYvRecJ7jdpOynW+5cOqql1HZahjSHYMK/2GhPPrpR+1Wd2dG+QoNtyF9fQLYTdcVL+jw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cisco.com; dmarc=pass action=none header.from=cisco.com;
 dkim=pass header.d=cisco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cisco.onmicrosoft.com; 
 s=selector2-cisco-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6u9kZveaFFGcnO3Y76mOxn0S6SWn9CykUzAq4sru3TA=;
 b=b4YxS+T4Hd4KrYhZmtilEA4k3tJzOd30zBckp2oTyzVrZPqR3lFq0Ze3mZVt2HuimtKmfKMvt2MZrgQIRqdQOYZN1FNeFQa9oW3+29W3YlOmWTIcQ8k/oB2XhBtfAn/xSQnXqKdF1kbyro5v+gRjrjyJO/7ddG8aIgOq8xoPYCY=
Received: from BN7PR11MB2866.namprd11.prod.outlook.com (52.135.246.157) by
 BN7PR11MB2737.namprd11.prod.outlook.com (52.135.244.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.13; Fri, 3 Jan 2020 20:26:16 +0000
Received: from BN7PR11MB2866.namprd11.prod.outlook.com
 ([fe80::f57d:c6e:3ec:c65a]) by BN7PR11MB2866.namprd11.prod.outlook.com
 ([fe80::f57d:c6e:3ec:c65a%7]) with mapi id 15.20.2602.012; Fri, 3 Jan 2020
 20:26:16 +0000
To: "lukasz.hawrylko@intel.com" <lukasz.hawrylko@intel.com>,
 "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Thread-Topic: [tboot-devel] VLP policy and TPM2 hash agility
Thread-Index: AQHVwbvDFL0LDZYScESwnSphPlBBU6fZX0EAgAAFX4A=
Date: Fri, 3 Jan 2020 20:26:15 +0000
Message-ID: <e72bc640db22e2460c41e9718f550a2a443e4a55.camel@cisco.com>
References: <95c91cf5919cf3ebb3058e90bd6af64939dedee1.camel@cisco.com>
 <2c111f3585e0c048ae090e99be2eef9240bf3445.camel@cisco.com>
In-Reply-To: <2c111f3585e0c048ae090e99be2eef9240bf3445.camel@cisco.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pmoore2@cisco.com; 
x-originating-ip: [173.38.117.83]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5f4083fe-a72c-4118-c79a-08d7908b2f0c
x-ms-traffictypediagnostic: BN7PR11MB2737:
x-microsoft-antispam-prvs: <BN7PR11MB27370E32D019E51B4F332037F8230@BN7PR11MB2737.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0271483E06
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(396003)(346002)(376002)(39860400002)(136003)(189003)(199004)(316002)(8676002)(110136005)(478600001)(8936002)(81166006)(81156014)(6506007)(2906002)(186003)(71200400001)(26005)(5660300002)(6512007)(91956017)(36756003)(6486002)(76116006)(64756008)(66476007)(66446008)(66556008)(2616005)(86362001)(66946007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN7PR11MB2737;
 H:BN7PR11MB2866.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: cisco.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: e5oHiz+VKgBfT2FelG1oTVt87PbtNMzEJGxXPCuLc74QPylhk/6sm8VwylC0vaQ77O1VIHnq/y0pSsz+bmzZmqajJcV6kdIq+pqvO+nkARr+7AFliLSirAVCVGlJcQG3puxQ/7HIYiAViACCS+mUpyioaHmm6NMZtfQpls4HiktyeNJh5uNM8Bs2lfAwW00uDkiRuGTtHmFwgGaa7W6bp7g1yTnKwaU/jh2imUpUQacChRBb8muDV/g8HfKSYIF+GWGeylwOU6cdMtcU4q1MY+6j/vsSmBd2a8MSyFFNLXDC4A9P1FNpgsVtxpbcXDVvYh0SCFQFCpRstENpgU98HPE87KwDXCsmbfGLbQwe4Znd37NenbkTY9KWp3ZAGkP5b6sWSaysNaV/bf3qlyF42PTXVvRTqaeSNHEhtgzqKYDj02yP03KtMMcWyAsrCUP0
x-ms-exchange-transport-forked: True
Content-ID: <728B2C4D8100184581E32BDA405BDEB7@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f4083fe-a72c-4118-c79a-08d7908b2f0c
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jan 2020 20:26:15.9655 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1q7wbUukDNbjMCnjkcmNqAHv6aM/zMCYfnux0O8cMLE8o+5ratyXK2lRGAATjU2OOOxOp6NK/rzq2pWvonED1Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2737
X-OriginatorOrg: cisco.com
X-Outbound-SMTP-Client: 173.37.102.19, xch-rcd-009.cisco.com
X-Outbound-Node: rcdn-core-9.cisco.com
X-Spam-Score: -7.6 (-------)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [173.37.86.80 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM white-list
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1inTWb-008tX4-4a
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

On Fri, 2020-01-03 at 20:07 +0000, Paul Moore (pmoore2) via tboot-devel
wrote:
> On Thu, 2020-01-02 at 22:27 +0000, Paul Moore (pmoore2) via tboot-
> devel
> wrote:
> > I hope everyone had a nice holiday and is enjoying the new year thus
> > far.
> > 
> > As you've seen in the other thread, I'm playing around with
> > different
> > tboot/TXT policies and I have a question regarding tboot/VLP
> > policies
> > that can extend PCRs using something other than SHA1: at present
> > tb_polgen seems limited to using SHA1, does anyone have any patches
> > to
> > use SHA256 (or another hash)?
> 
> To answer my own question, it appears that Lukasz added suppport in
> 549:ca935709d8a6 ("Add support for SHA256 in tb_polgen").
> 
> Lukasz, if I wanted to generate both SHA1 and SHA256 hashes for a TPM2
> system, would I need to create two rules in the VLP?  For example I do
> the following now for the TXT/sig patches and PCR20:
> 
>  # tb_polgen --add --num 0 --pcr 20 \
>      --hash pecoff pecoff.vlp
> 
> ... but that only writes the SHA1 hash into PCR20, presumably I could
> do
> the following to support both hashes?
> 
>  # tb_polgen --add --num 0 --pcr 20 --alg sha1 \
>      --hash pecoff pecoff.vlp
>  # tb_polgen --add --num 0 --pcr 20 --alg sha256 \
>      --hash pecoff pecoff.vlp
> 

It appears I didn't look close enough at the patch, the hash algorithm
selection is done at VLP policy creation and applies to all the rules.

Lukasz, is there a way to generate PCR hashes for all supported
algorithms like tboot does for PCR17/18?

-Paul


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
