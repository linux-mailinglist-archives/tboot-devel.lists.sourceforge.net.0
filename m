Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E027E559565
	for <lists+tboot-devel@lfdr.de>; Fri, 24 Jun 2022 10:27:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1o4ef6-0000PB-Cz; Fri, 24 Jun 2022 08:27:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jeevan.s.bhungal@intel.com>) id 1o0oXK-000393-Sf
 for tboot-devel@lists.sourceforge.net; Mon, 13 Jun 2022 18:11:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Y5pvj/ivNGjCAgurjiLjHkwoViJ9n1vQdLjo0Sxr08A=; b=jgMf7BLfE86Y11oeNbnGRxDX1a
 j86HNAZ/euss3mRUBDSOC2ZWBwzkxqTR11ms+xZxaZtUxeWiGNMu8ddjFKlq7B89G2A3q5OT2etVH
 VcmRUPsCdRcVGWMxUOiOMO67kPO9Fue2c8A5HyOq3o52vxEPkuQ7hvjvkb3CvGZQpiS4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Y5pvj/ivNGjCAgurjiLjHkwoViJ9n1vQdLjo0Sxr08A=; b=F/O3kWbGZrtlHMCvxe0wPngWCu
 QDr9XZK2zlX/A03ARese4h5Dd/SkrOlqKFRGcaVGU2weMtIwfHz2inT9LVySdkvS3fvZTlKVrSTPQ
 Opi9Pxvd6rLNUx7PuUEQOaRuckIjBNj6RR0mgWDdMUyyIIUqC0GGAstHwaASSKIs5tl8=;
Received: from mga04.intel.com ([192.55.52.120])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o0oXH-000RZc-8g
 for tboot-devel@lists.sourceforge.net; Mon, 13 Jun 2022 18:11:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655143895; x=1686679895;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bkkjs51WI9PiCQz/gFSajqK7AZIJC+37GN99STX4voU=;
 b=b+124xu7AvXdBgYL79DfZrLesUHxkYbLnUxe1vMHWLP55CaBcEMDpYk6
 zgmWLicNX9PSl1/NIFoS0btcbpqZeDnTGhTwBKhsSsptyhnyQVJsx4bNx
 DWjkOBNsKvuhJL6jJJmePfE6iSiV1FNfJmAPbbburGZ4UvtkBR5/LgJJm
 fa/JA1ZBBZF7t3eYe0+cGFXTgo4eVzYjuanQ8QHnwL8iQepPtH6k4V9Sc
 gS/MjmAXmHRDe9omDWFUTCr6SO+DwHiDGGpMBhyyO7o3MlzAObIpKqzEC
 xkNGFnPypEYve5gxlZ2P9eoFTLlL5b2rlmXkrBd7Yiv7eoWSbarJP4JGx A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10377"; a="277143563"
X-IronPort-AV: E=Sophos;i="5.91,297,1647327600"; d="scan'208";a="277143563"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2022 11:11:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,297,1647327600"; d="scan'208";a="587923317"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga007.fm.intel.com with ESMTP; 13 Jun 2022 11:11:28 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 13 Jun 2022 11:11:28 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 13 Jun 2022 11:11:27 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 13 Jun 2022 11:11:27 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 13 Jun 2022 11:11:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U3cwpkpSkwMXDa9Visdf+SIBAbobHuwrn5EgnCalcsoPnRZqWLkKqffTDlxMU2W9wd+TRBq7PSdVu+7D6GFJ6rPlK78b8nDqsoSE1eaMdbPzHxib3MleTWn9tW76SWHf1/XcH3BR6tvr4XL7Vkni48sBbiFMc7HaEz/lQWW5Z3WNfDmhOH6UTz5as6imKY2HJ54Ay1gDQkX5Qp8P5N6QNfKQ5pMqnTOX+ZVdyR0wXBl+WrIZ8o1VcHwV/wY8VfEgGgjpb6iUHpwhqmEvVGcJIUyu90L5Nn9/EdHCC9SzERWHOE8jeBpMJBWLUq6kEPWIp4ZipFH9CUwg1f7q4lxtKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y5pvj/ivNGjCAgurjiLjHkwoViJ9n1vQdLjo0Sxr08A=;
 b=MxolpRM98xfv/qRpXhBwhoRMQvdqfxiAq6TGSK2zvA2N5hcA2Y9OjJm5VrGISTuG2pGIvtyoVTkPk6PAWjGaGnIV3GAKS5d+sqqOJ33eRjYRaG+Kv2qCv+3Zcf5GHadfqidPg6I4Etz8JY/107Qk5KHYUYCdSK0RSabOA1BIh2hj+L18EFJOaZg97D3XGt18kC/jCDIweaWC8cFsZdbNg2KcAkPs4jbjUFtNwN1ug78v9V/4p5DZrlUaD2vTrVjjEtfqpQZHnMSvC7rjzISkxgsbTndwnGLCBbnzpGYJF+LF+5eozVsGjkOZtTldCpjUCD/ncBFA1IKidx6KF70KFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB2838.namprd11.prod.outlook.com (2603:10b6:a02:cc::33)
 by MW5PR11MB5905.namprd11.prod.outlook.com (2603:10b6:303:19f::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5332.16; Mon, 13 Jun
 2022 18:11:26 +0000
Received: from BYAPR11MB2838.namprd11.prod.outlook.com
 ([fe80::2cab:1345:a17d:4f45]) by BYAPR11MB2838.namprd11.prod.outlook.com
 ([fe80::2cab:1345:a17d:4f45%5]) with mapi id 15.20.5332.021; Mon, 13 Jun 2022
 18:11:26 +0000
From: "Bhungal, Jeevan S" <jeevan.s.bhungal@intel.com>
To: Timo Lindfors <timo.lindfors@iki.fi>, Jason Andryuk <jandryuk@gmail.com>
Thread-Topic: [tboot-devel] 11th Gen SINIT ACM
Thread-Index: AQHYPtdwkUG/TYDHf0i2HlLOk3Oqd6zQRTAwgCpkQgCAASovMIAAXKMAgATZTFCAAAUbgIBMbk0AgACnJ9A=
Date: Mon, 13 Jun 2022 18:11:26 +0000
Message-ID: <BYAPR11MB2838993FA76C9A8EEB9E84BBD4AB9@BYAPR11MB2838.namprd11.prod.outlook.com>
References: <CAKf6xpu=3sWzdjaPpT8AM52gHotAvZVv1aB3QtXGxBmDaU+yeg@mail.gmail.com>
 <CY4PR1101MB207079134D515F45667C719FEB1A9@CY4PR1101MB2070.namprd11.prod.outlook.com>
 <CAKf6xpsgyKdzU8nnPoTHoE+zxgkJX4wpCE5tFhzdC+LOG83Uzg@mail.gmail.com>
 <CY4PR1101MB20700DA2CD945A201DE4F1BBEBF79@CY4PR1101MB2070.namprd11.prod.outlook.com>
 <DC64916B-D25B-4310-BBC5-070BAEFA497B@intel.com>
 <BYAPR11MB283862EBA030B7498BCEFC23D4F89@BYAPR11MB2838.namprd11.prod.outlook.com>
 <CAKf6xps_kDLNr1nxKFLxLSa673xAj8V8p1u6XC1vOAQmOoutRg@mail.gmail.com>
 <alpine.DEB.2.20.2206131105090.32431@mail.home>
In-Reply-To: <alpine.DEB.2.20.2206131105090.32431@mail.home>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 79ca8d78-c9f7-47de-ca8a-08da4d6821a1
x-ms-traffictypediagnostic: MW5PR11MB5905:EE_
x-microsoft-antispam-prvs: <MW5PR11MB5905A7B7460CC83052ED1945D4AB9@MW5PR11MB5905.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FOXeAMTta2Hy+/1tnipmynvTzrC68t/KMusQSGGO7AOp5AdAOu8dx2ffxkXx2HbFBJMO0zkavSc2faob4AN7to35a/8u/Ofpq0NgiVeWzWgokJzSaW2YCNBS7MSjhYCFk+03vv0BupKlG8WUEjQ6yDc5HHSev6PuaPbXf60DGm05TtJ6UVP63vk/dm8KMhvJq5ULjd4In16p3AxAT0xxXA9EOOTbO1DhdnYf3UhClr081Imr7dTwg8KMebCivmp3k5kNnh2pqlzmh8kEBygNUqJUDbQcob61sk7E5kKozSUM4ETudNUOinA5WphbfjoaCJotTsnGRvKkFB5OpiftJNlgGDaE0Orjtgf3EeIymIdrBQVa/kvi8Un1E8iGz00jicHgJCHRIGhrlcT4XSkdsSt+Xw/CatNXEu0UDtalbgfGQ9mj6jnJC6WbmZ4g6dl4CI8V2XUb14btttr2SWffIBopVzdkTnXg2vSjyR/SGRTIFYJ4jFwb/ERu16Jvn4XJxKMwEhJx5sRr4ayR2cRPGlJeUJqytK1IGXZ7TA/OkZWEWW66Zq5H7EpvunQHYSRx/DXJJEiReDza16CS0GUQ5ljpp37mxUFC73sBC7OCRSaKxTOdHulIe3pTaXUIE3sDyUL5t2+mG0tq/qEgVPcQxTt1/BN2xC07hFh+xFWKt5BJHKS7eWQ+t8E+O2mwv8Dr4ufkPl5Ge1XFIUxou92HPHxrDb922QF728Eah+oGICi8L2tG2erO2K8fBt8IvPT2UFyjniRL955bXwL6NsE6fGG0AY0QCO0CPbe7rkrm/bCpWOU6dHFzGyHeQIErQyeyD2A57rHk5fUSw9PENRLAKQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2838.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(53546011)(9686003)(186003)(86362001)(66556008)(6506007)(26005)(76116006)(83380400001)(110136005)(38100700002)(54906003)(122000001)(4326008)(66446008)(7696005)(82960400001)(66946007)(966005)(52536014)(316002)(8676002)(64756008)(66476007)(8936002)(71200400001)(55016003)(33656002)(5660300002)(508600001)(40140700001)(107886003)(2906002)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?gWrLm4lpiNEiBOECHriBvQAXdhCJAxPdL/+OpqsYS4FdN27fAuLINbhd7ECw?=
 =?us-ascii?Q?kqZ3eIZNbIPu1is9VJx3D5dwDkoUycWV/DvWLwulNrDzikuCdtqTicC86Lbr?=
 =?us-ascii?Q?Ho/+3oavxCiuNJ0EEqDG5xvd2C94yK37IUO0e4r/IIHEes3CZOPGtO5EXf1/?=
 =?us-ascii?Q?Z0wpXwtIPHp0YdpBbfPP/kKocKGvQOVQQfqgRphUbKhSsI1ePz8dd2N+7eJm?=
 =?us-ascii?Q?OTQ9ynuS2EPe04akmRm+3cJq17LOpdhYwRT23WwSg1VgZPgFjxCakQGcXiID?=
 =?us-ascii?Q?r83cgsjPr5Irw7qjQg+S3hpn2IEAMC6CbYq55dtClapmwDKGzIJ4HNUv329y?=
 =?us-ascii?Q?BdXLSFRofqe435SOPxMVtzAdDEpNWst5LiTu2xe3NgRzlqn5qdehYzKO2N+e?=
 =?us-ascii?Q?nOWAMRG8tZ82okZ0iinmEXBw4UBhFTAK314lquXaZjp6nYjkwGU1fwpwbrAr?=
 =?us-ascii?Q?5qcSJGz/5m7Yndb0G25ARnLDmqFKOMXkRLzFTieTh8h+e3mG9yu+5YUxHxa6?=
 =?us-ascii?Q?q5YoiuLMWtvuhTQVYV7ZJFdZZ+VPE3E8dbuQbM7SRONhO7H1jvpn+U+9ox8d?=
 =?us-ascii?Q?i6sZuk9WtDJjSpNA62akm10umc26QZl5llnzGgpHmK+JdvllqPB7uzgCXe/k?=
 =?us-ascii?Q?jbYT4MwaMDEzsM/CCKsG7YyGE/umsDxuzBnzIk6YpXYpKNRgQoYSI18c83/b?=
 =?us-ascii?Q?e09QxRC0GGqg8gzTAq2FwGB+DU2j8HfCH68tij445zQh54wbHtoxuR1dZeRj?=
 =?us-ascii?Q?uzqP3VViMKDPhc93a1U8tpBdb/riKg80gq1o+ZgKuEsJ8/+IN1UdyGzxPF16?=
 =?us-ascii?Q?LR5R3S6tTYZbLadIYhuOwsTDAHDLdHcp1h++mb7YeIKRCkET+1/uD5ogBdI6?=
 =?us-ascii?Q?e8kSSu5qpVtLR2mHUJ0JtE/e4RYYQ1ob7v7plhsf17/twaoRA2qwYnJarL0a?=
 =?us-ascii?Q?Cai6SJWQU6jXJNXTaN+0gyj9AgUSXwTP/xYpE3T1bm/wYR8EDA1yso74YI8z?=
 =?us-ascii?Q?HDlO8pmEG+xkBRjFq2chg66TcU2miXLTaBZONXnARGXUgl7sz/TuYbJeBy67?=
 =?us-ascii?Q?mGlaepZPDmWXo4tscV2+MPzGBxEpznKd6X/kQ4t5Q16rDdwGw5wihAorki/V?=
 =?us-ascii?Q?WAo43HqEQ6hCrrDqX2KtMztXpDqVTgxGUg1vpflaKwwqFUz4qvouA5WSgPIL?=
 =?us-ascii?Q?Ht9J6XjxCy+yPBRb9Up4WCDuv0iWrqGC8Tf0xOprliFmWpFehOWnFz3Zf69T?=
 =?us-ascii?Q?/SiuPISE+EVfvM9ldFwFPO/ZGdXjkbX57AbTNhL+QoDVCviGHltYJPU1aPoh?=
 =?us-ascii?Q?VFgZX+iShMF+j3nXpqVYYT5R/rHDeOUb1EvyvIbPv/Xc8xpFI99vHths5f3L?=
 =?us-ascii?Q?4P/s/wNDNz8j8akNHN8E5e9Ek/UcJxAtNwxTxWqNF5lqPW/6J8lRJjR5k7M+?=
 =?us-ascii?Q?cqvRx2k30XwMhsdwZ8fgIrJl+32UqmuLb625Ct8gbsWW9P+inNQvSPqqmyrP?=
 =?us-ascii?Q?4hpz8VzIvZNL03CG3O9ALyF8upb6I8nSjqkbmhSg3WGbYEKDZ0OE/QkTqdvI?=
 =?us-ascii?Q?3bqA+tKgOYYnUdFHpotuT6LiIo4zNIIbPUonAcSF8Hu7BrBqzLMi5FDn1r6X?=
 =?us-ascii?Q?5ahKAvLP/lXAnsMkeqigx5+XkZn9g3cqjO4Hjzf8RNRG77B8fRDfkz08qvAz?=
 =?us-ascii?Q?qAeyW35fc6uAj6Kt9TXSxg25lGD7GLpYJfcSiz6yplqSrLfnQXB7Kd5Wa/nX?=
 =?us-ascii?Q?wPa/mX8mnmmfrcpQp/vPdE0ZH5aSrtg=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2838.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 79ca8d78-c9f7-47de-ca8a-08da4d6821a1
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jun 2022 18:11:26.1910 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LytLlfjbH80zGqDfWUjS2zqoZwsq3E9aEdUI43wKkRn5em0dXoJqJJ60YyWtxwa6ZIceKyxseLnMRrzhK/AUpPWHAILQJaOWZN+C2O09Q3w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5905
X-OriginatorOrg: intel.com
X-Spam-Score: -3.2 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Timo, It is the same license, so no change. Jeevan Bhungal
 Client Security Technologist | CCG-CPE-CCE CCE Security Champion D
 916.377.1013 | M 530.844.0930 Intel Corporation | intel.com 
 Content analysis details:   (-3.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1o0oXH-000RZc-8g
X-Mailman-Approved-At: Fri, 24 Jun 2022 08:27:31 +0000
Subject: Re: [tboot-devel] 11th Gen SINIT ACM
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
Cc: "Gupta, Rahul Kumar" <rahul.kumar.gupta@intel.com>, "Fedko,
 Artem" <artem.fedko@intel.com>, "Parmeter, 
 Ben" <ben.parmeter@intel.com>, "Bhungal, Jeevan S" <jeevan.s.bhungal@intel.com>,
 "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>,
 "Crain, Keegan" <keegan.crain@intel.com>, "Sehra,
 Supreeti" <supreeti.sehra@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tboot-devel-bounces@lists.sourceforge.net

Hi Timo, 

It is the same license, so no change. 


Jeevan Bhungal
Client Security Technologist  |  CCG-CPE-CCE
CCE Security Champion
D 916.377.1013  |  M 530.844.0930
Intel Corporation  |  intel.com

-----Original Message-----
From: Timo Lindfors <timo.lindfors@iki.fi> 
Sent: Monday, June 13, 2022 1:13 AM
To: Jason Andryuk <jandryuk@gmail.com>
Cc: Bhungal, Jeevan S <jeevan.s.bhungal@intel.com>; Gupta, Rahul Kumar <rahul.kumar.gupta@intel.com>; Fedko, Artem <artem.fedko@intel.com>; Crain, Keegan <keegan.crain@intel.com>; Parmeter, Ben <ben.parmeter@intel.com>; tboot-devel@lists.sourceforge.net; Sehra, Supreeti <supreeti.sehra@intel.com>
Subject: Re: [tboot-devel] 11th Gen SINIT ACM

Hi,

On Mon, 25 Apr 2022, Jason Andryuk wrote:
>>
>> https://cdrdv2.intel.com/v1/dl/getContent/630744?explicitVersion=true
>>
>> Jeevan Bhungal
>
> Great!  Yeah, the internal link does not work, but the direct link 
> does.  Thank you, Jeevan.

The direct link works but does not seem to contain any license information, just a PDF that says

    "No license (express or implied, by estoppel or otherwise) to any
     intellectual property rights is granted by this document."

I'd like to include these in the Debian non-free package intel-acm. This package currently holds ACM modules published at

https://www.intel.com/content/www/us/en/developer/articles/tool/intel-trusted-execution-technology.html

under the following license:

"""
Copyright (c) 2007 - 2011, Intel(R) Corporation.
All rights reserved.
Redistribution
Redistribution and use in binary form, without modification, are permitted provided that the following conditions are met:

Redistributions must reproduce the above copyright notice and the following disclaimer in the documentation and/or other materials provided with the distribution.
Neither the name of Intel Corporation nor the names of its suppliers may be used to endorse or promote products derived from this software without specific prior written permission.
No reverse engineering, decompilation, or disassembly of this software is permitted.

Limited patent license
Intel Corporation grants a world-wide, royalty-free, non-exclusive license under patents it now or hereafter owns or controls to make, have made, use, import, offer to sell and sell ("Utilize") this software, but solely to the extent that any such patent is necessary to Utilize the software alone. The patent license shall not apply to any combinations which include this software. No hardware per se is licensed hereunder.
DISCLAIMER
THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

"""

Is Intel licensing these new files also under the same license or has the license changed?


-Timo


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
