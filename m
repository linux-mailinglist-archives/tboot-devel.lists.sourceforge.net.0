Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 463F91145BF
	for <lists+tboot-devel@lfdr.de>; Thu,  5 Dec 2019 18:21:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:To:Sender:Cc:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CWhXkqNR9AD8F50KGRnFKzAicvGWGYCUmLf0XbJEV1Y=; b=NBP8sg660YLSz94Tmg/b4M4fF
	KnwDLEVxQmPzSntOqqCzAp5yXbw5cATGxxyRqjlFMlfmZ3UkRWYxnf8ntLH4CdQwh/ffotGQt4cNz
	ZA+IA0SThBM9XrHOAPXlWoHbJ3cInmcAhJnFGwTCQPo2dDKStROOGGV1XeYM6+glx1q7o=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1icuoC-0004Kk-EX; Thu, 05 Dec 2019 17:20:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pmoore2@cisco.com>) id 1icuoB-0004Ke-Uf
 for tboot-devel@lists.sourceforge.net; Thu, 05 Dec 2019 17:20:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:
 Reply-To:Cc:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CJfDlM/pJLX590w7YrUQeH48hnuntUmFK0s7FB1CfWQ=; b=Xo6NZwXrhGZHWCdmBG+gYoDQKj
 u4l/o+cT81ZxQzOP4qxH5IQaroEaXHAZ7wQv0povFUMtOi+O6S/IrjscDsSROv6ot9Z3igoQjCZ5o
 ePJiBpQXg9FPlK9etl35Jct6vTX3BkoPa/Fsc6fiR4h2DIjJnAeIf+Zhs8oHw3tAnsrw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CJfDlM/pJLX590w7YrUQeH48hnuntUmFK0s7FB1CfWQ=; b=JFZNEub4hWPls1fAnuUTejSjMh
 q1NgihdN0eQY0hTvOVzLi3e7Y7eQ6iuAtLpqjptCdz5IX2XKk11/acvVrfy6BN3BK7kO2MQ5+/nq2
 6ZS7rTw+xBe4zE7+NUAvo+13CZv6DNqtinb3KYjbfnwL+nXzCjHh85/heZWyNpACIDhg=;
Received: from rcdn-iport-7.cisco.com ([173.37.86.78])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps (TLSv1.2:DHE-RSA-SEED-SHA:128)
 (Exim 4.92.2) id 1icuo4-008loE-4z
 for tboot-devel@lists.sourceforge.net; Thu, 05 Dec 2019 17:20:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=cisco.com; i=@cisco.com; l=1114; q=dns/txt; s=iport;
 t=1575566447; x=1576776047;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=CJfDlM/pJLX590w7YrUQeH48hnuntUmFK0s7FB1CfWQ=;
 b=ju5VZ0q8CNM0ba8HmL+3tfJa1TSjLO8jrNAxT8xPURObzKba0Thak4n1
 Zdkq57g4z2hmbEwyko2YN7em6poxReTO8g6dTnUkpft3bGp/San5Qim0u
 V3Lb42wkX9ATMmGBMyLgdHf7uE/kCHU1wXV39Fhi4FUEnOhaQHKCxREVF I=;
IronPort-PHdr: =?us-ascii?q?9a23=3ABBIJvxL+nzXzdZX66dmcpTVXNCE6p7X5OBIU4Z?=
 =?us-ascii?q?M7irVIN76u5InmIFeBvad2lFGcW4Ld5roEkOfQv636EU04qZea+DFnEtRXUg?=
 =?us-ascii?q?Mdz8AfngguGsmAXFX+K/nwYnYSF8VZX1gj9Ha+YgBY?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0AREQBDO+ld/5RdJa1lHgELHIFzC4F?=
 =?us-ascii?q?LUAWBRCAECyoKhCGDRgOKfE6CEZgEgS6BJANUCQEBAQwBAS0CAQGEQAIXgXw?=
 =?us-ascii?q?kNAkOAgMNAQEEAQEBAgEFBG2FNwyFUwEBAQMSEREMAQE4DwIBCBgCAiYCAgI?=
 =?us-ascii?q?wFRACBAE0hUcDLgECo3oCgTiIYHWBMoJ+AQEFhQ4YghcJgQ4ojBeCGoQkPoR?=
 =?us-ascii?q?JgxCCXoFAAY5gni0GBIIulVobgkGMLYs4iyWDJZojAgQCBAUCDgEBBYFSOYF?=
 =?us-ascii?q?YcIFugU5QERSMZoNzilN0gSiPMAGBDwEB?=
X-IronPort-AV: E=Sophos;i="5.69,282,1571702400"; d="scan'208";a="671130538"
Received: from rcdn-core-12.cisco.com ([173.37.93.148])
 by rcdn-iport-7.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA;
 05 Dec 2019 17:20:34 +0000
Received: from XCH-RCD-007.cisco.com (xch-rcd-007.cisco.com [173.37.102.17])
 by rcdn-core-12.cisco.com (8.15.2/8.15.2) with ESMTPS id xB5HKYrq026110
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=FAIL);
 Thu, 5 Dec 2019 17:20:34 GMT
Received: from xhs-aln-001.cisco.com (173.37.135.118) by XCH-RCD-007.cisco.com
 (173.37.102.17) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Thu, 5 Dec 2019 11:20:34 -0600
Received: from xhs-rcd-002.cisco.com (173.37.227.247) by xhs-aln-001.cisco.com
 (173.37.135.118) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Thu, 5 Dec 2019 11:20:33 -0600
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (72.163.14.9) by
 xhs-rcd-002.cisco.com (173.37.227.247) with Microsoft SMTP Server
 (TLS) id
 15.0.1473.3 via Frontend Transport; Thu, 5 Dec 2019 11:20:33 -0600
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PQLK/uZ79uyBq+LRNRvrQgz4Kly8upyWltmSk4Tm/Oh6LPXS/d3QG+eegOR+CBR7Ru2K/Dlx73tHQaJQEhXU6M4SegOAJQKCIfcaG0txCHpTCGG5T3I96flok0dSW72ZyKAfMICatsmKzGGYMda6zBx0NJX2t8YrKaPWmZWWAySQDFFsFAZrPWGfrqsWJPCijFCp3R4+tqA4lrCVzTQoMBZtE/iDA3FtNaT3tB3CY9C672EnxDp81vGmdaOpe47rwGjIKz64YjWrHWlMzYIHC6Gr9B9VdmRX/869UtHNwdZq8Jg5I+u63ltyzM5tIcaYCK0oXgJkSTlXzz/cLjy6xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CJfDlM/pJLX590w7YrUQeH48hnuntUmFK0s7FB1CfWQ=;
 b=n19q7iaRxzac5xQMyixX8VLvWS+sRlqvd3uPSiDUpRprNyQ6ICvM676RWm4tnFcLz4wBGnJRCzq3Wt1xu/4U4ZgPNLmaSGf+nLcpwjcHRigSBBZTjjaozOyhptaedtCetalPcx/TgOSBkee3y35fkFCaRHvfyey6n2r4FhWX5eNz9tGbKdqq7xPBcB2E9L/dhjYmyo8dEx07oVx1eVPdPBFNUU5lN0A6sMYH1SYh4u9QBbDSVJaG4GcHn4LZo2H+TRMBoHjbSR5emMGfmM8pjboiDKa8RQ/WOaa3SDceBUH7aVBihWDojG91HaCsa16S4iBHevYJ8oX1BkNRBpPnwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cisco.com; dmarc=pass action=none header.from=cisco.com;
 dkim=pass header.d=cisco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cisco.onmicrosoft.com; 
 s=selector2-cisco-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CJfDlM/pJLX590w7YrUQeH48hnuntUmFK0s7FB1CfWQ=;
 b=Lej3slZtqdvIGBSiZCfEQSbNBryssSBRhxfyNUGdQWSVglbMw+lPZLSWd/W334tIza1/Vgsk148vYOLUkAmUQhD8NnCohuTHfkopYHobiJcDCzWkbptLMojnDPaivejfkhkWmlRh8qGjwucEBixXlmzY1hh1ACaUJ/NPRQTzGT0=
Received: from BN7PR11MB2866.namprd11.prod.outlook.com (52.135.246.157) by
 BN7PR11MB2676.namprd11.prod.outlook.com (52.135.254.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.22; Thu, 5 Dec 2019 17:20:31 +0000
Received: from BN7PR11MB2866.namprd11.prod.outlook.com
 ([fe80::99ce:89ae:9dc7:8efc]) by BN7PR11MB2866.namprd11.prod.outlook.com
 ([fe80::99ce:89ae:9dc7:8efc%2]) with mapi id 15.20.2495.026; Thu, 5 Dec 2019
 17:20:31 +0000
To: "lukasz.hawrylko@linux.intel.com" <lukasz.hawrylko@linux.intel.com>,
 "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Thread-Topic: [tboot-devel] [RFC] tboot: kernel signature verification
Thread-Index: AQHVbwB0th12F6sDfUCgP40i/qpaH6dgkXwAgDR+gACAEjVXgIADPEsAgAHA9wA=
Date: Thu, 5 Dec 2019 17:20:31 +0000
Message-ID: <48eb3b8a338f0d49e1c9b9639b18b0ae8d1686eb.camel@cisco.com>
References: <bbaf0eeb3ddb8791533fc9dfba23ed57d3a2c9bd.camel@cisco.com>
 <ba9fa4341c9b9fa27c8ea3229f879d25614a900f.camel@cisco.com>
 <fbb29bfec178bb4b4d586df217d202fbe54430a4.camel@cisco.com>
 <60a05460106ef7cf1186e96d476c4564a500f5e2.camel@linux.intel.com>
 <bd1c6b6134911fd9f7c9c0434ca648c407ddc8f0.camel@cisco.com>
In-Reply-To: <bd1c6b6134911fd9f7c9c0434ca648c407ddc8f0.camel@cisco.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pmoore2@cisco.com; 
x-originating-ip: [96.233.112.89]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cab4822d-a2a0-44b3-c714-08d779a76e40
x-ms-traffictypediagnostic: BN7PR11MB2676:
x-microsoft-antispam-prvs: <BN7PR11MB26764021A22A8FC47CC77C4BF85C0@BN7PR11MB2676.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 02426D11FE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(366004)(39860400002)(396003)(376002)(136003)(199004)(189003)(81156014)(81166006)(8936002)(8676002)(25786009)(36756003)(76116006)(86362001)(110136005)(66946007)(66476007)(64756008)(66446008)(478600001)(5660300002)(66556008)(14454004)(71190400001)(71200400001)(102836004)(186003)(26005)(229853002)(6512007)(6506007)(118296001)(4744005)(76176011)(2616005)(99286004)(11346002)(2906002)(316002)(305945005)(6486002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN7PR11MB2676;
 H:BN7PR11MB2866.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: cisco.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: P2K7m/WXNACXSFH62YrbuawmpkQ1sxP+5SB8MWEZbbFDnvXMtTt6EPmVa+aT7IRUMld0NsmgE/VAdbI7zGMSvE+m4EDaPbaRM+mZoRfpUS3S4a04o9LjE8AVJVJX4BEH1wGAGgdGX/YQDN5MB5Vhra7I7w19mXAuXOEtH8mFoAP5ZtSuXslatCIRst5iOUmHfxG9dgv+0i1ktjzp6MKPmTeTwfpmoPSN9/mLzEPwzUaC7kdP1JqRGP9/MUJyzgb26e7tzfXxrFHofDO9LFydodDiEwJLhI3e12i1bao7A2O3Y3pTjCUN0w/zNVfgMnV7bVEELcNaR1cUHn29JbVzA6zn7bya2RxWHmtoBhywYQ516om/7atD3jQ4h/WT6wTCdWkIbcXP/14wuZyqiKYxi4E+VIL08DSRG201N9tGZWNc5lY18z3ti7a1YLuJZasw
x-ms-exchange-transport-forked: True
Content-ID: <38175E6DF9AB844AB9A5A601CCCDC90A@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: cab4822d-a2a0-44b3-c714-08d779a76e40
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2019 17:20:31.1183 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EdwSDEuQ1Pg5n75VLZC4yIX0VHygcmPVZSfMkMhHcZWKFtt5uhN3tJPJc8/AaRQyLOKMNRde/OmsXo0V6A3ovg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2676
X-OriginatorOrg: cisco.com
X-Outbound-SMTP-Client: 173.37.102.17, xch-rcd-007.cisco.com
X-Outbound-Node: rcdn-core-12.cisco.com
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
X-Headers-End: 1icuo4-008loE-4z
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

On Wed, 2019-12-04 at 14:33 +0000, Paul Moore (pmoore2) via tboot-devel
wrote:
> On Mon, 2019-12-02 at 14:09 +0100, Lukasz Hawrylko wrote:
> > If VLP is present under its own index (for TPM 2.0 it is
> > 0x01C10131),
> > tboot will not read LCP at all, so certificate will not be
> > available.
> > I
> > think that we should modify program flow, so even if VLP is present,
> > LCP
> > should be read to check if LCP_CUSTOM_ELEMENT_CERTS_UUID element is
> > there.
> 
> That sounds reasonable, let me see what I can do.

A question for discussion: if the VLP is loaded from it's own nvindex,
and there is also a VLP present inside the LCP, which VLP do we want to
use?  I'm assuming it is the VLP we loaded directly, and not from inside
the LCP, but thought it was worth checking.

-Paul


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
