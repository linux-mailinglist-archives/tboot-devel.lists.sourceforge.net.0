Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E794E78BD
	for <lists+tboot-devel@lfdr.de>; Fri, 25 Mar 2022 17:13:10 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1nXmYi-0001Cn-4N; Fri, 25 Mar 2022 16:13:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <pawel.randzio@intel.com>) id 1nXmYg-0001Cb-I2
 for tboot-devel@lists.sourceforge.net; Fri, 25 Mar 2022 16:13:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gDuciYxycO3/n+wdWIzzXWjOTy8VxM/FlH9+kmDLPiE=; b=iAVwXD6fPKgl+L85/Mg2hNdX9i
 5eTngbATWp1JKshfMQ37f0BMexHertdF6YdrQ/4zwZYMzCY2ISDIxgeDPQPRln7koEUVXMaZYImKr
 0A+lsI8F72FGPO7ul1Ogt8Lr0r3/qi5OWc0AKF9Cw3f0RfqXa5DaX4+VeaH6un6n3q+Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gDuciYxycO3/n+wdWIzzXWjOTy8VxM/FlH9+kmDLPiE=; b=KlJZIjERcgioUtucYyMU4CJi9O
 Zrqe4x0r4vTosB5g/UdTOKDD5flhcAESteK4KbGw6Tjcj7Exq09onvpnptosQQr78NLf2DEp+Hxyj
 NWbRiZsA4Kp87SaGL/f9iMqJUhTeJtkc4Z2C55sZrrPGYvhG+a9SDPijdKbUtsTD2tWA=;
Received: from mga11.intel.com ([192.55.52.93])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nXmYa-00Bsp7-HL
 for tboot-devel@lists.sourceforge.net; Fri, 25 Mar 2022 16:13:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648224776; x=1679760776;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:mime-version:content-transfer-encoding;
 bh=oQuq6bNEaw8iLSdFBKV2GRyWLU8Oo2Y3VTYULhDc2N4=;
 b=Ho56DfFBSlJKJDKP/NRtUxualrilLQoxLGgGjumA3ZOOvCGky+4KadGO
 1roH3RJ++TPDdVfREuXeWaHzg84lhVxDkg+c2gpS8kV/TKzuOR2CbJ/6C
 b/mXanznjxVstfrVn9Ny412U2acpiu+Sp4db7m+aV07xEy5YterCvXbB8
 5xZK5VSVc2c4HPlahYncS0zxHtel9/qjK/1cJZ1cwTfinbwoEcfK0pIaO
 Pq4a0mTP1VG+O53KdAHrxH7DhrDEEyFM+OfnPOw7plR0jxVOKDl1adT+Y
 oPc1/v02+WGMKQObGO2bqu+I021pIwY8ZTA7CRQFe4U95IGSKp/IQaZrh w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10297"; a="256231434"
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="256231434"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 09:05:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="516585394"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga002.jf.intel.com with ESMTP; 25 Mar 2022 09:05:29 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 25 Mar 2022 09:05:28 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 25 Mar 2022 09:05:28 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Fri, 25 Mar 2022 09:05:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WnZ1YRKC/Jjg11aqKFMKstdeFamIJb3oNiTcQ7Nxu05Py7c0YAUNLOdYx/BpfXFVbzD+XEt95SVH506omRLB51PHnah6Y0iJnsTXTrOwtymPU+VvcB3WJ2YCZzVokKgaCHd2/KlIxGDt/h/1vnBetzT6OUmAiXG+FWgjL7e/kDi38RUsrXvvI+CMB4iJ45s+2tCQlXx53bWYIQKJlO29eq+THKDoTHGgR6mR4+Od09sxVLDNXtEKM3OWCJwELYimfCis0ZmSgpn6qKgroPfwfPjZfc+KRd8ivN5t8cehHqgFJ+lm+DhV7JcnKhMtv6+6d1coiMnDBBdDAlDbHWOiQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9VtEKLV7ItIrSkV2jAg85XTAKVfPsJDI8eJ1mSA9QPg=;
 b=WS4em22kwGQza+GKPe/AeZ6X888fCWwub0tomZpsJZXVTS1MO8wPwwC9PCnUTCnbTrdTuADiEtlTTu4DPq9IGf+8s4qa3rRYSedhClZZA7P7VIxrlhjcg3dP5Kv1nIuEsRJ7taMza8QreefFcTp1jp7O1WQhugcyvfjuDGNmCVJB/bYMAcRYGJlp9awpWPjbZxqVtgmifpUmmJaKfqeUstzwlh1Cqgxj8ILnoLwbB2Xh0IToqhHEF27iZSrMcvP9La9aaUTXwf5cnfzCVrmTnKnurWJ1n5hZTaQfCAlrfX4E4JildAzV+lq9W4+u+MNMwEQ5LObTFrps7mcbmpzRxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR1101MB2070.namprd11.prod.outlook.com
 (2603:10b6:910:1c::17) by CO1PR11MB5074.namprd11.prod.outlook.com
 (2603:10b6:303:97::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5102.17; Fri, 25 Mar
 2022 16:05:26 +0000
Received: from CY4PR1101MB2070.namprd11.prod.outlook.com
 ([fe80::5cc1:57bd:1689:c5a2]) by CY4PR1101MB2070.namprd11.prod.outlook.com
 ([fe80::5cc1:57bd:1689:c5a2%2]) with mapi id 15.20.5102.016; Fri, 25 Mar 2022
 16:05:26 +0000
From: "Randzio, Pawel" <pawel.randzio@intel.com>
To: Jason Andryuk <jandryuk@gmail.com>
Thread-Topic: [tboot-devel] 11th Gen SINIT ACM
Thread-Index: AQHYPtdwkUG/TYDHf0i2HlLOk3Oqd6zQRTAw
Date: Fri, 25 Mar 2022 16:05:26 +0000
Message-ID: <CY4PR1101MB207079134D515F45667C719FEB1A9@CY4PR1101MB2070.namprd11.prod.outlook.com>
References: <CAKf6xpu=3sWzdjaPpT8AM52gHotAvZVv1aB3QtXGxBmDaU+yeg@mail.gmail.com>
In-Reply-To: <CAKf6xpu=3sWzdjaPpT8AM52gHotAvZVv1aB3QtXGxBmDaU+yeg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.401.20
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 60ef3c08-ca59-4059-8374-08da0e7946aa
x-ms-traffictypediagnostic: CO1PR11MB5074:EE_
x-microsoft-antispam-prvs: <CO1PR11MB507414D57CD010D5E7DC3753EB1A9@CO1PR11MB5074.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: aFGuXJknl9hDavr9+RuvcZLmvDaQKBh71K1kZxfF9oXLrU4T5R5T85bkEpyPaNByHb2tvkPGcBtpiBowRvCLNp4WcFgYEjcAIDY1C6w5CfwPx4DPD43xJb3K4eypimEti4YszK5QCsf281zfHcdW+5ddkdAMKwJjj85z2MZRh6yAmj47truSrUZvlVkj8MA6ggDIhBqgaHye4zNRbdXvNEXFu/QbqEiVH+rnO8RXNNuDWt1TL/NuGOOr52WhCu5VER08l/d8tSz7C03AUZ61/NRE7DGj5FAWUNYwNFeP18qhk3uDSA/9Qo3g+lmiCcjiljAACKy02lS0BT4ho9TEXflP+/CWSGrK50vp8pDroecyEkN7Yg4ud2ntTFNNZvS5y4GfwAtvhiKDTDnMrAU0GN4u/w+1Rtom+IrOzKgjYXqjFgxpqqWWtPNnhYPD11zaEduHZeFE10Z6zXukfz56QtH3g3EISgBgyxiyLkWFFtEWonEFxYboPyZ0Jsa0bEjsURE4Bx+fBy4zYyNlYShPWhk4ZsGq2TzZy5Gwk0GayHR9g75cKfyXarF7dDwwpwFKYksLfrboE/Rh44maQS9eMWdhF7TJfH4pjz+dfbfxnYuY1Yr85HjPJxKLkP0ATOil4eUK1thfkzZmVoWPx5Pf6J96fdWLNutuMG41HzWJSN8t8wTqZcNGAq9itbhloU5rmG/Fy888toNofczXXgUqcU2l5zUZzJTSG41RnNCEJCdTF95gWHot4hiraiZztYltHWWv9NDPYalhT59thZW4GvBoQHHOePkOKUma3MOjWQSgTpVoIgGqlbH9XbS3hAhKGK6Fm4+1z3Y+yD2YJ62Lcw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR1101MB2070.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(4326008)(508600001)(6916009)(71200400001)(33656002)(83380400001)(316002)(66556008)(66446008)(64756008)(8676002)(966005)(55016003)(66946007)(66476007)(76116006)(38100700002)(26005)(186003)(7696005)(4744005)(5660300002)(8936002)(122000001)(53546011)(38070700005)(9686003)(2906002)(86362001)(6506007)(52536014)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?1D6qtQWZmAR0Sl1yPZFLkMzP2JxIPNFWRKO7C+RLzpX1tNSqToeY+Fo9Pz?=
 =?iso-8859-2?Q?swJy9hGmeZGbDQbCDGF3exq/dwwCM/5SCv3/sJlmjBl5enxuy6g5yOElBX?=
 =?iso-8859-2?Q?Hcqg+hwEOtK8j008MhdGh6c9ksnYw0pHfP90YfxZJxAc7HTyT4JnXHR8fO?=
 =?iso-8859-2?Q?yKryw40+GxRO6rPGvrAKXMCJ/+2WBUTRjDOdWDz3i2ig3DYuy5UqYcnT2v?=
 =?iso-8859-2?Q?iBrCqcxTMW85VVCRjCQpOm8GmWx8E+GIK9B1SbTBv1UbFRjx01UPFGDRB7?=
 =?iso-8859-2?Q?EF+PTy1LTB9tEQs/BqZmE8c878aWiqdSPtAfZmRw4NFZyabCSQktN0+Mfg?=
 =?iso-8859-2?Q?Jg2vKJNVv0XM1Y1m8sxSI3PPyT+RwPOG/J8cP86/e7/DBcuYxzkRire4zb?=
 =?iso-8859-2?Q?0GydJzQpR+Vpeex0aZtt98IsAlu0AmYLtjrjM2DVxCjJiV4VmAhVucFdHj?=
 =?iso-8859-2?Q?Qc35hH43NJRux+LytzzWyMFMz7OSx8mIs9UdGbNC7DI37xjRK+Esz15H1u?=
 =?iso-8859-2?Q?g++mnLuQ1EHOCY36IF+UllBzWTTYBwU6An+2Nv/y5U3aM+vIIafVMjv6Da?=
 =?iso-8859-2?Q?jKqsfH/T2k3YLef69GBDdh2+2gaeG+4rEbMxpQPl7ouOH4P+VHPZRaxkhF?=
 =?iso-8859-2?Q?AV2ce6FLjsxhGY5riwrE1ZJUhzlQ0QvKR3yxAathiolxGPR3BwwD0WWvH8?=
 =?iso-8859-2?Q?7y7hJAtnEFbetCvlRewlWwDdVSqXC/k+/JKIQrpT4SLbJf3IVgFHgBkq7n?=
 =?iso-8859-2?Q?Qa4NAu7HaKZ9O8bO8nkAU512htPJvBn/k5nuT3Hh+eO4K1VfeF3bgyyFhz?=
 =?iso-8859-2?Q?C6VLYMHrfDdhKzk1Hzhgkrx9CSI3X1I1PpsYjTa9+tjPZylGYLy2Q984GJ?=
 =?iso-8859-2?Q?FzLnsWAQ3i9di1eX8fsPS4370IkatZv+mmmmsUQryRpSS/N49YvQVF8Rph?=
 =?iso-8859-2?Q?0C/VmUo4umzsAw5UvWyzWWm80AZ2apwnc2ka/uWgNkGsuqJR5Ut7pbgKxn?=
 =?iso-8859-2?Q?huVKfrbys2GaITrfMBk+3VrxOeoauP1QaNWBYizS77hHZU5xmwzOa5WzQT?=
 =?iso-8859-2?Q?OgXyk7qOtbHv72SFpWO6WGlwgSOtE6juTvp8adaznOclzHF4DvOQnOH0YY?=
 =?iso-8859-2?Q?BtkixT1Z3v0rnCtDtUKAIqjVIlZRMuYQeAIMEiDua5vLMl9sCU+d09FRd/?=
 =?iso-8859-2?Q?ncmBzWyUFuSccxR3jKfOTw+OMJN4746XwHeivSMnORD4eFAz4wHfT5d14B?=
 =?iso-8859-2?Q?Pua9ie28fTEvFLoiTvf+7lXFo7oEA57+iePyoO9fSVwBt91IC6toOuptty?=
 =?iso-8859-2?Q?FiCp0EBOPA9A0mZMwgV1m+2XBNQG2v8XKqF1EpN7mWX/LuLuEFRNYzjZ14?=
 =?iso-8859-2?Q?JsrWAcxnfzWaK07+UMJztD/PgZHA27tKjf508rEjtDbva2iymEHgQ3XxYb?=
 =?iso-8859-2?Q?lZNy0jsGKZFzA7J3YW88Lp+zLDcMGZUIiU80VfM2oS1x9l9j1lV5fv5NmP?=
 =?iso-8859-2?Q?f7gRqvD22WgxeHb0BvERd/6BxGDIzgAHbwB6vCH+OW81QpqiB2rimKPLkK?=
 =?iso-8859-2?Q?zqN2LDaBDcB8clwiKAaR6gnbK3B1jEjbHbR3xBpzffehNli5e8DU47pfI6?=
 =?iso-8859-2?Q?vbeJRM88MJYjLHt/TTUMjG2ndY+INSrannOAE3QT8vFQ8RI8QohfuOA6NT?=
 =?iso-8859-2?Q?QvXpzsEkEfxxMSHNfRvefknTNWGu6EsrPDNX8K1hO+NPp1NYzBUZj9yQ6B?=
 =?iso-8859-2?Q?sTS+jLzrkG6wwwHs6cuMQ1Mi7Z8QUeyqWFHiVaVyYjv1GEVdKiFmp5/11B?=
 =?iso-8859-2?Q?vo67CWa4AA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR1101MB2070.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 60ef3c08-ca59-4059-8374-08da0e7946aa
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Mar 2022 16:05:26.4976 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Dtq4moD5Ms9uJo3c2jbtRa3lqyN2OcYK8ylI2WJnQUi4GjXphwGIMOWpwDq2SUdjBk7tzQs6f9d9GbJTUE3ULA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5074
X-OriginatorOrg: intel.com
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Jason, I forwarded your request to the people responsible
    with keeping the site up to date. I was informed that the contents should
    be updated soon. I'll keep an eye on that. Pawe³ 
 
 Content analysis details:   (-5.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
                             high trust
                             [192.55.52.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nXmYa-00Bsp7-HL
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
Cc: "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: tboot-devel-bounces@lists.sourceforge.net

Hi Jason,

I forwarded your request to the people responsible with keeping the site up=
 to date.
I was informed that the contents should be updated soon. I'll keep an eye o=
n that.

Pawe=B3

-----Original Message-----
From: Jason Andryuk <jandryuk@gmail.com> =

Sent: Wednesday, March 23, 2022 5:58 PM
To: tboot-devel@lists.sourceforge.net
Subject: [tboot-devel] 11th Gen SINIT ACM

Hi,

The intel page https://software.intel.com/content/www/us/en/develop/article=
s/intel-trusted-execution-technology.html
doesn't have anything newer than 9th gen SINIT ACM.

Lukasz previously provided a direct link to 10th gen ones.  Can someone fro=
m Intel provide a link to 11th gen SINIT ACMs?  And since 12th gen is right=
 around the corner, maybe those too please?

Thanks,
Jason


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
---------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
ul. Slowackiego 173 | 80-298 Gdansk | Sad Rejonowy Gdansk Polnoc | VII Wydz=
ial Gospodarczy Krajowego Rejestru Sadowego - KRS 101882 | NIP 957-07-52-31=
6 | Kapital zakladowy 200.000 PLN.
Ta wiadomosc wraz z zalacznikami jest przeznaczona dla okreslonego adresata=
 i moze zawierac informacje poufne. W razie przypadkowego otrzymania tej wi=
adomosci, prosimy o powiadomienie nadawcy oraz trwale jej usuniecie; jakiek=
olwiek przegladanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the s=
ole use of the intended recipient(s). If you are not the intended recipient=
, please contact the sender and delete all copies; any review or distributi=
on by others is strictly prohibited.



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
