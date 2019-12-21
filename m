Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3050B128A80
	for <lists+tboot-devel@lfdr.de>; Sat, 21 Dec 2019 17:59:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:To:Sender:Cc:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Lz0t4Rme5aq8InzuGFeasGY5WYzN1KYua6GsjKsbn3s=; b=aH4Mf4TLplE5676zT2n06uKXP
	4loji5+a6wcRHc9kfkbPhKgInAG9+nnPsVPedcasqZqBWy28RcZBiXcuOf4ZCPXOB9dVcUefpkuIZ
	JLe5AhBLQl7W+IHMmFPEMBmJ+7qcU44+8H5snYUM/LPReZVPMxI2f2wu8Frfhbsgqj9f0=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1iii6O-0001kt-AG; Sat, 21 Dec 2019 16:59:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pmoore2@cisco.com>) id 1iii6N-0001kn-KR
 for tboot-devel@lists.sourceforge.net; Sat, 21 Dec 2019 16:59:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:
 Reply-To:Cc:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LYEwU//zyuNWzAK42Jjv8JPK5valvAecURVMGcLCH80=; b=mXhKyYgdF3G4GEBpVgoCUMjqrO
 5IwVPbocD4V5ExpsChyWxz5p0il8QCgeHHJTYb4LqDEwzvHqjSZwJG/F8Su3J5p/WJEuPETjlLAQt
 RipBo3LwHvM8WeYmVgDPW1BRgjhMHMmahttO/sFfgEs+N1bM1brSbaioJsH40lK4Y85M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LYEwU//zyuNWzAK42Jjv8JPK5valvAecURVMGcLCH80=; b=e4gG+7qsBHO0s2Phb4Hq8zydgW
 lYLsOpsh04VjCRBcJ5LlclNatvKsX+YbyDmPM28EVE+tfmKkieoKTt0r5EtCQxek+pysjq/Cf+w9Z
 T1WzBp4Uun77rqHJ2bO8+0mT6QrUFuNjAZiTPWxnxARB75lIEYJRZU/Li3iIJUOdpemg=;
Received: from rcdn-iport-9.cisco.com ([173.37.86.80])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps (TLSv1.2:DHE-RSA-SEED-SHA:128)
 (Exim 4.92.2) id 1iii6J-00C3vG-Oa
 for tboot-devel@lists.sourceforge.net; Sat, 21 Dec 2019 16:59:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=cisco.com; i=@cisco.com; l=3190; q=dns/txt; s=iport;
 t=1576947575; x=1578157175;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=LYEwU//zyuNWzAK42Jjv8JPK5valvAecURVMGcLCH80=;
 b=VRR0ULZevCMNsk/xVv3qwucIIFn64VBO5vyNNEUfaldGP9QzzU0n4hmU
 AtFYFZ0J3Lu3RIdsL8h6TkDlQvwigQKLZeTwhdFycUBYTTN58OM9RUnMC
 QxlM4UdqfhJdt49ImyHKS/Dp3VV+k04rs0u6auHCi3LrUNLp+s4V1Q/gd 8=;
IronPort-PHdr: =?us-ascii?q?9a23=3AF35nPxw8hQ4BC5jXCy+N+z0EezQntrPoPwUc9p?=
 =?us-ascii?q?sgjfdUf7+++4j5YhSN/u1j2VnOW4iTq+lJjebbqejBYSQB+t7A1RJKa5lQT1?=
 =?us-ascii?q?kAgMQSkRYnBZudDEr8NvOwRyc7B89FElRi+iLzPA=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0DdEQA0T/5d/5NdJa1lHgELHIFxC4F?=
 =?us-ascii?q?NUAWBRCAECyoKg32DRgOKd06CEYEBlweCUgNUCQEBAQwBAS0CAQGEQAIXggU?=
 =?us-ascii?q?kNwYOAgMNAQEEAQEBAgEFBG2FNwyFXgEBAQMBEhERDAEBOA8CAQgYAgImAgI?=
 =?us-ascii?q?CMBUQAgQBLQeFRwMOIAECoQQCgTiIYXWBMoJ+AQEFhR0YggwJgQ4ojBmCGoE?=
 =?us-ascii?q?Rgl41PoRJgxCCXoFAAY55jziPIgYEgjSMbokrG4JGmBGLLIMmgUaZEAIEAgQ?=
 =?us-ascii?q?FAg4BAQWBaCOBWHCBboFOUBgNjRILGINQilN0gSiPRCuBBAGBDwEB?=
X-IronPort-AV: E=Sophos;i="5.69,340,1571702400"; d="scan'208";a="600674966"
Received: from rcdn-core-11.cisco.com ([173.37.93.147])
 by rcdn-iport-9.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA;
 21 Dec 2019 16:59:10 +0000
Received: from XCH-ALN-007.cisco.com (xch-aln-007.cisco.com [173.36.7.17])
 by rcdn-core-11.cisco.com (8.15.2/8.15.2) with ESMTPS id xBLGxAdY021908
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=FAIL);
 Sat, 21 Dec 2019 16:59:10 GMT
Received: from xhs-rtp-001.cisco.com (64.101.210.228) by XCH-ALN-007.cisco.com
 (173.36.7.17) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Sat, 21 Dec 2019 10:59:10 -0600
Received: from xhs-rcd-001.cisco.com (173.37.227.246) by xhs-rtp-001.cisco.com
 (64.101.210.228) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Sat, 21 Dec 2019 11:59:09 -0500
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (72.163.14.9) by
 xhs-rcd-001.cisco.com (173.37.227.246) with Microsoft SMTP Server
 (TLS) id
 15.0.1473.3 via Frontend Transport; Sat, 21 Dec 2019 10:59:09 -0600
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DPnhADjlX0DaxhTMM3qAgBdRqRDzBWrUd15PG+syKI/jMGrbAvCqlHun7c3785eSvzka7ryYqNmSb4F9bmmcUghEE8hNzSe3RqCxyFqHPvHl7jkQWmtpOFZKtkb1eFbatTsVPANolwKEbAg6eiVUZC/hsVM5tAzR+u6YfT1cnjdJLhBeXkuse+MWhYEFEOf42OV19lZ1Lo2YRBgK8rPwVrjf6GwnJ7Ncg0ziiJQPiPDEVoeDWstpHfxjmjbGrP4pO5+Q5LotcUa7kj2r4EBdBZ75BSwr2QYz9tl67KPYSxoLXFsf8ixrAnrAmygWmdIkKUla4WTp6n0dgO6L2CJLLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LYEwU//zyuNWzAK42Jjv8JPK5valvAecURVMGcLCH80=;
 b=EJtcMcqils22K9r39zXKu5Etp+ds7v83Rlqyptg+lUoaie4Hs0sjQWABExCRCpy8h7ccjTs8RVEMttGoi0RssA4nzeGuGCHzWeCTsUejUGhP10nJYD1I8+gjtsFSb12gEPMRC3Od/6SUgjQZh8UPwC+QCGHMvnw59+Mo3uTBIDRfTjyKYT1Cy7b/ObZm/9SZRfOI9yA5KgUe61Q5sPkikXxBWO5YCexaa5iSRJJ1b6kdHS/LoH7hmiLa/SFKG9djjLoZcm44xi7v2cLbdHQvdGOF0m6v84Z7iztBhVue/iFpddQAG4/ByRh5AHqRs70If05S3daaSiohm+wMOlY2Ng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cisco.com; dmarc=pass action=none header.from=cisco.com;
 dkim=pass header.d=cisco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cisco.onmicrosoft.com; 
 s=selector2-cisco-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LYEwU//zyuNWzAK42Jjv8JPK5valvAecURVMGcLCH80=;
 b=fVk2JZy6nEmxHWb6RFnnAVACrUrAG/sIdgHfDbP7B3w9nSyQq3aSvdMZBZFPHl1Kfn/TAmIyLP+0GhrRehm0SvJGZ6+qdCCJnwG4CF+VfvPAWM5iukaIYe2vTLLkgeYXh3CDituJmfI+z0buB5fOlHtJLGjejh024VyvhNEddbY=
Received: from BN7PR11MB2866.namprd11.prod.outlook.com (52.135.246.157) by
 BN7PR11MB2788.namprd11.prod.outlook.com (52.135.245.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.14; Sat, 21 Dec 2019 16:59:08 +0000
Received: from BN7PR11MB2866.namprd11.prod.outlook.com
 ([fe80::99ce:89ae:9dc7:8efc]) by BN7PR11MB2866.namprd11.prod.outlook.com
 ([fe80::99ce:89ae:9dc7:8efc%2]) with mapi id 15.20.2559.016; Sat, 21 Dec 2019
 16:59:08 +0000
To: "lukasz.hawrylko@linux.intel.com" <lukasz.hawrylko@linux.intel.com>,
 "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Thread-Topic: [tboot-devel] [RFC] tboot: kernel signature verification
Thread-Index: AQHVbwB0th12F6sDfUCgP40i/qpaH6dgkXwAgDR+gACAEjVXgIADPEsAgALikQCAEeppAIAECYQAgAIJzIA=
Date: Sat, 21 Dec 2019 16:59:08 +0000
Message-ID: <141d1e7f4cfce39d4e53b292556310f7c31329d7.camel@cisco.com>
References: <bbaf0eeb3ddb8791533fc9dfba23ed57d3a2c9bd.camel@cisco.com>
 <ba9fa4341c9b9fa27c8ea3229f879d25614a900f.camel@cisco.com>
 <fbb29bfec178bb4b4d586df217d202fbe54430a4.camel@cisco.com>
 <60a05460106ef7cf1186e96d476c4564a500f5e2.camel@linux.intel.com>
 <bd1c6b6134911fd9f7c9c0434ca648c407ddc8f0.camel@cisco.com>
 <ceaca929e1b06cae46aff198872af05874ada24b.camel@linux.intel.com>
 <4981a097e7aeda6240fcd614164b72b69e25a2aa.camel@cisco.com>
 <0fa151128d5fd81337cf9383c4a9f46108fc5b7a.camel@linux.intel.com>
In-Reply-To: <0fa151128d5fd81337cf9383c4a9f46108fc5b7a.camel@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pmoore2@cisco.com; 
x-originating-ip: [173.38.117.67]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fcaa364f-ee47-4ae4-b340-08d78637185e
x-ms-traffictypediagnostic: BN7PR11MB2788:
x-microsoft-antispam-prvs: <BN7PR11MB2788B8C1C9FBCD660129F616F82C0@BN7PR11MB2788.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0258E7CCD4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(136003)(346002)(366004)(396003)(376002)(51444003)(199004)(189003)(478600001)(15650500001)(64756008)(66946007)(66476007)(66556008)(71200400001)(6506007)(36756003)(66446008)(4001150100001)(5660300002)(81156014)(8676002)(6512007)(86362001)(110136005)(76116006)(186003)(2616005)(316002)(91956017)(8936002)(2906002)(81166006)(26005)(6486002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN7PR11MB2788;
 H:BN7PR11MB2866.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: cisco.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: i+ue7t4TgnVv+m1cFbZ+y2pAQw1Inst15gxaB13BKgZ+uPMQJvqEOuWOcUWTImKil1mdXZxiBjAbSZEHdHvVKlh6XMNgs+MncFmhHQsZA/8NaN67xQ2wnRZOPafqs1hyzOMuqnNQF2jHHLlN9Rn9cAwpLKWMAwOsoE5xB12LweO/L8YBrnFpEXLaWk401vVMqeHQU7Y5jmOCo+E8Xsc55NjR87DNHhch6nZIkupndD/HiJa8K6ifZ9hLxH/TDUzNEP7cYBqH+jzDZbYhHD4jE3KloVrTj2w0W4FajY9mx2RCwUbWuSb1bs53T24jBLG4D6en6jILNFZBLiFjziOKTbRLQ6n8ImUS71N2ZUcWg33huK3UwQZsSijV32FF+Qd3nay34pTeDRSnUf32VOT7B/STamfeguA4sYG4RXwQ5soJkF3VHvSFhhq0oju6dCTPgXBWRRyOBDFluSid5TMElq7EZCY0VmMUD+S3GNinUXD8daqCy6pA+S70XsGnXoMC
x-ms-exchange-transport-forked: True
Content-ID: <24A60335D22EC445BB9307F2039057FF@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: fcaa364f-ee47-4ae4-b340-08d78637185e
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Dec 2019 16:59:08.3678 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kXU7AeADeUKeVIXbCGW2Ae6wziTz3UFAaHEAGWzG+EJjN45+qyaMfA+MZBF1V4ZiOVNMb/ThXAGPUlD8FXObxg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2788
X-OriginatorOrg: cisco.com
X-Outbound-SMTP-Client: 173.36.7.17, xch-aln-007.cisco.com
X-Outbound-Node: rcdn-core-11.cisco.com
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
X-Headers-End: 1iii6J-00C3vG-Oa
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

On Fri, 2019-12-20 at 10:51 +0100, Lukasz Hawrylko wrote:
> On Tue, 2019-12-17 at 20:12 +0000, Paul Moore (pmoore2) wrote:
> > On Fri, 2019-12-06 at 11:37 +0100, Lukasz Hawrylko wrote:
> > > On Thu, 2019-12-05 at 17:20 +0000, Paul Moore (pmoore2) wrote:
> > > > A question for discussion: if the VLP is loaded from it's own
> > > > nvindex,
> > > > and there is also a VLP present inside the LCP, which VLP do we
> > > > want
> > > > to
> > > > use?  I'm assuming it is the VLP we loaded directly, and not
> > > > from
> > > > inside
> > > > the LCP, but thought it was worth checking.
> > > >  
> > > 
> > > In "stock" TBOOT, VLP loaded from its own index has higher
> > > priority
> > > over
> > > one embedded in LCP, so I agree with you that here it should work
> > > like
> > > that.
> > 
> > I was thinking about this some more and I'm now wondering if we
> > should
> > only support the new TB_HTYPE_PECOFF hash type if it is present in a
> > VLP
> > loaded from the LCP.  In order to use the new signature support
> > admins
> > are going to need to generate a new LCP to contain the certificate
> > payload, why not store the VLP in the LCP at that point?
> 
> To be honest I don't like to add any kind of limitation when it is not
> needed. I think that in first approach we should allow to use any of
> possible configurations. If admins prefer to delete VLP index in TPM
> and
> put everything in LCP, they will do it, if, for any reasons, they want
> to keep VLP under its own index and put only certificate in LCP - why
> not, we support that case too :)

Okay, that's fine.  FWIW, it seems to me as if keeping the VLP in it's
own nvindex is a bit of a legacy solution, especially when we consider
the PECOFF signature validation.  In the PECOFF case you *must* have a
LCP to carry the certificates.  Not to mention the benefits of a signed
LCP allowing you to update the policy without updating the values stored
in the TPM nvindex (assuming the same policy signing key).

> > Is there any advantage to storing the VLP directly in the TPM and
> > not in
> > the LCP?
> > 
> > -Paul
> > 
> 
> That's a good question. I don't know if customers prefer to use VLP in
> LCP or directly, I will talk with our application engineers about
> that.

Thanks.

-Paul

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
