Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E0420C08AD
	for <lists+tboot-devel@lfdr.de>; Fri, 27 Sep 2019 17:35:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:To:Sender:Cc:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yv3A+b9cV0cJzpRIeNIB1pUhsMu0G286MNRHg8LhPxs=; b=mNRmG2M0KDzLSZ2cZSuoSpVK+
	shUREN6EFjtX8RGM1AWUKWEjFoRT3VtSWxetH/WklCK3kvCaxsPttjpfUHIAePczCc/G/kPr/djfU
	CjNEzqILCouEFSsMc351hlzR8S12q62o0b3IucQf+Duz+kd1T/G+ApGyR0s+HI8q0444Q=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1iDsHQ-0000tg-S2; Fri, 27 Sep 2019 15:35:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pmoore2@cisco.com>) id 1iDsHN-0000tS-67
 for tboot-devel@lists.sourceforge.net; Fri, 27 Sep 2019 15:35:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:
 Reply-To:Cc:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lJgJwmFZ862wdCb4Gfdgs4m91grBnqHOFqiY8sCmYbc=; b=UBIZQXpC+LpnDRuI2OJLnIj73f
 DXRojTWdptdM6N/rlYwT2+/vQ6AEX/fJ4GO9OP7+O7rDBzPvuQSRw/Uzor4isFL8E6KFqRJ/Ofd2S
 J4n0uUXwQ6h1+C1ADCvzh9gtcG/8UAfAdlJRH788nX6PfEXEcXzxODRbrKVo/wx27y/Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lJgJwmFZ862wdCb4Gfdgs4m91grBnqHOFqiY8sCmYbc=; b=gWTICF3QpwJhJkge7tNoGtshUw
 yLkfhMMtgti5uJXuXRouVHjJKvkwW4ig38RGLwszkdreMv5zMi9U0tQh15cxXJ2vHqxLIjj639QKT
 JBzblLnMKtF83Phdja71n4ALu2x1joir2g8xD/iq+OORHAkxUi1lTnB1E1ZIuo7fpvXM=;
Received: from rcdn-iport-1.cisco.com ([173.37.86.72])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps (TLSv1.2:DHE-RSA-SEED-SHA:128)
 (Exim 4.92.2) id 1iDsHK-00BJzA-U8
 for tboot-devel@lists.sourceforge.net; Fri, 27 Sep 2019 15:35:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=cisco.com; i=@cisco.com; l=7682; q=dns/txt; s=iport;
 t=1569598530; x=1570808130;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=lJgJwmFZ862wdCb4Gfdgs4m91grBnqHOFqiY8sCmYbc=;
 b=GHv50MKSvJycaaAIvN2JrXS2NdImGd6Wc0YS5iQoCICSxhpYKU3M5wFD
 AAKYaw8iv7ikOqmlY20Ggn7Qw3RJMnvB7ajK02xuRexUxk+E6aLekpH92
 VbUWti6BsliZY3iTQMAVYAp8mov6o6MJS1CRdHEZlk08IGptu58Q6tySN M=;
IronPort-PHdr: =?us-ascii?q?9a23=3ANpsxPR070w7boki0smDT+zVfbzU7u7jyIg8e44?=
 =?us-ascii?q?YmjLQLaKm44pD+JxKHt+51ggrPWoPWo7JfhuzavrqoeFRI4I3J8RVgOIdJSw?=
 =?us-ascii?q?dDjMwXmwI6B8vQEUj8K+TnNQQxHd9JUxlu+HToeUU=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0AYAADOK45d/4wNJK1mGwEBAQEDAQE?=
 =?us-ascii?q?BDAMBAQGBUwYBAQELAYFKJCwDbVYgBAsqCoQYg0cDhFKGBU2CD36WeIEugSQ?=
 =?us-ascii?q?DVAkBAQEMAQEYDQgCAQGEQAIXgyAjNAkOAgMJAQEEAQEBAgEFBG2FLQyFSwE?=
 =?us-ascii?q?BAQIBAQEBEBERDAEBLAYGDwIBCBgCAiYCAgIlAQoVEAIEARIUDoMBgWoDDg8?=
 =?us-ascii?q?BAgyjNwKBOIhhdYEygn0BAQWBOAYKQYMLGIIXAwaBDCgBhRWGeIIXgRGCXTU?=
 =?us-ascii?q?+gmEBAQEBAReBMxSDC4JYgTMBiyCDCY5bjmMGBIIihwWIZkUFhFYbmTSLB4J?=
 =?us-ascii?q?aQIgXjUMEg0ACBAIEBQIOAQEFgVI4gVhwUIEegU5QEBSBTgsBF4NPhFmFenQ?=
 =?us-ascii?q?BC4Edi0oBJAeBBAGBIgEB?=
X-IronPort-AV: E=Sophos;i="5.64,555,1559520000"; d="scan'208";a="635174981"
Received: from alln-core-7.cisco.com ([173.36.13.140])
 by rcdn-iport-1.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA;
 27 Sep 2019 15:35:21 +0000
Received: from XCH-RCD-014.cisco.com (xch-rcd-014.cisco.com [173.37.102.24])
 by alln-core-7.cisco.com (8.15.2/8.15.2) with ESMTPS id x8RFZLPA015084
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=FAIL);
 Fri, 27 Sep 2019 15:35:21 GMT
Received: from xhs-rcd-002.cisco.com (173.37.227.247) by XCH-RCD-014.cisco.com
 (173.37.102.24) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Fri, 27 Sep 2019 10:35:20 -0500
Received: from xhs-rcd-001.cisco.com (173.37.227.246) by xhs-rcd-002.cisco.com
 (173.37.227.247) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Fri, 27 Sep 2019 10:35:20 -0500
Received: from NAM01-BY2-obe.outbound.protection.outlook.com (72.163.14.9) by
 xhs-rcd-001.cisco.com (173.37.227.246) with Microsoft SMTP Server
 (TLS) id
 15.0.1473.3 via Frontend Transport; Fri, 27 Sep 2019 10:35:20 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TwDMT4vANHravBTrQZEvGJJma1auY+W8gC/3Bm2BroakbmGMYQSRg5vS3IsIFU3L/HjDGPCNUKZll9AxX2HU3AGfEJmS5o1aLjzWXWm6XHZ+LwxKTpZVhz+S+3yaFMsrOwAtRLI98tAEy1ifYTiWPVOb5zws0BkN2q3C7Y5vBzR06uce29fw7QazIthmaCC1GTEvrB8nwyBRwt6f13ewOA16rk5VKV1GUth8X3hTBLf8s/JksjAtIyMCeyV2xdEtjkZYfZQKHrr/ODQ8RXSHLcWoxtfXA6t0R6Qw6BYDGczQS3+PfWATDmFurOE3kVluvVFNIRJnxuMM5tx2Td386g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lJgJwmFZ862wdCb4Gfdgs4m91grBnqHOFqiY8sCmYbc=;
 b=Vhohze32Cpi46zU0OgQ9frzqkKd9vGbRYhcDu7EIPP1NMoZB4D7wtZ54SAIdjD7nRt6BqlAs+nm7NF/QO706L6yOyZ2A3B0WEDOuRh/I/rHxIGCPntIRzXP0jiXlwLFET+/epCpPERxRHgGwZcEKy11m0LHDoZ3Jr38Pf3VWr3P26XgHIlb6HWFmH1czuOtaK3m+KO/UPnhusRNMqQ6AvFezFtyVcahxeHa7UTdwDviFQyjB6k39ayjrTZNVfZoYMuizXpLGpZ2VfhB2A84NSKhbJL4iE1nbOKZO0+81Sw5L6bpieZWFF1DhxahrCGTiWG9lVjvK1abaZFZolEKCXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cisco.com; dmarc=pass action=none header.from=cisco.com;
 dkim=pass header.d=cisco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cisco.onmicrosoft.com; 
 s=selector2-cisco-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lJgJwmFZ862wdCb4Gfdgs4m91grBnqHOFqiY8sCmYbc=;
 b=IkIoxZyK4Zo5WNJnRNmG1KsLmALT6Lku5BG8y/pzyk5uXCPo4Oxfdm5WbkSe3S/9E6i20UMvowf2mkiexhM6PM4S+rl0d+CGySBLnyx3DPeIuhndplCo6SJStaY/Umj1k+/IWydO30mBdyrZYPmFbxo/vsE+sPLD6+Fq5K+cr64=
Received: from MN2PR11MB4096.namprd11.prod.outlook.com (20.179.150.82) by
 MN2PR11MB4383.namprd11.prod.outlook.com (52.135.36.156) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.17; Fri, 27 Sep 2019 15:35:19 +0000
Received: from MN2PR11MB4096.namprd11.prod.outlook.com
 ([fe80::6931:def1:9b9f:731e]) by MN2PR11MB4096.namprd11.prod.outlook.com
 ([fe80::6931:def1:9b9f:731e%3]) with mapi id 15.20.2305.017; Fri, 27 Sep 2019
 15:35:18 +0000
To: "lukasz.hawrylko@linux.intel.com" <lukasz.hawrylko@linux.intel.com>,
 "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Thread-Topic: [tboot-devel] [RFC] tboot: kernel signature verification
Thread-Index: AQHVbwB0th12F6sDfUCgP40i/qpaH6c/c6AAgABAswA=
Date: Fri, 27 Sep 2019 15:35:18 +0000
Message-ID: <665a38a855a527bba60e4ef4ef01d6e3e022bf5b.camel@cisco.com>
References: <bbaf0eeb3ddb8791533fc9dfba23ed57d3a2c9bd.camel@cisco.com>
 <e21bae5563b1afd411ce2bcd1f98d2e2983d4b48.camel@linux.intel.com>
In-Reply-To: <e21bae5563b1afd411ce2bcd1f98d2e2983d4b48.camel@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pmoore2@cisco.com; 
x-originating-ip: [173.38.117.65]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f287ef25-4816-4aa4-bef6-08d743604d5b
x-ms-traffictypediagnostic: MN2PR11MB4383:
x-ms-exchange-purlcount: 4
x-microsoft-antispam-prvs: <MN2PR11MB43831EB3FCA8AE01F0C6C650F8810@MN2PR11MB4383.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0173C6D4D5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(39860400002)(346002)(376002)(396003)(189003)(199004)(86362001)(14444005)(5660300002)(71200400001)(71190400001)(186003)(99286004)(64756008)(26005)(478600001)(256004)(14454004)(966005)(2501003)(66476007)(66446008)(7736002)(66556008)(76116006)(11346002)(25786009)(6506007)(76176011)(2616005)(476003)(305945005)(66946007)(446003)(486006)(118296001)(8936002)(110136005)(81166006)(8676002)(6436002)(66066001)(36756003)(102836004)(3846002)(6246003)(6486002)(229853002)(6116002)(81156014)(15650500001)(316002)(6512007)(6306002)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4383;
 H:MN2PR11MB4096.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: cisco.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: P8O0XOUAhGxIRSgEBwRfRDIYoRvj6m8uDXMxMDqAivHshi/tKGSfkkR4jwsEq/I29Hr3Ej+HokPKW+RJ0noBpx69N+f03hMAWPNEfM2zbCbLlaYYP4N32AieUR3ld2IjDZPY4AgXZZELzLv8VXRtIEoeZhSSqYt+L0Hh8ClS+afi9dAFLx+JjtdrNpQ985tKROlgMaMeU1F748Pbq3U7OGRMay7JOG9jyNlGkvGFzfVbewEasvcIsQMhjA3dG1lnBqtkPFibzfUcbJWdxb2CUUk+C8drC4iQNT8slyg+n2qVrO3oMkZVcFXYvIN+gdSk1ql6BhEytuNzKB8YWahYVOEsZ5VzW1p6Qx9pPhQXHNhHkj0Cv8fP6eHbN2wSKQgGQ9UokH4crZkYd6D3THesH5nn1+HGvC8ckt5TqrE/gf20PNk7tOTnFTj47jg60AcpZ5Qh7wELidiCh1D5vd1eAw==
x-ms-exchange-transport-forked: True
Content-ID: <B3CD3F10D0F8E142A3D47542FDBCF3B5@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: f287ef25-4816-4aa4-bef6-08d743604d5b
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2019 15:35:18.8904 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BWtDMlQxbXv9Hk3o4VIEXIUxz8fkLP3Y48xiIAS5mc7xZEnDWTJ8Uf9DlLgTcuWbwJayvStCFXv/kzO6e1hN3w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4383
X-OriginatorOrg: cisco.com
X-Outbound-SMTP-Client: 173.37.102.24, xch-rcd-014.cisco.com
X-Outbound-Node: alln-core-7.cisco.com
X-Spam-Score: -7.6 (-------)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: paul-moore.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM white-list
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1iDsHK-00BJzA-U8
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

Hi Lukasz,

Thanks for taking a look, I know it is a lot to ask.  When looking at
the patches I'm mostly concerned about feedback on the general concepts
at this stage; the patches are still very much a work in progress.  My
goal in posting this on-list was to get some feedback now to see if this
is something that would be of interest to the project.  I would hate to
spend a few more months on this only to find out that tboot has not
interest in signature verification :)

As far as changes to the VLP are concerned, if you look at the patch
titled "tboot: add PECOFF signature verification hooks" you will see
that two of the TODO items are ...

- Support for kernel signature verification in the tboot policy.
  This probably means specifying a signing certificate as part of
  the policy.  We want to support certificate chains.  Backwards
  compatibility is a must.
- If the tboot policy can not be easily extended to support
  signature verification, we could consider embedding the
  certificate into the tboot binary at build time, similar to what
  is done with the UEFI Secure Boot shim.

I would obviously prefer to add a signing certificate or CA to the VLP,
but I haven't done enough investigation into the VLP format to know if
that is practical.  As a fallback I could envision embedding the
certificate into the binary (as the current prototype does), but that is
something I would like to avoid if possible.

As far as attestation and PCR values are concerned, my current thought
is to hash the signing certificate into one PCR (say PCR A) (assuming
the kernel signature is valid) and a combined hash of the
kernel/initrd/cmdline into a different PCR (say PCR B).  My thinking is
that this would allow admins to seal/attest to either a specific
kernel/initrd/cmdline using PCR B or to the signing authority which has
validated the kernel/etc. using PCR A.  However, I am open to other
ideas if you have suggestions - this effort is still in the early
stages.  This is one of the reasons I wanted to bring this effort to the
list as soon as the basic idea (PECOFF signature verification in tboot)
was working.

Thanks again,
-Paul

On Fri, 2019-09-27 at 13:43 +0200, Lukasz Hawrylko wrote:
> Hi Paul
> 
> Thank you for sharing your work. I will look at this patch and check
> how
> it works, idea of measuring kernel signature instead of whole binary
> is
> very interesting. I hope that next week I will find some time for
> that,
> as you said patch is quite big.
> 
> Do you plan to add ability to verify public key using VLP? If I
> understand correctly your current goal is to verify kernel binary with
> signature and extend PCRs with signature's public key hash, am I
> right?
> In this approach tboot is not able to verify if kernel is signed by
> proper authority, this need to be done be local/remote attestation in
> further boot process.
> 
> Thanks,
> Lukasz
> 
> On Thu, 2019-09-19 at 15:39 +0000, Paul Moore (pmoore2) via tboot-
> devel
> wrote:
> > Hello,
> > 
> > I've been working on adding PECOFF/kernel signature verification to
> > tboot and now that I have a rough working prototype I wanted to
> > bring
> > it to the list to see if this is something the tboot community would
> > be interested in eventually merging (once the work is more complete
> > and polished).
> > 
> > The patchset is quite large, mostly due to the inclusion of
> > libtomcrypt and libtomfastmath to the tboot repository, so I'm going
> > to refrain from spamming the list with the full patchset at this
> > early
> > stage.  The current patchset can be found on GitHub at the URL below
> > (look in the "working-txtsig" branch):
> > 
> > * 
> > https://github.com/pcmoore/misc-tboot/tree/working-txtsig
> > 
> > 
> > The prototype doesn't actually enforce any policy or change the PCR
> > measurements based on the kernel signatures (both are planned work
> > items), but it does demonstrate the ability to parse and verify a
> > signed PECOFF image.  The individual patch descriptions provide some
> > additional information on some of the planned work to take this from
> > a prototype to a proper implementation.
> > 
> > My motivation for this work is to create a mechanism that is capable
> > of generating a stable set of PCR values across multiple kernels
> > that
> > can be used to seal TPM NVRAM secrets on both legacy BIOS and UEFI
> > systems.  Imagine being able to store a storage encryption key in
> > the
> > TPM, and restricting access to that key to only authorized kernels
> > in
> > such a way that didn't require changing the tboot policy when
> > booting
> > different kernels.  I imagine I'm not along in thinking this would
> > be a nice capability to have, especially on systems that don't
> > support
> > UEFI Secure Boot.
> > 
> > For those who are interested, I gave a presentation on this work at
> > the Linux Security Summit last month, the video and sldies are
> > available at the links below:
> > 
> > * 
> > https://www.youtube.com/watch?v=Qbjz_5jUE9o
> > 
> > * 
> > https://www.paul-moore.com/docs/lss-securing_tpm_with_txt-pmoore-201909-r2.pdf
> > 
> > 
> > Thoughts?  Is this capability something the TXT/tboot community
> > would
> > be interested in merging into the main tboot repository once it is
> > more complete?
> > 
> > _______________________________________________
> > tboot-devel mailing list
> > tboot-devel@lists.sourceforge.net
> > 
> > https://lists.sourceforge.net/lists/listinfo/tboot-devel
> > 
> > 

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
