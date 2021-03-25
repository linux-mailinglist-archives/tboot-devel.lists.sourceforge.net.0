Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E2B943485C5
	for <lists+tboot-devel@lfdr.de>; Thu, 25 Mar 2021 01:17:09 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1lPDgL-0005wE-QE; Thu, 25 Mar 2021 00:17:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dario.n.oliver@intel.com>) id 1lPDgJ-0005w6-Si
 for tboot-devel@lists.sourceforge.net; Thu, 25 Mar 2021 00:16:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7RruL4hexBGvLYzUpv/9lk1tn4JBwpFBUKGXyOYUyfk=; b=EZxmYG0EYRPvG6Jwv2HAfUpvwt
 kym72xGbfOSkjDEZPjwJbvA2N6xV3T6qyMcGLF8GRjbUYrxiJZfGQSL0FzDypCuQTPwVqRoZytbwd
 QDE9FJ6pGCXbAR4nEzo0GxcBr4gFpeCUenfWdeGJK2gubPEkEwk38oQ3j0D74L6vLtqs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7RruL4hexBGvLYzUpv/9lk1tn4JBwpFBUKGXyOYUyfk=; b=Tr8JBUOjDPyHmlCUnQy5OfqhaA
 oljSlc9hzkd8ZSALQpbcDRvelyHYsaK/ObGjM+bMeW+Q2OGNhTzSuiwDtjfAS5oWuihloaL4fQxyO
 TzZv97Cl8C0t5Ybh3e4tp894sf2Pa4rexJRfzd6zv9O3fwqxEI2mjoIrd9lgupLardPo=;
Received: from mga01.intel.com ([192.55.52.88])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lPDgD-0007kL-V4
 for tboot-devel@lists.sourceforge.net; Thu, 25 Mar 2021 00:16:59 +0000
IronPort-SDR: AzEAbXBBmfe1R/ndtrKOqop0JRs+zBYdkQVnmMMGaNc96YfisC4aZoxW7+Hr6Wv46Nd/tt/ceH
 /2e+HkjOBnAQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9933"; a="210943511"
X-IronPort-AV: E=Sophos;i="5.81,276,1610438400"; d="scan'208";a="210943511"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2021 17:16:48 -0700
IronPort-SDR: 8OOJ6F3tRZtOwz6DYyWt5cwn2volwIRNY/cBc25HdR2XmwQbl3eTYvxw0iOvzhmtWFhKFXrxs0
 h/KwF6KJvBQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,276,1610438400"; d="scan'208";a="525437044"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga004.jf.intel.com with ESMTP; 24 Mar 2021 17:16:48 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 24 Mar 2021 17:16:47 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 24 Mar 2021 17:16:47 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 24 Mar 2021 17:16:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JmKKLfiIrgMIESMfVL8WTRdIXa0sBDu8a7Lzklw8O3tP1PSxZNJdVOtct+jJiQpoHCR8E2lv7j2M2iU+pIMLOgFP55q36qI96CU4t9pdYWsBLUtX9PRKROTpsbFAwQbXTg5sxa8vw68sUUbnfYg1zB0cB9Ctq0cLQbL+2YSovQVcbjk5YrRBXnV3q7Ns+yG073hZhOM0+g5O5i0ErvGXuswlDnVEYPaASZ1ZDyIgBfNuw7ooG4MmJBeJiwAP7I55Bn2sQV33SVZizUH9K4jDsl+MpddxzEfEUS4M3J2hA9Mb2/EDn1YDnIfrVO4je/Stn96ge45ffu514alOw++E2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7RruL4hexBGvLYzUpv/9lk1tn4JBwpFBUKGXyOYUyfk=;
 b=Ka8XgiB4/N5X3vIJGR4t+bOZaz16y3MxKWd/NAqLZnyLSemnUMLAIN/zkosSulQntas2wEYIFlhrYBwFd1l0T93kd2mqzbT8ag25+uB5Q1ByED79PezIbvzuHJSZAEN2N5Drnx+KCXXr2C/OQbQI/gaCzfLKgE3B0Jqdisgg2IcfNMyj7AR626tcOv1VnqN+ZZjHNoXswiNtgbEoEFPofmCpb7bwasXAeOUBJvUykung0jJByyEJAueVMmaMIJvgNSb2PFs8ZycNz0FnKAifdNz1oisjJKYy86G7SdPFkDYDWNdtLUPA0W8LG6ZPWNY2Z8Ovour+XjVkQfU6i5QZVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7RruL4hexBGvLYzUpv/9lk1tn4JBwpFBUKGXyOYUyfk=;
 b=S5BcTucMkXFD6vrO81alL46mL4HqPeIcYv/DoRlD1sya2BVzXbWs+j9/YiItWAyN51fhVrcU7tp+GGutQyMr6h1qk3GU4Q5RlypN1sBIFf/rz4FR6OQV5O6e/pmmZRvC7R+/DqHRG9+hilBRfshfcLdVwYyKZ/03deXnYNHABjg=
Received: from DM6PR11MB4425.namprd11.prod.outlook.com (2603:10b6:5:1d9::31)
 by DM6PR11MB2971.namprd11.prod.outlook.com (2603:10b6:5:72::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3955.24; Thu, 25 Mar
 2021 00:16:44 +0000
Received: from DM6PR11MB4425.namprd11.prod.outlook.com
 ([fe80::6483:cbea:6db4:d76b]) by DM6PR11MB4425.namprd11.prod.outlook.com
 ([fe80::6483:cbea:6db4:d76b%4]) with mapi id 15.20.3955.027; Thu, 25 Mar 2021
 00:16:44 +0000
From: "Oliver, Dario N" <dario.n.oliver@intel.com>
To: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>,
 "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Thread-Topic: [tboot-devel] Tboot on Intel NUC8i7HVK and Fedora 33
Thread-Index: AdccMXAhpH/o9dBOS6uo0S9oxCXi1wAiFFGAAAr+yWAAj8u5AAB5CxJA
Date: Thu, 25 Mar 2021 00:16:44 +0000
Message-ID: <DM6PR11MB442514E1640888CED9638855DB629@DM6PR11MB4425.namprd11.prod.outlook.com>
References: <DM6PR11MB4425A4A47E94DAE32961A0E2DB699@DM6PR11MB4425.namprd11.prod.outlook.com>
 <a92b3ea469052bd058299e4d0edeca0149945d69.camel@linux.intel.com>
 <DM6PR11MB4425DA36A939D9937F14CE8EDB689@DM6PR11MB4425.namprd11.prod.outlook.com>
 <d1f2f9b8c131ca0ad35eba2819e8ba0dc9699127.camel@linux.intel.com>
In-Reply-To: <d1f2f9b8c131ca0ad35eba2819e8ba0dc9699127.camel@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [50.39.172.55]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: facd314d-89e6-437c-3fee-08d8ef23458e
x-ms-traffictypediagnostic: DM6PR11MB2971:
x-microsoft-antispam-prvs: <DM6PR11MB29718867205C1D5DCDD423B5DB629@DM6PR11MB2971.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bLrmEcHXWUbhYKjGUSEvsT+XlSvHUgyQZEeHYRSuGxlKFCrLqsPR7VN+WYtOoAVpUoTucHJeejqr4th3+kI80EtZpTArilRuezEYtuhJ50CapGQcMay+13jp3IZdXh/bNc38/Az+IEgGD7mXKa/prAfY7UCzOxkdQxDuzRqvbJcGp6UBtuJl2Lb6Zz8GIxNxCe7lCEO9RkAnXu6GhqESU/BdHA756Z3W7+fl4jmvX7C+DMo8DEXYwa8bqkJrFzbyBl0iZz22Dn8GuWAmJB0KU1tO3HpqlaCvhdcqA55sFSin23cCJJNXbqas/Ck/saGYGRQ7csY//USgi3eL4uOuB3gZQeNqAU2aQXDcBbhu5j11R2AqG5YXqnqHM4pH4QyxNGceeViSlp6vV9Ybbh0uYetKVY+p5ulEeiyV+zqAWdB09Eh8NMcpRlFW63t0JnLaZMobiVf275bCgzTyR2PGadNfMLJJn+Gw7vbltW6Zy0cCgUxHB+Rx6maXC8yWCeXhzag8E/dsyMqZjX5RsqzW7cMN7G23IQAK54SauAdVfzZEECjlg/0PRn9Fk2Ct0WE+vhr0mOGDNHm5OTdbtHkxwDlq6jYoiYFdLIjq3m4PkMqBquSBos7OJNC+x6NlsXpn5Il9MvA4D7ibFFGB58kWEdzXm75VZHq/5cnx/QsoPaaELlV+5+1daHBVby6tBDJsvQguk1ZRk0xZHzGgbDh4UI2uPDLYac6xOcYraFRdJnY1o0059P6sY4HzoNt/98eI
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4425.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(376002)(396003)(346002)(39860400002)(136003)(186003)(5660300002)(66446008)(55016002)(66946007)(33656002)(66556008)(64756008)(478600001)(66476007)(7696005)(26005)(9686003)(76116006)(6506007)(110136005)(83380400001)(52536014)(8936002)(966005)(86362001)(316002)(8676002)(2906002)(71200400001)(38100700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?ZmNvcUl3ZTV3aXplYXYrUDIvVlFmelRLREVQd1ZUeGpNWGhGNVhjRVg4Z1dy?=
 =?utf-8?B?eThQRXdpTng3T0h6ZUlMTkVyWUt6cXB1cDZGa29Cb2pmK0hsVnhETU95c09M?=
 =?utf-8?B?Y3FEbjZjR05PNWFYTW83NGV5anhEWXhiRFpyK1dXc3VBMldGdElISEUyTEJW?=
 =?utf-8?B?Wm1IQVdFMVM4b0NaaVdIUzZJZCtCMVcwYjRRR3JYTFQ3YnV4TXppSkVQNFQ2?=
 =?utf-8?B?MEFsdUYwRlI3eDBmZkdLdkV3RGZma1lSOU5WOVZjT0tJSVVKWGJzOWQyT1RT?=
 =?utf-8?B?SHR3OExoNjVtWnNQeWpLb01tWDl2dWJia29CWXhJRFROQzhnbkdGaHBzd0E0?=
 =?utf-8?B?djZWMWZlT0NyWFYrei9ud2VuTldnR3A5WGpBOGRMZ1Y5bHp1emRmWSs3ZkJM?=
 =?utf-8?B?d1dZNm9QNGQ2WThWZm1lR0NkM1pnM1RwTVllaGRoYTZDckpJN251NCtrT2w2?=
 =?utf-8?B?RWZvTE84cDF1SkJSeXljbGEyUkdkVXJHenY5SUdCQ004aFVrZmtKdms0OElx?=
 =?utf-8?B?eEQrMzhIUmo2QWZMTTVEaWplcVQ5d3ZnSHAyWVBJSm9YRnd6dmIrVklXSFU1?=
 =?utf-8?B?eGdKQ09WejVaenU5TXRTOHpwbFk5UUQrU3NhZHRBUDc0ZHkvZ1JjTUgvVVJh?=
 =?utf-8?B?eGtEVnNtY1psdmg0b2xta2p3YWJ5b3BHZjhIZ0Rtc011L0kzckhGTUtuWmJp?=
 =?utf-8?B?TDRKalJQT0xXbXFUVWk3U2dwdVIrN0xKWnhkVTREZkZNOVphOTVic0FSNXcr?=
 =?utf-8?B?S1dqTTVxTnlwaXhtS202b0FWN2pVQlAvUjlscC92ZFMreEhJMVFTS3FPalp2?=
 =?utf-8?B?MXpBMU5OZ0JRL09hUVZGcU5XelREenc0dnBsMlUwSHlYbTZnWWJNZzc5eXBU?=
 =?utf-8?B?Rnh6cnk1WmpsUjJpQnlGeVZpdWlwbFRUV2lCMVozV0xOOHEyRVgyc1RwdWc3?=
 =?utf-8?B?TzVDNmthVG9OSFR3QWs1VnVKZUtqeW5zbVVibVBOU2p0RGx3bUprR2thZUxT?=
 =?utf-8?B?Vnh1d1g4WjFIRUpYUTQzWnlyR1VrU3NHaGxKMk1rZkxva1I3bU54RkhUNXUv?=
 =?utf-8?B?a0ZOSWFtV3lJWGZNK1pPTzh4TU10bGJmb2htVVBSb29TekF1Zzl2TzZRSXBY?=
 =?utf-8?B?MGhZZVdyZGpxSjVCSHVyd2dEYVV4ZWFzRVF3NXJydmRRdEJjREUvVTMvdU43?=
 =?utf-8?B?RE8wOXdXMGxCQ0k2QUV4czlzYWhLb29uMGdub3RZcXRHYjh6WG5ZSUtTQUJq?=
 =?utf-8?B?N2xNS21GSWRzVXJuQkg5aWVMNUtrWVIvd084a3B3OXJlTGVZemxFQ3UzWmRu?=
 =?utf-8?B?SXZpOXZQM0kyUHE0MFkzdStsRGhtQ0lZWHZVampYN1R0cG1JbFg3SnptNldu?=
 =?utf-8?B?TTVsQ01kNTR6RUorVUFrakpOYkI4eDVPTkZ5M0s1cFllNHlaZHMvbm4wamxt?=
 =?utf-8?B?RlVQK2NKTnN3Mms4Y21MTTVIK2NJWkZadGJzZlVRNkRZRnNHSk9uaHdHdzl2?=
 =?utf-8?B?d0tzUVpTbXgwaitCdmRxekRUTE1KUFVGUzJkRkJpckNzUnVSQ3poZVNDbGh2?=
 =?utf-8?B?czh1SlhwandwcmJVT3hpSURSZ2xVbWl1UWc1cXBlb1RsSjdua0puYlR0b2hw?=
 =?utf-8?B?OXI3cURYcENha2h0NEJzUlpVREJQeEhBQytxUit4V2o1T01kOG1VZHdzbzcv?=
 =?utf-8?B?VVNSai9adWFrUTBLVGlCcWJFRGpJL0NKR2RiWU9BYnBCVSttWGlCU2JCU2Fz?=
 =?utf-8?Q?lxOlL+oCgLifWng/6M=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4425.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: facd314d-89e6-437c-3fee-08d8ef23458e
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Mar 2021 00:16:44.1200 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 84jfAqopovQpRxX1e5aMvwVS1LvzrqToJMvJw9VTbcN+YQBrV46IDQpcwZdcnX/zrUB/HVp6j93abbbTiMLMlmyMYvCrKWCWIlQgyOLokGY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2971
X-OriginatorOrg: intel.com
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: gnu.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.55.52.88 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1lPDgD-0007kL-V4
Subject: Re: [tboot-devel] Tboot on Intel NUC8i7HVK and Fedora 33
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tboot-devel-bounces@lists.sourceforge.net

Hi Lukasz,

I am having some problems to get that custom grub running with Secure Boot.
I am using an Hyper-V VM with Fedora 33 to test this, after having to reinstall the OS twice in my NUC.
I guess the end result will be the same in the VM and the NUC without TXT support.

My build instructions for grub are represented in the following Dockerfile:

FROM fedora:33
RUN dnf install -y git autoconf automake gettext-devel bison \
                   findutils pkgconf-pkg-config python-unversioned-command \
                   patch git-merge-changelog gcc flex
RUN git clone https://git.savannah.gnu.org/git/grub.git
WORKDIR grub
RUN ./bootstrap && ./configure --with-platform=efi --target=x86_64 && make

Then, the process I follow to install it in my VM are:

grub-install --efi-directory=/boot/efi
/usr/local/sbin/grub-mkconfig -o /boot/grub/grub.cfg

After this, if I disable secure boot on the VM, my custom grub (in /boot/efi/EFI/grub/grubx64.efi) gets called in the boot chain.
But if I enable secure boot, the default fedora bootloader is called (/boot/efi/EFI/fedora/grubx64.efi) 
To sign my custom grub, I am using the following (I know that it works for kernels, not sure for grub):

dnf install -y sbsigntools
cat > openssl.cnf << EOF
[ req ]
distinguished_name      = req_distinguished_name
x509_extensions         = v3
string_mask             = utf8only
prompt                  = no
[ req_distinguished_name ]
countryName             = US
stateOrProvinceName     = OR
localityName            = Hillsboro
0.organizationName      = Organization
commonName              = Secure Boot Signing
emailAddress            = secureboot@test.com
[ v3 ]
subjectKeyIdentifier    = hash
authorityKeyIdentifier  = keyid:always,issuer
basicConstraints        = critical,CA:FALSE
extendedKeyUsage        = codeSigning,1.3.6.1.4.1.311.10.3.6
nsComment               = "OpenSSL Generated Certificate"
EOF
openssl req -config ./openssl.cnf \
        -new -x509 -newkey rsa:2048 \
        -nodes -days 3650 -outform DER \
        -keyout MOK.key \
        -out MOK.der
openssl x509 -in MOK.der -inform DER -outform PEM -out MOK.pem        
sbsign --key MOK.key --cert MOK.pem \
       --output ./grubx64.efi /boot/efi/EFI/grub/grubx64.efi
cp ./grubx64.efi /boot/efi/EFI/grub/grubx64.efi
mokutil --import MOK.der

After the reboot, I do Mok Management to import the key.
But the system keeps booting with the  /boot/efi/EFI/grub/grubx64.efi Instead of my custom one.

Just to see what happens, I replaced the fedora bootloader with my custom one, and I got the following error:

error: verification requested but nobody cares: (hd0,gpt2)/grub/x86_64-efi/normal.mod
Entering rescue mode
grub rescue>

Any hints on what is happening? 

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
