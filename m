Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 39D891158A1
	for <lists+tboot-devel@lfdr.de>; Fri,  6 Dec 2019 22:29:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:To:Sender:Cc:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cD8lqnQMlcaPkhHcMmjoXdkqtAcc60jjT6SyYbZHnQw=; b=a9wQo9YrK5vYAacpNz+bpHkaY
	go/aaq0nhBDpWzuEH4GVLu0Kxy9gOl9YNBXUPmmHeqqQi9nh7IdxY0Vewkz+Fb+ZDd8miN8Pw7FmC
	0sqZzT6ThF9zLS5gQFdUvG+M7NMUGZzslVnodUVgNZc/KioLZI+GykorxD8Ra90oKkw2U=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1idL9t-0000xD-9P; Fri, 06 Dec 2019 21:29:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pmoore2@cisco.com>) id 1idL9s-0000x6-El
 for tboot-devel@lists.sourceforge.net; Fri, 06 Dec 2019 21:29:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:
 Reply-To:Cc:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=797tiTmKRkrKwRkfWqJEIVNtJlwK3UHoXisNxYboYZ8=; b=mWVkYdPrYr2V9kjv7Kebtnf4M/
 d76SBOzRar2LlC/SyyVkkuCoFmXsxW5OHsdusHD+7TkmpGYtkJl9zbwm4oTM78jClLHrEbnt8RwiU
 hBLQ212cfMZkw5PQE2jZpozn4qQVlDZl2rkayy5HUeU9y7f8e65/iXMAfbzEyjroXGtE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=797tiTmKRkrKwRkfWqJEIVNtJlwK3UHoXisNxYboYZ8=; b=SRT6PiD3gNNQT6/f0Nfgw5ZX6l
 6mjYiZefv7rjSeu8ivO/6vmXPWMqTHLqU/+bYtQHEt2HZM9y+yANVrp/rrRoYM95zt+1KTU3ripMC
 woJZN0JY+uZLlcwJDzd+5pHe8pU0K/DmIGfMjkZMfS5mtDXfoD3ycyEmST2GBFeJQbYA=;
Received: from rcdn-iport-8.cisco.com ([173.37.86.79])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps (TLSv1.2:DHE-RSA-SEED-SHA:128)
 (Exim 4.92.2) id 1idL9n-00C2LG-Dv
 for tboot-devel@lists.sourceforge.net; Fri, 06 Dec 2019 21:29:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=cisco.com; i=@cisco.com; l=3486; q=dns/txt; s=iport;
 t=1575667739; x=1576877339;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=797tiTmKRkrKwRkfWqJEIVNtJlwK3UHoXisNxYboYZ8=;
 b=kYT7RUkSpydBvJ2IWVnMY6rwYK7+aU1HIc5OG45fXiBXiBidTb2S/MQj
 ec4YJWPcuds7RDip6IIkpVMmpTCEzGH2ErJ9X87noTyyI9wRibtQnPurE
 1nJEsuyzWocZQqNzQEBJMXIPoD1mi0P6J729CvT8wKgsNMT0NbpCV5OJ4 c=;
IronPort-PHdr: =?us-ascii?q?9a23=3ABKdF9RQ7LxQYkiW5laIcZKKJotpsv++ubAcI9p?=
 =?us-ascii?q?oqja5Pea2//pPkeVbS/uhpkESXBdfA8/wRje3QvuigQmEG7Zub+FE6OJ1XH1?=
 =?us-ascii?q?5g640NmhA4RsuMCEn1NvnvOjQ/G8NYWQVN9HCgOk8TE8H7NBXf?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0BNEwD4xupd/5NdJa1lHgELHIFzC4F?=
 =?us-ascii?q?LKScFbFggBAsqCoQig0YDiwBOghGYBYEugSQDVAkBAQEMAQEjCgIBAYRAAhe?=
 =?us-ascii?q?BfiQ2Bw4CAw0BAQQBAQECAQUEbYU3DIVSAQEBAQIBEhEEDQwBATIGBAsCAQg?=
 =?us-ascii?q?YAgImAgICMBUQAgQBNIMBgkYDDiABAgyhawKBOIhhdX8zgn4BAQWBNQGDWxi?=
 =?us-ascii?q?CFwMGgQ4ojBiCGoNvNT6HWYJegUABjmaeNAYEgi6HI45CG4JCh3OPfIslgyW?=
 =?us-ascii?q?IRJFmAgQCBAUCDgEBBYFZAy+BWHCBboFOUBEUjGYMF4EEAQeCRIVChRF0gSi?=
 =?us-ascii?q?MQAGBDwEB?=
X-IronPort-AV: E=Sophos;i="5.69,286,1571702400"; d="scan'208";a="676929395"
Received: from rcdn-core-11.cisco.com ([173.37.93.147])
 by rcdn-iport-8.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA;
 06 Dec 2019 21:28:50 +0000
Received: from XCH-ALN-004.cisco.com (xch-aln-004.cisco.com [173.36.7.14])
 by rcdn-core-11.cisco.com (8.15.2/8.15.2) with ESMTPS id xB6LSorj000919
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=FAIL);
 Fri, 6 Dec 2019 21:28:50 GMT
Received: from xhs-rtp-002.cisco.com (64.101.210.229) by XCH-ALN-004.cisco.com
 (173.36.7.14) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Fri, 6 Dec 2019 15:28:49 -0600
Received: from xhs-rtp-002.cisco.com (64.101.210.229) by xhs-rtp-002.cisco.com
 (64.101.210.229) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Fri, 6 Dec 2019 16:28:47 -0500
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (64.101.32.56) by
 xhs-rtp-002.cisco.com (64.101.210.229) with Microsoft SMTP Server
 (TLS) id
 15.0.1473.3 via Frontend Transport; Fri, 6 Dec 2019 16:28:47 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YHqOnUKjFN50t+Y7lSuXNpH4TLP9ew8PSByffKBtDNwVjKUezh7D7dCz5E5fobiesfLTKLrDcrTuzRwadC3RdcDJzuvRlvyGDVYxCsjPoJX56Y463coqTwM//gmZS/z5wHVQZLCOlyMnbAac1DHIADLu890BGq8KNh2WiPPRxkB2FHFtkh1Osz6TpnEGlrasKmgnVpXC0eo72emDsZ/zVgyEugFpei9lVgby+uW9sQ9Y2VxK0alDMLwVhNDjfshqqTC4Y1xZYrIl44fGOhYEIPxPP9qyRCBsY/rwMveRoURu6qljVflhLCJ6Ex8cdY0fnrsIqvss8SkeEU768F96RQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=797tiTmKRkrKwRkfWqJEIVNtJlwK3UHoXisNxYboYZ8=;
 b=BTD+5lMb0XbQaQW+0qZJz7kJb81NPdkgPBpJzrMIG8uCSnzdCN/Sk99kywOGxt8P/oTWBkkbfVE9BHvxFMvvGtPlecaVGgS8HvqT5P9vnVEcWS+hVWXOwBiDXdQMc48/V2bUJxGt/8Dqx+XogF7CLpsABui0q16UbuCJ+Z/V7ayvq9IHrrxIT0otlp2uQpxRm8idryjdSqXkNmfoFWkYKdWt2RL3EipnZOozIU9tM8JU3l+B4G8LeOPFfajMhR6rWlC/KpqdiLigUoS1v0QasnhC0sKKpg24RanOrxUX8RDl7LoVdiLuw3Y7KJISWy0klqgki++SALk5cqKCuEX0DA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cisco.com; dmarc=pass action=none header.from=cisco.com;
 dkim=pass header.d=cisco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cisco.onmicrosoft.com; 
 s=selector2-cisco-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=797tiTmKRkrKwRkfWqJEIVNtJlwK3UHoXisNxYboYZ8=;
 b=FBTePqdmyvtvtIr1wcAyeFiXoEvFsnTYIWT+QhMWlZl8rxt/8QTKqm+WL73Ig+JiW4xi15pZLJSKWiN9Rm3YiCuEWPwhayKbxwPGM9JO/Xd0V2e0NdlsFqtIHVEL77L9lHgYaggUD0ZWytzkxl8Txy+gTeUTWWMHvtlIaLxcKBg=
Received: from BN7PR11MB2866.namprd11.prod.outlook.com (52.135.246.157) by
 BN7PR11MB2657.namprd11.prod.outlook.com (52.135.244.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.14; Fri, 6 Dec 2019 21:28:46 +0000
Received: from BN7PR11MB2866.namprd11.prod.outlook.com
 ([fe80::99ce:89ae:9dc7:8efc]) by BN7PR11MB2866.namprd11.prod.outlook.com
 ([fe80::99ce:89ae:9dc7:8efc%2]) with mapi id 15.20.2495.026; Fri, 6 Dec 2019
 21:28:46 +0000
To: "lukasz.hawrylko@linux.intel.com" <lukasz.hawrylko@linux.intel.com>,
 "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Thread-Topic: [tboot-devel] [RFC] tboot: kernel signature verification
Thread-Index: AQHVbwB0th12F6sDfUCgP40i/qpaH6dgkXwAgDR+gACAEjVXgIADPEsAgALikQCAALYXgA==
Date: Fri, 6 Dec 2019 21:28:46 +0000
Message-ID: <10173e9af141fb38c0a4482b6f8f58f1c31ccb0f.camel@cisco.com>
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
x-originating-ip: [96.233.112.89]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 006a1039-d260-4f94-3a61-08d77a9346dc
x-ms-traffictypediagnostic: BN7PR11MB2657:
x-microsoft-antispam-prvs: <BN7PR11MB2657EBCD52C668AAF45F6E6AF85F0@BN7PR11MB2657.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0243E5FD68
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(136003)(366004)(396003)(346002)(39860400002)(199004)(189003)(76176011)(81166006)(81156014)(86362001)(110136005)(99286004)(8676002)(26005)(8936002)(102836004)(305945005)(2616005)(316002)(6512007)(6506007)(966005)(2906002)(5660300002)(186003)(478600001)(6486002)(118296001)(36756003)(66446008)(71200400001)(66556008)(64756008)(66476007)(66946007)(76116006)(71190400001)(229853002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN7PR11MB2657;
 H:BN7PR11MB2866.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: cisco.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ggx0ULGe6kXJzYr1tyanAv5UiHlucOAM5xwOii0nn0gN5qCLxdIrMVPIMRnuaTOwCgSld8miNBnKXefTEUereggg2Ce6DTZzu1+Z8XKrWv6ATcX9oivf91pNh2PzmS+1OyjVBTGhE7xBnJew/afk8XgCYB3K47iOS3RiyeKFbpr6nLhHuCzoyLN+tKxnEZqvBgMrLVwtRQQXs+bDMOajGXekv0BEBaixz8x34GGEhPp1Z2sodUc4yUWJrYaHBqUN0H0sKt9OJjv8M61UHdAGulA+HfAqfMP1+K2o6zvg9EkaEmhcobWAg8q3tQaByoIXyjFnR2y6oqnUCHEw8X5dLkMNidoY38KJ28LTSpHiIamxU4q6Twp4t/FFzsIlTfUHZTThtlIw5ukeZTEP8gKb6q7v+/8ShQkQ1X4dltHKGlSC4cVpCP9BVzWml2jfUWhCMnaWNgxghUKkEtXssr7piQrVtN9FopXRXYWzA77MSyE=
x-ms-exchange-transport-forked: True
Content-ID: <D3D4AEC4CD83EE47B7D75C5ECBD204DD@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 006a1039-d260-4f94-3a61-08d77a9346dc
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Dec 2019 21:28:46.1984 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Bf6PSboMZHF02N8q4Y6yRs2PxxG1x3lgPSaPksgBhXxEJSdUihapRxYA+SMpbOPucRyQiSEN6NOsVcN8QA2nJQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2657
X-OriginatorOrg: cisco.com
X-Outbound-SMTP-Client: 173.36.7.14, xch-aln-004.cisco.com
X-Outbound-Node: rcdn-core-11.cisco.com
X-Spam-Score: -7.6 (-------)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: hawrylko.pl]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM white-list
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1idL9n-00C2LG-Dv
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
> On Wed, 2019-12-04 at 14:33 +0000, Paul Moore (pmoore2) wrote:
> > Can you elaborate a bit more on what you mean by "the root of
> > certificate"?  Alternatively, could you upload the kernel and
> > signing
> > certificate somewhere I could grab so I can play with it?
> 
> Maybe I used wrong words, I am talking about pkcs1_search_signer
> function and following lines:
> 
>   if (!asn1_blob_cmp(&entry->cert.serial, serial) &&
>       !asn1_blob_cmp(&entry->cert.ca->subject, subject))
> 
> If I change them to
> 
>   if (!asn1_blob_cmp(&entry->cert.serial, serial) &&
>       !asn1_blob_cmp(&entry->cert.subject, subject))
> 
> it will find my certificate.

Thanks, that makes it much more clear.  One of the benefits of sharing
code is that it helps remove any uncertainties. :)

> Could you please explain me why are you
> using serial from root of entry and subject from sub-element? Is it
> connected with certificate chain? What if there is just the simplest
> possible certificate that is not signed by anybody?

That does look a little odd, doesn't it?  It's likely left over from a
rework of the code during development that wasn't caught because of 1)
it worked on my Fedora based test cases, and 2) I haven't really gone
over all of the code yet to make sure it is "sane" ;)

I know I've said this before, but please consider all of this code still
a very rough prototype.  Normally I wouldn't share code of this quality,
but since there are a large number of uncertainties surrounding this
work (e.g. is this approach reasonable?  are the policy changes okay?
etc.) I felt the advantages of sharing this code at such an early stage
outweighed the risks.

> I have uploaded certificate and key that I have generated here: 
> https://cloud.hawrylko.pl/s/ivHd7HZpuLIjQ88 there is also a signed
> bzImage that I am using.

Great, thank you.  I'll take a closer look.

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
> 
> Thanks,
> Lukasz
> 

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
