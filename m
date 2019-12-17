Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2045312329C
	for <lists+tboot-devel@lfdr.de>; Tue, 17 Dec 2019 17:35:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:To:Sender:Cc:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RaFu0lLyOlHPSz84BBOjg5NgU04N6SKo+m132LPcz7M=; b=TUTwoqfcRbSkRvXbomdVxHkOD
	ABZ0YCVEYh+1BajQZWRPzS0/baA6dWzCpQeF7YpM8rCmHe7Bai/oaKNBd08QcLhQGEtDJGUbr8AQH
	N2HnKVVbIdGMbawJCzH1IDkSZ3Qk8DGzwN1LyueDu4AOsIOd1vW5AhfPCncd3IuFuwIFQ=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1ihFp3-0002Ql-Lg; Tue, 17 Dec 2019 16:35:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pmoore2@cisco.com>) id 1ihFp2-0002Qe-8A
 for tboot-devel@lists.sourceforge.net; Tue, 17 Dec 2019 16:35:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:
 Reply-To:Cc:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lq2hzwjHz4Mp9ZSuujIw/ytDBoT09LTkplKuRrRbY/8=; b=UQk0g86gntbPwJlU15UP+bi2f1
 hR4wtMldo1Np4uxck7O5PvQfTlq2qYoDYo21nGtPxAbYLzHRrt8EII+M8pqFSGvsKtz762PwEV0aK
 c1g0agdlx89fC0Pjo5hm3Y5xCQhuMhWiTAbW7NqtVlNEZpglovzJrhV2sDagkjogpp8g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lq2hzwjHz4Mp9ZSuujIw/ytDBoT09LTkplKuRrRbY/8=; b=Bcb5BewRlqun0hmK55a/9s7bz9
 MmvkGurID2s9ebq/eMTDyciEwjahUlKz4vQvz1c5wkUrpS0CzEJHljFlrpdibPa9Q54ekhOLoylj/
 bK1jykdc52QH6va1fSFTDQslm5Hc8N7c2jJ1rQIn8pSrZQFX2KKKtnrk3IGC7+AjElCE=;
Received: from alln-iport-2.cisco.com ([173.37.142.89])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps (TLSv1.2:DHE-RSA-SEED-SHA:128)
 (Exim 4.92.2) id 1ihFoz-007uGH-3L
 for tboot-devel@lists.sourceforge.net; Tue, 17 Dec 2019 16:35:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=cisco.com; i=@cisco.com; l=1422; q=dns/txt; s=iport;
 t=1576600541; x=1577810141;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=lq2hzwjHz4Mp9ZSuujIw/ytDBoT09LTkplKuRrRbY/8=;
 b=byAXV2p5zos3nXqjqfPIye0Fjv989RIsNy2unSsiTFdSt+B1yqtHO3gv
 ydGhRE0UvXeZaEh6cIfOaxlNZAxzUCHIY3IhBB6D23VPc8D2CXzKlFpLw
 Br3y2wfZ0kKbB8kIXUj3Gbp6dnUZ93thXJx5G8NvlHmTgGtbAsFoQb/YG 0=;
IronPort-PHdr: =?us-ascii?q?9a23=3AUuaRzBCrPj0VSbHNFXT0UyQJPHJ1sqjoPgMT9p?=
 =?us-ascii?q?ssgq5PdaLm5Zn5IUjD/qs13kTRU9Dd7PRJw6rNvqbsVHZIwK7JsWtKMfkuHw?=
 =?us-ascii?q?QAld1QmgUhBMCfDkiuNPvtaDY3RuxJVURu+DewNk0GUMs=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0DtAwBVA/ld/51dJa1lHQEBAQkBEQU?=
 =?us-ascii?q?FAYFtBQELAYFKKScFgUQgBAsqCoN6g0YDiw9OghGYBoJSA1QJAQEBDAEBLQI?=
 =?us-ascii?q?BAYRAAheCASQ3Bg4CAw0BAQQBAQECAQUEbYU3DIVfAQEBAxIREQwBATIGDwI?=
 =?us-ascii?q?BCBgCAiYCAgIwFRACBAE0hUcDLgECoxECgTiIYXWBMoJ+AQEFhRgYghcJgQ4?=
 =?us-ascii?q?oAYwXghqEJD6ESYMQgl6BQAGOdJ5UBgSCNJYQG4JDh3aQEIsngyaaTQIEAgQ?=
 =?us-ascii?q?FAg4BAQWBaCOBWHCBboFOUBEUjRIMF4EEAQ2CPopTdIEoj0gBgQ8BAQ?=
X-IronPort-AV: E=Sophos;i="5.69,326,1571702400"; d="scan'208";a="394420134"
Received: from rcdn-core-6.cisco.com ([173.37.93.157])
 by alln-iport-2.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA;
 17 Dec 2019 16:35:32 +0000
Received: from XCH-ALN-010.cisco.com (xch-aln-010.cisco.com [173.36.7.20])
 by rcdn-core-6.cisco.com (8.15.2/8.15.2) with ESMTPS id xBHGZVqh027726
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=FAIL);
 Tue, 17 Dec 2019 16:35:31 GMT
Received: from xhs-rcd-002.cisco.com (173.37.227.247) by XCH-ALN-010.cisco.com
 (173.36.7.20) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Tue, 17 Dec 2019 10:35:30 -0600
Received: from xhs-rtp-002.cisco.com (64.101.210.229) by xhs-rcd-002.cisco.com
 (173.37.227.247) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Tue, 17 Dec 2019 10:35:29 -0600
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (64.101.32.56) by
 xhs-rtp-002.cisco.com (64.101.210.229) with Microsoft SMTP Server
 (TLS) id
 15.0.1473.3 via Frontend Transport; Tue, 17 Dec 2019 11:35:29 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ce4ww1gYrdq0ffKgO1jIeA4tEXjdXCwGIp9tisnqSblgwxhHjfnTnHLUuZ+p/Wd8OCAkJ3Bbp1TsrGQtu6Kh01/L1c762Eu+Vnm4PaEnNJtanRmK430kHEd7SINGWfPhWSYaOwc5ATd/a63ivBNpWk0aHz7lLXsEYNNgqfqGuIBjqEwIyfKCmbCY8yo9WBuBP9jXxFlocnrj7lRhgOku9SRfIbMYvAm5nutKPM/5TwVVwkWHBNcZLjGgbJgjtPvnfP87khXnYEHTxkgQ3BLdgzwLxJv5Zx9mu+a+qRyVeURrkiqK3e/1+lwJwdAKySv113d9M3WO/ctpHQuKJxd2Nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lq2hzwjHz4Mp9ZSuujIw/ytDBoT09LTkplKuRrRbY/8=;
 b=JPLH01sLCqplY7T7j14WGCP9foIu8eWB/E2Nu/SS1KOMVpX74P2JiitmGs3kj2CM5hJII8K42BJJhMH9NvNa0Xi22p/d9ZfpVWl2gEk0HzakH69EKe8KNVVBjUMHRR54k1ort1tWom5fvMKLBD7lmP3Kug6gD+q4pjobQgGtN2SeG8tmq/YVJ7fU+dO34iTC1fQhgLN4mS4wrF3tEmuGQCg8ga69IpSXdkopthMLpF/aAsesa3GyiiKMe295qXKQSnLTubh1X9a2zKWZP2fBwqHDyhOV4J8DzS2+mm/7aoXFIwCzPb2yCZ8umxZ169uNx1E1HH65LEXyBsO4xTk7pg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cisco.com; dmarc=pass action=none header.from=cisco.com;
 dkim=pass header.d=cisco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cisco.onmicrosoft.com; 
 s=selector2-cisco-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lq2hzwjHz4Mp9ZSuujIw/ytDBoT09LTkplKuRrRbY/8=;
 b=iLNbapSm3+8vJCR9of3Ux/HygfJCHoqjO6O3kFX0k+SdVIqUMedo51syQGVEMaqcY2I7vKxayreT55kkUZpjasFkEG9BItW6cMJB3irHwjcLAJxjEzfJx7laXUf/VpJMUyk5lrQz9gXvnI9obdP//wa0Tdtxe0PTi3hlAW+pun0=
Received: from BN7PR11MB2866.namprd11.prod.outlook.com (52.135.246.157) by
 BN7PR11MB2819.namprd11.prod.outlook.com (52.135.246.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.18; Tue, 17 Dec 2019 16:35:29 +0000
Received: from BN7PR11MB2866.namprd11.prod.outlook.com
 ([fe80::99ce:89ae:9dc7:8efc]) by BN7PR11MB2866.namprd11.prod.outlook.com
 ([fe80::99ce:89ae:9dc7:8efc%2]) with mapi id 15.20.2538.019; Tue, 17 Dec 2019
 16:35:29 +0000
To: "lukasz.hawrylko@linux.intel.com" <lukasz.hawrylko@linux.intel.com>,
 "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Thread-Topic: [tboot-devel] [RFC] tboot: kernel signature verification
Thread-Index: AQHVbwB0th12F6sDfUCgP40i/qpaH6dgkXwAgDR+gACAEjVXgIADPEsAgALikQCAALYXgIAEQBQAgAy3oAA=
Date: Tue, 17 Dec 2019 16:35:29 +0000
Message-ID: <95abfed6125b58a63b7e7caa239fbccf266aa7e5.camel@cisco.com>
References: <bbaf0eeb3ddb8791533fc9dfba23ed57d3a2c9bd.camel@cisco.com>
 <ba9fa4341c9b9fa27c8ea3229f879d25614a900f.camel@cisco.com>
 <fbb29bfec178bb4b4d586df217d202fbe54430a4.camel@cisco.com>
 <60a05460106ef7cf1186e96d476c4564a500f5e2.camel@linux.intel.com>
 <bd1c6b6134911fd9f7c9c0434ca648c407ddc8f0.camel@cisco.com>
 <ceaca929e1b06cae46aff198872af05874ada24b.camel@linux.intel.com>
 <10173e9af141fb38c0a4482b6f8f58f1c31ccb0f.camel@cisco.com>
 <8378115dfe01d36a4c849a99e0959d577ce7ae61.camel@linux.intel.com>
In-Reply-To: <8378115dfe01d36a4c849a99e0959d577ce7ae61.camel@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pmoore2@cisco.com; 
x-originating-ip: [173.38.117.72]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f5b1c9be-d885-4531-cc17-08d7830f20b2
x-ms-traffictypediagnostic: BN7PR11MB2819:
x-microsoft-antispam-prvs: <BN7PR11MB2819FBEFBCFE8024CEAF5144F8500@BN7PR11MB2819.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 02543CD7CD
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(376002)(39860400002)(366004)(346002)(136003)(199004)(189003)(71200400001)(36756003)(81156014)(8936002)(66476007)(66446008)(86362001)(8676002)(2616005)(81166006)(6506007)(5660300002)(6512007)(6486002)(110136005)(66946007)(316002)(26005)(91956017)(2906002)(478600001)(76116006)(64756008)(66556008)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN7PR11MB2819;
 H:BN7PR11MB2866.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: cisco.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xEMZUSRSS3J0fReCeopClvZ3YgnybNsNqI0jICJcqLyVbOkA8tiXHyjpVvY1P6ekqG8xXhH5yw2zrUy4OCattuQ78idgHE4qNOkCw3AktD9Sc8oyHTxtQ2vYbSGP+6W0KtULWCqHFaPZdH3Jqvhl/KMJOVRqy3PFnxrlMCvoocNeZccT8mNlDqfwhH/0kBR3As6kWl8gm+xwcKc7cAPe8QiFNmn3HuFUdWrM7x2CrX0mOyFcbw3csAHuqU88cm7pczx41oOP4PfxJzG0oZ3jNg3K8W5GmLcQNgzs8GmSzJY0l8In73vmsJbFpxq/our9RfL6720XAtbCoPKoQvhlK1b1O9GXP4UMeHkzi+N00MhUHB9Z3SHtKUYhBqOf/hgpZ+FiY6B2i0pZFwqK0p76PUbbvKFEIqFnRW+yBF6qPEdpVGHR9myEfw6WurOzwYmt
x-ms-exchange-transport-forked: True
Content-ID: <55137B682E96D4459D836376282EA623@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: f5b1c9be-d885-4531-cc17-08d7830f20b2
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Dec 2019 16:35:29.1052 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lm1OTHsfmF+FzIRIGDU4LJGorgLrAt50OhzYivjWhB2x3BR/IeM7BESHGE1SeeCXf8PZ+IkMF3mnKBga2PGJQA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2819
X-OriginatorOrg: cisco.com
X-Outbound-SMTP-Client: 173.36.7.20, xch-aln-010.cisco.com
X-Outbound-Node: rcdn-core-6.cisco.com
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
X-Headers-End: 1ihFoz-007uGH-3L
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

On Mon, 2019-12-09 at 15:23 +0100, Lukasz Hawrylko wrote:
> On Fri, 2019-12-06 at 21:28 +0000, Paul Moore (pmoore2) wrote:
> > I know I've said this before, but please consider all of this code
> > still
> > a very rough prototype.  Normally I wouldn't share code of this
> > quality,
> > but since there are a large number of uncertainties surrounding this
> > work (e.g. is this approach reasonable?  are the policy changes
> > okay?
> > etc.) I felt the advantages of sharing this code at such an early
> > stage
> > outweighed the risks.
> 
> I totally understand that, it's nice that you are sharing your WIP
> code,
> so we can discuss changes on the fly. If I wrote something that
> suggests
> that I blame you for that, it's only a result of fact that English
> is not my native language :)

No worries, no offense was taken, I just wanted to make sure that the
expectations were set appropriately.  Also, I just wanted to say that
your English is just fine, it's *far* better than my Polish ;)

-Paul


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
