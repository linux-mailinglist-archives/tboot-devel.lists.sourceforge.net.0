Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 04CC4542BF0
	for <lists+tboot-devel@lfdr.de>; Wed,  8 Jun 2022 11:49:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1nysJj-0002YG-Gq; Wed, 08 Jun 2022 09:49:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <pawel.randzio@intel.com>) id 1nysJg-0002Y9-90
 for tboot-devel@lists.sourceforge.net; Wed, 08 Jun 2022 09:49:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ja8G53vABPni9ooK+DC9IS0BTDu5bTz6dhXdtdM9+8s=; b=El/ecbEF3XrMMO+jxLa3XVlxnC
 npdd4V3XlaxYClIH+TZAiacWsO/paGOGxSt1ypalDb0+TS78RAmiqH7aa3iqXthW2Zmv+R7abYT5P
 0193D8j+NL5BhSLYJPkG1gC9i73l8uj0FPf3g86KuITcCwXr5oK6FqPE7WwlwLhsckwE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ja8G53vABPni9ooK+DC9IS0BTDu5bTz6dhXdtdM9+8s=; b=Jgn8macJNO7jhf7JI3fux02ukb
 O5yz100xZHVY3RMU+6DUgsjkAeOfua2bZ8wSxEHUlau7NA6fbVEfC4RV5kpPKnsw0ILT3ns25ps6/
 L0N+5bzDogiEEe/oI5QhmRppOWdOizQh2U8/Lg9nQhWQC72maAYb5us+a2lHRdLBCMmg=;
Received: from mga04.intel.com ([192.55.52.120])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nysJb-009gtx-1u
 for tboot-devel@lists.sourceforge.net; Wed, 08 Jun 2022 09:49:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654681767; x=1686217767;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:mime-version:content-transfer-encoding;
 bh=Ja8G53vABPni9ooK+DC9IS0BTDu5bTz6dhXdtdM9+8s=;
 b=OajC5uKKWwmFR74orcyi2IXRdUbeQuUtDKP+ZNADNMnWvFI2ow8TQ8KX
 qfkUV5AwflHvt1mvs/BTGx7qfRhuztCt6zE2Mtf72iPqhf5CN6/CvB7GO
 PE9FkmFjRNhdQBhMLH63dNvzK0UCjUss1U/3uUmsqeS/lqYFHhvle+KPV
 AsMVkl79g7LJj+9LCWPtylSB0lICnIkepACEuvL44aRNp64r82WQusvqp
 ysro7DZLkIxga5qG/7gY5HF0zEBAskwJvXy7YmWMlRQsZ71i78T+GnyJ2
 Ce2i85zQdAWtSiADN8jW3OVnirfUjsb2JjI+5xKIf6Z1HfbOqHjwyIdc7 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10371"; a="275601260"
X-IronPort-AV: E=Sophos;i="5.91,285,1647327600"; d="scan'208";a="275601260"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2022 02:49:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,285,1647327600"; d="scan'208";a="579988135"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP; 08 Jun 2022 02:49:20 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 8 Jun 2022 02:49:19 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 8 Jun 2022 02:49:19 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 8 Jun 2022 02:49:19 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 8 Jun 2022 02:49:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BMbQzJht93vcs7PLESDJmWaFCI5sOp2/GezCerI+ptHVyuMQ8OPvOUz7X6RQF1QBTonhmEQUB0HFx9I/rRtTpYzzIdckrntLXPmREcTO0oizR7yb1N/Ncvz1EpBTbhC9lWGQ4UYDAwUVeJJW50Hzw6m+FsBsHBcYZM0DrC9q5ZKVTN0SAsdTNckCLOZb3E12SMWKN69xEvxaLo/RcZ8UV5nJy4dj+hNA0jwuN9uZzIyNmRuc7wZ9PDUCtlmw9b6UTXREvU57i+FHD6Vi1HuQ1+Bx4CXY1pubRCpjiMFmUaosK3cWxhJGYkHB/qC4imw5u6P0ruxnTAVGVgbTFGCwUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XDiIfDc4FBknQF7t+gpKXahgzZzuwlkAcCFvk2fD3Ak=;
 b=L6N+oliD/mXpDiMQ6uyQLGfbLp4mEL8LU1ROyc0GqDfqISScrFbklSqpS+rvOtQ5TPG6P0LZJlib6txcBYm85YDX7KHqnFFP2yu8zRoyKgEuDeA7DlnhuK4BHBd/uzSMWYhCUTn54waYHYJxmRTpx/DeGX2dwY113tXpxI4mdTClfNyXeLuBobSzVuG/p0i+L6XOH7u8vuD6t0b2+1jgna6AmQBriICfco4cBNa1lBozJRUnXiMwVaxbPzScgm0cxVPTMt1pJOrgoao9k1fWf85Opg5aYWHyuL8hZ/FDMBx3NvhWZgoPtYQYc0h2lyG2tofoZa0uxKd13dWWTMvZuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR1101MB2070.namprd11.prod.outlook.com
 (2603:10b6:910:1c::17) by BN6PR11MB4049.namprd11.prod.outlook.com
 (2603:10b6:405:7f::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5314.12; Wed, 8 Jun
 2022 09:49:12 +0000
Received: from CY4PR1101MB2070.namprd11.prod.outlook.com
 ([fe80::4169:e091:16c2:50f6]) by CY4PR1101MB2070.namprd11.prod.outlook.com
 ([fe80::4169:e091:16c2:50f6%8]) with mapi id 15.20.5314.019; Wed, 8 Jun 2022
 09:49:12 +0000
From: "Randzio, Pawel" <pawel.randzio@intel.com>
To: Timo Lindfors <timo.lindfors@iki.fi>
Thread-Topic: [tboot-devel] suspend problem since kernel 5.15
Thread-Index: AQHYFsgdNvrgDroV/E6nh0QWYk7Ohax+foIAgAmajICAPgmhgIBV5/CAgAEqAJCAFjzO8IASXr6AgAA6VmA=
Date: Wed, 8 Jun 2022 09:49:12 +0000
Message-ID: <CY4PR1101MB207052044E3F53A9C74BE8F8EBA49@CY4PR1101MB2070.namprd11.prod.outlook.com>
References: <4b3349f2-69f2-d6d3-ab66-6178af102333@posteo.net>
 <dcb47ad40ac22b08380312c1c18f322848ccd4d6.camel@hawrylko.pl>
 <6ca692b5-c54d-c57c-03a8-e774a86762c0@posteo.net>
 <3ae8a2cd-9ca3-1feb-4a96-0abc54277b34@posteo.net>
 <9da7e209-01bf-ee90-33cc-d6ed9ef355f9@posteo.net>
 <CY4PR1101MB207005F236983E9353227654EBCA9@CY4PR1101MB2070.namprd11.prod.outlook.com>
 <CY4PR1101MB20706DE48541CC18F90E9F10EBD89@CY4PR1101MB2070.namprd11.prod.outlook.com>
 <alpine.DEB.2.20.2206080911520.28663@mail.home>
In-Reply-To: <alpine.DEB.2.20.2206080911520.28663@mail.home>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2832d0d2-61e3-4f5f-fa8d-08da49342444
x-ms-traffictypediagnostic: BN6PR11MB4049:EE_
x-microsoft-antispam-prvs: <BN6PR11MB4049CDC2EAAE6042CCB46164EBA49@BN6PR11MB4049.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OfX2COiwoDaKKb8HM5+myYgjqFp4yXLcGNcSv6F07gFmmfw8ZG6yGVv19oE9LjndQ86pIXrnE0aPX2E940bIh+g3r8Pl9pnAnzFKVulG+YmubXRnIkwDTHLB/8XAnQEJzuoRMo3ywLzOqn2B6LTdE8rZyvZ/X1/lK/50R0B74gCzRjnfrcswJ8MRmn4kt6tqZG+4yEgGU2nTUuW01JvdskVFtldG1oumwWe68b2xh7sbdQmbGvstmrio3VQzpU6fxCOnvdt1Mk6Iqoo1aigUHwxGhzj2Iit4WUEN62HSugA6pwcDDxsjpY+2j41he6SM7mXSGjWqPR9Jp9/q9ipFvfrXp2KFONysPOpUzJOEdrjcNUR+O+CdZBzEBz+IEoZM4+dB+bNX0CQoJbxb2JeLLE3galrnFRbsRmwUoOAM2llst8/ARBA3ZsoZxMRSJbWMnMR97fOtEex7iulAZXsYv2jURJSfmyc/wJhUg/HjWIfFWPKG4ywvKcXjQTb0o4QJCV78GJttAlWNhp4LghNPT8p7+GvcPgevCUINVNxTcDBQNUCDcxfFPT2t3TksGo02Kyx1UtMUQwdKvqGNS24iGPUJ/mNbI82DtyUXFiXegMUZpWR2uMUHNo/+3RxFFJQR+pEtyEtL3gQaiuI6y0GL1rjJU2zMfO4x/6PP+45ecxDHHweG0nBdI02XNWJsLxRxMdAtyb9Xvb2M6b8ON/3Jcg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR1101MB2070.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(5660300002)(33656002)(38100700002)(76116006)(52536014)(82960400001)(186003)(55016003)(6916009)(83380400001)(66946007)(66556008)(66476007)(86362001)(26005)(9686003)(66446008)(64756008)(15650500001)(508600001)(8676002)(71200400001)(38070700005)(316002)(6506007)(7696005)(4326008)(122000001)(2906002)(8936002)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?zTndg4mIPJRhLEemEBMnzQvR7Iy0BrJoT4X5fROqjGAwkZhM0RPhQqWo54?=
 =?iso-8859-2?Q?2vD4j6qqzOv/hT9IKRA6RMTrg1EnqsSCZN7tjoL6jmk43ZaocwVqlZlB5A?=
 =?iso-8859-2?Q?K0BEBq9wbXEBGCpdbYXD7DSGE/asq/NYxWTOHfcGNzP/ySR7rUikB3YsOT?=
 =?iso-8859-2?Q?OunEFMu6aHYz64QLqOEZ8XyvGMLmZqAAkK4/witiHHekd6h1qX5PhBj+8f?=
 =?iso-8859-2?Q?0k8v84FhHm8V6wINcOFJmUFR37EO9jsJrttYoExBsO7EYrOS/6nlGuUAMp?=
 =?iso-8859-2?Q?+NOoggT09DAWFUJiZzKrG/bKLIfY8AEARqRUplptEt3B3YkMTK0IPsaaON?=
 =?iso-8859-2?Q?1+nuJLbB6RSXsQYrq0f7AViQsrW8Sj8xXP+k5DWOPrH8//pWsu6bRnoBw2?=
 =?iso-8859-2?Q?0qxUbAlk0eLjFQFfAikUWnq88a3lAkn79D8NT2vFSuQubCsMdUhmwfY9v2?=
 =?iso-8859-2?Q?l4Ksld19SLy/r+164ViaiIsZJrDau/2DA/OwL3ZyONhPFd1HzJe05mcrMm?=
 =?iso-8859-2?Q?1v2LG2D9MDqDW4QmDb8kmZptuCL7D8GI3/8Cz7S+UnYuErG9MoILY1U/rf?=
 =?iso-8859-2?Q?J3e1JqLagAuuzaPEly/npOBMfnOJvPdp4zDsF7f1TfYA0CyNJRSQiVsw9k?=
 =?iso-8859-2?Q?3KCJoGigpYecusYYuY5s5xjzMYJZrt1D2iH85Y0WOYNp2lnccbcoFOAdKN?=
 =?iso-8859-2?Q?UzE0QoU/7o7b8f4sbptQjYsAhH5D83Qb40Kck3eV9by6yfRk7eEtIClggl?=
 =?iso-8859-2?Q?gW9Ogws3fk78FiblKWySqJ8FdhHSxH9P/GjYy4+io6QDXPOPACYBJtArEN?=
 =?iso-8859-2?Q?uySb2aPZq2YSJAyxzI5aoosQPr3tn6tPv/054v23uWg/swt8KaF8b4PeWG?=
 =?iso-8859-2?Q?6N0VyuS+FJGTidTfFEPIWkjOSgIefv/NT/lmQu9Gw0pUm6ZlAEhQyK0umP?=
 =?iso-8859-2?Q?9VZSaiqa08nrk/io2p+w1uxDvach4nsmygbs77TIPMUD/sN0dX4FOGlWW+?=
 =?iso-8859-2?Q?s7vxLJRO1jSfJ1eucvRd65xtOQtwQtppQX/+Bt7o0pWTwb8SWOoHaWoAqy?=
 =?iso-8859-2?Q?KWcaaMjPU/SlnT//P3gCgReiy+UEFpg/hKlo692oTTGxh6iffCYcL4PTpi?=
 =?iso-8859-2?Q?3LajhTikPXYHiuZdRihtgSJvyI+E472lrPyhxWm96TloI+Ch89wKdDVXCy?=
 =?iso-8859-2?Q?HXv8MNQZ7jFxDRy9zlTCv8fX5sVngYyHQizTRJNukY2klo/PRSwC1s5uNQ?=
 =?iso-8859-2?Q?MuntBK71d3t7FOE+tkwCP6p8arVpvtDUjrNd8lkPRABtoH3QmbwHhbyzgr?=
 =?iso-8859-2?Q?jJ5hI+OAPHIriJwbBZVb3p0hzh8ZLhIaRl0SKIxlAmYXFaqCFSmPIfZLkU?=
 =?iso-8859-2?Q?Ql0s/fE6QPZAZTBGfdZn5fk5oq+bAsM+b/mHBgXIkCkpRm86Ue2xfn21Wt?=
 =?iso-8859-2?Q?k8WX5TMcVOV32s/sbkrBv5st0k0wB08e+fNOYqrcpg2EeUYxTl7avpQD2W?=
 =?iso-8859-2?Q?XtguuXAdQEOCZA6pHZ4vh7ue1AnkMDMmeKYg+2mzsGt01GmjzQiGgsrFgd?=
 =?iso-8859-2?Q?PIUbR8wQq3xsIf1COFXCljWQaXq61BDR2G5G+ZtLM8b5diipib5ig2pwa+?=
 =?iso-8859-2?Q?UXTFVCjFUv0cjmGY73Q9b5vXzUwrtNmbcUSo0Go1laGcecqdEK5Yxddrcc?=
 =?iso-8859-2?Q?j7O9gv7Pq8YoUpgWRAQmg5rg6SOepvHVMtFjgoWE/JQ6q/BC7Iwmj1aGk6?=
 =?iso-8859-2?Q?ev16yr3hjB58vrC2a7jOaXK8lvvLOilxip/YdITkTCIrH8KB6IRlBZ/Kiz?=
 =?iso-8859-2?Q?c0yr20SB8A=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR1101MB2070.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2832d0d2-61e3-4f5f-fa8d-08da49342444
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2022 09:49:12.1348 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RSbhzaX1W1wt0sqkNf8UEjBTikvPf269L6xiIzU5AEJLIqFKNi6hycA6YcNLXN+1r9EmQMt5a7GumduEWDjH0A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB4049
X-OriginatorOrg: intel.com
X-Spam-Score: -3.7 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Timo, No, unfortunately, haha. I've been too early to call
 the victory. I've sent it for testing and it came out that our client
 platforms, 
 like AlderLake and upcoming CPUs work fine with that patch, but se [...] 
 Content analysis details:   (-3.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -1.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nysJb-009gtx-1u
Subject: Re: [tboot-devel] suspend problem since kernel 5.15
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

Hi Timo,

No, unfortunately, haha. I've been too early to call the victory.
I've sent it for testing and it came out that our client platforms, like Al=
derLake and upcoming CPUs work fine with that patch, but server platforms m=
ay fail with it, I got ambivalent results on that.

I'm awaiting further testing results with some renditions of that patch to =
check whether this one particular part needs some tweaking or maybe the fix=
 needs to be a bit more complex.

Nevertheless, I started talks to take over maintenance of TBOOT's kernel mo=
dule and hopefully when the patch is fully functional and is included in th=
e kernel I'll become the maintainer (and reviewer) for it.

-Pawe=B3


-----Original Message-----
From: Timo Lindfors <timo.lindfors@iki.fi> =

Sent: Wednesday, June 8, 2022 8:13 AM
To: Randzio, Pawel <pawel.randzio@intel.com>
Cc: tboot-devel@lists.sourceforge.net
Subject: Re: [tboot-devel] suspend problem since kernel 5.15


On Fri, 27 May 2022, Randzio, Pawel wrote:
> I wish to gladly inform you that I've fixed the bug preventing suspend wi=
th Tboot.

Great news! Has this patch already been sent upstream?

-Timo

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
