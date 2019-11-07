Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B0173F3A7D
	for <lists+tboot-devel@lfdr.de>; Thu,  7 Nov 2019 22:25:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:To:Sender:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vRxjUqyrX9OxYBi8pTUiG4Oqna7FOA+Gh3wRxLtspGo=; b=h8X+NqcrSENuwCgKD7ximPeEy
	7RjwMuhhBbTCam/zdQw6cuQxojcfrmeMhlUiXINlGQ2V6C0RuGwA8IH0g4cGrlEQMHclbkD+dtg4U
	E+ZXbiJPy/9VnOWv8tmjvRgP+94VLcpR5pQr1r1Z6EAdlzpxfwCCI9u6+OnmP/2iX9jFQ=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1iSpH3-0003EZ-CN; Thu, 07 Nov 2019 21:25:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pmoore2@cisco.com>) id 1iSpH1-0003EH-Fe
 for tboot-devel@lists.sourceforge.net; Thu, 07 Nov 2019 21:24:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
 :Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XibxqMXgSzZIXFmdRtgv8LeVqINwxKSNtQUaVK4bOcY=; b=EpA7N3dWNYJvYt58PeloGGnuJ+
 +NWISjv03W4ljCuUhs7e0p1RSiQbVnFG3fNdFtc65j7MZ6tkNQwmi5ICF2y9eJVNs6nHahlxhjP5X
 W4+u4CnzwH7rAQBCK4LoWfHXZ3pKiTJdDpAjPllozmgA9VSdH7lFuHkbjHw+ctkXE2t0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XibxqMXgSzZIXFmdRtgv8LeVqINwxKSNtQUaVK4bOcY=; b=F4b3Z/CX2baHkUA5A+vk4mO5MX
 93vR9EAtKf99C/eRQLlgesq6GiyI3jkAY7HKlYvx8O/tx5A4vPwMMttZyOCKoQGrKZCzjCPTnlGzd
 CiY3DS3C68vEimIsDDAVHhfLgSapSKVaT8IgN+wxu+CwwWoG32CuGXSPsqPbijYkiHD4=;
Received: from rcdn-iport-1.cisco.com ([173.37.86.72])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps (TLSv1.2:DHE-RSA-SEED-SHA:128)
 (Exim 4.92.2) id 1iSpGx-004CML-T4
 for tboot-devel@lists.sourceforge.net; Thu, 07 Nov 2019 21:24:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=cisco.com; i=@cisco.com; l=7530; q=dns/txt; s=iport;
 t=1573161895; x=1574371495;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=XibxqMXgSzZIXFmdRtgv8LeVqINwxKSNtQUaVK4bOcY=;
 b=GjsPIHyp+jfY+C+enUvbQhURQ/dH9b6m4qvHQRPRsuCqtqFLZGs89pG9
 XSkVPICyJPTIYQdh0cmf86NwKftF9dSIRnL7C30hc0OZJAy6zuEt2lJgS
 rZ1BQArQTcOCQBiaaAVH4OtTaKPoK5sYgaXcRfqInSH86FQ+Dn+6RCqXl 0=;
IronPort-PHdr: =?us-ascii?q?9a23=3AZm93uBR8sD68UJc0tzQFcPx7wdpsv++ubAcI9p?=
 =?us-ascii?q?oqja5Pea2//pPkeVbS/uhpkESXBdfA8/wRje3QvuigQmEG7Zub+FE6OJ1XH1?=
 =?us-ascii?q?5g640NmhA4RsuMCEn1NvnvOjQ/G8NYWQVN9HCgOk8TE8H7NBXf?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0C4AAB1h8Rd/5xdJa1lGgEBAQEBAQE?=
 =?us-ascii?q?BAQMBAQEBEQEBAQICAQEBAYF+gUtQBWxYIAQLKgqEH4NGA4sCgl6XfoFCgRA?=
 =?us-ascii?q?DVAkBAQEMAQEYCwoCAQGDe0UCF4N3JDgTAgMLAQEEAQEBAgEFBG2FCwYmAQu?=
 =?us-ascii?q?FUQEBAQEDAREREQwBASwLAQsEAgEIEQQBAQECAiYCAgImChUICAIEDgUigwG?=
 =?us-ascii?q?CRgMuAQIMqAQCgTiIYHWBMoJ+AQEFgTQBgRSCQhiCFwMGgQ4ojBSCF4QjPoJ?=
 =?us-ascii?q?iAYEvARIBH4MQgl6BPwGOR456jwcGBIIkhxeFIoMaPIUyG5lyjkaIMZE5AgQ?=
 =?us-ascii?q?CBAUCDgEBBYFpIjcwcXBQgR6BGgEBATFQERSFNIsCCxiDUIRZhXp0AYEnjVQ?=
 =?us-ascii?q?NFweBBAGBDgEB?=
X-IronPort-AV: E=Sophos;i="5.68,279,1569283200"; d="scan'208";a="657744506"
Received: from rcdn-core-5.cisco.com ([173.37.93.156])
 by rcdn-iport-1.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA;
 07 Nov 2019 21:09:12 +0000
Received: from XCH-ALN-002.cisco.com (xch-aln-002.cisco.com [173.36.7.12])
 by rcdn-core-5.cisco.com (8.15.2/8.15.2) with ESMTPS id xA7L9Cqn007949
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=FAIL);
 Thu, 7 Nov 2019 21:09:12 GMT
Received: from xhs-rtp-002.cisco.com (64.101.210.229) by XCH-ALN-002.cisco.com
 (173.36.7.12) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Thu, 7 Nov 2019 15:09:11 -0600
Received: from xhs-rcd-002.cisco.com (173.37.227.247) by xhs-rtp-002.cisco.com
 (64.101.210.229) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Thu, 7 Nov 2019 16:09:10 -0500
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (72.163.14.9) by
 xhs-rcd-002.cisco.com (173.37.227.247) with Microsoft SMTP Server
 (TLS) id
 15.0.1473.3 via Frontend Transport; Thu, 7 Nov 2019 15:09:10 -0600
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QIQdHErE1YX4Pfj/Dvoy7NhvQkESxXIQLiMxNzM/SLl2L7GU6I/zILWaMQZ4ql9FKeqPpnCJjCmzio0tiaNfvvTSKMrak4vQIwQrtXIGPJl52bu/QF91J0ENhpK103mXMBUrHQQfw1zQUQuM26jBC43eZwP+ylZJiqAernyWDKaKnpHrWdHrqX8JAtmbTKIorOMR10tPfQYLfu83G9FgOZqoyCyZpBpR6qbbdYhso2gE3Np+kmhYRODUGvjH3Q6pJAwFi1q1ePJZEFfAqJEIGcITQoDn1otCmLPmiggi4MtimMEmUwxQeI5UdpoiW9WuMIm/zX5vbDscNHFjkhaf9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XibxqMXgSzZIXFmdRtgv8LeVqINwxKSNtQUaVK4bOcY=;
 b=KYmmt22mJuZ064+AeGExN+ajAZ1OCj3MOL8c3+vvqwnDSl1IoqFGGX6PI8hDBRGpA09F6/ZdZRGHup+50xwvTpYOgUubcSTqgGY8azFQswZm0gqHoUxmUIT5TJOEsOcIbpLyO4YnSy7LhC43M83x0eq2wlEN7HfFDXpZUWL+uMjqmo9nBHYFcWajkL6sUTYSAWWJ8UrmkSOrEN2811CR+T+jAKXXvDuFzYm/hC4PfniajZuEXSMi/tus4W6crsGzs5iZ/XJfzvrSv/UB4L8Akw0qqoK+3ERfcyoV7JGJY4LuwD+3msLifBxVzH2yDxW1xd4uvuUCFCLYfBeQDaQHbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cisco.com; dmarc=pass action=none header.from=cisco.com;
 dkim=pass header.d=cisco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cisco.onmicrosoft.com; 
 s=selector2-cisco-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XibxqMXgSzZIXFmdRtgv8LeVqINwxKSNtQUaVK4bOcY=;
 b=IyQPVugKe4uYzPKGm5jkEhoDMnRwJv5oLxMQjt3l7uiFwShlkc9J/6yZeCZVxZM2kNL2fqKnsrEzWCea0FbUDUwokatpcGA2j4yWqZvnKc2VgQ6+GpipeeZ7W1gPxazWSfZseBjgWOP+G/kS+bH7uYpnEr0uD3b9NYxb5B+9QvQ=
Received: from BN7PR11MB2866.namprd11.prod.outlook.com (52.135.246.157) by
 BN7PR11MB2738.namprd11.prod.outlook.com (52.135.245.154) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Thu, 7 Nov 2019 21:09:09 +0000
Received: from BN7PR11MB2866.namprd11.prod.outlook.com
 ([fe80::fc28:bc87:48f1:e4cb]) by BN7PR11MB2866.namprd11.prod.outlook.com
 ([fe80::fc28:bc87:48f1:e4cb%3]) with mapi id 15.20.2408.028; Thu, 7 Nov 2019
 21:09:09 +0000
To: "Travis.Gilbert@dell.com" <Travis.Gilbert@dell.com>
Thread-Topic: Creating a TXT/tboot policy suitable for a modern system with
 TXT+TPM2
Thread-Index: AQHVlCtYW12WBIFGSk+TwpFcVCWnTad9MGGQgAAqOICAATPX0IABqGkA
Date: Thu, 7 Nov 2019 21:09:08 +0000
Message-ID: <a250508c1d6ba4cf2b080b6f69803698539f7b0c.camel@cisco.com>
References: <681a21560a8a9f41a4be8cdc399cf5008f7adecc.camel@cisco.com>
 <1926e09cfdf84af28414b36c2652f421@AUSX13MPC102.AMER.DELL.COM>
 <52ba4fc58ef941c81458ea95eeaed31b0aa669e1.camel@cisco.com>
 <b4e1bf1374114acdaa3b99d91b43bd64@AUSX13MPC102.AMER.DELL.COM>
In-Reply-To: <b4e1bf1374114acdaa3b99d91b43bd64@AUSX13MPC102.AMER.DELL.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pmoore2@cisco.com; 
x-originating-ip: [128.107.241.163]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: aa7493cf-010d-4511-f5c7-08d763c6bb89
x-ms-traffictypediagnostic: BN7PR11MB2738:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BN7PR11MB2738248668A2D0045D661AD9F8780@BN7PR11MB2738.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 0214EB3F68
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(136003)(39860400002)(396003)(366004)(189003)(199004)(13464003)(76116006)(66066001)(8936002)(6512007)(305945005)(86362001)(91956017)(6246003)(486006)(4326008)(446003)(6306002)(2906002)(8676002)(3846002)(6116002)(25786009)(81156014)(81166006)(316002)(7736002)(11346002)(476003)(102836004)(6486002)(6916009)(36756003)(6506007)(26005)(53546011)(14454004)(2501003)(118296001)(5640700003)(2351001)(6436002)(66476007)(256004)(966005)(2616005)(64756008)(99286004)(14444005)(66446008)(71200400001)(71190400001)(5660300002)(66946007)(76176011)(186003)(229853002)(478600001)(66556008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN7PR11MB2738;
 H:BN7PR11MB2866.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: cisco.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: g8zl6P/x1VtRHK9WoL1flcpq1ca2u2omus82f+8/APL/k1UUJmaFcCq+T+dnfEQDq4tK8b6I7oXuSasXczo1lAhak4tG1H6mavAlvRLsDVFzZaCyqtDRi/Q8XXovp/XQcPJ8rnFVwIukXFF3jsgqppTQYFlvDcbY4sfeRCMjoJG6P/yJDKueGR+DC/JY+LANEdHlMd5Cj7kiAK0uL8fWnSndutR55HYH5G7e7eswnEiXG6XrQZlHeJCNmcV4gjjusU4Ctmfo/ogXd6E6PgWNlqo37Fmfjv4vj6bmIHpGeXTwNoPwkHscRMQuoOUv6rY/37dS+N+gepKCquppFD+1JBVuGTcc3jYVSpxkeF4FY2divB3MymoPQ5EthmVxvpo3+H2KtMNoiofRygZGhRjKPE06TFS/+H2VHEu8XEsIh7vKxUNbvVMB7753w35wsoyhUYiBoRwqxpPVbb4cOUFSmCwgVB/lgwkZ8Q16bgrIF1g=
x-ms-exchange-transport-forked: True
Content-ID: <361B099B9AA78C4F96E1E9BFF4BC4C4B@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: aa7493cf-010d-4511-f5c7-08d763c6bb89
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Nov 2019 21:09:09.3741 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3cL5H1i7YrnddMBkw3SCArfN9afZSPIzH885t6Lj7lOQEisC5USnbuiqp1tgVgkpeU/NtwAk7+nhNMHL2aR3OQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2738
X-OriginatorOrg: cisco.com
X-Outbound-SMTP-Client: 173.36.7.12, xch-aln-002.cisco.com
X-Outbound-Node: rcdn-core-5.cisco.com
X-Spam-Score: -7.6 (-------)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM white-list
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1iSpGx-004CML-T4
Subject: Re: [tboot-devel] Creating a TXT/tboot policy suitable for a modern
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
Cc: "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tboot-devel-bounces@lists.sourceforge.net

On Wed, 2019-11-06 at 20:12 +0000, Travis.Gilbert@dell.com wrote:
> > -----Original Message-----
> > From: Paul Moore (pmoore2) <pmoore2@cisco.com>
> > Sent: Tuesday, November 5, 2019 19:28
> > To: Gilbert, Travis
> > Cc: tboot-devel@lists.sourceforge.net
> > Subject: Re: Creating a TXT/tboot policy suitable for a modern
> > system with
> > TXT+TPM2
> > 
> > On Tue, 2019-11-05 at 23:02 +0000, Travis.Gilbert@dell.com wrote:
> > > > -----Original Message-----
> > > > From: Paul Moore (pmoore2) via tboot-devel <tboot-
> > > > devel@lists.sourceforge.net>
> > > > Sent: Tuesday, November 5, 2019 16:50
> > > > To: lukasz.hawrylko@linux.intel.com;
> > > > tboot-devel@lists.sourceforge.net
> > > > Subject: [tboot-devel] Creating a TXT/tboot policy suitable for
> > > > a
> > > > modern system with TXT+TPM2
> > > > 
> > > > 
> > > > 
> > > > Hi Lukasz, others,
> > > > 
> > > > I'm in the process of working on the TXT/sig extensions to the
> > > > LCP
> > > > but I'm running into problems using the tboot tools to create a
> > > > working LCP as a baseline.  Simply put, the instructions I've
> > > > been
> > > > able to find either in the sources, the mailing list archives,
> > > > or
> > > > through Google searches do not produce a working LCP on my test
> > > > system.  The tools/arguments are either wrong, or the resulting
> > > > LCP
> > > > is bogus.
> > > 
> > > I had to patch lcptools-v2 because I found the same problem.
> > > Nothing
> > > would produce a good LCP.
> > > 
> > > > Before I start hacking away at the tools to get them to create a
> > > > functional LCP that tboot understands, does anyone have a
> > > > working
> > > > how-to for creating a LCP using the current sources?
> > > 
> > > When I patched lcptools-v2, I added a simple how-to for an MLE
> > > LCP,
> > > it's in the mailing list archives at the link below. If you need
> > > more,
> > > I have a few other examples.
> > > 
> > > https://sourceforge.net/p/tboot/mailman/message/35976955/
> > 
> > Thanks Travis, that got me going in the right direction; I needed to
> > add a
> > tboot policy element to make my system happy, but that was a trivial
> > addition to your instructions above.
> > 
> > If you're willing to share your other examples, I'd love to see
> > them, and I'm
> > sure others would as well.
> > 
> > Thanks again.
> 
> I've got about 20 some of which are negative test cases. They're bash
> scripts. I've stripped out the beginning shell line to make it more
> email handler friendly. #9 is actually split into 5 different tests
> signing various other policies that were previously unsigned. They
> were designed to be run in order as some later tests rely on the
> outputs of previous tests. I've included #3 and one of #9. Let me know
> if you have interest in any of the others. You don't have to take
> ownership or define the index every time, but keeping it in the script
> didn't cause us any issues. We could just copy some of the
> intermediate files and keep things simple when running tests out of
> order on multiple machines.
> 
> TXT - Scenario#1, Single MLE element and Unsigned Policy
> TXT - Scenario#2, Three MLE elements and Unsigned LCP
> TXT - Scenario#3, One PCONF element and Unsigned LCP
> TXT - Scenario#4, Two PCONF elements and Unsigned LCP
> TXT - Scenario#5, MLE, PCONF list Unsigned
> TXT - Scenario#6, SINIT Revocation (Negative Testing)
> TXT - Scenario#7, MLE Mismatch 1 - wrong hash file (Negative Testing)
> TXT - Scenario#8, PCONF mismatch (Negative Testing)
> TXT - Scenario#9, Signed policies with 2048 keys
> TXT - Scenario#10, Signed policy with 1024 key
> TXT - Scenario#11, Signed policy with 3072 key
> TXT - Scenario#12: signed policy with invalid key size (2000)
> TXT - Scenario#13 Input Validation, signed policy with invalid key
> size (512)
> TXT - Scenario#14, signed policy with invalid key size (4096)
> TXT - Scenario#15, MLE Mismatch - change in boot parameters (Negative
> Testing)
> 
> <3>
> cd /boot
> tpm2_takeownership -o new -e new -l new
> tpm2_nvdefine -x 0x1c10106 -a 0x40000001 -P new -s 70 -t 0x204000A
> 
> #TXT - Scenario#3, One PCONF element and Unsigned LCP
> tpm2_listpcrs -g 0x0B -o 1pcrs
> truncate -s 32 1pcrs #only select PCR0 for the policy
> lcp2_crtpolelt --create --type pconf --out 1pconf.elt 1pcrs
> lcp2_crtpollist --create --out lists3_unsig.lst 1pconf.elt
> lcp2_crtpol --create --type list --pol lists3.pol --alg sha256 --sign
> 0x0A --data lists3.data lists3_unsig.lst
> tpm2_nvwrite -x 0x1c10106 -a 0x40000001 -P new -f lists3.pol
> echo TBOOT_POLICY_DATA_FILE="lists3.data" > /etc/default/grub-tboot
> grub2-mkconfig -o /boot/grub2/grub.cfg
> </3>
> 
> <9>
> cd /boot
> tpm2_takeownership -o new -e new -l new
> tpm2_nvdefine -x 0x1c10106 -a 0x40000001 -P new -s 70 -t 0x204000A
> 
> #TXT - Scenario#9, Signed policies with 2048 keys
> openssl genrsa -out privkey.pem 2048
> openssl rsa -pubout -in privkey.pem -out pubkey.pem
> cp lists1_unsig.lst lists1_sig.lst
> lcp2_crtpollist --sign --pub pubkey.pem --priv privkey.pem --out
> lists1_sig.lst
> lcp2_crtpol --create --type list --alg sha256 --sign 0x0A --pol
> lists9a.pol --data lists9a.data lists1_sig.lst
> tpm2_nvwrite -x 0x1c10106 -a 0x40000001 -P new -f lists9a.pol
> echo GRUB_TBOOT_POLICY_DATA="lists9a.data" > /etc/default/grub-tboot
> grub2-mkconfig -o /boot/grub2/grub.cfg
> </9>

Thanks Travis!


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
