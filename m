Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A2B2E4D2F2A
	for <lists+tboot-devel@lfdr.de>; Wed,  9 Mar 2022 13:39:55 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1nRvbX-0004wP-9G; Wed, 09 Mar 2022 12:39:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <pawel.randzio@intel.com>) id 1nRvbV-0004wJ-4h
 for tboot-devel@lists.sourceforge.net; Wed, 09 Mar 2022 12:39:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uNFvr5UvWueDRXQp/w+TNHyWLNZznfjC3Qn2tYHJL4E=; b=Y6lvg3V88wd7EI9SzKPMvprUgc
 F22QdSNFIqMYngHrutctMqqahYyeCp0rsyD847jqnvvK+B4uKjjhAgDf4Q7UwdptdTgLU58Nv3ySQ
 oxB9vaIpLJcOOnFMcILDfvhmRVBiLqXMHz7M2xQw/upvVk66zpabR6odC8vTtzc7Bl4A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uNFvr5UvWueDRXQp/w+TNHyWLNZznfjC3Qn2tYHJL4E=; b=Z4RQf1qZPyET4uLwQLDDQ7jfeA
 K9ZNlX9X1h6G9pLfBr6gITlDQ9AR3FV5stx4mi/uTtij1pK1OuAGGOFfmZc8uXnhiCRCBA2mdp1e3
 11vkJVDdNSRQA6H+PwZA3BX2wu804mCPUw76CHhmFru7LatA41PRUe+N5bCgxAHX+16U=;
Received: from mga03.intel.com ([134.134.136.65])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nRvbQ-0005Ot-Lp
 for tboot-devel@lists.sourceforge.net; Wed, 09 Mar 2022 12:39:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646829580; x=1678365580;
 h=from:to:subject:date:message-id:references:in-reply-to:
 mime-version:content-transfer-encoding;
 bh=uNFvr5UvWueDRXQp/w+TNHyWLNZznfjC3Qn2tYHJL4E=;
 b=L5OSuc2eSfCWhYP6w6i/Wpm5v2RQQVdvEdYR5ksBAOWED3IuCOL1dNE2
 01wyW4YqHU2hl3UD1dvppyZJMKxeBH4jeNmm88n13pXLGeJpBtXrfeu61
 /yswut4DEMXfHhRFIEec19mXOP8DrxfEglGLg/MkmO11fwdqrTgs20KKe
 vvZh/jLXTUban6D6ciTDlUQhWV+ajo2bzebJsCSFAcmnjm8SEhSWI2CDo
 x6NRUAq//CP8vzYm+0RpmHl0i/bwrAuUOIEiem40vvKhB+Nvv03orl7Pm
 6fy7NXB68rBDbEwrKRI3TN4D3c0aD+a8Cmlf8paICqEpvKTFSnJ8m44SF A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10280"; a="254905669"
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="254905669"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 04:39:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="495829377"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 09 Mar 2022 04:39:34 -0800
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 9 Mar 2022 04:39:34 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Wed, 9 Mar 2022 04:39:34 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Wed, 9 Mar 2022 04:39:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UyNJNsXmN2ABd1K5HcGiQ1Gf3dStkrfE7F1DMKItYNokk+JzejD1ZZDpOJgTzpFosWgkqWo1nvK7hiLOpE36HUrycTy6SnYORaum5iF01ybCToC40guATdOqeYErhtjdt+8AixCkBfe4urK3sjha/vuLQvNdlb8TS7Yjz2l4qkhxySZHvfAJMwEs0hnRnrgSWK+MObFxy5i+ik/RLMCqQJjHMpVJWRhaALB+Mpz0yvs2uXiZrMyw9YQXofwpbkl4hDR9KuadT8oXCPRwUWsnbFF7PNf5+8HBwCga1HoookDvsmXJQiLVXgbVzJni9ZWMGI9J04gQrLPQg8ZNyS5znw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B6EVsaX1+Xr7c+HFeP0E4BKizfu6d2++B2rj1JXWsLY=;
 b=kHjFl6mHHl0RQ2Xx4Fhq2bWO89BeYfn01HV+IZU5exQbmzwVj0Zqg/Fx7GOs7ciEWegQq0xiclm7Y3ivB7ZNtPfEsMfLLcH1CjXMJHVz9j3X5b4IqKDeVsTf6R+EYxZwlbc7RNCfv1veYCBf1+MBrsnOjLMrpuvmnwg929kZgCLRK6vc7zJDsV02pRYCef8I5F9RfDhwY28D+yxPdcOi6tvSKPjRQvgFxG3jzvWBtzrJP4sw4igmvO4CW0kp0MoDsYZA4PKKgkWfgyY3/5iRmF2KXC2MZyVzRR7l+6AbkTnVe/kFfhb9P2LmWWaiyYJ27PBTuIZ6hcqHXn4/x1fxcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR1101MB2070.namprd11.prod.outlook.com
 (2603:10b6:910:1c::17) by SN6PR11MB3118.namprd11.prod.outlook.com
 (2603:10b6:805:dc::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.29; Wed, 9 Mar
 2022 12:39:32 +0000
Received: from CY4PR1101MB2070.namprd11.prod.outlook.com
 ([fe80::5cc1:57bd:1689:c5a2]) by CY4PR1101MB2070.namprd11.prod.outlook.com
 ([fe80::5cc1:57bd:1689:c5a2%2]) with mapi id 15.20.5038.027; Wed, 9 Mar 2022
 12:39:32 +0000
From: "Randzio, Pawel" <pawel.randzio@intel.com>
To: Timo Lindfors <timo.lindfors@iki.fi>, "tboot-devel@lists.sourceforge.net"
 <tboot-devel@lists.sourceforge.net>
Thread-Topic: [tboot-devel] new PGP for release tarballs?
Thread-Index: AQHYM6zYQ95gZkEQqEGMGBJ1Jxku/qy2/Naw
Date: Wed, 9 Mar 2022 12:39:32 +0000
Message-ID: <CY4PR1101MB207027EADD44ADC6E1040249EB0A9@CY4PR1101MB2070.namprd11.prod.outlook.com>
References: <alpine.DEB.2.20.2203091131270.22177@mail.home>
In-Reply-To: <alpine.DEB.2.20.2203091131270.22177@mail.home>
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
x-ms-office365-filtering-correlation-id: b78433c8-f8a8-4481-9aa0-08da01c9dc63
x-ms-traffictypediagnostic: SN6PR11MB3118:EE_
x-microsoft-antispam-prvs: <SN6PR11MB311821348742F1D921A8BCE3EB0A9@SN6PR11MB3118.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HAwMQR2SsscRCm1qJSBl7ibQx1SUnFnEvFjAXvaUw56ndpRsB0CjL7hfEjwxnDc2pBPM1LYWWfORiOpAQ4K2Xi0IZooSJiSgU/FtG1/Kot+RghmDt4+1J4oi4Jg8omVyu84A1GLxOHDfVA1Kuzzl/HuehXSUcMxamPAaI4Iq/zWgNHshpKtjsWzi8iIUyIoRP+Sp+bJT7RdQKq2zBLVXyCXqlhlJkHIIt69bItMoLUsW46aHvkKLNAf33BUoD9Seb+gCSTEfK4Dxvhxbi0NEEhM5/VykwVX7sMbG7Af9sddFntwzmt0DrJG/KhFz2W9ufgeuCpvGS61IvKag53TwNB6eTNz0HPhYaoy8EDZqg1VxM5Y9T9BcLla8fugnlDVJGJpWVeIn/daC1d69Xd5q0tWuvpXd3JqKYbjbvOoSkhVWaLySR8NX28ccV1ZuZ2w7iNSnf518UmwMwxrLZ2eKmjSdiCw/M/8VeQGofwW+V7YScFGSLkE7Xhc2Cz4er0TUVL59gAi1hg3rvtvPYWpSAzKFDyqKbRe8b/PunVhMuehVjQS8qjppBixMmBwdHDNFMxy+5ESMOOgihmR1oYpaXy1AzkrUjIUf5EIem742TBAGSgz3g0BXWrp/lhLl1A+x7uo3B4RY3Y/GNUPErgECkC2zPdjvI46FN4m42LvvhetBh1CsJ7CzZR6PVoDMrtMgk5X/7lxPYIBln4o7chEepeZrFyrC1GLgDP4Fvvbde8eou9o+trq3IgsTcMzHbx4VpvFTQQtMNNr6s31/Lk2jeV9dzjbdqmJEwj4IH/ThaU8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR1101MB2070.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(508600001)(110136005)(71200400001)(8936002)(38100700002)(316002)(33656002)(38070700005)(966005)(66556008)(66446008)(122000001)(8676002)(76116006)(64756008)(66946007)(66476007)(55016003)(52536014)(4744005)(6506007)(5660300002)(186003)(26005)(82960400001)(83380400001)(53546011)(7696005)(9686003)(66574015)(86362001)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?gYougrIsdehXikylZ72af0PoSaGjUJHQ1hrJcRK88dUp15fMYENrKgqMsf?=
 =?iso-8859-2?Q?t1Os4mhRwqahq6oc1ODL4B7TyPqQuuzQpK8oSXZeJ3vWZq7jIaeZ4erwDp?=
 =?iso-8859-2?Q?nnN+4M2TU0KGGgHxECkUPchSjWrJAaAMSY54eP0XW/SVyf7zoTzZsA0eC9?=
 =?iso-8859-2?Q?npjohLjp//alLHLZw5q2fFUQ59U+WQ+IW/L0hvQwS2cc2jTDcwxKX2Z1pq?=
 =?iso-8859-2?Q?dKp9kCjYRXane2SzOpWj6Dte+PO/Cbc+x7AEUIoUx0ubBeXhuuXa+GK/5M?=
 =?iso-8859-2?Q?qKL9ebCv0rv38fnZGQzaluJJ5E63Alv2pQej9zlexc6NRAeAoRXb+2+LBR?=
 =?iso-8859-2?Q?86B5ri9Liu6uyDThoAr8ms0YjCBaKSYmN4+Gk6JqCg9lto6ZF2z3MqcxlG?=
 =?iso-8859-2?Q?oHVMAbt42qeYIP8iYai2A4Z9RL4w4r2p6bq/dOF32Cz0UF0PBTdZH95BjM?=
 =?iso-8859-2?Q?wjqqprDniG9KzNBhZ+cCsk5abqSLm0/jw+9nRYHdKVrDmFoCKxPBUtB0Nr?=
 =?iso-8859-2?Q?/srKOQHB5Z1JzWBXRkdvLGAdhUzeqmP8FKdG4DcDMvK9cFixRPe+v9ZmWg?=
 =?iso-8859-2?Q?jSPxFZdCiJ1kxRnVdyoLb01d67MyG7/vd+WiCKCJmez6624yhIouW6u8f0?=
 =?iso-8859-2?Q?W/l/jIi7IsePb3p2lltzHD+QMyElOtPErUBbLL8Y1JOMTBt8K5Fw8G0W1A?=
 =?iso-8859-2?Q?Gv8iTWGYwDwtEYtpzRJpmW4Hc9xPTcobIf3iA1/gHZyEIKIC/0M9M5tE9g?=
 =?iso-8859-2?Q?ZJL6mHvi+TF2dcHvhcyA7qf3QvRa+wiLLJexBosGg74+SdpjiQxhIQ6/RJ?=
 =?iso-8859-2?Q?dGZaZ323beVTie5pHE4ioANX8/IGIkN8pz0esXeY35EYI6HHBCWLdVA/1W?=
 =?iso-8859-2?Q?6WQ4RWSAhCsIPls1i2NrhaJdSSwlfKUHBNxA7rC+hcgm2Ze3yv4PmoHcjL?=
 =?iso-8859-2?Q?kG6bCJ/m/pb6vC9Mv7YlbQe3pjQmgLclTZr7AOvhJGTYj79KD/S8Cu4iz8?=
 =?iso-8859-2?Q?VBKHZS4Q/3WDB3lfGf4pgkmrjLzQgzGVvFmw5jJvI2qmFM75HQ+uK9OX9y?=
 =?iso-8859-2?Q?7Y1h3ZvnzF0u9pT7nGrpqAsGvV+1mJVLryuRBKcQQ4Hk9cUq0eJ82FuF6r?=
 =?iso-8859-2?Q?L7/xKApVLld7TxSyTlJgrsFEyxxX56PvYLWU42qVhPlR5gsJFc8E6T9X/W?=
 =?iso-8859-2?Q?rYLoQT2EmN0r6FHVLAFJ7cSXJVXg+nCV7OGGQagIfDcHvJ4QUjdL8GV2/E?=
 =?iso-8859-2?Q?lKf448yU8IYd2byB6P29uuqxIzQE7RodCjXtFpzCxYOQ10yj+OupV2o0bm?=
 =?iso-8859-2?Q?Tts+iXIeQUt/YFc6hISQHJn/cKS5jR+Sc8ALW9ekkHc5L49lT9z4n8sOk/?=
 =?iso-8859-2?Q?5CeL7FDet5ez6UQ8MpDQHG5epYXm5JH7OyS7oNdsfA3smu/+U1imWv5Iev?=
 =?iso-8859-2?Q?+uVbkcuebAeLuV/LT/+2/27eZe0J966wqqoNC8BdENSlZV2Drntp2QQ4rZ?=
 =?iso-8859-2?Q?NPih19rOFVGRVYd3d2loaJaxZmM5uMVTbO3Ym88O+yxf8c9pd9xuuOgQAp?=
 =?iso-8859-2?Q?h/FYkdWV4c+vMlVeaC/wjJhUKoiczaQ2TGrR656TlXBWgl6xKLAUjhd0Wv?=
 =?iso-8859-2?Q?2TvPc8i6w/X4Kp/IVjaMaBl7sGjq2bseNYX8H73tZT6DcCnPTJ9EmwlA?=
 =?iso-8859-2?Q?=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR1101MB2070.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b78433c8-f8a8-4481-9aa0-08da01c9dc63
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Mar 2022 12:39:32.2978 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1RtrGDghIw3t3a3mwhCYNRIua4SZRIVZUaOIN0uCAkL0uqf+IilBIILTyFyspq5HROyUnAL5u4sXMgt6wDn6FQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3118
X-OriginatorOrg: intel.com
X-Spam-Score: -3.0 (---)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Timo, First of all - package 1.10.4 is already outdated
    (I mistakenly made a release with bugs), I forgot to add packages for 1.10.5.
    Thanks for the reminder :) And as for the key - older packages were signed
    by £ukasz, and I think I haven't been instructed on how to or where to provide
    the key I've generated for myself. 
 
 Content analysis details:   (-3.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
                             medium trust
                             [134.134.136.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nRvbQ-0005Ot-Lp
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
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: tboot-devel-bounces@lists.sourceforge.net

Hi Timo,

First of all - package 1.10.4 is already outdated (I mistakenly made a rele=
ase with bugs), I forgot to add packages for 1.10.5.
Thanks for the reminder :)

And as for the key - older packages were signed by =A3ukasz, and I think I =
haven't been instructed on how to or where to provide the key I've generate=
d for myself.

-Pawe=B3

-----Original Message-----
From: Timo Lindfors <timo.lindfors@iki.fi> =

Sent: Wednesday, March 9, 2022 10:34 AM
To: tboot-devel@lists.sourceforge.net
Subject: [tboot-devel] new PGP for release tarballs?

Hi,

I noticed that the tboot-1.10.4.tar.gz.gpg release is signed using key A16A=
6B495B7ED435EF129F21FF6B78E7EB6D8A8B. Is this key available from somewhere?=
 Previously key 5CECC9E12872F424009D0E0B6F2F48CC4E0B23EF was used.

-Timo



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
