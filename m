Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 56E9A46743A
	for <lists+tboot-devel@lfdr.de>; Fri,  3 Dec 2021 10:43:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1mt56T-00026R-0L; Fri, 03 Dec 2021 09:43:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <alex.eydelberg@intel.com>) id 1mssWI-0004Fk-74
 for tboot-devel@lists.sourceforge.net; Thu, 02 Dec 2021 20:17:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=p5Bmd0TbpLACeeH2p0CJEFXA8vSw5E6932uWbLlTnmw=; b=k8ct+m10oZ+NuOhQP+HS6hFVda
 UHJu/McZqVzPmeZlD6q6h9K/Hh1lndnO0msvn8Y4kRybUFNCbM//PcRSry1vDnITm3OCsWhN+lbXb
 rOPt4IPDv1ZGOo0ALaED7Y0iCPIdvJS0E1QetJhux/K4lmSRoagDd1KXZ2lEQSxWXkgM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=p5Bmd0TbpLACeeH2p0CJEFXA8vSw5E6932uWbLlTnmw=; b=gBPCgITAv0otTLifFgsEXop/ul
 hKLXeVdlnpW6g01eLbHS+cUHH0xgUgRHDfXW2lzls2lnmrHNcjis/r/8MvcmwwoPln1elFjjimFZ3
 /kZJ+XLvNihrE+kIkbFJ2J17hxUBWO6wGNsbDOpGDBiA1+OvE0I8EzE0ls6Sg+WDHcKY=;
Received: from mga07.intel.com ([134.134.136.100])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mssWD-0005Sm-1u
 for tboot-devel@lists.sourceforge.net; Thu, 02 Dec 2021 20:17:30 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10185"; a="300201183"
X-IronPort-AV: E=Sophos;i="5.87,282,1631602800"; 
 d="scan'208,217";a="300201183"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2021 12:17:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,282,1631602800"; 
 d="scan'208,217";a="541362814"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP; 02 Dec 2021 12:17:19 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 2 Dec 2021 12:17:18 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 2 Dec 2021 12:17:18 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Thu, 2 Dec 2021 12:17:18 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 2 Dec 2021 12:17:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AEyyCTA8OhUeqDgJbgu4vc4Bt62/XbzJYzpirRRSic37pmSTLqAejZRJUPIuUltXRCs9+L491E2CsV8DI+Eh5389sEhRTS0In9snMsxf6VFrnoVBIG3/bTTAljDUZoPD64Oq+ap/Y/JJ8mh+jYffC3H5An4E9J3IETc6Qr15mch+l/kmr2BXjtJpk/k8SGcYheWjtgigkciSSo/D+Cf886Pyyx+iOe1TFhSwZiiHHsVoE+g8Loxqow4d1OF5yS98WwpFfvE5jlcXS3yLEiVugOvQrsDtVICvnj+gUV9TTfC/+0HD+Z6x9F9Cga2ZDkdqGmEjoJUyH4ZKDYgJCWy+fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p5Bmd0TbpLACeeH2p0CJEFXA8vSw5E6932uWbLlTnmw=;
 b=GV6c3dmUCBBbkgbhn4sTr6Y93dDVbr7V8ZAG5GNOnU4Fqztfzdrbt6jJbqkUmpOfRdasRMAMyeVabgnnCdioN1agtuRaAXoxkLuvLSsG0tlPUHLDr4WIsXMHA2e0X5aOaw0lBaz2+Op+iIemIfF5mgj4kIP3fH8UFGZsj0KwYu1fRQTZv4Zqjo49HWjYugIcM+1HkqJWrqWRZ7vHnJfaug/VUqzsplvyhXyAtrbZ0iFCVVH4ln5QS3qzu4D65HVgdSw79rgGi4bXC68eSE4MiekHBRD17jX0inH2PmYXWdNo9W2OLbN+gQ2nAE1eH++UvWcX0WYJMN+yQEAKplFISA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=p5Bmd0TbpLACeeH2p0CJEFXA8vSw5E6932uWbLlTnmw=;
 b=NcmnIsbnr5ftJrfzhjFf/2pNyTI7FftemTCab3rZTaWwi8oN7oKc+Fk9ogRsU+oaA3h+I1jC9cWJqSnioH4m3dX/3pyWUHj21+vHnEcbptr6WjLMwRFjLt4mMHlnv/XcYMC1BLnuaJzz9I58SnjoYEzSYFj01KcA36GggUFth+I=
Received: from BYAPR11MB3110.namprd11.prod.outlook.com (2603:10b6:a03:8a::23)
 by BYAPR11MB3447.namprd11.prod.outlook.com (2603:10b6:a03:1d::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.23; Thu, 2 Dec
 2021 20:17:16 +0000
Received: from BYAPR11MB3110.namprd11.prod.outlook.com
 ([fe80::b4c6:2557:3aea:75af]) by BYAPR11MB3110.namprd11.prod.outlook.com
 ([fe80::b4c6:2557:3aea:75af%4]) with mapi id 15.20.4734.028; Thu, 2 Dec 2021
 20:17:16 +0000
From: "Eydelberg, Alex" <alex.eydelberg@intel.com>
To: "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Thread-Topic: The rationale for defeaturing "Maximum Agility" option | PCR
 Extended Policy Support
Thread-Index: AdfnV0Q374vtBc/7QtmwCojX6F5XqwAWOvWQ
Date: Thu, 2 Dec 2021 20:17:16 +0000
Message-ID: <BYAPR11MB3110AF2C3FCDBDA1A595790692699@BYAPR11MB3110.namprd11.prod.outlook.com>
References: <MN2PR11MB37092D4E18130ED9192CC63BEB699@MN2PR11MB3709.namprd11.prod.outlook.com>
In-Reply-To: <MN2PR11MB37092D4E18130ED9192CC63BEB699@MN2PR11MB3709.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 197bfeb3-57fb-44f4-9f63-08d9b5d0bc14
x-ms-traffictypediagnostic: BYAPR11MB3447:
x-microsoft-antispam-prvs: <BYAPR11MB344791898E4263179111AC9A92699@BYAPR11MB3447.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dNU7NoqY9UUn0oPAWKbEp4R1dVRLP5+B/YSfKA2FYEWASNyZiy4H4NCwMcWV3T5k+nTUeV0efBAA+b6t5FjtgOibzNyFRhns2aKR2Jt6zbmsoKMEIzg32dQlRLnhRpSLl4OOkmm1v/4NV9Hcpp6bB7UJc4TcW4T5BTMpxaqFdhOmz/CBXi0F1XFYPGVMCqilKsXacoRPwqhJL0xmbqAcmrI/4kzEHzPwRhSz95ktZYFQdKfgGnqwqcRYn5/JEbtAONQAmCEJ6viq4Q/uj1LhS1amRKdUYG9rgM/whQOaRuRU5dhWO9FuxM0YS1H0QsgNBeesgM0mUllY1Zow3Jqh6u1dOl3A5OTL/UP1SjVellw9rjS8xPm4AXfD0wBEK1P3vs59gy4stm338i4SsLT58rIOrWz4PdCF2smCZCqylUz2smgiPwfL8aLuLDsGT/Cy+soCLzV8nZU614dtj2oBwUIouf/HrPPXahUMv/tqGQa/lIbGBcEWnzxZP4JCBuHOyPTnk9Y9ncplaRClwp4Co9qvdz17ENqhQgCabPz0q93VyzkJMnKyH2prYmRETTAfAUg4QVc6D0+2j1iIt/rbSPhGi4gvUm2N/oPzuRRBgzfGmzBZitM34+f5I9tLtbRiGPX2FQOR7sB+diPRPta3IT/uRsS94x2uLVV8zw8ICKwPLdONGtHX2OfzFTYVDtHn3HCF8Fw4RrmgdIMsabdWjA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3110.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(33656002)(82960400001)(316002)(186003)(55016003)(71200400001)(8676002)(83380400001)(38100700002)(26005)(122000001)(8936002)(6506007)(9326002)(2906002)(7696005)(52536014)(53546011)(5660300002)(66446008)(86362001)(508600001)(9686003)(64756008)(66556008)(66476007)(38070700005)(76116006)(66946007)(6916009);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?hP+NJpk48hEk+vGmJ4QieXj/CYcRamkeqTvFTFJuGzwpW8vFJOF3CBGhUx?=
 =?iso-8859-2?Q?j4wu630hN8B7DCsqHa26SvGHnR+V6PdM0CgwZm1WwLnr0zkjt42ubZlHrH?=
 =?iso-8859-2?Q?hXO59t4G2TXoAwBw6cbtvgX1KaHxhUARjDKYkHfBTZiDk9MFsWjY/Q8TBy?=
 =?iso-8859-2?Q?Muah+yo2lYXdiigPuJr8zVXtI2cMR+e9H+f25svJAsDzII8HzIGb7okcSm?=
 =?iso-8859-2?Q?+Ot/uzPRUq0IbvWmdbvyWBxAVOIxjj5yKppcC5ndXMFNceaMfqnSdMJXTc?=
 =?iso-8859-2?Q?8Qg9rU1FgcdM2gFYEluZLwB/wrLP+FeJ6Apx/2U0b93pGeD9GoMQV7rYzH?=
 =?iso-8859-2?Q?a2SC/h/kKOACYWKk8+jcs6O0rfUJYlJ62nO3Bv39tVWZG3c5LtB5skpGGc?=
 =?iso-8859-2?Q?+7EGjpXI8zPjpe7oGm9K7Ows1JSL4Zqj5HAUFMTBvUllIIpm24icvQEJG8?=
 =?iso-8859-2?Q?Z+GrcCP6EBoVEaK2VuSo8QqEmSZQD0A8abA7REl0HqF894hR+LMyMLUwM/?=
 =?iso-8859-2?Q?JtKlAA39EOdM7rX/89ljiqYP99Pt/+Q2W8bxANYFAqiZ3Jk5vH4ufFYI4Z?=
 =?iso-8859-2?Q?gjZMyHQxaRSHaIZT5Bjw/jS92SNuLj/cELr4lHP08S/3Ds/aj0ejuAnDr+?=
 =?iso-8859-2?Q?HrHn+DiJQadvUZSkec7hmQI2QlH0Nd524ZK7jcRkK7FjHZJfc1nNpMZ6NP?=
 =?iso-8859-2?Q?f9Yt4ctIa2GaskYfjhRb9Ygl39/ulbli29R2XTINuw1uQBq6YBGTprQdEv?=
 =?iso-8859-2?Q?78w8TByB4zgH1Hy+aVKTNLiXuoG3csyjdaz0EoEM649BlOAEUwycjQuE7K?=
 =?iso-8859-2?Q?CrTLNbUDm5Sp9ZGiSaf2jFU8kJ+1V1Uq5rMDQX3m5qX6e/lElndLcJoVqK?=
 =?iso-8859-2?Q?oTd32XfyfG/+XBNETgV2v8v6BXbQ5slUMyEKtOphFn59zm5vldfn/0ZL3l?=
 =?iso-8859-2?Q?9tfJsVR1LLusZdr1IUf2xfb7StG/koeUhyKVtlDEBVY6JDf236KRMEqHfx?=
 =?iso-8859-2?Q?VFk7HWTBgAAKTomo2lRNiVFpeawk9Wq0wWJkOctaqq6nH8H5jV2hyL+R0j?=
 =?iso-8859-2?Q?cnrdYIWUZL/pZqbA5otJN0Y3d/LvlKsIFrV0f6G2+h/9RD8omTJOUan0kE?=
 =?iso-8859-2?Q?qotw8bu0dtmPq1H8lyicE0vkYyDTb1yseDrU27oBUtNzKk40hETq0HQ/s1?=
 =?iso-8859-2?Q?mvDT01bTwwMLnKFyxaiWtaqp1KV5YVODXupfuiWgPkpJaK7uC3NrU/NIZT?=
 =?iso-8859-2?Q?dWCOt0ZKwBd5LwzL8yj+LhKCpPms0n+0TJ/4fUp9rRxi138qgXueriDY7w?=
 =?iso-8859-2?Q?ZNg3tVcNholRsARr8LfR937N8Qbty/9QenKhtjLQX+rnLB08G+bAxVUsE1?=
 =?iso-8859-2?Q?xc5UUJGmn2XUhS+C//4ZpzVGdzKTxFIO0wOJAI1Qhf9YKKr2FtxB8DN4hB?=
 =?iso-8859-2?Q?exRtL1ITHdNGxZhIEU6FEaVbQCEBq5GPRaPSY+1yHaok6z+oHmOqcbaUsl?=
 =?iso-8859-2?Q?XNQBftJmFjk73622q9u2G93X/D69/+jHKwhOMzS/G33+nK+59c4wsKIXHL?=
 =?iso-8859-2?Q?2HG9suuF2eXVPG4KR20PO1FXYKs82/PAlsP2WzL8Z0ROxzO9idqhvOBup3?=
 =?iso-8859-2?Q?2UtXAEg1+7lhpi+wl/yiTZS8/eb6zCBUxg0u+hJ80NqSrtrzkztnwIhseh?=
 =?iso-8859-2?Q?5SjDVSzsQjqzSRKRcTndsAOjwf8zvsC0lzfJMkPV//GEXEfLk9dJm6xW37?=
 =?iso-8859-2?Q?D0Og=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3110.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 197bfeb3-57fb-44f4-9f63-08d9b5d0bc14
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Dec 2021 20:17:16.2149 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7Psd3EEF2Yts8SPR4rRM1/Os+sEMGevg+iI9HmErqdJGS4too6rYjFSvV61CrGzYO3scB3OO7pUwo9aNkN7p4VZDB3nIMynN0yL0yjnyl4Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3447
X-OriginatorOrg: intel.com
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 I have initiated the query of the TBOOT extpol option's
 usefulness which Pawel have broadcasted (thank you, Pawel and everybody who
 replied) and have received few questions below. > "No objections, but we
 would be interested in understanding the root rationale for the change."<
 > "Why would you not just switch the default and leave the Agility as an
 option?" < > "I'm also inter [...] 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1mssWD-0005Sm-1u
X-Mailman-Approved-At: Fri, 03 Dec 2021 09:43:39 +0000
Subject: [tboot-devel] FW: The rationale for defeaturing "Maximum Agility"
 option | PCR Extended Policy Support
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
Content-Type: multipart/mixed; boundary="===============4379840310277355522=="
Errors-To: tboot-devel-bounces@lists.sourceforge.net

--===============4379840310277355522==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BYAPR11MB3110AF2C3FCDBDA1A595790692699BYAPR11MB3110namp_"

--_000_BYAPR11MB3110AF2C3FCDBDA1A595790692699BYAPR11MB3110namp_
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable

Hello,


I have initiated the query of the TBOOT extpol option's  usefulness which P=
awel have broadcasted (thank you, Pawel and everybody who replied) and have=
 received few questions below.

> "No objections, but we would be interested in understanding the root rati=
onale for the change."<
> "Why would you not just switch the default and leave the Agility as an op=
tion?" <
> "I'm also interested in the rationale. The change of default I can unders=
tand. I think that most people using tboot use the "extpol" option. I don't=
 understand completely removing agility as an option." <

Let me answer these questions and provide background of the query.


ACM extend policy control was introduced many years ago during architectura=
l adoption of TPM 2.0 family. It is traced back to Q2 of 2015.

At that time there were no TPM samples, no clear understanding of TPM algor=
ithm agility use cases, no fully supported cryptography in our code bases, =
nor potential consequences of PCR bank capping due to insufficient internal=
 crypto support.

In the presence of such uncertainty, introduction of such policy settings s=
eemed to be prudent - allow Users get what they prefer as measurements rega=
rdless of TPM abilities at the expense of performance or get faster service=
 at the expense of loosing of some of the PCR banks which might get capped.

Lots of things changed for the past 6 years.
- we have come up with converged BtG and TXT technologies and our Startup a=
nd SINIT ACMs share lots of code, crypto included.
- we have full embedded crypto code supporting all hashing and signature al=
gorithms we need.
Situation when with Max Perf policy setting we might need to get PCR bank c=
apped due to lack of internal support is unlikely.
- Max Agility setting is unacceptable for Startup ACM and is deprecated in =
it. This is due to strong boot performance requirements.
- SINIT execution time with Max Agility setting is essentially longer, but =
we have not received any such complaints or acceleration requests.
This bears the innuendo that this setting is not used in practice.
- Internally support of this policy engenders essential complexity, includi=
ng set of supported TPM2 commands, way how we maintain event log, execution=
 flow differences etc.
This is burden which I would like to drop if possible, harmonize support be=
tween two ACMs, remove potentially unneeded externally visible knob, solidi=
fy ACM core.

With all of the above reasoning I was not going to change the default setti=
ng.
I understand that it is awkward to leave default =3D=3D 1 which means Max P=
erf but changing it to 0 is onerous.
(This default BTW expresses our vision 6 years ago that Max Agility is pref=
erred selection ! Real life performance demands have changed it.)
This is very inertial legacy as it is OS visible change and not only for Tb=
oot but also for a Windows world and multiple other products.

What I intend to do is simply formally defeature this policy setting and re=
main default to be =3D=3D 1, which appears to be current practice.
Most likely internally in SINIT I will simply ignore this setting and will =
not generate an error if it is all of a sudden set =3D=3D 0. I do not want =
to multiply security unrelated error situations.
Internally SINIT will invariantly use Max Perf regardless of this setting. =
As soon as there are no PCR bank capping this will not produce visible diff=
erence.
In extreme case when capping occurs and is undesirable it will always be po=
ssible to enable missing crypto algorithm in SINIT code. All of them are bu=
ild controlled.

Thank you,

-ae

From: Randzio, Pawel <pawel.randzio@intel.com>
Sent: Thursday, December 2, 2021 12:34 AM
To: Eydelberg, Alex <alex.eydelberg@intel.com>
Cc: Mowka, Mateusz <mateusz.mowka@intel.com>
Subject: The rationale for defeaturing "Maximum Agility" option | PCR Exten=
ded Policy Support

Hi Alex,

I sent out a message through the TBOOT mailing list as you asked. There's s=
ome questions that came up in response to the announcement.

Greg W. Wettstein greg@wind.enjellic.com<mailto:greg@wind.enjellic.com>
> "No objections, but we would be interested in understanding the root rati=
onale for the change."

Travis Gilbert travis.gilbert@dell.com<mailto:travis.gilbert@dell.com>
> "Why would you not just switch the default and leave the Agility as an op=
tion?"
> "I'm also interested in the rationale. The change of default I can unders=
tand. I think that most people using tboot use the "extpol" option. I don't=
 understand completely removing agility as an option."

Could I ask you to respond to these questions? Best if you could send an e-=
mail with the answers straight to the mailing list tboot-devel@lists.source=
forge.net<mailto:tboot-devel@lists.sourceforge.net> and I'll get it through=
 there.

Thanks,
--Pawe=B3

---------------------------------------------------------------------------=
------------
---------------------------------------------------------------------------=
------------

MY ORIGINAL ANNOUNCEMENT FOR REFERENCE:
> Hello,
>
> I would like to inform you that there are plans to defeature TBOOT extpol=
 option and fix it to the current default.
>
> The change affects TPM2.0 PCR Extended Policy Support. It has two options=
:
> - "Maximum Agility" - hashes computed using TPM2.0
> - "Maximum Performance" - hashes computed using software, not TPM usage
>
> We want to defeature the "Maximum Agility" option and leave only "Maximum=
 Performance" (current default).
>
> If you have any objections, please inform me.
>
> Thanks,
> --Pawe=B3 Randzio

--_000_BYAPR11MB3110AF2C3FCDBDA1A595790692699BYAPR11MB3110namp_
Content-Type: text/html; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
2">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Intel Clear";
	panose-1:2 11 6 4 2 2 3 2 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
span.EmailStyle19
	{mso-style-type:personal-compose;
	font-family:"Cambria Math",serif;
	color:windowtext;
	font-weight:normal;
	font-style:normal;
	text-decoration:none none;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Cambria Math&quot;,=
serif;color:#1F497D">Hello,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Cambria Math&quot;,=
serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Cambria Math&quot;,=
serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Cambria Math&quot;,=
serif;color:#1F497D">I have initiated the query of the TBOOT extpol option&=
#8217;s &nbsp;usefulness which Pawel have broadcasted (thank you, Pawel and=
 everybody who replied) and have received few questions below.<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Cambria Math&quot;,=
serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal">&gt; &#8220;No objections, but we would be intereste=
d in understanding the root rationale for the change.&#8221;&lt;<span style=
=3D"font-family:&quot;Cambria Math&quot;,serif;color:#1F497D"><o:p></o:p></=
span></p>
<p class=3D"MsoNormal">&gt; &#8220;Why would you not just switch the defaul=
t and leave the Agility as an option?&#8221; &lt;<br>
&gt; &#8220;I&#8217;m also interested in the rationale. The change of defau=
lt I can understand. I think that most people using tboot use the &#8220;ex=
tpol&#8221; option. I don&#8217;t understand completely removing agility as=
 an option.&#8221; &lt;<br>
<br>
<span style=3D"font-family:&quot;Cambria Math&quot;,serif;color:#1F497D"><o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Cambria Math&quot;,=
serif;color:#1F497D">Let me answer these questions and provide background o=
f the query.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Cambria Math&quot;,=
serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Cambria Math&quot;,=
serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Cambria Math&quot;,=
serif;color:#1F497D">ACM extend policy control was introduced many years ag=
o during architectural adoption of TPM 2.0 family. It is traced back to Q2 =
of 2015.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Cambria Math&quot;,=
serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Cambria Math&quot;,=
serif;color:#1F497D">At that time there were no TPM samples, no clear under=
standing of TPM algorithm agility use cases, no fully supported cryptograph=
y in our code bases, nor potential consequences
 of PCR bank capping due to insufficient internal crypto support. <o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Cambria Math&quot;,=
serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Cambria Math&quot;,=
serif;color:#1F497D">In the presence of such uncertainty, introduction of s=
uch policy settings seemed to be prudent &#8211; allow Users get what they =
prefer as measurements regardless of TPM abilities at
 the expense of performance or get faster service at the expense of loosing=
 of some of the PCR banks which might get capped.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Cambria Math&quot;,=
serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Cambria Math&quot;,=
serif;color:#1F497D">Lots of things changed for the past 6 years.<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Cambria Math&quot;,=
serif;color:#1F497D">&#8211; we have come up with converged BtG and TXT tec=
hnologies and our Startup and SINIT ACMs share lots of code, crypto include=
d.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Cambria Math&quot;,=
serif;color:#1F497D">&#8211; we have full embedded crypto code supporting a=
ll hashing and signature algorithms we need.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Cambria Math&quot;,=
serif;color:#1F497D">Situation when with Max Perf policy setting we might n=
eed to get PCR bank capped due to lack of internal support is unlikely.<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Cambria Math&quot;,=
serif;color:#1F497D">&#8211; Max Agility setting is unacceptable for Startu=
p ACM and is deprecated in it. This is due to strong boot performance requi=
rements.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Cambria Math&quot;,=
serif;color:#1F497D">&#8211; SINIT execution time with Max Agility setting =
is essentially longer, but we have not received any such complaints or acce=
leration requests.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Cambria Math&quot;,=
serif;color:#1F497D">This bears the innuendo that this setting is not used =
in practice.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Cambria Math&quot;,=
serif;color:#1F497D">&#8211; Internally support of this policy engenders es=
sential complexity, including set of supported TPM2 commands, way how we ma=
intain event log, execution flow differences etc.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Cambria Math&quot;,=
serif;color:#1F497D">This is burden which I would like to drop if possible,=
 harmonize support between two ACMs, remove potentially unneeded externally=
 visible knob, solidify ACM core.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Cambria Math&quot;,=
serif;color:#1F497D">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Cambria Math&quot;,=
serif;color:#1F497D">With all of the above reasoning I was not going to cha=
nge the default setting.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Cambria Math&quot;,=
serif;color:#1F497D">I understand that it is awkward to leave default =3D=
=3D 1 which means Max Perf but changing it to 0 is onerous.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Cambria Math&quot;,=
serif;color:#1F497D">(This default BTW expresses our vision 6 years ago tha=
t Max Agility is preferred selection ! Real life performance demands have c=
hanged it.)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Cambria Math&quot;,=
serif;color:#1F497D">This is very inertial legacy as it is OS visible chang=
e and not only for Tboot but also for a Windows world and multiple other pr=
oducts.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Cambria Math&quot;,=
serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Cambria Math&quot;,=
serif;color:#1F497D">What I intend to do is simply formally defeature this =
policy setting and remain default to be =3D=3D 1, which appears to be curre=
nt practice.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Cambria Math&quot;,=
serif;color:#1F497D">Most likely internally in SINIT I will simply ignore t=
his setting and will not generate an error if it is all of a sudden set =3D=
=3D 0. I do not want to multiply security unrelated
 error situations.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Cambria Math&quot;,=
serif;color:#1F497D">Internally SINIT will invariantly use Max Perf regardl=
ess of this setting. As soon as there are no PCR bank capping this will not=
 produce visible difference.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Cambria Math&quot;,=
serif;color:#1F497D">In extreme case when capping occurs and is undesirable=
 it will always be possible to enable missing crypto algorithm in SINIT cod=
e. All of them are build controlled. &nbsp;&nbsp;&nbsp;&nbsp;<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Cambria Math&quot;,=
serif;color:#1F497D">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Cambria Math&quot;,=
serif;color:#1F497D">Thank you,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Cambria Math&quot;,=
serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Intel Clear&quot;,s=
ans-serif;color:#1F497D">-ae<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Cambria Math&quot;,=
serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><b>From:</b> Randzio, Paw=
el &lt;pawel.randzio@intel.com&gt;
<br>
<b>Sent:</b> Thursday, December 2, 2021 12:34 AM<br>
<b>To:</b> Eydelberg, Alex &lt;alex.eydelberg@intel.com&gt;<br>
<b>Cc:</b> Mowka, Mateusz &lt;mateusz.mowka@intel.com&gt;<br>
<b>Subject:</b> The rationale for defeaturing &quot;Maximum Agility&quot; o=
ption | PCR Extended Policy Support<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span lang=3D"PL">Hi Alex=
,<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span lang=3D"PL"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">I sent out a message thro=
ugh the TBOOT mailing list as you asked. There&#8217;s some questions that =
came up in response to the announcement.<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">Greg W. Wettstein <a href=
=3D"mailto:greg@wind.enjellic.com">
greg@wind.enjellic.com</a><br>
&gt; &#8220;No objections, but we would be interested in understanding the =
root rationale for the change.&#8221;<br>
<br>
Travis Gilbert <a href=3D"mailto:travis.gilbert@dell.com">travis.gilbert@de=
ll.com</a><br>
&gt; &#8220;Why would you not just switch the default and leave the Agility=
 as an option?&#8221;<br>
&gt; &#8220;I&#8217;m also interested in the rationale. The change of defau=
lt I can understand. I think that most people using tboot use the &#8220;ex=
tpol&#8221; option. I don&#8217;t understand completely removing agility as=
 an option.&#8221;<br>
<br>
Could I ask you to respond to these questions? Best if you could send an e-=
mail with the answers straight to the mailing list
<a href=3D"mailto:tboot-devel@lists.sourceforge.net">tboot-devel@lists.sour=
ceforge.net</a> and I&#8217;ll get it through there.<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">--Pawe=B3<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">-------------------------=
--------------------------------------------------------------<o:p></o:p></=
p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">-------------------------=
--------------------------------------------------------------<o:p></o:p></=
p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">MY ORIGINAL ANNOUNCEMENT =
FOR REFERENCE:<br>
&gt; Hello,<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">&gt; I would like to info=
rm you that there are plans to defeature TBOOT extpol option and fix it to =
the current default.<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">&gt; The change affects T=
PM2.0 PCR Extended Policy Support. It has two options:<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">&gt; - &#8220;Maximum Agi=
lity&#8221; &#8211; hashes computed using TPM2.0<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">&gt; - &#8220;Maximum Per=
formance&#8221; &#8211; hashes computed using software, not TPM usage<o:p><=
/o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">&gt; We want to defeature=
 the &#8220;Maximum Agility&#8221; option and leave only &#8220;Maximum Per=
formance&#8221; (current default).<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">&gt; If you have any obje=
ctions, please inform me.<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">&gt; Thanks,<o:p></o:p></=
p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">&gt; --Pawe=B3 Randzio<o:=
p></o:p></p>
</div>
</body>
</html>

--_000_BYAPR11MB3110AF2C3FCDBDA1A595790692699BYAPR11MB3110namp_--


--===============4379840310277355522==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============4379840310277355522==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel

--===============4379840310277355522==--

