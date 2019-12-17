Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A29B11236D4
	for <lists+tboot-devel@lfdr.de>; Tue, 17 Dec 2019 21:13:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:To:Sender:Cc:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pmLmB7XykjIg+4qPaEULOkgnHqShR+mfQqBHQCcXrMY=; b=Qh0EbT5meJpxkKAUP10rse53o
	ttm+h9HsMVrJQE2QKrY5b3GWLlC5F8XIemH4vyLgHyNaTish/K4wazcHH90voeto7+0bGKdV9/5Qf
	B0NeUvVqN4i8jDjvepu7T3VXeqws+MAJ53nl0+DLi22yH7ZN1XoFDy4IuOXmmX/lIL1zs=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1ihJDU-0008Hb-4g; Tue, 17 Dec 2019 20:13:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pmoore2@cisco.com>) id 1ihJDS-0008HO-Oc
 for tboot-devel@lists.sourceforge.net; Tue, 17 Dec 2019 20:13:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:
 Reply-To:Cc:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iT9wFzsOYbNT7QSN0/Q7C3xmkoewHNv4jae6j+ORpQU=; b=JDHrx+ANtseD3gyn47Y1oiJPOw
 0JU5hotulcg5pL3sY8DhaiBLFf/yudGtp56xzPAcqE5ozv0c8Me3PBsh2LFON8jabe1+92Xcft5YB
 8BYU04PMdwcvJy8toCMxKRUto28mY4WwV+ACrfTu2xv+uuz991H+qJ8bq+2bQCGlLtss=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=iT9wFzsOYbNT7QSN0/Q7C3xmkoewHNv4jae6j+ORpQU=; b=CJoXFF0WydSCovWGY75NxZVaLA
 jzcue2vKFxIG3XKsEoXp5918zyeBlD1KPDMbqPshw8bb8HfNEXa/cEg+rmj2O3rjnwd3buAvYveio
 oIaL2uvjs6ZUT9i+pb7NqWtPibxu9vsJ2/TPiL1pTZ4Y9KlISnMgi1G3D+TmIfdbHrNo=;
Received: from rcdn-iport-3.cisco.com ([173.37.86.74])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps (TLSv1.2:DHE-RSA-SEED-SHA:128)
 (Exim 4.92.2) id 1ihJDQ-003sNZ-Lf
 for tboot-devel@lists.sourceforge.net; Tue, 17 Dec 2019 20:13:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=cisco.com; i=@cisco.com; l=1422; q=dns/txt; s=iport;
 t=1576613588; x=1577823188;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=iT9wFzsOYbNT7QSN0/Q7C3xmkoewHNv4jae6j+ORpQU=;
 b=hBoBeDzv6ztOrSsqMNAcpPIYopf9iM6lZkBbw+wRHOFvmqaRgRv4241e
 X395F98mB9wJseECC062GKL8bHm0YnDQOAETClKBEjYCxNfh2oZvvq09g
 tOV0I9u/bympYIKSVkVEOoku8vIHF05QwU94OKHpwWwEdL0RRJ9u4nKYG w=;
IronPort-PHdr: =?us-ascii?q?9a23=3AnKkQZBNRLZ3dJKiJ/kol6mtXPHoupqn0MwgJ65?=
 =?us-ascii?q?Eul7NJdOG58o//OFDEu60/l0fHCIPc7f8My/HbtaztQyQh2d6AqzhDFf4ETB?=
 =?us-ascii?q?oZkYMTlg0kDtSCDBjjKfntdSFgNM9DT1RiuXq8NBsdFQ=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0DQAQB4Nvld/4gNJK1lHQEBAQkBEQU?=
 =?us-ascii?q?FAYFsBgELAYFKJAUnBYFEIAQLKgqDeoNGA4sUToIRmAaBLoEkA1QJAQEBDAE?=
 =?us-ascii?q?BLQIBAYRAAheCASQ2Bw4CAw0BAQQBAQECAQUEbYU3DIVfAQEBAxIREQwBATg?=
 =?us-ascii?q?PAgEIGAICJgICAjAVEAIEATSFRwMuAQKkAgKBOIhhdYEygn4BAQWFFhiCFwm?=
 =?us-ascii?q?BDigBjBeCGoNvNT6ESYMQgl6BQAGOdJ5UBgSCNIxmiSobmkmLJ4Mmmk0CBAI?=
 =?us-ascii?q?EBQIOAQEFgVkJKYFYcIFugU5QERSNEgsYgQQBB4JEilN0gSiPRQGBDwEB?=
X-IronPort-AV: E=Sophos;i="5.69,326,1571702400"; d="scan'208";a="672503292"
Received: from alln-core-3.cisco.com ([173.36.13.136])
 by rcdn-iport-3.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA;
 17 Dec 2019 20:12:29 +0000
Received: from XCH-RCD-002.cisco.com (xch-rcd-002.cisco.com [173.37.102.12])
 by alln-core-3.cisco.com (8.15.2/8.15.2) with ESMTPS id xBHKCTsD015589
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=FAIL);
 Tue, 17 Dec 2019 20:12:29 GMT
Received: from xhs-rtp-002.cisco.com (64.101.210.229) by XCH-RCD-002.cisco.com
 (173.37.102.12) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Tue, 17 Dec 2019 14:12:28 -0600
Received: from xhs-rtp-001.cisco.com (64.101.210.228) by xhs-rtp-002.cisco.com
 (64.101.210.229) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Tue, 17 Dec 2019 15:12:27 -0500
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (64.101.32.56) by
 xhs-rtp-001.cisco.com (64.101.210.228) with Microsoft SMTP Server
 (TLS) id
 15.0.1473.3 via Frontend Transport; Tue, 17 Dec 2019 15:12:27 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X/cNRw7cBQiGvil2aDsdQnMYJTS+pO1bV7nn0aTVxjB8N4NXfjCePfFmM6tmBeWUvdn5/FTA5zUUpP2jWTcfq5iWfTfkyKhPJf5P6bfKWx0CkJlwyiqXa3Yup+jlnAuRCpe/SjqA082RoUtKauuo4biaCIq8IpHrXUXrIf7NinF4UCo4iXOojr0xn+X1kOaInv8uikkFPb7oNKlfl/NZWPni1WqlnV24q8SdPVXfXOXfaio6f6Zq/+CNfaf7zWzrgyquw3yrf5tDMM6jz5Zq/n0Ktkrii4n1siICCCsRkfAKLTJjcRNLinHLOnSmUMpSilbVgB6K/Uceo6XM+L5HUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iT9wFzsOYbNT7QSN0/Q7C3xmkoewHNv4jae6j+ORpQU=;
 b=OchS+8hTIUXY0d94eRP97EwopLeqkA0nOfM3+HSHtrAp8bg0P7BT4NA5VUx2v15NU3I2RllqgeMcDmAzZ+0juJRT0xHfvghAGWhdrXkE0kJiCe4sbYjDiujxCvVbXBNtfumqOem/mMAN5Pppag/YllL5Q34DqgC7a6n31S+9iSn30jl30797T56ykLLAgIOBRR1DwbrrXDYegMMj9Nax6rFaRjnmLVaYOao6ULwBwa2GbN7oh702xJ7hdojAOfWF0Pb6bzqChf3Cz1vps1vIqMi+kmRFGv/0WmoCAvp9nWnIGMp1OnW7GXmjGL5Jyprf7ZJfSib2eyLiG9kY4K85+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cisco.com; dmarc=pass action=none header.from=cisco.com;
 dkim=pass header.d=cisco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cisco.onmicrosoft.com; 
 s=selector2-cisco-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iT9wFzsOYbNT7QSN0/Q7C3xmkoewHNv4jae6j+ORpQU=;
 b=HoHwu3wv6f5uh0IRmabsrOVAFSLIYAJiDoMTLsBUDWH0wMU7wNf9i2K0tv+mInSv8CdDMQnzDhwkSNeskUYuY4LEyMlhVo7VB0pTpBpvzRLyEPpczOgp8tbyL65y3Yqct7Q2GY6G4T0BORILq4UyNG3URITr9zhotJpMa6wViJ0=
Received: from BN7PR11MB2866.namprd11.prod.outlook.com (52.135.246.157) by
 BN7PR11MB2785.namprd11.prod.outlook.com (52.135.254.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.15; Tue, 17 Dec 2019 20:12:26 +0000
Received: from BN7PR11MB2866.namprd11.prod.outlook.com
 ([fe80::99ce:89ae:9dc7:8efc]) by BN7PR11MB2866.namprd11.prod.outlook.com
 ([fe80::99ce:89ae:9dc7:8efc%2]) with mapi id 15.20.2538.019; Tue, 17 Dec 2019
 20:12:26 +0000
To: "lukasz.hawrylko@linux.intel.com" <lukasz.hawrylko@linux.intel.com>,
 "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Thread-Topic: [tboot-devel] [RFC] tboot: kernel signature verification
Thread-Index: AQHVbwB0th12F6sDfUCgP40i/qpaH6dgkXwAgDR+gACAEjVXgIADPEsAgALikQCAEeppAA==
Date: Tue, 17 Dec 2019 20:12:26 +0000
Message-ID: <4981a097e7aeda6240fcd614164b72b69e25a2aa.camel@cisco.com>
References: <bbaf0eeb3ddb8791533fc9dfba23ed57d3a2c9bd.camel@cisco.com>
 <ba9fa4341c9b9fa27c8ea3229f879d25614a900f.camel@cisco.com>
 <fbb29bfec178bb4b4d586df217d202fbe54430a4.camel@cisco.com>
 <60a05460106ef7cf1186e96d476c4564a500f5e2.camel@linux.intel.com>
 <bd1c6b6134911fd9f7c9c0434ca648c407ddc8f0.camel@cisco.com>
 <ceaca929e1b06cae46aff198872af05874ada24b.camel@linux.intel.com>
In-Reply-To: <ceaca929e1b06cae46aff198872af05874ada24b.camel@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pmoore2@cisco.com; 
x-originating-ip: [173.38.117.72]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 86226018-5212-4cb2-0cdf-08d7832d6fdd
x-ms-traffictypediagnostic: BN7PR11MB2785:
x-microsoft-antispam-prvs: <BN7PR11MB27853DACDB0A5AC1DE68FC76F8500@BN7PR11MB2785.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 02543CD7CD
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(366004)(346002)(136003)(396003)(39860400002)(189003)(199004)(76116006)(2906002)(6506007)(186003)(4744005)(110136005)(2616005)(81166006)(86362001)(81156014)(26005)(6512007)(71200400001)(64756008)(66556008)(36756003)(316002)(66946007)(8676002)(66446008)(478600001)(6486002)(8936002)(5660300002)(66476007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN7PR11MB2785;
 H:BN7PR11MB2866.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: cisco.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QmpzDyLgnd/s8jV98+SKrHKL2f0lqR07pSuRgRVURD/sVna1k/a8HIkqCmFWXNv4pMHtyRwtlII09i+Yhu3qnh0+woAzrNHOrkvCyGWdsoWtgSMJhK6rSmaP9/Hb5mQrT89xZF77La/v40o9OkEEGV7a0r0beFF7wm+QgGjAy5nVzud0K8LzQALvgn8pyIL5vlX26Ae3jGhPGiMBuJJSeQbfmMWb7l/A96wWbHkz8h6960m6Iq5254C8bUbA4oCaqkavXCF+wpNk0r3rh/drYSuYQ1o+E64IL4NgoiagEQcQLXYPwNb/5WI2VzpX8k/XMM1nE3fQhEGqzUYCs8/en0Mq8isSmJVtybbCUeiOp2dWO83lmo1JdZlOghnAV7xoQDX9xCqb5Pn8lDBE8papH6akYdzXBGwzYJ2iw7eo0acI+Lc7VNFUqLfg0iIbhkt/
x-ms-exchange-transport-forked: True
Content-ID: <4582F12D1F92DE4EBC3C054BDB2C152E@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 86226018-5212-4cb2-0cdf-08d7832d6fdd
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Dec 2019 20:12:26.8519 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MfBVHotZiK+y9QO4J78NuWlQHgS8sWATG7vTQG88EO0VJIZ/tIDT5TCxBHgg0r6kAT645RhlnbfWLT1+MDGFvg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2785
X-OriginatorOrg: cisco.com
X-Outbound-SMTP-Client: 173.37.102.12, xch-rcd-002.cisco.com
X-Outbound-Node: alln-core-3.cisco.com
X-Spam-Score: -7.6 (-------)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [173.37.86.74 listed in wl.mailspike.net]
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
X-Headers-End: 1ihJDQ-003sNZ-Lf
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

On Fri, 2019-12-06 at 11:37 +0100, Lukasz Hawrylko wrote:
> On Thu, 2019-12-05 at 17:20 +0000, Paul Moore (pmoore2) wrote:
> > A question for discussion: if the VLP is loaded from it's own
> > nvindex,
> > and there is also a VLP present inside the LCP, which VLP do we want
> > to
> > use?  I'm assuming it is the VLP we loaded directly, and not from
> > inside
> > the LCP, but thought it was worth checking.
> >  
> 
> In "stock" TBOOT, VLP loaded from its own index has higher priority
> over
> one embedded in LCP, so I agree with you that here it should work like
> that.

I was thinking about this some more and I'm now wondering if we should
only support the new TB_HTYPE_PECOFF hash type if it is present in a VLP
loaded from the LCP.  In order to use the new signature support admins
are going to need to generate a new LCP to contain the certificate
payload, why not store the VLP in the LCP at that point?

Is there any advantage to storing the VLP directly in the TPM and not in
the LCP?

-Paul


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
