Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 25B1112367D
	for <lists+tboot-devel@lfdr.de>; Tue, 17 Dec 2019 21:06:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:To:Sender:Cc:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=k20n4h7+hPlkL/DYsYGSXkMoDTczyMZwjxebo1e3jxs=; b=II6YY9uKbofI9XBya8TV3Ltuo
	O5w7EclqdEGP0pL9ouKQ8FSkyh+Wiu4JFkq5VYiFGXjGFvYAXosqbfBLeS77oUgWf/meI4m4itAI+
	1jN4rD6/tX2LjLGSVaAwChxhy7i1YP6DhLSaP9/Rd6dYuVSHecldkUWMPSUeBe/71whOU=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1ihJ6z-0003Dc-At; Tue, 17 Dec 2019 20:06:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pmoore2@cisco.com>) id 1ihJ6y-0003DV-Ap
 for tboot-devel@lists.sourceforge.net; Tue, 17 Dec 2019 20:06:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:
 Reply-To:Cc:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0k5v08U2wzu8X6xThzgWgay0mP6V7EL5WNn7B0a/8e4=; b=NIode76Qq0p1HRAdap7ziSBEFc
 XJz2ygGfKXryCpDDPj2H3xxLeYzh8Ce3J9rYU6wQOzQfR3XKjliPacI9sTYRxoglezKczOxwD5Bmn
 Jk5uOxg846ul9tKr8wrjebaGn9G/aWXnM7vA9soFb/VlLEVZkKsS5K8vt+iSYlp2IhSs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0k5v08U2wzu8X6xThzgWgay0mP6V7EL5WNn7B0a/8e4=; b=bMulEffowdiZzPCWk7jTdT7iGW
 zIJ0NIlyzNTcCq30QnZOGGmBIUYA6doDDBY1XfFwiHcMibmXKWRlZ9GZHl3vCJqewKLJApd9jqp1n
 BWpQcPHJ48CO7k2CeW5YR+3SDh9lHeFtyMGJSZVULTxSS+XaO7pUdN5sVH6sTSmoZJrw=;
Received: from alln-iport-6.cisco.com ([173.37.142.93])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps (TLSv1.2:DHE-RSA-SEED-SHA:128)
 (Exim 4.92.2) id 1ihJ6w-003rv9-0c
 for tboot-devel@lists.sourceforge.net; Tue, 17 Dec 2019 20:06:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=cisco.com; i=@cisco.com; l=3560; q=dns/txt; s=iport;
 t=1576613185; x=1577822785;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=0k5v08U2wzu8X6xThzgWgay0mP6V7EL5WNn7B0a/8e4=;
 b=Li60wxGju5CPuWX437W7Tln1YPnJyqdpCAQjFaQa8DHyuD+UmW/jceJa
 iW48CO8h356y8+fl48AM7cyItGA/K6froseVYINyiKU0m1E5vX4253rj7
 lRKU/BUiz0TsI73sjSv/o2IE3sZTJYLTHOZW9jcZJgUxkAX6hkSsdRVqE 8=;
IronPort-PHdr: =?us-ascii?q?9a23=3A3NPTfBba+9j9y7ryacJHf2f/LSx94ef9IxIV55?=
 =?us-ascii?q?w7irlHbqWk+dH4MVfC4el20gebRp3VvvRDjeee87vtX2AN+96giDgDa9QNMn?=
 =?us-ascii?q?1NksAKh0olCc+BB1f8Kavyais9BskYfFRk5Hq8d0NSHZW2ag=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0C6AwC1NPld/5BdJa1lHQEBAQkBEQU?=
 =?us-ascii?q?FAYFtBQELAYFKKScFbFggBAsqCoN6g0YDixNOghGYBoJSA1QJAQEBDAEBIwo?=
 =?us-ascii?q?CAQGEQAIXggEkNwYOAgMNAQEEAQEBAgEFBG2FNwyFXgEBAQECARIRBA0MAQE?=
 =?us-ascii?q?4DwIBCBgCAiYCAgIwFRACBAE0gwEkgiIDDiABAgyjaQKBOIhhdX8zgn4BAQW?=
 =?us-ascii?q?BNQGDYRiCFwMGgQ4oAYwXghqBEYMTPoJkAoE9JoMQgl6BQAGOdIV6mFoGBII?=
 =?us-ascii?q?0hy+OYRuCQ4d2kBCLJ4MmiFCRfQIEAgQFAg4BAQWBaCOBWHCBboFOUBEUjRK?=
 =?us-ascii?q?Dc4VChRF0gSiOFYEwAYEPAQE?=
X-IronPort-AV: E=Sophos;i="5.69,326,1571702400"; d="scan'208";a="403069365"
Received: from rcdn-core-8.cisco.com ([173.37.93.144])
 by alln-iport-6.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA;
 17 Dec 2019 20:06:17 +0000
Received: from XCH-ALN-010.cisco.com (xch-aln-010.cisco.com [173.36.7.20])
 by rcdn-core-8.cisco.com (8.15.2/8.15.2) with ESMTPS id xBHK6HmY023879
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=FAIL);
 Tue, 17 Dec 2019 20:06:17 GMT
Received: from xhs-rtp-001.cisco.com (64.101.210.228) by XCH-ALN-010.cisco.com
 (173.36.7.20) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Tue, 17 Dec 2019 14:06:16 -0600
Received: from xhs-aln-002.cisco.com (173.37.135.119) by xhs-rtp-001.cisco.com
 (64.101.210.228) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Tue, 17 Dec 2019 15:06:15 -0500
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (173.37.151.57)
 by xhs-aln-002.cisco.com (173.37.135.119) with Microsoft SMTP Server (TLS) id
 15.0.1473.3 via Frontend Transport; Tue, 17 Dec 2019 14:06:15 -0600
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RNkHDG0xrm0CY0yLJ+8LohvayuHNhKaV1+/xr3joTEJcZ+XAOqvjie9hnOwWa2XQuEyL9TRdTP4PuRIfbbCBY/9kBQwObFM6NvRvBmZ+gNgGVbCQrY7pSmKB8pk9ijGj+8qjL1dYiSXS5+HcwBTQB9RKJtdTmo9II6m339FgqapwC5O3KTOoxmDePKZTCvGugmZZWXNb3ygqXV7Rwnj5gmZzcMJFpBtSmzGMgC1aQuoeU+m+X2uLQZQOqHX1Zj+FRe7kydkKEf4wlTn6zcUJ9RHIuxouldtHgopfdxU4XWF3/QKrd3m9DCPkdkAgHbkz6CISkrmwEm1qZapwxRn8DQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0k5v08U2wzu8X6xThzgWgay0mP6V7EL5WNn7B0a/8e4=;
 b=fgpHbWcgszkt97vuAPg5V0BBV338p5Vd/xSf6hKF5yRbucGoLWbtrWOd2GxfRKBdbuyB35Hu/AQ14USMeOpwz8e2dYKYdP5pGCFvNTpHGAnbCTnBfmErYzIRAdrN1JGpY3MIQroSLekZzHDg/2OGWp1UoYWb+avym81WbeeBPoUKCRqBLJlt1b2HgiFs9LjxVccKdXDZh8Oc9NweWkxe8MhvNQoKJfmuFhw026p8/7zX0c6nKMDuCcSYwZ9tKZyN5pdAJ0HGybaEqJmEb/u+etpVxRNOXxiaLAgZABFvBOQ2cvHWEeMB9gjzGJgFrLRQg3i0oMicGks2iDQx9VSHxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cisco.com; dmarc=pass action=none header.from=cisco.com;
 dkim=pass header.d=cisco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cisco.onmicrosoft.com; 
 s=selector2-cisco-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0k5v08U2wzu8X6xThzgWgay0mP6V7EL5WNn7B0a/8e4=;
 b=veoI4Uo/RAPmAABEVojo/GaKje0PzD0mHA+sTdc+RtXlJN5XDu0I0Jfck4gXPz1H+JR48BVrj9sYAqHPZJZ9uHuV090BhRM5pPV5Mkdbl/njlQdRtJSdzA/KaeHdHE4VcVb3Mete7poHjMYQ/Uk4+2itk2YAUKc78lc8PqmTQnA=
Received: from BN7PR11MB2866.namprd11.prod.outlook.com (52.135.246.157) by
 BN7PR11MB2785.namprd11.prod.outlook.com (52.135.254.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.15; Tue, 17 Dec 2019 20:06:14 +0000
Received: from BN7PR11MB2866.namprd11.prod.outlook.com
 ([fe80::99ce:89ae:9dc7:8efc]) by BN7PR11MB2866.namprd11.prod.outlook.com
 ([fe80::99ce:89ae:9dc7:8efc%2]) with mapi id 15.20.2538.019; Tue, 17 Dec 2019
 20:06:14 +0000
To: "lukasz.hawrylko@linux.intel.com" <lukasz.hawrylko@linux.intel.com>,
 "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Thread-Topic: [tboot-devel] [RFC] tboot: kernel signature verification
Thread-Index: AQHVbwB0th12F6sDfUCgP40i/qpaH6dgkXwAgDR+gACAEjVXgIADPEsAgALikQCAALYXgIARMpaA
Date: Tue, 17 Dec 2019 20:06:13 +0000
Message-ID: <eefde0b8f223d6e0c73468f3eb032ce186167fea.camel@cisco.com>
References: <bbaf0eeb3ddb8791533fc9dfba23ed57d3a2c9bd.camel@cisco.com>
 <ba9fa4341c9b9fa27c8ea3229f879d25614a900f.camel@cisco.com>
 <fbb29bfec178bb4b4d586df217d202fbe54430a4.camel@cisco.com>
 <60a05460106ef7cf1186e96d476c4564a500f5e2.camel@linux.intel.com>
 <bd1c6b6134911fd9f7c9c0434ca648c407ddc8f0.camel@cisco.com>
 <ceaca929e1b06cae46aff198872af05874ada24b.camel@linux.intel.com>
 <10173e9af141fb38c0a4482b6f8f58f1c31ccb0f.camel@cisco.com>
In-Reply-To: <10173e9af141fb38c0a4482b6f8f58f1c31ccb0f.camel@cisco.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pmoore2@cisco.com; 
x-originating-ip: [173.38.117.72]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0b9f65d6-26c8-467d-9dd2-08d7832c91bb
x-ms-traffictypediagnostic: BN7PR11MB2785:
x-microsoft-antispam-prvs: <BN7PR11MB27854263D9B9613E3A40B07AF8500@BN7PR11MB2785.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 02543CD7CD
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(366004)(346002)(136003)(396003)(39860400002)(189003)(199004)(76116006)(2906002)(15650500001)(6506007)(186003)(110136005)(2616005)(81166006)(86362001)(81156014)(26005)(6512007)(71200400001)(64756008)(66556008)(36756003)(316002)(91956017)(966005)(66946007)(8676002)(66446008)(478600001)(6486002)(8936002)(5660300002)(66476007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN7PR11MB2785;
 H:BN7PR11MB2866.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: cisco.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ocI0WDLSSgY7a605HYxmzq25kn5BZTY9SwjODs7QUOk08bUyFhOAipTwydjNmcttQg+zBpRQbB3JVrWAM4AOPijhlMxa1k/WZRO6amObQJx9vhXkkzAoKfSXEq3yAX8rrQsWH7sFZptsLPJzAr1gbiXwamhYNrENcfVlea1oFF7D3NT+LvDgwe4C1jl/Xiz4boUXSTZuRV4bE3KAvG230PBXP+RI4oA+TDwzWepVMeygBSlmi+bWgoFRFv8zrzNp+MlDJgWoJS48KCnk/duu+qZ5TQk1vy7lq2wcqfFaVZxW7spB9fLc7WQwH85oC1bo25/weLdR9hSmi5yRuj7+GhD91bv2MHI0RSkrF8Lmvp5qJslc/3fC0Gi82hAhcnMvvAx5HljFT/POT0Cidr0LJ50hOK46F9AtfQAggfXeJSlyJG4jqiUfQ9CalV0joM3YrPPM4A97grO28rRCNA3vgReDqFpGKaWGuq449vWqaP0=
x-ms-exchange-transport-forked: True
Content-ID: <C92AE4AFAF513640965EA07CCFB55B8E@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b9f65d6-26c8-467d-9dd2-08d7832c91bb
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Dec 2019 20:06:13.9758 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9h5PVxNgbJeepzSiZceeHcqfkFDoZbZUmYWt1BzYWdjzrgrar6SoTt1AT4wQ/Ay2SKz6xm2Br5RDyeopQWQKWQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2785
X-OriginatorOrg: cisco.com
X-Outbound-SMTP-Client: 173.36.7.20, xch-aln-010.cisco.com
X-Outbound-Node: rcdn-core-8.cisco.com
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
X-Headers-End: 1ihJ6w-003rv9-0c
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

On Fri, 2019-12-06 at 21:28 +0000, Paul Moore (pmoore2) via tboot-devel
wrote:
> On Fri, 2019-12-06 at 11:37 +0100, Lukasz Hawrylko wrote:
> > On Wed, 2019-12-04 at 14:33 +0000, Paul Moore (pmoore2) wrote:
> > > Can you elaborate a bit more on what you mean by "the root of
> > > certificate"?  Alternatively, could you upload the kernel and
> > > signing
> > > certificate somewhere I could grab so I can play with it?
> > 
> > Maybe I used wrong words, I am talking about pkcs1_search_signer
> > function and following lines:
> > 
> >   if (!asn1_blob_cmp(&entry->cert.serial, serial) &&
> >       !asn1_blob_cmp(&entry->cert.ca->subject, subject))
> > 
> > If I change them to
> > 
> >   if (!asn1_blob_cmp(&entry->cert.serial, serial) &&
> >       !asn1_blob_cmp(&entry->cert.subject, subject))
> > 
> > it will find my certificate.
> 
> Thanks, that makes it much more clear.  One of the benefits of sharing
> code is that it helps remove any uncertainties. :)
> 
> > Could you please explain me why are you
> > using serial from root of entry and subject from sub-element? Is it
> > connected with certificate chain? What if there is just the simplest
> > possible certificate that is not signed by anybody?
> 
> That does look a little odd, doesn't it?

It turns out it wasn't quite as odd as originally thought.  While wrong,
it wasn't far from the truth; the PKCS #7 blob in the signed PECOFF
kernel image doesn't contain the signer's subject name, but rather the
issuer's subject name.  This explains why the code worked: in the self-
signed (Lukasz's test case) and one intermediate CA cases (the Fedora
test case) using the CA would result in the signer being found, anything
with more than one intermediate CA would fail.

I've corrected the code and pushed it to the repo/branch below:

* https://github.com/pcmoore/misc-tboot/tree/working-txtsig


> > I have uploaded certificate and key that I have generated here: 
> > https://cloud.hawrylko.pl/s/ivHd7HZpuLIjQ88 there is also a signed
> > bzImage that I am using.
> 
> Great, thank you.  I'll take a closer look.

It turns out this was due to a limitation in libtomfastmath.  Your test
key/certificate used a 4k RSA key, but libtomfastmath had a restriction
on keys larger than 2k (it turns out the Fedora keys are 2k).  I
increased the libtomfastmath number limit to support 4k keys, and
increased the tboot stack size accordingly.  The updated misc-
tboot/working-txtsig code should now work for your self-signed test
case, if not please let me know.

Thanks,
-Paul


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
