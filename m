Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C0C112D82
	for <lists+tboot-devel@lfdr.de>; Wed,  4 Dec 2019 15:34:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:To:Sender:Cc:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ysJnG05pBgjNDi2W2oVHfu8+NXsgF8fEcNxNjNxx5dw=; b=ZuwGzr4/rbbwUcga6DMipbnS+
	R6/00Yt+gvk2JLhFvL0scY68sHr4mBvlqldyvjkTjG04DC9ojMteYKcub/Zo+gSta5bm7cZ0YzJJd
	sA3kGRTGzlu8ZNtQlrUXhroyiqdaeXo8Lpp3G0ixZgjVg9jt600apofeVejYih6QLeJL4=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1icVjR-0008Oc-UX; Wed, 04 Dec 2019 14:34:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pmoore2@cisco.com>) id 1icVjQ-0008OO-8P
 for tboot-devel@lists.sourceforge.net; Wed, 04 Dec 2019 14:34:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:
 Reply-To:Cc:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UbRLqnbFwCRkcXUYxI5hy1yfLX5MlDir4Kk+/XX0YTo=; b=SP7ypcI2MV+E0zQsEf9kkCcVRP
 mn3Cx9Vdf6utVaN9zLKDIPQbHqx5m7+fLb80XDIq8KjTyh+ViaAaJE0AYB6KSFWY9WqqXpN05gtzG
 2wUT1Z6RkI25MhJwDk2WVIfIH+lKzYWtpHhwl/nufjB1UZ7vUMRz9YBmFYwzwqeIBgWY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UbRLqnbFwCRkcXUYxI5hy1yfLX5MlDir4Kk+/XX0YTo=; b=U5GBUl272y+EmP0LdCX4ZoLSNq
 6Us0xTmoVzE2or+VVYP5YaxmCiMXVXLx1p4NixpaFirAZOnkM+IaFALtLc9lZ8gD6hFKoOEAqSK4G
 IYvlSC5mwzI6QEatUis9m6HMGqsdxd1r/FVCTrWLNkPhlu7mBnxWb2H65Ye5xbtS74xA=;
Received: from rcdn-iport-6.cisco.com ([173.37.86.77])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps (TLSv1.2:DHE-RSA-SEED-SHA:128)
 (Exim 4.92.2) id 1icVjO-008XTa-DY
 for tboot-devel@lists.sourceforge.net; Wed, 04 Dec 2019 14:34:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=cisco.com; i=@cisco.com; l=2510; q=dns/txt; s=iport;
 t=1575470058; x=1576679658;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=UbRLqnbFwCRkcXUYxI5hy1yfLX5MlDir4Kk+/XX0YTo=;
 b=MxJVJXIjUFxct26vnFJg4Rmt63Z6E4Wukgs2sa66Ng6xyiBE8PPoV3Er
 zmlBzQqMYZT7xB58B9pvxPlc8J38AdmSLcNxxR66bPTcdOaS/KkJT5O6E
 obq+xGGW2b/0VJ8cBb4MZcZjb761D8myT5Z1+t/MbTduF91gxVRExuZZb Y=;
IronPort-PHdr: =?us-ascii?q?9a23=3AG50T1BVoGxdstR2Ft1IJJeOFjx7V8LGuZFwc94?=
 =?us-ascii?q?YnhrRSc6+q45XlOgnF6O5wiEPSA92J8OpK3uzRta2oGXcN55qMqjgjSNRNTF?=
 =?us-ascii?q?dE7KdehAk8GIiAAEz/IuTtankiGcNFTlI/13q6KkNSXs35Yg6arw=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0CyIgBzw+dd/5hdJa1lHgELHIIAgUk?=
 =?us-ascii?q?pJwWBRCAECyoKhCGDRgOKek6CEZgEglIDVAkBAQEMAQEtAgEBhEACF4F5JDg?=
 =?us-ascii?q?TAgMNAQEEAQEBAgEFBG2FNwxCARABhH4BAQEBAgESEREMAQE4BAsCAQgYAgI?=
 =?us-ascii?q?mAgICMBUQAgQBNIVHAw4gAQKlTgKBOIhgdYEygn4BAQWFBxiCFwmBDigBjBa?=
 =?us-ascii?q?CGoERgxM+hEmDEIJegUABjmCeLQYEgi6VWhuCQYwtiziLJYMlmiMCBAIEBQI?=
 =?us-ascii?q?OAQEFgWkigVhwgW6BTlARFIxmCxiBBAENgj6KU3SBKIhPhmEBgQ8BAQ?=
X-IronPort-AV: E=Sophos;i="5.69,277,1571702400"; d="scan'208";a="677664616"
Received: from rcdn-core-1.cisco.com ([173.37.93.152])
 by rcdn-iport-6.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA;
 04 Dec 2019 14:33:38 +0000
Received: from XCH-ALN-010.cisco.com (xch-aln-010.cisco.com [173.36.7.20])
 by rcdn-core-1.cisco.com (8.15.2/8.15.2) with ESMTPS id xB4EXcto015210
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=FAIL);
 Wed, 4 Dec 2019 14:33:38 GMT
Received: from xhs-aln-001.cisco.com (173.37.135.118) by XCH-ALN-010.cisco.com
 (173.36.7.20) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Wed, 4 Dec 2019 08:33:38 -0600
Received: from xhs-aln-001.cisco.com (173.37.135.118) by xhs-aln-001.cisco.com
 (173.37.135.118) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Wed, 4 Dec 2019 08:33:37 -0600
Received: from NAM05-DM3-obe.outbound.protection.outlook.com (173.37.151.57)
 by xhs-aln-001.cisco.com (173.37.135.118) with Microsoft SMTP Server (TLS) id
 15.0.1473.3 via Frontend Transport; Wed, 4 Dec 2019 08:33:37 -0600
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SCEA4o2mzkeQOZnX2BomwunNKqSWEyQlKTCyxDOLHd4wRw1HjzEruPoRhRvk1QHlTHvGGZ38WRYs/cephb1ueGQOGIwONaILu2yLjItAmUrZTvnH+ocgUqIiXs7IKV5sOE+DuO9CvBiF5FMd6bwCwfvWkqHdqdTw2OorDbZYaAFJ0KYNlihMllo9ywlJSaUpbCujomTXuasfpVhEuMYn82RJ3gvTZEljUQpUXDAPUsGQ/G5UhvQqlgSReYE3fvT2naL6ATCb/FFDm4H39P7zGNN6+xVOdNCkhgCYff7I6yM+nuZFdAi9sICdcT2SXKGUFb1Bk+zQ3Db85RvAhKtjHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UbRLqnbFwCRkcXUYxI5hy1yfLX5MlDir4Kk+/XX0YTo=;
 b=P0O3rSY1zlg31Ey05kOR4TqEJibkQG5YrK7Vml0yKMOgayOTTRZTTI8Jwt7loqQrgt7C3pVWLi8NbRordVI6iwqD2xgqhnvEKxdxiZNvFMv2LMrTUXgzJ2lCOUl9/ggQR47He/tnvXJHEVUGSrfBmyepZf73YYZj/DprZZo+P70QGa+seiknI49GhXEWutP/FgZOobh5B4wvwH3oJ+4IWZK8SLO/vvleO/VxdJlVmch9RS3etSjmwN5gaNLJ3K6UMnAABOELa4yiEBRem/Ny2GnaRZ5Ms73nrWPc+Vt9iqBAPjSO3NnWTV3ues0FgLKMlMm4ojBBNofxrSQd4jQrbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cisco.com; dmarc=pass action=none header.from=cisco.com;
 dkim=pass header.d=cisco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cisco.onmicrosoft.com; 
 s=selector2-cisco-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UbRLqnbFwCRkcXUYxI5hy1yfLX5MlDir4Kk+/XX0YTo=;
 b=gVTiouguUCxGjC3zxDHwwjXVrj21sHjstJe7E9dIL86dbcgDlGWbsmQq+v20U8XKJUaAfMz4UvP6Qwbgvl25aRaNSJwA+lEUwvdR1kTClAUDFVZqtt6zRjyP0yxEGNanyFb4zZLJgYyZZS/mgXA+Rr3iQbKIAJQFPlmu0HE9ets=
Received: from BN7PR11MB2866.namprd11.prod.outlook.com (52.135.246.157) by
 BN7PR11MB2644.namprd11.prod.outlook.com (52.135.254.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.12; Wed, 4 Dec 2019 14:33:36 +0000
Received: from BN7PR11MB2866.namprd11.prod.outlook.com
 ([fe80::99ce:89ae:9dc7:8efc]) by BN7PR11MB2866.namprd11.prod.outlook.com
 ([fe80::99ce:89ae:9dc7:8efc%2]) with mapi id 15.20.2495.014; Wed, 4 Dec 2019
 14:33:36 +0000
To: "lukasz.hawrylko@linux.intel.com" <lukasz.hawrylko@linux.intel.com>,
 "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Thread-Topic: [tboot-devel] [RFC] tboot: kernel signature verification
Thread-Index: AQHVbwB0th12F6sDfUCgP40i/qpaH6dgkXwAgDR+gACAEjVXgIADPEsA
Date: Wed, 4 Dec 2019 14:33:36 +0000
Message-ID: <bd1c6b6134911fd9f7c9c0434ca648c407ddc8f0.camel@cisco.com>
References: <bbaf0eeb3ddb8791533fc9dfba23ed57d3a2c9bd.camel@cisco.com>
 <ba9fa4341c9b9fa27c8ea3229f879d25614a900f.camel@cisco.com>
 <fbb29bfec178bb4b4d586df217d202fbe54430a4.camel@cisco.com>
 <60a05460106ef7cf1186e96d476c4564a500f5e2.camel@linux.intel.com>
In-Reply-To: <60a05460106ef7cf1186e96d476c4564a500f5e2.camel@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pmoore2@cisco.com; 
x-originating-ip: [96.233.112.89]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0b060a5b-a31a-4f60-8f28-08d778c6f2b2
x-ms-traffictypediagnostic: BN7PR11MB2644:
x-microsoft-antispam-prvs: <BN7PR11MB26445947D50619FB059CD40DF85D0@BN7PR11MB2644.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0241D5F98C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(376002)(136003)(396003)(366004)(189003)(199004)(76176011)(102836004)(6506007)(26005)(110136005)(99286004)(6246003)(316002)(478600001)(76116006)(5660300002)(66446008)(66556008)(6512007)(2906002)(6116002)(66946007)(15650500001)(3846002)(6436002)(229853002)(6486002)(66476007)(186003)(64756008)(14454004)(86362001)(118296001)(2501003)(305945005)(7736002)(8936002)(25786009)(8676002)(2616005)(71200400001)(81166006)(81156014)(71190400001)(11346002)(14444005)(36756003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN7PR11MB2644;
 H:BN7PR11MB2866.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: cisco.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: a7rpH38AtJnxfVKWQL+whKtysovvLuX9DaI6OI+kh85vF1UHIb8rW+1FkOJMaBKF/w8zAH2F91MkEQsnbpYWyVU2DUIW4ZHVcilMg2ZiurPhR6GCiFpTte4N4t6s/is3ydILJ0xZcWHx2b24sEXWptb+uBVh1GV5IaVUZtn29TLzPusUD36dBpaQHFHUSEd4JL5f0AcTVVDLf7yC88IVlGIfH/KVbVkZblu9KJtUV7KRe2q5yg9zHij/2ozWfkxOvwMIgndtAfRhS0e66IZPuy9o1H8iWb2fFJV7jg/rQ+valsUGVjODj3hvAEZbP2azWaHyIVbKY/09xupYGnPtVAMo6sLUVObTg7+ZymefPERXKBR+ySrdZtIoeXP7gOSq6y7qi3VqBuBUP+scjpHBtKnoC8nzdaMWCUuSqBaFVLFSZ20XXTx8Go8umFdfq5Je
x-ms-exchange-transport-forked: True
Content-ID: <412F582909948646967436E402AD3E4E@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b060a5b-a31a-4f60-8f28-08d778c6f2b2
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Dec 2019 14:33:36.6121 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wDtvKTdfVcK7aSaAA+rgvde8wSIKMxNbLeYB1UYdO3fBv7k72xgk51f73eHt34TZrOQpZf3TQ7FTWBZENhupPA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2644
X-OriginatorOrg: cisco.com
X-Outbound-SMTP-Client: 173.36.7.20, xch-aln-010.cisco.com
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
X-Headers-End: 1icVjO-008XTa-DY
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

On Mon, 2019-12-02 at 14:09 +0100, Lukasz Hawrylko wrote:
> Hi Paul
> 
> I went through all steps and I was able to create LCP with
> certificated,
> VLP with TB_HTYPE_PECOFF and finally got platform booted with PCR 20
> extended by certificate hash (to be honest I didn't check if it is
> correct). So everything works, however I have few notes :)

No worries, thanks for giving it a test.  The code is still pretty
rough, so I expect there to be plenty of feedback :)

I guess what I'm most concerned about at this point are the changes to
the policy: both the new LCP certificate payload element as well as the
VLP/TB_HTYPE_PECOFF changes.  Do those seem reasonable?

> If VLP is present under its own index (for TPM 2.0 it is 0x01C10131),
> tboot will not read LCP at all, so certificate will not be available.
> I
> think that we should modify program flow, so even if VLP is present,
> LCP
> should be read to check if LCP_CUSTOM_ELEMENT_CERTS_UUID element is
> there.

That sounds reasonable, let me see what I can do.

> Still I can't verify signature of custom build kernel signed by my own
> key, I am trying to figure out what is wrong, but without luck. One
> thing that I found is a problem in pkcs1_search_signer
> function (pkcs1.c:101), it is comparing certificate subject, but not
> from the root of certificate.

Can you elaborate a bit more on what you mean by "the root of
certificate"?  Alternatively, could you upload the kernel and signing
certificate somewhere I could grab so I can play with it?

> I know that this is working fine with
> Fedora's certificate, but I don't know if this is valid for every
> case. 
> With my simple certificate this was a first problem that I found. At
> least, you should check if pointer to next element in chain is not
> NULL.


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
