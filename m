Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F497CFF6E
	for <lists+tboot-devel@lfdr.de>; Tue,  8 Oct 2019 18:59:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:To:Sender:Cc:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NUqA+BgxZssMF1euykGG9woJyOZFdb/+MkhMtow5noc=; b=Dr2rP/frVdy5r7decR9QqDne6
	IO4wxtQLI2r41DP0uhPsdrGSTH0fOl47J7KpFpilzLoHCeRqUwpxMhH0VaADLQxjgU4HoW6LVg5Fo
	Xehu5d9D/vo6pFs9BDFfuClV2/OI/ECf52dWEdM/43QBePKt5gg3e6ubMF6JhpWHQZROg=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1iHspv-0007vo-Ve; Tue, 08 Oct 2019 16:59:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pmoore2@cisco.com>) id 1iHspv-0007vf-8m
 for tboot-devel@lists.sourceforge.net; Tue, 08 Oct 2019 16:59:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:
 Reply-To:Cc:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KoZebS7V/33/yH9BV6ERP979XUaVrgXewdlgcPURqyQ=; b=MSxWtFUPXhJoWvwHruHtdn+q7h
 cyCMhchmNI+WYrKVjO9S9iu6wGyr5ZlFqYv/MNshhU2a1/LsgZK6/b/aCwfF/7wGX7KQNWRlfFIC8
 9YmjScfgD7AaoRC2s6eFM5+ZCo6E7kSWp4seoUoIdMiM71a8KGdCGLlrhFUhG80gab8I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KoZebS7V/33/yH9BV6ERP979XUaVrgXewdlgcPURqyQ=; b=i8DKoUbH3xIojJrpqZty55vedh
 o8R2xfVbi221vfcdBjWFXUech3UZj/OOrxJ2E1KutXWDO3q5ywVcdKgZN9quhvSau0d+dEfKrTj87
 GcebrX+rG115sNmSe98aESgJsy0bIotLoUnGJ7+oM22Zi1C3FMVBqYd3/xCV1+eRdTnY=;
Received: from alln-iport-6.cisco.com ([173.37.142.93])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps (TLSv1.2:DHE-RSA-SEED-SHA:128)
 (Exim 4.92.2) id 1iHsps-00AAI2-Q2
 for tboot-devel@lists.sourceforge.net; Tue, 08 Oct 2019 16:59:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=cisco.com; i=@cisco.com; l=13618; q=dns/txt;
 s=iport; t=1570553984; x=1571763584;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=KoZebS7V/33/yH9BV6ERP979XUaVrgXewdlgcPURqyQ=;
 b=GOATV/p0rQmTyPtojDKUUo7PneeftfOw7ghELQbYmv1YmL+aqMc6qtzx
 jrq45B7yCWC0FCrL188bWZl5sBllDl6Wgl2ECYUUtUpx0kMq/eMFYxsS1
 8Dwpy+5MJGojeoO+YMpTgpVvDJzyqwjD+aXwUkbIKY4Uk6KV0qriRUVfM U=;
IronPort-PHdr: =?us-ascii?q?9a23=3Az4V6IBLx1vQu/RwcrNmcpTVXNCE6p7X5OBIU4Z?=
 =?us-ascii?q?M7irVIN76u5InmIFeBvad2lFGcW4Ld5roEkOfQv636EU04qZea+DFnEtRXUg?=
 =?us-ascii?q?Mdz8AfngguGsmAXFX+K/nwYnYSF8VZX1gj9Ha+YgBY?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0AiAAArv5xd/4YNJK1mGwEBAQEBAQE?=
 =?us-ascii?q?FAQEBEQEBAwMBAQGBZwYBAQELAYFKKScDbVYgBAsqCoQZg0cDhFiFck2CD36?=
 =?us-ascii?q?Wf4EugSQDVAkBAQEMAQEYDQgCAQGEQAIXgi4jNAkOAgMJAQEEAQEBAgEFBG2?=
 =?us-ascii?q?FLQyFTAEBAQECAQEQEREMAQEsBgYPAgEIGAICJgICAiUBChUQAgQBEhQOgwG?=
 =?us-ascii?q?BagMdAQIMoz8CgTiIYXWBMoJ9AQEFgTgGCkGCfhiCFwMGgQwoAYUVhniCF4E?=
 =?us-ascii?q?Rgl01PoJhAQEBAQEXgSATFIMOgliBPQGLJ4MKjmuObQYEgiKHCIhqRQWEXRu?=
 =?us-ascii?q?COot6iwyLEIJdQIgijU0Eg0MCBAIEBQIOAQEFgVI5RIEUcFCBHoFOUBAUgU8?=
 =?us-ascii?q?LAReBBAEIgkOEWYV6dAELgR2NFwEBJAeBBAGBIgEB?=
X-IronPort-AV: E=Sophos;i="5.67,270,1566864000"; d="scan'208";a="353210771"
Received: from alln-core-12.cisco.com ([173.36.13.134])
 by alln-iport-6.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA;
 08 Oct 2019 16:59:36 +0000
Received: from XCH-ALN-019.cisco.com (xch-aln-019.cisco.com [173.36.7.29])
 by alln-core-12.cisco.com (8.15.2/8.15.2) with ESMTPS id x98GxZC7023985
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=FAIL);
 Tue, 8 Oct 2019 16:59:36 GMT
Received: from xhs-aln-003.cisco.com (173.37.135.120) by XCH-ALN-019.cisco.com
 (173.36.7.29) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Tue, 8 Oct 2019 11:59:35 -0500
Received: from xhs-rcd-001.cisco.com (173.37.227.246) by xhs-aln-003.cisco.com
 (173.37.135.120) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Tue, 8 Oct 2019 11:59:34 -0500
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (72.163.14.9) by
 xhs-rcd-001.cisco.com (173.37.227.246) with Microsoft SMTP Server
 (TLS) id
 15.0.1473.3 via Frontend Transport; Tue, 8 Oct 2019 11:59:34 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zkny0C4wMcec0AeqKWHHDbEeouXF2R5XgNU4risj2/d15JxfNdFajpVghVq3/Cz0+CWw4Ry9+2/O7zm536xl6V7oD86m3s5yJDsKnJ3u50fQBH2gsKcoAOoT1SGaR8iLQLVEXfwuT5XBFzjeBdNNbOFJAmPX+UEbU4xJ/8KGWfWahVRzaykM+e8zNLGes9xcJFRVY7WDHBSMhDnCVHZ8y4+sruEcwzO0OUAjxuiQnl8+jIIOXaUjV6x/zc6VZWgDp316BjLRbDwEl2tRf8iaoO5tc4flHbSPjF8PwG6bgGA4L7G9wmiWhXXkE6ukp+phCQTV+fh9uZRSSBP2tMy6Wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KoZebS7V/33/yH9BV6ERP979XUaVrgXewdlgcPURqyQ=;
 b=arJUvU0xhLGDkpTsrh6q8S7pfDONo5ydQG8XPw3UP6p6PZc1Z9CQTPyQZopZ+g+rKqacmLuVwjriGpj7SZuEA8FzLVs2ATFbAJh0DiAEY+5O9RNeQOcNZWPuodlgy8dW1LEAeNpHHNsml/oCwZkd8m81UipAU8FjBsMz2AHhoMAiKsf+0ED/vu6gmF1Z6Gy1V5ZZJeHWd8V87GF+gjW2KUlaR0A8Rv3lyyukRsEp7ZtbEl0K0Ujv8MN8hMZxG2mQ2/YpjGFjGnlKxH7PsyiGCf3T+tynoZMoh4fZF0nmAvL1n19HoPeSRY3rmhGfZNwT2ENReIx7jD4T4cJAexEi6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cisco.com; dmarc=pass action=none header.from=cisco.com;
 dkim=pass header.d=cisco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cisco.onmicrosoft.com; 
 s=selector2-cisco-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KoZebS7V/33/yH9BV6ERP979XUaVrgXewdlgcPURqyQ=;
 b=qzJmpUZZtbyDTXvbeWz2no+VYBksqg/CWYsclH2+ICMoxE/onv7eg2TBlTLz5eMCU1A+CuVguIO/mZvPPMNBgtmwhzcvp0FLy1iFvxtqvbQPzOYmAfqUzHAywWbW7TAIwVf65iWi41MhVdf8TaxuY/x0Y0//l142j2zj5tO17Kk=
Received: from BN7PR11MB2866.namprd11.prod.outlook.com (52.135.246.157) by
 BN7PR11MB2721.namprd11.prod.outlook.com (52.135.243.29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.20; Tue, 8 Oct 2019 16:59:34 +0000
Received: from BN7PR11MB2866.namprd11.prod.outlook.com
 ([fe80::3c6c:e86b:91be:b477]) by BN7PR11MB2866.namprd11.prod.outlook.com
 ([fe80::3c6c:e86b:91be:b477%7]) with mapi id 15.20.2327.026; Tue, 8 Oct 2019
 16:59:33 +0000
To: "lukasz.hawrylko@linux.intel.com" <lukasz.hawrylko@linux.intel.com>,
 "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Thread-Topic: [tboot-devel] [RFC] tboot: kernel signature verification
Thread-Index: AQHVbwB0th12F6sDfUCgP40i/qpaH6c/c6AAgABAswCAERLCgIAATmwA
Date: Tue, 8 Oct 2019 16:59:33 +0000
Message-ID: <0774bc0d9e3099cef880a2c04e111c3ce6da6351.camel@cisco.com>
References: <bbaf0eeb3ddb8791533fc9dfba23ed57d3a2c9bd.camel@cisco.com>
 <e21bae5563b1afd411ce2bcd1f98d2e2983d4b48.camel@linux.intel.com>
 <665a38a855a527bba60e4ef4ef01d6e3e022bf5b.camel@cisco.com>
 <4df296cd524fe43a5cdd5ba47fe5c9d227c1573e.camel@linux.intel.com>
In-Reply-To: <4df296cd524fe43a5cdd5ba47fe5c9d227c1573e.camel@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pmoore2@cisco.com; 
x-originating-ip: [173.38.117.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b69118b2-88bf-4ab5-121b-08d74c10e4d4
x-ms-traffictypediagnostic: BN7PR11MB2721:
x-ms-exchange-purlcount: 4
x-microsoft-antispam-prvs: <BN7PR11MB27211671D23DC2C7F0E60EDCF89A0@BN7PR11MB2721.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 01842C458A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(136003)(346002)(396003)(366004)(189003)(199004)(86362001)(66476007)(11346002)(76116006)(66066001)(2501003)(2616005)(102836004)(476003)(7736002)(8936002)(118296001)(25786009)(6116002)(99286004)(3846002)(8676002)(186003)(76176011)(71190400001)(305945005)(110136005)(26005)(316002)(66556008)(64756008)(66946007)(66446008)(71200400001)(6246003)(81156014)(486006)(14454004)(14444005)(5660300002)(6512007)(81166006)(6506007)(966005)(15650500001)(6306002)(2906002)(36756003)(478600001)(446003)(256004)(6436002)(229853002)(6486002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN7PR11MB2721;
 H:BN7PR11MB2866.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: cisco.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: g0mv/429m4U9IaKtO5nSV72O3dCz+p2/6w58nM3mvTvplFr/6FGuVR1V7umg8GbZrLVvhlJ00QUiBVCG4B+8EUpHU7Wi1KQm1A8J3SeQPdhSDfPc6ZpSR0AW2MDD0P5DyMhpki8vBGgozA890wzsRInj214UjWUoJ4aX5Qjr6BaymcWTCioxQVf5Ji2Q9adX8mMucmB8d1QUTG1BsYs7EZzjWxjzAdrFt0lVqu633SQzDji3HonNY4BQ9oBFr6UMxZSxWCORJ+LdTSpH7MMMegtqIp0NQHRbhTNt+Uqq9yggoheWT+mPj8pF1ySs4/MqmcMl2S8yXpmJgbhq5C1Ehp3lWdt0+nVS4wSpTmRUZafisIUBTXkkBZioNS1Ffp8rTtvtt23NOKjsDj3G9w4h9hrPWbbjtFWn6Qh65Kw0Bmj6QFlFivMRlDLUO7vad8TFac9XdMGSoRhRHqq3k3Tk3Q==
x-ms-exchange-transport-forked: True
Content-ID: <E960530F96876047B33CD11D0B69B609@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: b69118b2-88bf-4ab5-121b-08d74c10e4d4
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Oct 2019 16:59:33.5967 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ch4kufMJowb6UZX2ceK/mL24pp39hR/1XksXDERD0UDJnhZ16KWWVepJJGnVmCnU+t8nR0vqv5LxT71n7Slcmw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2721
X-OriginatorOrg: cisco.com
X-Outbound-SMTP-Client: 173.36.7.29, xch-aln-019.cisco.com
X-Outbound-Node: alln-core-12.cisco.com
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
X-Headers-End: 1iHsps-00AAI2-Q2
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

I'm happy to join the internal discussion if you think it would be
helpful, although I do have some travel scheduled for later this month. 
Feel free to contact me off-list if you want to discuss timing.

Are you going to be at Linux Security Summit EU in France at the end of
October?

Thanks for taking the time to give the patch a quick look/test.  While
I've tested a handful of CentOS-7.x and Fedora 5.x kernels (NOTE:
CentOS-7.x and modern Fedora use a slightly different signature format),
I haven't tried signing my own kernel yet, but obviously that is
something that needs to work.  My guess is that Fedora/CentOS/RHEL uses
a technique similar to what you are using in your example so it *should*
work, but you've obviously hit a problem.  Since the code is still in
the "barely works" prototype stage I'm not going to worry about this too
much at the moment, but I will look into it before I submit the patchset
for inclusion, as opposed to the current RFC patchset.

FWIW, I'm currently working on getting certificate chains working.  The
code can now parse certificates into a crude certificate db, and I'm
currently sorting out the certificate signature verification.

Once I get the certificate chain support working, I plan to start
looking at the policy.  As we've previously discussed, hardcoding the
certificate into the tboot binary is an option of last resort.  Beyond
that, I think the options are wide open; I had always assumed that we
would likely need to store the certificate in the LCP portion of the
policy that is stored outside of the TPM.  So long as the policy can be
verified by a TPM based root of trust (which is what currently happens
with the LCP from what I can see) there shouldn't be a problem).

-Paul

On Tue, 2019-10-08 at 14:18 +0200, Lukasz Hawrylko wrote:
> Hi Paul
> 
> We are going to have internal discussion about this feature in two
> weeks, I have to prepare some presentation, so be prepare for
> questions
> in near future :)
> 
> I have built version with your patch, looks like verification is
> working
> with Fedora's kernel indeed. However I was not be able to verify
> kernel
> signed with my testing certificate, did you try that? TBOOT is hanging
> on:
> 
>     TBOOT: >>> DBG/SIG: mod[0], pkcs7 parsing
> 
> I guess that pkcs7_signeddata_parse can't read kernel signature, if
> you
> want to test it by yourself here are commands that I was using:
> 
>     openssl req -newkey rsa:4096 -nodes -keyout db.key -new -x509 \
>         -sha256 -days 3650 -subj "/CN=my Signature Database key/" \
>         -out db.crt
>     openssl x509 -outform DER -in db.crt -out db.cer
>     sbsign --key db.key --cert db.crt --output bzImage_signed bzImage
> 
> Adding certificate to VLP has one major disadvantage - VLP is stored
> in
> TPM NV that has very limited space. Putting ~1kB certificate there is
> in
> my opinion bad idea. I would suggest to implement the same mechanism
> as
> we already have for LCP. Certificate will be stored on disk and will
> be
> passed to TBOOT using multiboot2 protocol. In VLP there will be only
> hash of that file, so TBOOT will be able to verify if certificate is
> valid. Storing another hash in VLP is not a problem. What do you think
> about that? Hardcoding certificate in TBOOT should be avoided at all
> costs.
> 
> Thanks,
> Lukasz
> 
> On Fri, 2019-09-27 at 15:35 +0000, Paul Moore (pmoore2) wrote:
> > Hi Lukasz,
> > 
> > Thanks for taking a look, I know it is a lot to ask.  When looking
> > at
> > the patches I'm mostly concerned about feedback on the general
> > concepts
> > at this stage; the patches are still very much a work in
> > progress.  My
> > goal in posting this on-list was to get some feedback now to see if
> > this
> > is something that would be of interest to the project.  I would hate
> > to
> > spend a few more months on this only to find out that tboot has not
> > interest in signature verification :)
> > 
> > As far as changes to the VLP are concerned, if you look at the patch
> > titled "tboot: add PECOFF signature verification hooks" you will see
> > that two of the TODO items are ...
> > 
> > - Support for kernel signature verification in the tboot policy.
> >   This probably means specifying a signing certificate as part of
> >   the policy.  We want to support certificate chains.  Backwards
> >   compatibility is a must.
> > - If the tboot policy can not be easily extended to support
> >   signature verification, we could consider embedding the
> >   certificate into the tboot binary at build time, similar to what
> >   is done with the UEFI Secure Boot shim.
> > 
> > I would obviously prefer to add a signing certificate or CA to the
> > VLP,
> > but I haven't done enough investigation into the VLP format to know
> > if
> > that is practical.  As a fallback I could envision embedding the
> > certificate into the binary (as the current prototype does), but
> > that
> > is
> > something I would like to avoid if possible.
> > 
> > As far as attestation and PCR values are concerned, my current
> > thought
> > is to hash the signing certificate into one PCR (say PCR A)
> > (assuming
> > the kernel signature is valid) and a combined hash of the
> > kernel/initrd/cmdline into a different PCR (say PCR B).  My thinking
> > is
> > that this would allow admins to seal/attest to either a specific
> > kernel/initrd/cmdline using PCR B or to the signing authority which
> > has
> > validated the kernel/etc. using PCR A.  However, I am open to other
> > ideas if you have suggestions - this effort is still in the early
> > stages.  This is one of the reasons I wanted to bring this effort to
> > the
> > list as soon as the basic idea (PECOFF signature verification in
> > tboot)
> > was working.
> > 
> > Thanks again,
> > -Paul
> > 
> > On Fri, 2019-09-27 at 13:43 +0200, Lukasz Hawrylko wrote:
> > > Hi Paul
> > > 
> > > Thank you for sharing your work. I will look at this patch and
> > > check
> > > how
> > > it works, idea of measuring kernel signature instead of whole
> > > binary
> > > is
> > > very interesting. I hope that next week I will find some time for
> > > that,
> > > as you said patch is quite big.
> > > 
> > > Do you plan to add ability to verify public key using VLP? If I
> > > understand correctly your current goal is to verify kernel binary
> > > with
> > > signature and extend PCRs with signature's public key hash, am I
> > > right?
> > > In this approach tboot is not able to verify if kernel is signed
> > > by
> > > proper authority, this need to be done be local/remote attestation
> > > in
> > > further boot process.
> > > 
> > > Thanks,
> > > Lukasz
> > > 
> > > On Thu, 2019-09-19 at 15:39 +0000, Paul Moore (pmoore2) via tboot-
> > > devel
> > > wrote:
> > > > Hello,
> > > > 
> > > > I've been working on adding PECOFF/kernel signature verification
> > > > to
> > > > tboot and now that I have a rough working prototype I wanted to
> > > > bring
> > > > it to the list to see if this is something the tboot community
> > > > would
> > > > be interested in eventually merging (once the work is more
> > > > complete
> > > > and polished).
> > > > 
> > > > The patchset is quite large, mostly due to the inclusion of
> > > > libtomcrypt and libtomfastmath to the tboot repository, so I'm
> > > > going
> > > > to refrain from spamming the list with the full patchset at this
> > > > early
> > > > stage.  The current patchset can be found on GitHub at the URL
> > > > below
> > > > (look in the "working-txtsig" branch):
> > > > 
> > > > * 
> > > > https://github.com/pcmoore/misc-tboot/tree/working-txtsig
> > > > 
> > > > 
> > > > 
> > > > The prototype doesn't actually enforce any policy or change the
> > > > PCR
> > > > measurements based on the kernel signatures (both are planned
> > > > work
> > > > items), but it does demonstrate the ability to parse and verify
> > > > a
> > > > signed PECOFF image.  The individual patch descriptions provide
> > > > some
> > > > additional information on some of the planned work to take this
> > > > from
> > > > a prototype to a proper implementation.
> > > > 
> > > > My motivation for this work is to create a mechanism that is
> > > > capable
> > > > of generating a stable set of PCR values across multiple kernels
> > > > that
> > > > can be used to seal TPM NVRAM secrets on both legacy BIOS and
> > > > UEFI
> > > > systems.  Imagine being able to store a storage encryption key
> > > > in
> > > > the
> > > > TPM, and restricting access to that key to only authorized
> > > > kernels
> > > > in
> > > > such a way that didn't require changing the tboot policy when
> > > > booting
> > > > different kernels.  I imagine I'm not along in thinking this
> > > > would
> > > > be a nice capability to have, especially on systems that don't
> > > > support
> > > > UEFI Secure Boot.
> > > > 
> > > > For those who are interested, I gave a presentation on this work
> > > > at
> > > > the Linux Security Summit last month, the video and sldies are
> > > > available at the links below:
> > > > 
> > > > * 
> > > > https://www.youtube.com/watch?v=Qbjz_5jUE9o
> > > > 
> > > > 
> > > > * 
> > > > https://www.paul-moore.com/docs/lss-securing_tpm_with_txt-pmoore-201909-r2.pdf
> > > > 
> > > > 
> > > > 
> > > > Thoughts?  Is this capability something the TXT/tboot community
> > > > would
> > > > be interested in merging into the main tboot repository once it
> > > > is
> > > > more complete?
> > > > 
> > > > _______________________________________________
> > > > tboot-devel mailing list
> > > > tboot-devel@lists.sourceforge.net
> > > > 
> > > > 
> > > > https://lists.sourceforge.net/lists/listinfo/tboot-devel
> > > > 
> > > > 
> > > > 

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
