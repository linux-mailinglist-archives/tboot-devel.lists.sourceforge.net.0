Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A293129B04
	for <lists+tboot-devel@lfdr.de>; Mon, 23 Dec 2019 22:20:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:To:Sender:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KbSRDTQ/PeDVtE544zBNkBaXgAtXdbGtzVEFuJv5cNM=; b=EkvcZb6kyRs26jV8FICnUQHit
	yVqfzw1qseKWMyFgxqm1Xi2jjISFRp210ZIPXB/xQi2caMsUFIJdB5GuCpbcP1kQATuE4pyKnTDsA
	pO6KvwYmby5afOaIo57KrdoOz+UDqFGebxekKf9AMOjwf9+Z9nKc6AS5vRCQJue4T/Gv4=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1ijV7n-0000hL-8d; Mon, 23 Dec 2019 21:20:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pmoore2@cisco.com>) id 1ijV7l-0000h6-RJ
 for tboot-devel@lists.sourceforge.net; Mon, 23 Dec 2019 21:20:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
 :Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dY4VZ+Lda35cfLUdDUmuCg5XAxhsxRDFNvHpq3X0EFM=; b=hqr9OihoDvCKJ2PxKx8FuCRb1x
 xsdmwdQA70rk+YnZfHaS3cvyTWOb58EM50VKhh5/YdmfqB9MgAyqGmN4meDO3RNEyNq+Rr1QjnjU9
 ZoJQ9nFOWbV+1titqtiwJ0fw4HDCVgEmgDycADGgu5mGHvZzxCVIKuYj0vyXTm0VImDI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dY4VZ+Lda35cfLUdDUmuCg5XAxhsxRDFNvHpq3X0EFM=; b=JH5uZaT5Oypz8AsR9FWshjFW95
 9H2opMlMhAaqbpg1U7SJBEoHVdLxnr4ZrvuUtGF8McQIADR349eP5U1sZNY6ByHV1VWJPr8F7UyV/
 vbvDh6XdPkecn5+w6vLG15qv3LMT4BeGQYJ6ipe8rHpBteJMWE0Y1/0wQuSXoggrEvaI=;
Received: from alln-iport-8.cisco.com ([173.37.142.95])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps (TLSv1.2:DHE-RSA-SEED-SHA:128)
 (Exim 4.92.2) id 1ijV7g-00DNmX-RV
 for tboot-devel@lists.sourceforge.net; Mon, 23 Dec 2019 21:20:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=cisco.com; i=@cisco.com; l=3774; q=dns/txt; s=iport;
 t=1577136016; x=1578345616;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=dY4VZ+Lda35cfLUdDUmuCg5XAxhsxRDFNvHpq3X0EFM=;
 b=I5svv0GKmhCOnl9veBW+X4A+PM05MdxN2m7MnWZtwTxAtJkdeXPvyK8Y
 pZ0XTndNUSa7zFigRx2TZnxcn5QcEC5pvzNSngMVMUsN4ebbSRvgK5O41
 kV+4yOuc3UqRT3LEW4Irc48zYXIpjggTWIqTxwcR1JUkULIzJSrpM6rqF Q=;
IronPort-PHdr: =?us-ascii?q?9a23=3AaEaWuxeQddTTrmwmnJ2gelSVlGMj4e+mNxMJ6p?=
 =?us-ascii?q?chl7NFe7ii+JKnJkHE+PFxlwGRD57D5adCjOzb++D7VGoM7IzJkUhKcYcEFn?=
 =?us-ascii?q?pnwd4TgxRmBceEDUPhK/u/dyk9G95PDndu/mqwNg5eH8OtL1A=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0DfBQBoLgFe/4QNJK1kHAEBAQEBBwE?=
 =?us-ascii?q?BEQEEBAEBgXyBUlAFgUQgBAsqCoN+g0YDinqCX5gIgUKBEANUCQEBAQwBARg?=
 =?us-ascii?q?VAgEBhEACF4IHJDgTAgMNAQEEAQEBAgEFBG2FNwELhV4BAQEBAgEBERERDAE?=
 =?us-ascii?q?BNwEEBwQCAQgRBAEBAQICJgICAiYKFQgIAgQOBSKFRwMOIAECogICgTiIYXW?=
 =?us-ascii?q?BMoJ+AQEFgkqCVRiCDAmBDiiMGYIahCQ+hBYBEgEfgxCCXoFAAY55nloGBII?=
 =?us-ascii?q?0jG6DXoVNG5pXjlKaVgIEAgQFAg4BAQWBaSJncXBQgR6BTlAYDY0SCxiDUIp?=
 =?us-ascii?q?TdIEojQAPFweBBAGBDwEB?=
X-IronPort-AV: E=Sophos;i="5.69,349,1571702400"; d="scan'208";a="399437839"
Received: from alln-core-10.cisco.com ([173.36.13.132])
 by alln-iport-8.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA;
 23 Dec 2019 21:20:08 +0000
Received: from XCH-RCD-010.cisco.com (xch-rcd-010.cisco.com [173.37.102.20])
 by alln-core-10.cisco.com (8.15.2/8.15.2) with ESMTPS id xBNLK2Tg000361
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=FAIL);
 Mon, 23 Dec 2019 21:20:06 GMT
Received: from xhs-rtp-001.cisco.com (64.101.210.228) by XCH-RCD-010.cisco.com
 (173.37.102.20) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Mon, 23 Dec 2019 15:20:02 -0600
Received: from xhs-aln-001.cisco.com (173.37.135.118) by xhs-rtp-001.cisco.com
 (64.101.210.228) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Mon, 23 Dec 2019 16:20:01 -0500
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (173.37.151.57)
 by xhs-aln-001.cisco.com (173.37.135.118) with Microsoft SMTP Server (TLS) id
 15.0.1473.3 via Frontend Transport; Mon, 23 Dec 2019 15:20:01 -0600
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mxHQjB3ciXr92EsqIbiVavxJHKCK+xxSU8Gk4HWqYbG3C4bHjLkN+O9khDVYi3peHN0Wy/VQken2WHyUQLXnhKbpjbmDhIltrmiURBQxdVdq3eDzcQBj7B492kBOK/4WPeg1i5YQ3Fvgbr1Ybj0BaLXQV8H0RR00686ko/S2a1unuL36ZEx/kB5cbTC+MNXvXvtEwpXIht0jd2v9IqZAQ+OMXeCqYcohRIad1BoLv0VfMtyWl/8NRMxxk/mG5IgCR4V07m+vLWzmJNJ6Sp4pjX98eAr3v1Bfx/ywLuhnnGrlzDsS/g2NYCxb4Egprn0YJ6B9Wq8CJAR6UkXUNN3C+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dY4VZ+Lda35cfLUdDUmuCg5XAxhsxRDFNvHpq3X0EFM=;
 b=fGhMqkk5sNtKmdF7PXHqmj2oYmYPfmcz6r/VhY5u7sh3QnM3g2SD+oCrFuFrzW/tvx4Aqk4Zg/n9eO3Mz9OIGeeTztEP1GAkHwR2ACUUUyKnX7syh4uXo3lB7QpKK9JZYgFwBv0WvOBKOkNLbGHuqzK3hYrBfu5IIlI5Q04DFtGSeHpFKZBrpRlT6cGqfByaW/SJ1/jK6tayBtKa2b3qTj0QMw7vO3rpesyna7cYzI1pn459WC4b9zfWAPzwUykEplk6F+oL3VjG2iw2V62Y+0gcniUEkacWLsoQF0VB3ns6qGBxwS1+lPucWDLpXxnrywoWheQN0sxjsQLSsgw3vQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cisco.com; dmarc=pass action=none header.from=cisco.com;
 dkim=pass header.d=cisco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cisco.onmicrosoft.com; 
 s=selector2-cisco-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dY4VZ+Lda35cfLUdDUmuCg5XAxhsxRDFNvHpq3X0EFM=;
 b=Y31OuCQRCWYfWto0VgG7m6Pttkr+Up1uwVCQIvKuY5Fd4ZpfHetI0Wql/607ZnoTX9+mEbMCmSjEnHGLTJ9qml9QDQdgvis01w0bqykRtOgSCtZntFeLYasEvJK/J4wv/AgRkpEhC2obMZfOc3okEM+u7ao8FQ3L4HxnKRNr9jo=
Received: from BN7PR11MB2866.namprd11.prod.outlook.com (52.135.246.157) by
 BN7PR11MB2754.namprd11.prod.outlook.com (52.135.245.158) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.14; Mon, 23 Dec 2019 21:20:01 +0000
Received: from BN7PR11MB2866.namprd11.prod.outlook.com
 ([fe80::99ce:89ae:9dc7:8efc]) by BN7PR11MB2866.namprd11.prod.outlook.com
 ([fe80::99ce:89ae:9dc7:8efc%2]) with mapi id 15.20.2559.017; Mon, 23 Dec 2019
 21:20:00 +0000
To: "Travis.Gilbert@dell.com" <Travis.Gilbert@dell.com>
Thread-Topic: Creating a TXT/tboot policy suitable for a modern system with
 TXT+TPM2
Thread-Index: AQHVlCtYW12WBIFGSk+TwpFcVCWnTad9MGGQgAAqOICAATPX0IBJ9q+A
Date: Mon, 23 Dec 2019 21:20:00 +0000
Message-ID: <6dfd0122935e8fa2a228d65b2a0cd6f9daac8103.camel@cisco.com>
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
x-originating-ip: [173.38.117.90]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f62f921a-ebcd-487e-b89e-08d787edde88
x-ms-traffictypediagnostic: BN7PR11MB2754:
x-microsoft-antispam-prvs: <BN7PR11MB275461A995CA1CB95B3D6366F82E0@BN7PR11MB2754.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 0260457E99
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(376002)(346002)(136003)(366004)(396003)(199004)(189003)(13464003)(66556008)(64756008)(5660300002)(2616005)(66946007)(66476007)(53546011)(26005)(86362001)(76116006)(91956017)(316002)(6506007)(66446008)(186003)(71200400001)(6916009)(36756003)(4326008)(8676002)(6512007)(2906002)(478600001)(81156014)(6486002)(81166006)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN7PR11MB2754;
 H:BN7PR11MB2866.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: cisco.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NcAwpHraTt22eP2y6YaKaItnxbTEhxZqxfGThLqHA9uXAIC4Ep1lOdGFsYM30sIv0mT6YzT1fD+9Fxb8CKGE+pYAIyZ2PljkjuIzCZZIIfA1dbrMbNp0qP24zZQZQjfmGw68Ff+Ef9/YG9IwRjXHBgFP4cLOpN20VGmrbs3b0s9dQ3iMXmV9V+xRSL+CkarFtGB3HXK68sUBMFHS50/JFot9zpDjRJ9WM9HW8yuI3wuKY8MEZ+FSQSlYig6mYz2SZtyBMmxOwzH0KJhe69xJvHRqWT9hUHLK1rUjfG3KraEc02yWS3T0f1cf6Xezxdn77aLKFM8d5fXeTL3lnSXJoYHMd/vV3FBW37rlHYBZCt16CKAN4PNQh9p6PFZmbJ77+fQ4A8DIL/yWLy0zcMBVNZkIa+z1gmh/wdg/Co1HfTkx8ogGEz+A+q8a7a40d6isNq2OCs4GOjDSIKO50AE73QeEZaq0HzeCg6g5k+VFmI5F0P7d7+ibkW2G7OOz7VHd
x-ms-exchange-transport-forked: True
Content-ID: <1A806E4C98EB9C46BDF3C9A63546F5B9@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: f62f921a-ebcd-487e-b89e-08d787edde88
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Dec 2019 21:20:00.4077 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OCoCkF/DEhx6NoKi6Ho2+pH0JeFnJfvmS/2dDQxXvf31zYFfOzbVQM9coD7iJa9FEoqVTiFf0NNfyHNwfkQRRw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2754
X-OriginatorOrg: cisco.com
X-Outbound-SMTP-Client: 173.37.102.20, xch-rcd-010.cisco.com
X-Outbound-Node: alln-core-10.cisco.com
X-Spam-Score: -7.6 (-------)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: cisco.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM white-list
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1ijV7g-00DNmX-RV
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
> > system with TXT+TPM2

...

> > If you're willing to share your other examples, I'd love to see
> > them, and I'm sure others would as well.
> > 
> > Thanks again.
> 
> I've got about 20 some of which are negative test cases. They're bash
> scripts. I've stripped out the beginning shell line to make it more
> email handler friendly. #9 is actually split into 5 different tests
> signing various other policies that were previously unsigned. They
> were designed to be run in order as some later tests rely on the
> outputs of previous tests. I've included #3 and one of #9. Let me know
> if you have interest in any of the others.

Hi Travis,

I'm sorry it took me a while to get back to this and try out the
scripts, but if you are still willing to share I'd love to see all of
them.

Another question below ...

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

It appears that lcptools-v2 doesn't understand the "pconf" type, do you
have a patch/branch/etc. that I could take a look at?  I see that
lcptools seems to have some basic support, and I'm sure if I dug into
Intel's specs I could add it, but I'm guessing you've already done the
hard work :)

Thanks,
-Paul


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
