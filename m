Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 22FB34E92ED
	for <lists+tboot-devel@lfdr.de>; Mon, 28 Mar 2022 13:00:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1nYn6I-0004J2-N0; Mon, 28 Mar 2022 10:59:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <pawel.randzio@intel.com>) id 1nYn6H-0004Iw-Qw
 for tboot-devel@lists.sourceforge.net; Mon, 28 Mar 2022 10:59:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QaJ8WgSKx52sJK9WP+rqfV1zzq71KNpdOU/sC5TDYu0=; b=Xn5LZf8pvhay/r9MKu+7w/CO4a
 b3hOLt2NI0lgVYq1speF7eM5gNoPlhorajA7+sTbdwrRbFy+DN6+Sc/YKa379phIpsUU5wJQF0lMf
 4AEqOtK5Tt3XTAFp18XkiRgA7lO1FoYVkDXJMZ0+9W5bCINn/y/fLg7oaTxJIedQRnnw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-ID:Date:Subject:CC:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=QaJ8WgSKx52sJK9WP+rqfV1zzq71KNpdOU/sC5TDYu0=; b=Y
 Pe8h7GWWNgY77Nlplf74GTe2VJtvBRiD/tbksG/UUxBMQDbDn9MbzOKg0N+ZuUHsu/GFKjPECjVB0
 OUpGk08BgPHcgNAcmDuYq5T+P683MXM2ZJ2mS/rlwKXGGnLbBtFUjSeKqMvR+Xsc99SKWNPz9AS9z
 fcaUm92e6mv2l3eU=;
Received: from mga12.intel.com ([192.55.52.136])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nYn6D-00EYAb-DL
 for tboot-devel@lists.sourceforge.net; Mon, 28 Mar 2022 10:59:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648465189; x=1680001189;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=oj75fnCDzRg+7hH4X81yJbSFn2F6EAEa2xrrdilkCwI=;
 b=IYao2GL3avYPu0rAhTdbdzqBYrRXEVg8MmU50X6JkTxWWdVYCOHj3jWu
 4NFAwPV6VzZl6nEKhggFENI3HuFkC8JHzZcEHxmPEkZv3uPefuTGAKQJG
 h35WqRhfG3A4CMC7JcKFEk5ExvtPJpXWuoVVdSL+hNXaSPtkultfQWny3
 WgsbufkYXZ+hUKEDjC6I6fLGU2Wy6fYKwlLS8TUnAnSL/hfmCE9GzcHWI
 47jFpezhxp3sJYdPRw9hTrse9ngYWU4riAMOh2XMzbL2/N7FCj3uKUy1H
 sXwUH0WzE6LTXzB35mI7XQ8cR4bQwkBG4IfMdcEgWSHygiqwlhMfVE8Nt Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10299"; a="238902979"
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; 
 d="scan'208,217";a="238902979"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 03:59:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; 
 d="scan'208,217";a="787184783"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga006.fm.intel.com with ESMTP; 28 Mar 2022 03:59:43 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 28 Mar 2022 03:59:42 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 28 Mar 2022 03:59:42 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 28 Mar 2022 03:59:42 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Mon, 28 Mar 2022 03:59:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mb4cFlNiBApOCXUOJb5jVAIUwP6ZVgwPRDDkTjWsAm/92cX9HNUfxeNVddcwwHjhtWMksMJbYGkmHiX8J0J5Ypat3SW3izB6hTFZiXNH+ZEiuqEsQwn0BfoAd8L1dfDLzOhAykOt5+WFGldYxvxB0SYgugX7Hfqho7+ABJsCh3CTVL8VSZRLicJ7VsUXqNSRUDP08di506z/2QL5X+Tld4XOwQHBZBHWw/SFRFzbspvxIUAylt6PyZ17UXi+7tfEeZs9ESusiBBv5q0c59VQrMVSdnZrcxY3dzed2CVHxWCWw4v6j89zYmJXaMIAbsC9j+EAwg4t5d+v9iU0wpJc0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eYjXCcA+vPC+Pj+EP5ejHYq9kLXFoWogXNL/GWzlXHw=;
 b=FAnL/xQbEBK1ATROqrqZH2wbjCN0l0q+axmfvGujwVb45gY6GQngGvRlJWuu0oxWgQ9YYeX8+I5ytIRejqH2iUDgNBfgRcEOzLZ+btvUk6GBbC2vAIPXz4hxrtp9nKXR0+DuXG93e2rMtRwIa3k0QNp5kg9152mPYB6Vgg65iZlSQpfVRuhDXRMdjZbdHczNejR05vaEXi2/HJRkVvs8K3SKrbcQAe4DPYsQyUuLXacC7KXE6G8LvzcniYcMH/M80ow0ol370HytxcV3Y6zKMRkf/WwR7tTwoc31Vo4ydANxau+PxxbqZxABZWS9p+ZQZZbrqPEUDdjOlen/r3R0GA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR1101MB2070.namprd11.prod.outlook.com
 (2603:10b6:910:1c::17) by CH2PR11MB4262.namprd11.prod.outlook.com
 (2603:10b6:610:42::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5102.19; Mon, 28 Mar
 2022 10:59:39 +0000
Received: from CY4PR1101MB2070.namprd11.prod.outlook.com
 ([fe80::5cc1:57bd:1689:c5a2]) by CY4PR1101MB2070.namprd11.prod.outlook.com
 ([fe80::5cc1:57bd:1689:c5a2%2]) with mapi id 15.20.5102.023; Mon, 28 Mar 2022
 10:59:39 +0000
From: "Randzio, Pawel" <pawel.randzio@intel.com>
To: "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Thread-Topic: Trenchboot is looking for reviewers
Thread-Index: AdhCkZWwjFhSxEq+SCSgeIQKuJS4yA==
Date: Mon, 28 Mar 2022 10:59:39 +0000
Message-ID: <CY4PR1101MB2070E7920E7E07F13330FC40EB1D9@CY4PR1101MB2070.namprd11.prod.outlook.com>
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
x-ms-office365-filtering-correlation-id: e9e14835-0a9f-4b39-018b-08da10aa0e5e
x-ms-traffictypediagnostic: CH2PR11MB4262:EE_
x-microsoft-antispam-prvs: <CH2PR11MB42623E18AB1433C60168EFA4EB1D9@CH2PR11MB4262.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: e5WIdKcmZFs7nf9UDSGZ0pr0lk/y+VzO9dC7IqOf8DxYoxNVUqE+HU4OJicNZzUvW3pJla5ooqFF+ZCLffpDRZ2+Un2LXfis7N15lWJvvI36DBGYS50OYfk5mgudI6yYnp7TGI5a+7YBKHkTkeR0lXL/j6aBa6HXrugreG3Myu5qVwbuE57J52BETAt30TjxtUKtexsqr1X4hPkfwED7mJy3w1CO98UdYPtzJ6uWMohUcqJsb7inNFR7sjQl08JPQhzsAmjXWjCMTSBQdiK06U+3iVhfGYkb4cWOXnRfMeUj2qI/wBDoh3EBx4YUih/Etg84WBnQvFMgZjG9dsXJgSnCB3lB0BGQN+WZFTGA9oZJFDY8bHWtBpminukCX+Z8bze19wXXc1cWFXRb0aFVWUaG39lEzDj+F5giEq8l9+QnLLB17v24lpVlldCCOlBPgG1xhTDbsv7uc5jabF+l7TaXJ2brpLgM/gOcTUSy6PmQIli5zgkE3VcA1VVKTy3Z5OZAS/tOCCrOn3uh0+pwqMOt8M7JO/oKtU3V52G5B+NJtUWMra97lL3hf88MHL6xajjuJuRRjoCH+Vei5hkd47nQ7t0KnNfWRTrGBBCj6m2Jq2CYzbSRGHlvQEKyqIrRgsux1T/pl6bOoHG21in0GY0BX01Rre4DkK48rLTjslGvH/UFoXi1sUs1taEY23FYliArPhJyawTLJpnYjQZhMpe79cNhgnlBGqw+xc37LLogxM9fkMYEcHimEv0iVNAUv/larZQGjkybfti2OMYJH2GLp3SKF4HcCNEGRzo8QlqGHi3k4TC4GmdUXs1MbaZ9p76qRQZU0YexNg0+Czefmg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR1101MB2070.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(76116006)(2906002)(66946007)(33656002)(508600001)(64756008)(8676002)(66446008)(66476007)(55016003)(6916009)(966005)(66556008)(86362001)(71200400001)(9686003)(6506007)(316002)(7696005)(82960400001)(4326008)(122000001)(186003)(26005)(38070700005)(166002)(5660300002)(8936002)(52536014)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?1eNVMf4hPpjW0KmJAkDwFt6EHktnmkw48zYVOFGbURQnLHGMMFiZLKD9VT?=
 =?iso-8859-2?Q?lh7ccT7fEukvV7NCPQfIN+kHunfpIJ9094Pztossm438VphH3iiOJzYnE3?=
 =?iso-8859-2?Q?JZ7WhqqIPyIbwdXb9CW7TKe94amvcbaqMaGdcpUBD5Be9/ZdTacxZXCDv1?=
 =?iso-8859-2?Q?H70Eds5k8NxS4Oa6kSMtuILHDvZqtW3eEHSmRIzt/Yw9q8kqSBwnNNVmfM?=
 =?iso-8859-2?Q?vDQ2jcDHPGk47WnnEtsYZDHJeZnJwKaybZ8aoFM+8sb2LpdXwO8sGXU2Qc?=
 =?iso-8859-2?Q?BdlwG4uNaads5kgGiibxXGzV1HAOUkhSGNxfVX9OyBMpK9WkWKnLRBJc6l?=
 =?iso-8859-2?Q?kK4JrpXR1QFhgRM3vqoK8h5hAo2xpbPOOV8PzERAjoCk8h0n7Rd2yUS/53?=
 =?iso-8859-2?Q?YGwiNEhLG3UQFkKARdmYI4SxapkkuxRz1f7HFQNeEhsfJtfOuERnohjKvh?=
 =?iso-8859-2?Q?cW+qiddu9IMlD8WDRhBrjAjK0VAgSSTpdPHoVbAv1XvUtJSh7imqxPmzs+?=
 =?iso-8859-2?Q?yqOdCZT1L+So/9q7GE0wYCA62A3dBAuFecSORVo4irMw+nRBh4XrS8ekNX?=
 =?iso-8859-2?Q?WF2MFlLdrIRTaqVYEjosl5mj3zJCSmldJdXDmn5DS2dx1Bb6z4ELA2+byR?=
 =?iso-8859-2?Q?FPxJF4ZahNUDBmgXWcyInrYP5BmeUkA57ELo/Ux/yqBxfGbx0AYzJsj3li?=
 =?iso-8859-2?Q?N8uNQ+0PmxFCSZg3uDjYe+TU6AB0d1nbVHsYF2owj+nhp00mOh4wiQRAtA?=
 =?iso-8859-2?Q?xuU1mQCHu4PklOOfdBIKmLK0N0nO6P/5YxyDzkv/hdlnTGR45arj5YGbX3?=
 =?iso-8859-2?Q?HYW4h0rhuNoA4ASiHsQlHU6PgTZoIPd/OpoH++kyIWODHpW3ZJDYQkpDPH?=
 =?iso-8859-2?Q?96l1OUIyssAf11MR2QVlRocQOW/jC7Z3OQZBvI/Q+8PaXe5lhXdB5veydQ?=
 =?iso-8859-2?Q?Q40/+vUZ8H7cBjskEqf5HJ/M6g8f1zTU3r1qyAcR/UdIToYI/Dlt7U/Jzd?=
 =?iso-8859-2?Q?IGyFSgzNfr22lgwIs6bCesVR2UFBGnB6tH1zPRxFgjELAYOrTu/4Dq8g15?=
 =?iso-8859-2?Q?20ffUddLsVfuDD0Df8sERwF6+e8CM7xxHYNNcqwat8yJ80olQN/4t1G837?=
 =?iso-8859-2?Q?PiSYNkS/eid9anQYDoWs1O3MKuQhOBFjwy8yFLvVskWyVVwTF3sONKltfC?=
 =?iso-8859-2?Q?L8bJWmIG5Z54TRVoLret2lBWvuOwPAh6M5AMtJ34GiuXkjUuBXf0ANFQvQ?=
 =?iso-8859-2?Q?EtheiGuWixYbllh6bW+T5yG1aOPN3G9QnbJ1kXQNs7rACFNrAfobpC/JiV?=
 =?iso-8859-2?Q?usakG/2N5rJWTu7JrfKa55gcQpRxxdWB2yAdIbJLh0H/XIVPwu2iZ2S/CL?=
 =?iso-8859-2?Q?dD9FxhmaVt5xKSkrTRV8CBiSbPmj7aTEg6+h+gynek3tk1tezkXRmZUXU7?=
 =?iso-8859-2?Q?Mw/Es1LF2encgAUCjJmm+cNlnEd/yiElGUHqWIXOTH2tOce0PGDkIAwfOW?=
 =?iso-8859-2?Q?p8g7y3xaZ/GA4jSLe2/QrcXzu0sqdyR16wMxW41l7V1QIkOpNPuHfM2Y7a?=
 =?iso-8859-2?Q?6mCAmUhv9beu6+j7bJaQbrdytaA7RuAIv7s9LAZ2XYlgsA3rPBA/896ybe?=
 =?iso-8859-2?Q?xRZW54ZVkd6dJ56fEPV5Ifq8gCIe+40MBZxeugaC50eJq/Q/YTFT9ynD/p?=
 =?iso-8859-2?Q?GmNE1yQzucoMwGXiGDTRzxWKRpPXUFUWoVRklD/bUZ+3a8xYilj8xUHI9K?=
 =?iso-8859-2?Q?PHb0uSU7AE1drEBbA3jxnj+m27E/52RfFW1i3HCtmxCBch6L0olpmorKm8?=
 =?iso-8859-2?Q?2Z/a5Lwu+w=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR1101MB2070.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e9e14835-0a9f-4b39-018b-08da10aa0e5e
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Mar 2022 10:59:39.7404 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vZiMdIkGyVCa0QRDutrrljTkR7/uU5M9PYMTZ6+cOilkTIkVHtn4Mrya/QYylkc+LBXngh+OvUZ2Yiz4v2oc9A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB4262
X-OriginatorOrg: intel.com
X-Spam-Score: -3.2 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi everyone, Sorry for maybe an off-topic announcement, but
 on behalf of Daniel P. Smith here I would like to say: Trenchboot project
 is looking for reviewers with knowledge of Intel TXT Hardware interfaces.
 They've been working on enabling Operating System Kernels and Hypervisors
 to be directly launched by DRTM a [...] 
 Content analysis details:   (-3.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nYn6D-00EYAb-DL
Subject: [tboot-devel] Trenchboot is looking for reviewers
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
Cc: "Daniel P. Smith" <dpsmith@apertussolutions.com>
Content-Type: multipart/mixed; boundary="===============4923816854721464751=="
Errors-To: tboot-devel-bounces@lists.sourceforge.net

--===============4923816854721464751==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY4PR1101MB2070E7920E7E07F13330FC40EB1D9CY4PR1101MB2070_"

--_000_CY4PR1101MB2070E7920E7E07F13330FC40EB1D9CY4PR1101MB2070_
Content-Type: text/plain; charset="iso-8859-2"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Hi everyone,

Sorry for maybe an off-topic announcement, but on behalf of Daniel P. Smith=
 here I would like to say:

Trenchboot project is looking for reviewers with knowledge of Intel TXT Har=
dware interfaces. They've been working on enabling Operating System Kernels=
 and Hypervisors to be directly launched by DRTM across all architectures. =
Their first major upstreaming has been to Linux in the form of Secure Launc=
h capability with the initial implementation supporting Intel's TXT. They'v=
e encountered a challenge in reluctance of kernel maintainers to review a s=
eries of patches as they do not have knowledge of the TXT interface. That i=
s why they wanted to reach out to you and seek individuals willing to take =
up the task of reviewing and replying to the latest series posted on LKML.

Daniel is open to discuss this issue here on the mailing list, on Trenchboo=
t's mailing list or through direct contact.

Helpful links:
Trenchboot project - https://trenchboot.org
LKML - https://lkml.org/lkml/2022/2/18/699
Trenchboot mailing list - https://groups.google.com/g/trenchboot-devel
Daniel's mail address - dpsmith@apertussolutions.com<mailto:dpsmith@apertus=
solutions.com>

Thanks,
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

--_000_CY4PR1101MB2070E7920E7E07F13330FC40EB1D9CY4PR1101MB2070_
Content-Type: text/html; charset="iso-8859-2"
MIME-Version: 1.0
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
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:2005694927;
	mso-list-type:hybrid;
	mso-list-template-ids:2102160606 1931007936 67698691 67698693 67698689 676=
98691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:Calibri;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
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
<p class=3D"MsoNormal"><span lang=3D"PL">Hi everyone,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"PL"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal">Sorry for maybe an off-topic announcement, but on be=
half of Daniel P. Smith here I would like to say:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Trenchboot project is looking for reviewers with kno=
wledge of Intel TXT Hardware interfaces. They&#8217;ve been working on enab=
ling Operating System Kernels and Hypervisors to be directly launched by DR=
TM across all architectures. Their first
 major upstreaming has been to Linux in the form of Secure Launch capabilit=
y with the initial implementation supporting Intel&#8217;s TXT. They&#8217;=
ve encountered a challenge in reluctance of kernel maintainers to review a =
series of patches as they do not have knowledge
 of the TXT interface. That is why they wanted to reach out to you and seek=
 individuals willing to take up the task of reviewing and replying to the l=
atest series posted on LKML.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Daniel is open to discuss this issue here on the mai=
ling list, on Trenchboot&#8217;s mailing list or through direct contact.<o:=
p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Helpful links:<br>
Trenchboot project &#8211; <a href=3D"https://trenchboot.org">https://trenc=
hboot.org</a><o:p></o:p></p>
<p class=3D"MsoNormal">LKML &#8211; <a href=3D"https://lkml.org/lkml/2022/2=
/18/699">https://lkml.org/lkml/2022/2/18/699</a><o:p></o:p></p>
<p class=3D"MsoNormal">Trenchboot mailing list &#8211; <a href=3D"https://g=
roups.google.com/g/trenchboot-devel">
https://groups.google.com/g/trenchboot-devel</a><o:p></o:p></p>
<p class=3D"MsoNormal">Daniel&#8217;s mail address &#8211; <a href=3D"mailt=
o:dpsmith@apertussolutions.com">
dpsmith@apertussolutions.com</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">-Pawe=B3<o:p></o:p></p>
</div>
<p>
    <hr/>
    <strong style=3D"line-height: 11.25pt;">
        <span style=3D"font-size: 9pt; color: #595959;">
            <span style=3D"font-family: 'Arial Narrow', sans-serif;">Intel =
Technology Poland sp. z o.o.<br>
            </span>
        </span>
    </strong>
    <span style=3D"color:#595959; font-family: 'Arial Narrow', sans-serif; =
font-size: 9pt; line-height: 11.25pt;">
        ul. S&#322;owackiego 173 | 80-298 Gda&#324;sk | S&#261;d Rejonowy G=
da&#324;sk P&#243;&#322;noc | VII Wydzia&#322; Gospodarczy Krajowego Rejest=
ru S&#261;dowego - KRS 101882 | NIP 957-07-52-316 | Kapita&#322; zak&#322;a=
dowy 200.000 PLN.
    </span>
</p>
<p>
    <span style=3D"font-size:8.0pt;  font-family:'Arial Narrow',sans-serif;=
 mso-fareast-font-family: 'Times New Roman';mso-bidi-font-family:Arial; col=
or:#595959; mso-ansi-language:EN-US; mso-fareast-language:EN-US; mso-bidi-l=
anguage: PL-PL">
        Ta wiadomo&#347;&#263; wraz z za&#322;&#261;cznikami jest przeznacz=
ona dla okre&#347;lonego adresata i mo&#380;e zawiera&#263; informacje pouf=
ne. W razie przypadkowego otrzymania tej wiadomo&#347;ci, prosimy o powiado=
mienie nadawcy oraz trwa&#322;e jej usuni&#281;cie; jakiekolwiek przegl&#26=
1;danie lub rozpowszechnianie jest zabronione.<br>
        This e-mail and any attachments may contain confidential material f=
or the sole use of the intended recipient(s). If you are not the intended r=
ecipient, please contact the sender and delete all copies; any review or di=
stribution by others is strictly prohibited.
    </span>
</p>
<p class=3D"MsoNormal"><o:p></o:p></p>
</body>
</html>

--_000_CY4PR1101MB2070E7920E7E07F13330FC40EB1D9CY4PR1101MB2070_--



--===============4923816854721464751==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============4923816854721464751==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel

--===============4923816854721464751==--


