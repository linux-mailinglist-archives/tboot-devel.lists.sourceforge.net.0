Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 20B9AF5274
	for <lists+tboot-devel@lfdr.de>; Fri,  8 Nov 2019 18:19:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:To:Sender:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Is3fOwOFcHsR1IftRezaiWRFnMzcsutdXXS20dIZupY=; b=TdgOXbPqLGTXMBJ7LK18VCJf5
	eSDfTartu6nVUiwQFptJSsYu8wNmXLw5cIoR6R9ivxh3vteh4hubljoWxvNSxtWsMWhwvqWh6fSKb
	yAvnZM+w2iHVIE+w1e1RnBe64wZtiiB3ZqtVY+G/nWOTljbNOHMkgoX378w1gKsgWJQjM=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1iT7un-0004SX-Bw; Fri, 08 Nov 2019 17:19:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pmoore2@cisco.com>) id 1iT7uh-0004Rx-Qc
 for tboot-devel@lists.sourceforge.net; Fri, 08 Nov 2019 17:19:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
 :Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wAL/X1AdBhvo/ODXS56+pXZ4UpOOrmlId8/BNncxMDs=; b=goNRS87QN8cA1W1G26e6flPG8x
 Zdoh6GWCqk9/FelPbiyhc57ePt0IfeE6dv2VDXhDBv2UxTV5y/duxU1Vnj6/yyq8CEJNH76lUc8SC
 6omu6hBD9ZW+8pm44PtPx4/yABXimyCe8Rzo9dkJQBIvvaKY+gZ/tHkTnadmKg1xtRtQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wAL/X1AdBhvo/ODXS56+pXZ4UpOOrmlId8/BNncxMDs=; b=kHmHy+Dy/QbKNhCHarsHJ+Q78S
 Vq8Aq+NbHNXWGlbF+yAW5D7UejhI9CwBs5wy25LLJ/02ycMK+NuMg5nOMYwJw4li7vcA28D4rH81s
 49RBfclrafuJKS+pACx+7gKj2zfz85z44zxOATAWb7A91T6SCqAjOZZN7P3qhy2DfUAk=;
Received: from alln-iport-2.cisco.com ([173.37.142.89])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps (TLSv1.2:DHE-RSA-SEED-SHA:128)
 (Exim 4.92.2) id 1iT7uc-005Wjs-IP
 for tboot-devel@lists.sourceforge.net; Fri, 08 Nov 2019 17:19:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=cisco.com; i=@cisco.com; l=2210; q=dns/txt; s=iport;
 t=1573233546; x=1574443146;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=wAL/X1AdBhvo/ODXS56+pXZ4UpOOrmlId8/BNncxMDs=;
 b=bVLoZwTxhvAoWTetFQzPtz5V8+cWSx9zsBovpi6QKbg/Q+3tw4VQifa9
 RIMmvbWAHo/clzmdKhPo/wU5KQiatPDtuWexWR0oJCXNDEEVoNz9RjkJR
 o0WD38ZFFpxTI9tIuTiioOjG8K/sZcpmxrpt2q38lHW1myyaRgDVlcvHV o=;
IronPort-PHdr: =?us-ascii?q?9a23=3AFHmkvBINle/pEm0vPtmcpTVXNCE6p7X5OBIU4Z?=
 =?us-ascii?q?M7irVIN76u5InmIFeBvad2lFGcW4Ld5roEkOfQv636EU04qZea+DFnEtRXUg?=
 =?us-ascii?q?Mdz8AfngguGsmAXFX+K/nwYnYSF8VZX1gj9Ha+YgBY?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0AJAAAJo8Vd/4QNJK1lGgEBAQEBAQE?=
 =?us-ascii?q?BAQMBAQEBEQEBAQICAQEBAYFqBQEBAQELAYFKUAVsWCAECyoKhB+DRgOEWoY?=
 =?us-ascii?q?Qgl6XfoEugSQDVAkBAQEMAQEbEgIBAYRAAheDeSQ0CQ4CAwsBAQQBAQECAQU?=
 =?us-ascii?q?EbYU3DIVSAQEBAxIREQwBATcBDwIBCBgCAiYCAgIwFRACBAENJ4MBgkYDLgE?=
 =?us-ascii?q?CqCQCgTiIYHWBMoJ+AQEFhQgYghcJgQ4oAYwTgheEIz6EOIMdgl6BPwGOS54?=
 =?us-ascii?q?GBgSCJIcXji0bgjyHYY9YjkeZcQIEAgQFAg4BAQWBUjmBWHCBboFOCUcRFJA?=
 =?us-ascii?q?2OIM7hFmFenSBKI0hgS8BgQ4BAQ?=
X-IronPort-AV: E=Sophos;i="5.68,282,1569283200"; d="scan'208";a="368596244"
Received: from alln-core-10.cisco.com ([173.36.13.132])
 by alln-iport-2.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA;
 08 Nov 2019 17:18:56 +0000
Received: from XCH-ALN-006.cisco.com (xch-aln-006.cisco.com [173.36.7.16])
 by alln-core-10.cisco.com (8.15.2/8.15.2) with ESMTPS id xA8HItHJ008190
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=FAIL);
 Fri, 8 Nov 2019 17:18:56 GMT
Received: from xhs-aln-003.cisco.com (173.37.135.120) by XCH-ALN-006.cisco.com
 (173.36.7.16) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Fri, 8 Nov 2019 11:18:55 -0600
Received: from xhs-rcd-002.cisco.com (173.37.227.247) by xhs-aln-003.cisco.com
 (173.37.135.120) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Fri, 8 Nov 2019 11:18:54 -0600
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (72.163.14.9) by
 xhs-rcd-002.cisco.com (173.37.227.247) with Microsoft SMTP Server
 (TLS) id
 15.0.1473.3 via Frontend Transport; Fri, 8 Nov 2019 11:18:54 -0600
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CMtDsX8g0eLZt6ssnj29sh6afZ/90kA7O7BOpcQA9rqEHPd2Jd7cFslTTZujiZLmzifUAlHVZ6C9Nr65xEBkNiqv0b60SWKqCP4ocKR30CfR87F97bldV6Ve9MQYYlLOagQLiwRFj3ICeV//Eyhbda8soNQZ75ZuhaQKRqGEDKKL8HjD4/QNejre+0aGKCjt6UmEj6OiapdmgpXzANXpuZP3LoBzg4ff5F677IGkFUmgnSQbMEwx3gnaOGQK5H9er4FZuWSi7pxbTcsfpi5CJhmMGyEx91EPfd52F/Cud2cPue5jgK3niUau1GOifF+wO2R7Eum841adwx0Fr4cafg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wAL/X1AdBhvo/ODXS56+pXZ4UpOOrmlId8/BNncxMDs=;
 b=Cor1101CS1GxajMG17LiCxOiQ7kFZ5i9UqW5OqFaMkA5GW1QuYzjN8xoiCCFNX8Wanv7n67yu7W25l/3LuArpXpQPeX/q4koF0euIOK7TGGWw5piGYWtm0nhiJbq1L2kIP3J+H3MQXPJFZbi8Q1iTfT6n+UvXooce+1gu9FCwsolOFExPECXwkDb5IcUU5MjKx25iIAtFrWbAhJ6t1SvjpMo8poYpdtTci2hmBVomhr8kd7qp4YFNqN/zaFOC2lXkR+FL5gh/d3Zg0x3NcfPDzU9sxksLdI4btZ3RjnUIOK7swNJ0OByUQtQvv1rk5rqL/q394yWnArvoyVmhdZVOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cisco.com; dmarc=pass action=none header.from=cisco.com;
 dkim=pass header.d=cisco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cisco.onmicrosoft.com; 
 s=selector2-cisco-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wAL/X1AdBhvo/ODXS56+pXZ4UpOOrmlId8/BNncxMDs=;
 b=Tr6Ze/wmeT+zcWKZMR664/0FoeSXCqzAy1xUEJWRiFWLfwpVYI84eLsnEVglvB01b3dxhLI6pNWXfMTErNXXMXDU2ykd2OlIrXeitY7ZDWkMObiQK9nda0Xr0wldr71ovDhoKGQogRI4Flo4tOv37eONQLMqO7VQ46vAC1CZN7k=
Received: from DM6PR11MB2873.namprd11.prod.outlook.com (20.176.94.141) by
 DM6PR11MB3818.namprd11.prod.outlook.com (20.179.17.86) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.24; Fri, 8 Nov 2019 17:18:53 +0000
Received: from DM6PR11MB2873.namprd11.prod.outlook.com
 ([fe80::a0ef:aa0f:fa28:c754]) by DM6PR11MB2873.namprd11.prod.outlook.com
 ([fe80::a0ef:aa0f:fa28:c754%2]) with mapi id 15.20.2430.023; Fri, 8 Nov 2019
 17:18:53 +0000
To: "lukasz.hawrylko@linux.intel.com" <lukasz.hawrylko@linux.intel.com>,
 "Travis.Gilbert@dell.com" <Travis.Gilbert@dell.com>
Thread-Topic: [tboot-devel] Creating a TXT/tboot policy suitable for a modern
 system with TXT+TPM2
Thread-Index: AQHVlCtYW12WBIFGSk+TwpFcVCWnTad9MGGQgAAqOICAATPX0IABqGkAgAD1UgCAAFyugA==
Date: Fri, 8 Nov 2019 17:18:53 +0000
Message-ID: <beabd66d2dffc0d8d08d411588501412cca2fdfe.camel@cisco.com>
References: <681a21560a8a9f41a4be8cdc399cf5008f7adecc.camel@cisco.com>
 <1926e09cfdf84af28414b36c2652f421@AUSX13MPC102.AMER.DELL.COM>
 <52ba4fc58ef941c81458ea95eeaed31b0aa669e1.camel@cisco.com>
 <b4e1bf1374114acdaa3b99d91b43bd64@AUSX13MPC102.AMER.DELL.COM>
 <a250508c1d6ba4cf2b080b6f69803698539f7b0c.camel@cisco.com>
 <2a4c6551b68be437cd02c7987ef75a6d315f0368.camel@linux.intel.com>
In-Reply-To: <2a4c6551b68be437cd02c7987ef75a6d315f0368.camel@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pmoore2@cisco.com; 
x-originating-ip: [128.107.241.184]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5b8bb79d-a044-4017-d5f0-08d7646fbae4
x-ms-traffictypediagnostic: DM6PR11MB3818:
x-microsoft-antispam-prvs: <DM6PR11MB381822364DF2158B9FF49AE8F87B0@DM6PR11MB3818.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0215D7173F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(376002)(346002)(366004)(39860400002)(396003)(199004)(189003)(486006)(3846002)(6116002)(102836004)(14444005)(2616005)(4326008)(6246003)(76116006)(14454004)(86362001)(66556008)(91956017)(26005)(2906002)(6506007)(256004)(476003)(446003)(11346002)(76176011)(6512007)(66446008)(64756008)(66946007)(36756003)(8936002)(71190400001)(81166006)(81156014)(2501003)(66476007)(5660300002)(7736002)(66066001)(316002)(99286004)(186003)(110136005)(71200400001)(25786009)(6436002)(118296001)(229853002)(478600001)(8676002)(305945005)(6486002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR11MB3818;
 H:DM6PR11MB2873.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: cisco.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vK49c3TQQ2xbW6FlsQ2IJX6nlR75IWX9nW2BDVid2gYIfw+B8f4hI2yz/Or/XWlkVJ8gc4O1aZ33UjneA7YQVO4WAaP1kiDk3YoNTIMzdhGIErXt48I4KWNmAbrtnU8VBSBhBEscitHyvexglM+XLGNe39zjLAzjm+E3CeQJ+6r3fRBgDdoP5Kg8ussiQWMYnCnXI+xn3pe0AvtIfFkrW+0dlwMnXHgSnYJPhj1T0VxYTgRlr4j7D9EwUCg4YlR0kvEW9+8/VaoBT9FsuQkT1+r7vTWPANy635er5xExbNZYy2cvqcPpnoWxgZSPCE342QG8GW9413D9VdV6PSjpaR1gGzAdLUW+Y7VS3pG/5wvvepvUlMifx70dPr1p13P26XDOuIfCuDbKOS3/0rNK6peU9RJ0wsy9dUinYO7JUlnKcTxQCjQs1IS+D230Hklo
x-ms-exchange-transport-forked: True
Content-ID: <B94A07A906280049A7BB4928EB8F349D@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b8bb79d-a044-4017-d5f0-08d7646fbae4
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Nov 2019 17:18:53.4162 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FZeGSm3V9Ak9YaR9OKLeEf8lfnG/jypRT4Zr6q/YICQw2SEweJJ9omHDRutF0+RH8omGvOjzMllVr70X/uuhLA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3818
X-OriginatorOrg: cisco.com
X-Outbound-SMTP-Client: 173.36.7.16, xch-aln-006.cisco.com
X-Outbound-Node: alln-core-10.cisco.com
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
X-Headers-End: 1iT7uc-005Wjs-IP
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

On Fri, 2019-11-08 at 12:47 +0100, Lukasz Hawrylko wrote:
> For TPM2.0 LCP generation there is a Python tool lcp-gen2 that is
> included in tboot's source code. To be honest I didn't try to generate
> LCP with tboot's VLP inside but it should work. If not - this is a bug
> and need to be fixed.
> 
> lcptools-v2 will is not maintained, any new features like new signing
> algorithms will not be included there, so I suggest not to use it for
> new designs. We are actively improving lcp-gen2, if there is something
> that is missing in your opinion please let me know.

A few problems come to mind with lcp-gen2 all of which are blockers:

* I see references to upgrading to newer versions of Python 2.x, but
nothing about upgrading to Python 3.x; with Python 2.x going EOL in a
few months this needs to happen very soon.

* No documentation.  This is a general problem with the tboot
code/tools: there is very little documentation, and what does seem to be
present is mostly wrong or incomplete.

* The lcp-gen2 tool appears to be intended mostly as a GUI tool, and I
need a CLI tool.  It looks like there might be some sort of "batch
build" available from the command line, but I don't see any further
explanation or documentation on this ability.

You mention that lcp-gen2 is being actively improved, is this happening
offline?  The last commit I see is to the sf.net repo for lcp-gen2 is
over six months old.

If these issues can't be resolved within the next month or two, is there
any reason why we couldn't continue to make changes to the lcptools-v2
tools?

-Paul
 


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
