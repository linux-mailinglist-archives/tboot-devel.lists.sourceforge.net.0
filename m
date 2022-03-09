Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AD004D3016
	for <lists+tboot-devel@lfdr.de>; Wed,  9 Mar 2022 14:39:53 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1nRwXX-0007EU-J8; Wed, 09 Mar 2022 13:39:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <pawel.randzio@intel.com>) id 1nRwXW-0007EM-FI
 for tboot-devel@lists.sourceforge.net; Wed, 09 Mar 2022 13:39:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NAYkxcwvAxE33DsEig1rc+yzkgRpEjkxIUdMGxA3fvU=; b=mawJIjRAX+waEI5yqSnfqBJHK+
 mjac8QLSfwPduvNJDUrqm/g2Xd5NkMJOEQxj7eUioaLtQdb+MXcOZKhS7Gt+2KCPUc37UGbkMVmeF
 1ugZ0f98P/sLtJmzd3LcfmzwI4B601Gng5yPwnwpiBE7J89QbEPT94OHUYgp7j97iqkM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NAYkxcwvAxE33DsEig1rc+yzkgRpEjkxIUdMGxA3fvU=; b=ADp2Rb7NG5324GZMsnX+B0kwiI
 SJpuIDVGDtzer2uLP8KEbxhTywuMUMl0nz2y+pfaf6qnDmwtq8fa4Iu5T71dVGl991k3P8XfPfhsl
 5EWDl6Q3GPKDZP5Lj+kBBsx4o/6L/ClpgquWVUyAcohkM+n6BjJki8JVGbJp40nct5x0=;
Received: from mga09.intel.com ([134.134.136.24])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nRwXR-0007kq-LY
 for tboot-devel@lists.sourceforge.net; Wed, 09 Mar 2022 13:39:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646833177; x=1678369177;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:mime-version:content-transfer-encoding;
 bh=NAYkxcwvAxE33DsEig1rc+yzkgRpEjkxIUdMGxA3fvU=;
 b=ClXkT7pCDcEWm/V+XctRjL5xiXpllg0Y6/y2B4IU7KxtTeoyvJtdhgT2
 gFs7vS2FG0wtPzJJ+rmChCSRLoKfW2Xr3EEg2CrT21FTn/ckgTsPbfkMc
 cy4HD5ngsK17zzhGJkMbBQWqhHoaUXsKsEiaLrA1T4u+GwutoqJmmCOOb
 d694qmwxVtCW6Adb6ZkQZaI/z4xrSAEL1mv/RNLbMgObzv8DAyQXO3hG9
 uX2gYa0b1/1rDIB+BHIVhelDK+AMjlHSFcfoHgpf0Y+fBiNiTWHAwM4/J
 o4Am9EIA+NTCYMjpec802uSVyAuMoHEWgk5DPPMr/q6GGCfTBMF+nfdC4 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10280"; a="254706326"
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="254706326"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 05:39:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="632605696"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 09 Mar 2022 05:39:17 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 9 Mar 2022 05:39:16 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Wed, 9 Mar 2022 05:39:16 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Wed, 9 Mar 2022 05:39:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MbaGNBAo/STkUDogdpMqwPfB692MBZH9yqZjLh1IHp5OmcjQfPZyfp1kP4jTacExtE82NZ3vtCToKKF2pobNsqFtrJ+v6eOjzXn9TkF+/DR1aN22N7dIP4vFYbryz37J8I1VTfhvcc/5PJgsGK7zF60fGjo+/qPXs3R66F7WUzwxvOTfAdJpDJPzDK65dFerIsIWKSFfXcx23FDM2+LOA7SSwe+6YBeWN838Saj7nU2UWL5Fcnxd3Twpdg2OnIL+DQZQOSOPMZDL5K+hLfXQIR0uzZCna4rHd8RQ0K7CXZjphAy+2L2PCOnmjf+4vvjkVJoqv1KPFn12Pi6ca2vbRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FwH+8aflQbJQE9vTc0JdFvO5U7KIMW85pQL8fmArFl8=;
 b=HXOHH3dzra8vYcm3seBMxNWItbV7GUHOshFBfb27f1/qGC19X6Yt6AklLiqnFYtQbo2LXg3ZC1UsmL7xrgwkpOmfiKt+QrlMuOD9K8nG+x7s0Gvjd4A7puSkfww+wG97w2ycxpSSttTmiJ6pay1KRuBDTTWqbBYjHV7glDNTYh3SnPYUC1CIhLCcy4omhI4U1U7QyOAfWB+sIIwgGurDanqiiTWnvgFTj1GFmLAQyC8VO8oJSuPpDK8MN1fUm1wg9z9LxX6xyQR6IdCcCTpyAyT6CH23aWNxZkv2dB5gBdsWBC+DNmhsnWPiFAnVXq2U/vs3Eo7a2YWiz9NRrYZawQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR1101MB2070.namprd11.prod.outlook.com
 (2603:10b6:910:1c::17) by DM6PR11MB4513.namprd11.prod.outlook.com
 (2603:10b6:5:2a2::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5061.21; Wed, 9 Mar
 2022 13:39:14 +0000
Received: from CY4PR1101MB2070.namprd11.prod.outlook.com
 ([fe80::5cc1:57bd:1689:c5a2]) by CY4PR1101MB2070.namprd11.prod.outlook.com
 ([fe80::5cc1:57bd:1689:c5a2%2]) with mapi id 15.20.5038.027; Wed, 9 Mar 2022
 13:39:14 +0000
From: "Randzio, Pawel" <pawel.randzio@intel.com>
To: Timo Lindfors <timo.lindfors@iki.fi>
Thread-Topic: [tboot-devel] new PGP for release tarballs?
Thread-Index: AQHYM6zYQ95gZkEQqEGMGBJ1Jxku/qy2/Naw///mCgCAACt1sA==
Date: Wed, 9 Mar 2022 13:39:13 +0000
Message-ID: <CY4PR1101MB207097EF446B44522B3D0E9DEB0A9@CY4PR1101MB2070.namprd11.prod.outlook.com>
References: <alpine.DEB.2.20.2203091131270.22177@mail.home>
 <CY4PR1101MB207027EADD44ADC6E1040249EB0A9@CY4PR1101MB2070.namprd11.prod.outlook.com>
 <alpine.DEB.2.20.2203091300220.22263@mail.home>
In-Reply-To: <alpine.DEB.2.20.2203091300220.22263@mail.home>
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
x-ms-office365-filtering-correlation-id: b46496fb-7bab-449b-2262-08da01d23337
x-ms-traffictypediagnostic: DM6PR11MB4513:EE_
x-microsoft-antispam-prvs: <DM6PR11MB45134FB1BFB9963C9CACFFD3EB0A9@DM6PR11MB4513.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DQJbts3/48AXbScbESndl1J5t07c63j76hQPLDaiud7JVLWMG9c2rymcril0bDprtzRM4dYbTH5FXJvkm8+VWREtVj9ELuvrDeiXwS6mwGGzwi29l27H1awii7/9/bX/vQgzoPLkdBlLcvE8rCIs4Q+kwXf06J20fp6n8qOYHB81sf/M+eu8U6P3q1cpVtyTz4h6Vmr0M82gSqjc5SgEAJqHjjeC1ff4rSM4w+g4LrfTB9bOzRaSzcBLLBPq2H4Cti3uJ8FKTfGzNQUmp7VSVC4YIFBFWnhz2Nnv/YU5YU40bjMxxo3/3qDKcoJhdLPWMJmhv/z8LyM8nXySHPDVRjHWmb8ZGp4RL2HgWRY0W5u5Qg2JCi8EIxTu7g+gFBrJYLXpF0i118Fc5oDOVsS/3Z4M8phPsA2e9jQ2sXv/gaSj8Ff6JpanCoAYvKXT7j9vrHlyaO0XSv5MH9hl5AApg+0HxsGfUAykw4L+VNe6UtzFP8k308Ar1sKE03JK+oPZYni4IZUToyg8J4LZCy5ZlBz6WAdJ4FACLs42SzWDuCdwkxJP9AB5yZclhDfFMvr1yD1ROYVvCRCg5Cl5R4fqHgXoQHkiR4rfijcf37NCQZU6LnUijjJqXDECv6wAuTBc/r+eRIp7iV/H/eKi0vbC09CKN3zmk7EV6BYW5sZakiOuX2qRrPFYdgS/yO4k4FpKKH5+bcbDh4n0a2WYEuCYaQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR1101MB2070.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(82960400001)(508600001)(86362001)(5660300002)(38100700002)(33656002)(6506007)(7696005)(4326008)(52536014)(8676002)(76116006)(6916009)(9686003)(66556008)(66476007)(186003)(26005)(66446008)(64756008)(4744005)(66946007)(83380400001)(71200400001)(8936002)(55016003)(316002)(122000001)(2906002)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?I22BI3Nu35MHwULgAmL3N0L82cjH/kl3KzH+4R3duR3Na4PGFYTBQz9x7w?=
 =?iso-8859-2?Q?IZKURHnquLcm33hwI0J/ueoXkRGcK2GirXw2WNfw7vrvA/eDUPAkLcsN2m?=
 =?iso-8859-2?Q?D1VXP22/ybOhskJcODxB5snwUVA76GeLQoz2uYHpKCSTo4TED0reJk5r1C?=
 =?iso-8859-2?Q?JDtctAcacUyJEkjgV2RkU7Sydij8Hiui7MDWIcCnJirD1ocRpUWl3BHbwW?=
 =?iso-8859-2?Q?pqZgZlH89F7yg3vDOFuovPz9rhCZns00NuHaRkRC5vRgEp/lAeuPj9qKaw?=
 =?iso-8859-2?Q?URWlNFCJiQAaw4MoIf3fJqEqgIAj9Ya07MOtBvfiDz7EM+1R8vqsU5XOP+?=
 =?iso-8859-2?Q?6JNtj1m7qla+QC/G/A2GS/fj0LYlpk22LW/WbbzUTC3diJCp2QsDtRixjd?=
 =?iso-8859-2?Q?XmLyAxjDN36U/G15G6sYKKbYgCltpOguX21rEdApN2LJ6OnB6ty9vFnET4?=
 =?iso-8859-2?Q?XqSTdN04jusH5pjty2RpLNeTXMraeFHJc1XAcqX2Ds6rZE3AEYLMfVzGGd?=
 =?iso-8859-2?Q?J2ptDcik+x+spJd/RrSMFqtx3KHeCSFGAtkz+o3YlhRN3wh4MXJmlSL5lY?=
 =?iso-8859-2?Q?gwT/P2We/f6CpqJZEwjNzGwwH/h3UdvSeaXG5YkNg7gp8HnPzKIQzIFdCD?=
 =?iso-8859-2?Q?hIDnbruZZBE+ARVWROxHLrT2Q5XNYPf4Qyz2Er8XMe6mxyWtUJkN9lDZ5t?=
 =?iso-8859-2?Q?M3Xj/EjRkR0bfu4pMNaRmxJ9X9IQIpdrOcG6lA/TJyzXYGw9M2Qt61tR8R?=
 =?iso-8859-2?Q?d/5iQTME5jLfg0jCrQ8hWd3Jd9iFlXPXQMUmsByyvSa2dBKdrunGNV9XeW?=
 =?iso-8859-2?Q?body5qBDDIPnO/1xwQuPNVePPIudFJgZnaFc3lgA/aSTwaU/fXJ4CmvJba?=
 =?iso-8859-2?Q?S42jcf2MxN6aHQiFuiQKZroDfJMRhlCAId+uCXkuOST2kNg1BiAYOeB1ml?=
 =?iso-8859-2?Q?BTL4pnrtZ7rjkCgZJ9GZX2y2exaFwTFcZJvrDVT5TPYQiSlr585SKFdGgl?=
 =?iso-8859-2?Q?DqeTvVFSh9sQWOwXVg4d0tdgTD38GRfMftS90ZE8GWj8WcLRUq66jb07Di?=
 =?iso-8859-2?Q?TnAaYTDgu01e/ORS1JJr8tCvbMI3WsTAUNkOXoIbLdgbY/qITK8a0zbJni?=
 =?iso-8859-2?Q?C+Lxr18QifD0z6b2zA4A/nZHLHfv7qSo+i0jAuqit+sY7ALncB9PxCsQRX?=
 =?iso-8859-2?Q?we19LKbppPrCzNLc/7/CoixhghdB5sZPNhfxXhhRU+yCMaehdCnspBD7gI?=
 =?iso-8859-2?Q?+5ZZ2R/LYzG0ga80bb/aG8P6YJPTnsDPzl/bnIZ0+gWSjupTpqjx5m7/is?=
 =?iso-8859-2?Q?PHmZHWcmIkQ4DnIUh0H03+Sn4ccLG3SqSR+YLvbY9DRHaBolgZaNqTubWh?=
 =?iso-8859-2?Q?JHrRpMfh2TszQFStVk8h6fVL9800Rr79NPFYcNdmAifJ6QuNQGnOU3o/YW?=
 =?iso-8859-2?Q?leAo7Ou9T9s8Uo73xmsdpDVv+ZgVvruoZ9PLPTd2UsgfV/oHGHWyHX2oTd?=
 =?iso-8859-2?Q?thWgpds1hxOzYekGy+I8Rn?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR1101MB2070.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b46496fb-7bab-449b-2262-08da01d23337
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Mar 2022 13:39:13.9732 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bAmvKtSCSGCVFyzf106cm8bP7JjoM8n8mnBA4vMEnHMxAavka62O6qjFfQwetwZtAY1mU+uUaayTjPx0biWanA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4513
X-OriginatorOrg: intel.com
X-Spam-Score: -3.2 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  > Good to know, can you release 1.10.5 so that I can upload
 it to Debian? Done. > Could you perhaps just put the public PGP key to version
 control if you cannot think of any other place? I don't see any way to ignore
 PGP validation in the workflow easily as only ".gpg" files are [...] 
 Content analysis details:   (-3.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.24 listed in wl.mailspike.net]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nRwXR-0007kq-LY
Subject: Re: [tboot-devel] new PGP for release tarballs?
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

> Good to know, can you release 1.10.5 so that I can upload it to Debian?
Done.

> Could you perhaps just put the public PGP key to version control if you c=
annot think of any other place? I don't see any way to ignore PGP validatio=
n in the workflow easily as only ".gpg" files are available and that's what=
 the tooling tries to access.
Public key file uploaded to SF

-Pawe=B3
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
