Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 542FD536390
	for <lists+tboot-devel@lfdr.de>; Fri, 27 May 2022 15:51:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1nuaN2-0003WI-3C; Fri, 27 May 2022 13:51:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <pawel.randzio@intel.com>) id 1nuaN0-0003W2-Bf
 for tboot-devel@lists.sourceforge.net; Fri, 27 May 2022 13:51:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=L9IUBMSdAW4SNUi2fda4FQXLAOh/6Us4WrnLwdVLEXA=; b=Bslc+jquXv1LIBcBsZCIHY+iIc
 XX20Gw1fmQbsxMdFJHytOeWf6HOFTFlEPlrIfZGGNx7WtXjQm+4krjnxN0K6UxNp3+/2p1R5bJ6Db
 +HgSBfLhyaqzBc/RA0VRyK2KTp4ryJU9xASG1AX6t5/cWRgLy4UuQ3I0xCfDxAXo9YMc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=L9IUBMSdAW4SNUi2fda4FQXLAOh/6Us4WrnLwdVLEXA=; b=TVZ8GhRzAIzhRz/P2w6vQRTmcB
 itHURiRmJ/0uatb7Z5W8hvM6D2uJ6XPzJ2B/B3CkjSeodqxSSqa0bnXoZPiY+4YaLa06leGsi8V6M
 eUyDSAbye0JccODyDXqR79t8tYB0bFSwhYiIeMnWliMXWLrObsyKtXJkCT0QeKGs5cvY=;
Received: from mga18.intel.com ([134.134.136.126])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nuaMu-004KTk-OG
 for tboot-devel@lists.sourceforge.net; Fri, 27 May 2022 13:51:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653659468; x=1685195468;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:mime-version:content-transfer-encoding;
 bh=8cdtDm9nwSdRG8BLnBbc8tAuGtRRIgevNJ9G2uWgsTI=;
 b=fbWFcooWgbPjlebCbyBWdKZgoa/Y2XQgEYuePF28J28WX7u4dPcxnfd+
 gbhFY4HievwPOf2mvT52o7kmdhUlU0+8ApEdHtfTEU9jwtZK1vhJJWZQG
 jAMlBraw9X8TYGYzn3CKS6Q+d94wm4lWcjWRYeyC1joR7Jd3X7x+T05jl
 ITAs2QVs3sFj9y4S8EJfcVxFjrIWQOfqm3aZtE7q6hSK8UFIoaluBMgjp
 kblpP8OKZ6IJ2l36MIPfBHh1b7dcT458/H3gfIW4K9CqrtJB1Z3l0BoNH
 kmfWiz8G5Gj07pV2g6qpBBm6LVntH1Jful2z4XKL2ZMyZmGfO0jSwivR1 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10359"; a="256554205"
X-IronPort-AV: E=Sophos;i="5.91,255,1647327600"; d="scan'208";a="256554205"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2022 06:51:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,255,1647327600"; d="scan'208";a="610284050"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP; 27 May 2022 06:51:02 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 27 May 2022 06:51:02 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 27 May 2022 06:51:02 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.107)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 27 May 2022 06:51:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Rd1hxZDbrlfcE7IBlTUx6h50EjAgIbZlDx/dDYOauEjn6BAh2HFiKEcjqDmkKd57+/QueYuAQL1tULoEXHj9qUGfSu37dVt3XBxL6OVpawn0k4sDIPEvyD4uTA4+f4xkG+BRO8UNe8Sn5YEJXzrTJQ2zuLJl5FwY4Vw36ET4/0913OqrLJQvcQW+9rcOpiFhT3lkR1wfBVF9AJxycTSNj9MVWoh0phUK6MstG61m3KHRtUmBzSs09ConqCcTsbp8400qWuLN/cULMJu/tRdwrq3zsSnXwSrpZzwViecepq0aKQaooEVzy06PvanmIZECVvfAbr0CREJAxL1QmqfzLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=glhtZ1k67ypjAQKb1Vz8v7Gg+0LF2hfsAAThOcA3JS0=;
 b=J2Gw/dy5Ba3KG5jkl5BkJLm6QpMP4jOxfe0zf8bueUTE6Z4Jw+rtEx/pqks2AVd9nBg5wjQr2D0WLsysKVZLwRcOTv7jPy8d2o7NbqlknHz9F4fLo9KylTN/91shaXcGp/32aW4/ZjsHK15907iWFpRN6LHeGZlh0nEBlMQT7OMMAM7jjUZbkXjxYF5JNZZoMkYDtVp/yDRbK7onCTGGFNDvGNNQLIPrZVCAmHzWSKW1ru/rcmVsOrj7rHU7wL9y+zQE6VEyIofgosCO6u4N0cKopWS9ff7YiLaYxBm/5YgLNSRrsg1gbom+oqyhxFM/w42lSuw16P4/nGnj/2sfVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR1101MB2070.namprd11.prod.outlook.com
 (2603:10b6:910:1c::17) by BL1PR11MB5954.namprd11.prod.outlook.com
 (2603:10b6:208:385::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5273.14; Fri, 27 May
 2022 13:50:54 +0000
Received: from CY4PR1101MB2070.namprd11.prod.outlook.com
 ([fe80::4169:e091:16c2:50f6]) by CY4PR1101MB2070.namprd11.prod.outlook.com
 ([fe80::4169:e091:16c2:50f6%8]) with mapi id 15.20.5293.013; Fri, 27 May 2022
 13:50:54 +0000
From: "Randzio, Pawel" <pawel.randzio@intel.com>
To: Derek Dolney <z23@posteo.net>, =?iso-8859-2?Q?=A3ukasz_Hawry=B3ko?=
 <lukasz@hawrylko.pl>
Thread-Topic: [tboot-devel] suspend problem since kernel 5.15
Thread-Index: AQHYFsgdNvrgDroV/E6nh0QWYk7Ohax+foIAgAmajICAPgmhgIBV5/CAgAEqAJCAFjzO8A==
Date: Fri, 27 May 2022 13:50:54 +0000
Message-ID: <CY4PR1101MB20706DE48541CC18F90E9F10EBD89@CY4PR1101MB2070.namprd11.prod.outlook.com>
References: <4b3349f2-69f2-d6d3-ab66-6178af102333@posteo.net>
 <dcb47ad40ac22b08380312c1c18f322848ccd4d6.camel@hawrylko.pl>
 <6ca692b5-c54d-c57c-03a8-e774a86762c0@posteo.net>
 <3ae8a2cd-9ca3-1feb-4a96-0abc54277b34@posteo.net>
 <9da7e209-01bf-ee90-33cc-d6ed9ef355f9@posteo.net>
 <CY4PR1101MB207005F236983E9353227654EBCA9@CY4PR1101MB2070.namprd11.prod.outlook.com>
In-Reply-To: <CY4PR1101MB207005F236983E9353227654EBCA9@CY4PR1101MB2070.namprd11.prod.outlook.com>
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
x-ms-office365-filtering-correlation-id: 3d1206ea-e367-47f8-8b89-08da3fe7eb55
x-ms-traffictypediagnostic: BL1PR11MB5954:EE_
x-microsoft-antispam-prvs: <BL1PR11MB5954F3B64D964D5F53699162EBD89@BL1PR11MB5954.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vFuXYhZIcIKvGpBCTxF/8HA0yONNGECgQiyhq3RAMLAn+fD8JGn6Dq77oqsDkmPqqVS3Naq0Np3mFaB/HU0MS/Qru0SmOgwvuJ4dszqIT1uhq6MBPnNrY0/7CuDFS18+3rDiH9/00oElm2fWNErLr2cSZITcs38qSxUnbauC4wXlaky1Khyw8ADo94zmvyM/ZBYE8A7BjSUPq8yRd1+A2kXcenD3PfDJW2q5FTg3BxUFBtoefVi72Sw7P5q7hlSGHU+nKvx/z/BW3jWgXDPVbWB/B0Fk5mjvNUR3BPjX1bTefqnHuqy9vHsmWNdLMsruWRpqi8QcijQSBak0eLUGGJN+itWc9YRb7KLw/xvxw6axm18Mw+3XnTLOhiGxja1EGektNjy//vhkjuQeemx3gz+Kh7qQo4nJJR9TLNwqD1qzX+Yy42kK9C7UcdMO/3v5uOADCZVMo8JEbiyIqqVY3Np8LhSe+daVWU0+eSwSFrlYRiW4wc+DRg5qhNl5KjevW/p4duloqA9vSdKaX3aAd2XV0sy+4z/ctB6CBKuZd/AyJVQr8nEjzL1hSLRKYNyqn/pXg1y7pqb5jhoNdg71S9vJ/nmvPfiPP0PhFcM6P8cRILJ+zy/VGPwWinIL3bf45Jh7b5e4vdNpbkoPJ7+w2Cd8J0jp9raN6VnIgG14KYV2z9p64mn4uM9gxPQAbvdBzZVE/7avjUhdvCTn2GilC7qXgEtQ+EVOC3oB5lrV/SgwYaCGetA/3paTMqWwPgUBfMJVuXwgU8Qu9cB1GSB/nZbcfsb+QDZyeZCbfdDUp9U=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR1101MB2070.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(186003)(53546011)(6506007)(83380400001)(66574015)(8676002)(4326008)(508600001)(71200400001)(66556008)(33656002)(26005)(966005)(9686003)(15650500001)(316002)(7696005)(55016003)(86362001)(110136005)(76116006)(2906002)(52536014)(5660300002)(8936002)(66946007)(38100700002)(122000001)(66446008)(38070700005)(66476007)(64756008)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?Vfhd5FeLgpPdGmV14ypV8UWZHwYgW8olvu4jVKSq62zTX/Gp9FDHaYW26l?=
 =?iso-8859-2?Q?6wDbNw9gsbTL8LJhALsaf4oejruCYDodQCVHWr5ktz6+XBxQJwSstV/0GC?=
 =?iso-8859-2?Q?/iqX53U+uTSwgUxb2WKSFHuf8K1P/ve1+5CZhJg90UqGmqt4gOmlfnoe0d?=
 =?iso-8859-2?Q?By0Ezr2jtcJ907Pm+XmRoOx2BG9pOlnNfdOlGABRmS4UC9V21tVLpdOOPT?=
 =?iso-8859-2?Q?HkFxZRDeinEMgsij6CuD7ORsuRd3vJ77FSZ0qpQ2+SsCRotWYMbuMmyeBI?=
 =?iso-8859-2?Q?JGULEsXIUgscYrnRJLFZwF6Rhat82Af+Zhlhvv4tII1I274zszzgPbKriJ?=
 =?iso-8859-2?Q?bcjuxfDC8SU/hN352CHgS+6tG/9IJ0b/TLRBi7trbGcqIz7IyIbXghtCR2?=
 =?iso-8859-2?Q?r0HQX/SfYMpe9Yxj7fv6rj8RNsLpNc4nJOltzb/TSn+/pvnHWMxTROC6CW?=
 =?iso-8859-2?Q?NCUvcVZbnmLlPdp1ERaMGMertBa3+m6M7MYOkG3/iuJ6N7JMiMDy7V1/e6?=
 =?iso-8859-2?Q?XWka6G/GxPN73fQHvekPQ0m+C5cqJbuElXTIQQoyA6HNCdgADZsqBORnvi?=
 =?iso-8859-2?Q?m0NKFx9hbZ6TNXV2VcyggaXjecXDNA0TcQ7gYeJnzpDtmSdpW0G9xtIDMe?=
 =?iso-8859-2?Q?YwUtqzM+XLpA7249vGVK80JI2sPy4F/DSJaBucKvLLfSRHV3miBmWOkgWl?=
 =?iso-8859-2?Q?OIRYc438YMcJrIA+6D0UNTdinffxEAUGEupDj7LSpefKkXKZoTaE7g19UA?=
 =?iso-8859-2?Q?VYaDToxo0+SGoMRjJ9A3w3oxgqPL/E7o5gZceLNseva72H6I3FU1YaBv3A?=
 =?iso-8859-2?Q?9w+Y2wo+tU0iVEvBMY5244H6Ryxt7wYpEQt5MLkuYzipY/Js0GHEDUuOc0?=
 =?iso-8859-2?Q?jnq4VQYHQqhX3YB4XXkWQcjYkqVEEFgnj69pqwva88WfhbQag12+YeGBGk?=
 =?iso-8859-2?Q?myT1z5SyABN0vkgcVSIOes3+fo3FL+AKpOsPlmOj0w1HnJynvkZintt9nu?=
 =?iso-8859-2?Q?lbrD/q1DZFilkkdBAonSR+zOPCRofyNr0y6AS+1SoEWO2C53M4x8MNjMDs?=
 =?iso-8859-2?Q?27XqszYtkFF2tJ6zl5EUtcr86tqfmAjr5okL87evt1/tBUEsjB8NtlC2KC?=
 =?iso-8859-2?Q?uYA+qKnQ3hrd6OXAPwNWecLuweNZvlUdDh02tF5kdlJ5zm+VIjCnF4Tdas?=
 =?iso-8859-2?Q?PWmA3++MW4qn4qipoGuxILTwlEem0TJln3w1AKDISEs47kgVEgWGIZhjJa?=
 =?iso-8859-2?Q?1o8Q1SQewgX0ubsMNFc+7zz41ED/dLYogzti087U88x7Aha/pK5ZGmW3fn?=
 =?iso-8859-2?Q?Z6KuVnsuzmpUlItCM8w0cw2GIDbrzaUp0hBHR52mLxnGClETUjFAzaVNSO?=
 =?iso-8859-2?Q?0RmtYCPmut9vwfrzX3coInsaLfNvCKt69sKXdnqcEKxPREEHqjzpD7rUFO?=
 =?iso-8859-2?Q?8EqxClHMhB+6QFEf0so00uoqO0qqxP1mPdjdlp5U/gwNO5ZPqjj3Mj+U3j?=
 =?iso-8859-2?Q?SRRKU9cPcEmOnhRqYdOWtCHfsRlxWehkio+WEBsGa675DN5uUGrTIE5AvC?=
 =?iso-8859-2?Q?PIpvxo6kKuQN+wutT1K0WRFR9tBgAf/z7Ck+sAHs3Cg/cvuvN4ppdBMDEH?=
 =?iso-8859-2?Q?jgOMxA93OEPWU1iwCfWZMIyZlpPb5qUey+ifLXBSCviZRAp4IvokvZlwnn?=
 =?iso-8859-2?Q?s1zqbD+tEylm4U1vmOnGWGrqS6UI1iBIyCLd7Lu6/6qDaZxadXR+NrXI63?=
 =?iso-8859-2?Q?J/e9v0FqSLBEKC0OqZVOg+5q+Xhq4EPP0u0B5IacKPHP+ZLpQVU3lvwkZY?=
 =?iso-8859-2?Q?a2bkUSwVYw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR1101MB2070.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d1206ea-e367-47f8-8b89-08da3fe7eb55
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2022 13:50:54.4125 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cf5g317DjvkgAmAE099wD2VoJn5y3d10ULctK83SD4hPtLALSwEdirGLaA6gah7+PDc6+Os0qd6ni0NoxfshnQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5954
X-OriginatorOrg: intel.com
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Derek, I wish to gladly inform you that I've fixed the
 bug preventing suspend with Tboot. It was in the piece of code that you've
 highlighted - the atomic increment on ap_wfs_count variable need have been
 moved into the else clause of the following if statement, something like
 this: Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
X-Headers-End: 1nuaMu-004KTk-OG
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

Hi Derek,

I wish to gladly inform you that I've fixed the bug preventing suspend with=
 Tboot.

It was in the piece of code that you've highlighted - the atomic increment =
on ap_wfs_count variable need have been moved into the else clause of the f=
ollowing if statement, something like this:

static int tboot_dying_cpu(unsigned int cpu) {
	if (num_online_cpus() =3D=3D 1) {
		if (tboot_wait_for_aps(atomic_read(&ap_wfs_count)))
			return -EBUSY;
	} else
	 	atomic_inc(&ap_wfs_count);
	return 0;
}

Otherwise, when the procedure shutdown all APs, BSP was also counted in as =
one of them, thus creating a mismatch between what kernel had counted and w=
hat TBOOT reported back to it.
This caused a kernel panic, which froze the machine while putting it into s=
uspend.

I've sent a version of TBOOT Live Image equipped with this patch of the ker=
nel to our validation teams and I'm awaiting their response after the weeke=
nd.
If I get positive results from their tests I will try and have this patch a=
ttached to the official kernel repository and featured in versions 5.19 and=
 up.

Kind regards,
Pawe=B3





-----Original Message-----
From: Randzio, Pawel =

Sent: Friday, May 13, 2022 12:12 PM
To: 'Derek Dolney' <z23@posteo.net>; =A3ukasz Hawry=B3ko <lukasz@hawrylko.p=
l>
Cc: tboot-devel@lists.sourceforge.net
Subject: RE: [tboot-devel] suspend problem since kernel 5.15

Hi Derek,

I've also been picking at that issue for the past few months and reached th=
e same wall as you have with the -EBUSY callback return, although your mess=
age kind of gives me a new idea for where to look for the root cause as it =
seems I have not tracked all possible callbacks.
I'm not a kernel developer either and honestly debugging that S3 issue is t=
roublesome to me too, to say the least. If anyone on this mailing list has =
any idea how to further the debugging or even better - solve this issue, pl=
ease feel free to share ideas.

On a side note, please add Vincent into the communication, that might speed=
 up the process.
Vincent may add others that could know what might be going on with that iss=
ue.

Thanks,
Pawe=B3

-----Original Message-----
From: Derek Dolney <z23@posteo.net> =

Sent: Thursday, May 12, 2022 6:20 PM
To: =A3ukasz Hawry=B3ko <lukasz@hawrylko.pl>; tboot-devel@lists.sourceforge=
.net
Subject: Re: [tboot-devel] suspend problem since kernel 5.15

I have been working on this as best I can. However, I confess that I am not=
 a kernel developer and have really no understanding of these tboot interna=
ls. Nevertheless here is a brief update. Please anyone feel free to share a=
ny ideas how to move forward to some resolution.

I got a desktop machine with rs232 serial output running tboot and reproduc=
ed the suspend problem that way and with this setup I can collect kernel pr=
intk and also cpu hotplug (cpuhp) tracing output. I have also thankfully go=
t quite a bit of help from Vincent Donnefort who wrote the cpuhp changes (t=
he commit I posted) that have exposed the issue. He has been very helpful, =
let me try to tell you what we have figured out.

On suspend, I get into the tboot callback:

static int tboot_dying_cpu(unsigned int cpu) {
	atomic_inc(&ap_wfs_count);
	if (num_online_cpus() =3D=3D 1) {
		if (tboot_wait_for_aps(atomic_read(&ap_wfs_count)))
			return -EBUSY;
	}
	return 0;
}

but the tboot_wait_for_aps times out for me so the callback returns EBUSY. =
The problem with that happening is that there is not a rollback mechanism i=
n place at this point in the cpuhp sequence. So I mean from cpuhp point of =
view, there is not even a mechanism to handle the tboot callback failure. B=
esides that, we don't know what could be a sensible thing to do in the case=
 of EBUSY. What does it mean tboot is busy and what should be done about it=
? Please help us to understand.


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
