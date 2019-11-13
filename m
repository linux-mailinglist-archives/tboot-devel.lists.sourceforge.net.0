Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B23CFB8BB
	for <lists+tboot-devel@lfdr.de>; Wed, 13 Nov 2019 20:23:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:To:Sender:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=V4PmnJ/rVQfGJHF2O+gcVf2FRY7Hw9TM1gHHGDh1XfA=; b=MRcZULC4QD90+/h+FAC9J0R6B
	Me5WD31mMG482dmfc5pRbOf6H9ifBTuxzE/F0C6oNef5AdcX6EH2Nzul6AH5fuLRcfWRA5e4VE5qv
	2alLxAlthun4U4pRr32I1MMTWM1eo7Ib0tPcBcPU6Atu0cPlToB/DTQX1tWdzu8fCevUg=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1iUyF0-0002SC-3y; Wed, 13 Nov 2019 19:23:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pmoore2@cisco.com>) id 1iUyEy-0002R4-9L
 for tboot-devel@lists.sourceforge.net; Wed, 13 Nov 2019 19:23:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
 :Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zI9y7GScFf4gfkpnlkA6+5D58KDjZfWPl9O11z3TsnY=; b=SW1zDLmRBNq0tsaD8Pfg0L+0xj
 BjskO2oxWEFgsFF+JrU3hM+hNjucwgTCPz3ZaXBI5Nk9chgGk7+YpCIIaPFdyvUpbyhrh/p++akwX
 AP9BkgGLNbXYrghprto01QVCnvUk/gXZLH2TNS7cMD8L9+RiuhVib6fniZ/6XvPCRjvM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zI9y7GScFf4gfkpnlkA6+5D58KDjZfWPl9O11z3TsnY=; b=YKijoBZbffv0jyS6fCgCemRT1v
 dX9Z6YbT7B6T5NBs9VmmSd4GI7lLB/DOrIMC5T4gCOASfeWFvpVrHx/8i8BJ9wTun3SWFBDJMQCM9
 HlOIova0Qwx8a4OFsVX1EnHYw73GNLUKObYh7W44DvMnEg+0fbGvzg40B7Ln3zGFU/ww=;
Received: from rcdn-iport-1.cisco.com ([173.37.86.72])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps (TLSv1.2:DHE-RSA-SEED-SHA:128)
 (Exim 4.92.2) id 1iUyEp-001wid-R5
 for tboot-devel@lists.sourceforge.net; Wed, 13 Nov 2019 19:23:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=cisco.com; i=@cisco.com; l=3198; q=dns/txt; s=iport;
 t=1573673015; x=1574882615;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=zI9y7GScFf4gfkpnlkA6+5D58KDjZfWPl9O11z3TsnY=;
 b=DT2dO+74/gL9ALXgC5WNPWe4fchO0nM5eQy8OWOK0vphSob1zkz6TXjW
 KKYK4Z7b8PQnkD30FK+upDB+cEpFdGSJ1bXBUIphhSHDakBqF9F3FjSq0
 xwR1UDgx1/xPkEGjFWsntIbgPMna1JNEpIoPDf3G2VeFjYgrkJ2avml79 k=;
IronPort-PHdr: =?us-ascii?q?9a23=3AFGD80RxShjcvwUPXCy+N+z0EezQntrPoPwUc9p?=
 =?us-ascii?q?sgjfdUf7+++4j5YhSN/u1j2VnOW4iTq+lJjebbqejBYSQB+t7A1RJKa5lQT1?=
 =?us-ascii?q?kAgMQSkRYnBZudDEr8NvOwRyc7B89FElRi+iLzPA=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0AGAABKV8xd/4QNJK1kGQEBAQEBAQE?=
 =?us-ascii?q?BAQEBAQEBAQEBEQEBAQEBAQEBAQEBgWoEAQEBAQELAYFKJCwFgUQgBAsqCoQ?=
 =?us-ascii?q?fg0YDhFqGHIJemACBLoEkA1QJAQEBDAEBGBUCAQGEQAIXggkkNAkOAgMLAQE?=
 =?us-ascii?q?EAQEBAgEFBG2FNwyFUQEBAQECAQEREREMAQE3AQsEAgEIEQQBAQECAiYCAgI?=
 =?us-ascii?q?mChUICAIEAQ0FIoVHAw4gAQKmXwKBOIhgdYEygn4BAQWFFhiCFwmBDigBjBO?=
 =?us-ascii?q?CF4ERgxI+hEUXgnmCXoE/AYtUgnmeDAYEgiiQEoU1G4I9l0GOR4FBmDsCBAI?=
 =?us-ascii?q?EBQIOAQEFgVI5gVhwUIEegU5QERSRGgsBFxWDO4pTdAGBJ48rAYEOAQE?=
X-IronPort-AV: E=Sophos;i="5.68,301,1569283200"; d="scan'208";a="661012461"
Received: from alln-core-10.cisco.com ([173.36.13.132])
 by rcdn-iport-1.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA;
 13 Nov 2019 19:23:27 +0000
Received: from XCH-RCD-006.cisco.com (xch-rcd-006.cisco.com [173.37.102.16])
 by alln-core-10.cisco.com (8.15.2/8.15.2) with ESMTPS id xADJNRY9001459
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=FAIL);
 Wed, 13 Nov 2019 19:23:27 GMT
Received: from xhs-rcd-002.cisco.com (173.37.227.247) by XCH-RCD-006.cisco.com
 (173.37.102.16) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Wed, 13 Nov 2019 13:23:26 -0600
Received: from xhs-aln-003.cisco.com (173.37.135.120) by xhs-rcd-002.cisco.com
 (173.37.227.247) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Wed, 13 Nov 2019 13:23:25 -0600
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (173.37.151.57)
 by xhs-aln-003.cisco.com (173.37.135.120) with Microsoft SMTP Server (TLS) id
 15.0.1473.3 via Frontend Transport; Wed, 13 Nov 2019 13:23:25 -0600
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aIcswEROFXKHbe+4jvZ/gPuS1CMHt/f1xBdNBeFBTEQG4dvcU6aInK6DzKw9xQ78RmBEg1craamxXb0+M8sC3+OA82Hg4Sa0AOPa42d3fd4Ad9wP0tUxpg2RxhOmF+aILYT1DIybfZOh0g8vtUHwTPun4HSDSEuD6zLeUwOy3fkDEi03NTaPCDC4x5zh7pH+PtbWsphAL/jDft6ecDaAdbo9H1DXEpL8wKzbcUA7sXeWLT+eLJWy/k2DSyCGXnjFsA6cDjs6Jc24QAEfRz8abfRZBHKZ3CD/Z09e1nhwew33pqKOy7VsmbABPEr058o5r6wTSsGe9XZ/HKBOIwHoHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zI9y7GScFf4gfkpnlkA6+5D58KDjZfWPl9O11z3TsnY=;
 b=iD5DtKe+GiypbxIdY/D4wUEeefDHESBLzlUWm+dCp0xFWB3+RwV5LeoM+WMiNquY95sOZAseYZgWNcBHz2QWkvI1xCaSlIyRyn8t7WWRz1ljpmGbEOvJKt0XaOuvK+8M35eCLkXv4eIbYvr0Bn8RUrvx9pxfUO3tSn5+9yPaGIJ/A/6jBWH2FynWmRZUdXoYhX6/CRYe0i5mkZQpqwaEeIpQdYKkyPJnN6O3qUNxpvoSHqf+0FrzKsJNftK5xaU5stR8JM7oJeFO4O9C5UyJWISqPhmqITNep9/5UATLd1sastU8L6yf5dWuW36/TjGqQMW3QJvHSTeVgRO8wVntSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cisco.com; dmarc=pass action=none header.from=cisco.com;
 dkim=pass header.d=cisco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cisco.onmicrosoft.com; 
 s=selector2-cisco-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zI9y7GScFf4gfkpnlkA6+5D58KDjZfWPl9O11z3TsnY=;
 b=YwI/aFe9vlceCBynD8e8ffIi+Jc2h1O1JWD9+ugN072aM2Kqg9zGRVYc/TuozXdtmW3TITRAi9kyOWV2PumdotM38pv+Yr2RJRlLL8vDl2wXQWBijpICnQesNnGL7y7/ac58N5S4QppHC+QsSLZ/KKVZxoGDcXtz4KukhRBrGA0=
Received: from BN7PR11MB2866.namprd11.prod.outlook.com (52.135.246.157) by
 BN7PR11MB2817.namprd11.prod.outlook.com (52.135.254.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.23; Wed, 13 Nov 2019 19:23:24 +0000
Received: from BN7PR11MB2866.namprd11.prod.outlook.com
 ([fe80::fc28:bc87:48f1:e4cb]) by BN7PR11MB2866.namprd11.prod.outlook.com
 ([fe80::fc28:bc87:48f1:e4cb%3]) with mapi id 15.20.2430.028; Wed, 13 Nov 2019
 19:23:24 +0000
To: "lukasz.hawrylko@linux.intel.com" <lukasz.hawrylko@linux.intel.com>,
 "Travis.Gilbert@dell.com" <Travis.Gilbert@dell.com>
Thread-Topic: [tboot-devel] Creating a TXT/tboot policy suitable for a modern
 system with TXT+TPM2
Thread-Index: AQHVlCtYW12WBIFGSk+TwpFcVCWnTad9MGGQgAAqOICAATPX0IABqGkAgAD1UgCAAFyugIAAFRaAgAeVtICAABhFgIAAGB4AgAAjPgA=
Date: Wed, 13 Nov 2019 19:23:24 +0000
Message-ID: <a894f5880eb35e5e6903aa5069d803107e308c31.camel@cisco.com>
References: <681a21560a8a9f41a4be8cdc399cf5008f7adecc.camel@cisco.com>
 <1926e09cfdf84af28414b36c2652f421@AUSX13MPC102.AMER.DELL.COM>
 <52ba4fc58ef941c81458ea95eeaed31b0aa669e1.camel@cisco.com>
 <b4e1bf1374114acdaa3b99d91b43bd64@AUSX13MPC102.AMER.DELL.COM>
 <a250508c1d6ba4cf2b080b6f69803698539f7b0c.camel@cisco.com>
 <2a4c6551b68be437cd02c7987ef75a6d315f0368.camel@linux.intel.com>
 <beabd66d2dffc0d8d08d411588501412cca2fdfe.camel@cisco.com>
 <473a0d4460a64bfe8a96c1942ae21de4@AUSX13MPC102.AMER.DELL.COM>
 <f3f94fc1ba73ff604260a6bfb8e4a8ee8b1e9e00.camel@linux.intel.com>
 <95c9252416abb41d2a654fdffb9208371ecb91c4.camel@cisco.com>
 <f6a2c34a67f5471096cb4f760a8ac1b1@AUSX13MPC102.AMER.DELL.COM>
In-Reply-To: <f6a2c34a67f5471096cb4f760a8ac1b1@AUSX13MPC102.AMER.DELL.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pmoore2@cisco.com; 
x-originating-ip: [173.38.117.90]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: aa10e4a9-b3c6-40bd-7325-08d7686ef3d7
x-ms-traffictypediagnostic: BN7PR11MB2817:
x-microsoft-antispam-prvs: <BN7PR11MB281755F39737D4D77D87278AF8760@BN7PR11MB2817.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0220D4B98D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(366004)(396003)(136003)(376002)(199004)(189003)(13464003)(102836004)(8936002)(86362001)(118296001)(4001150100001)(7736002)(305945005)(6116002)(3846002)(486006)(2501003)(81156014)(81166006)(66946007)(8676002)(476003)(66476007)(66556008)(64756008)(5660300002)(66446008)(6506007)(2906002)(2616005)(76176011)(53546011)(99286004)(6436002)(26005)(6512007)(6246003)(4326008)(446003)(71190400001)(14454004)(6486002)(256004)(76116006)(14444005)(229853002)(36756003)(110136005)(316002)(478600001)(11346002)(71200400001)(66066001)(186003)(25786009);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN7PR11MB2817;
 H:BN7PR11MB2866.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: cisco.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /JNdK8fGB2niy1ATdhw4nNXNBqrFm4fL3/UWT1b2sCJqsZUF6a5zG2vyifivtpgmmiSbVfOQM9KIwLrv7ZT8siJcYGCR0QAwfy3wWUDG+0Rwuzox3c8AIds/SzupodSpGNRdXTSJ0sW4GLFfCei+C+orK2jbqB8hWhfmqyJuuVfVVFFRyVH3jhsg16D5sEbtsHUPPgeyaRK/6ePzn0FV/YTIUaXZmZnYwkJHgxzzjMuJj+vRHEfv2Y5w34MJTMmAgOaNtALxUGpwytzCSsCi0g4Fa5YtmFw14+AjEJdfpkrNRHlFUKQToeSFtXa/03K4E3rcuoWWHXwJ+xAtAlDud2t3ATHUJU5z7TB/y2hybm6C4D0e7NkLkR2xmpHAjGC+MszA2kP8ogpFvmjnmCK9jUKnCmjXzEu27WA38exiwEnsFgX0fw+Ze5ETf4iv2I07
x-ms-exchange-transport-forked: True
Content-ID: <443C10B1E19DC0488FCA19D7EDB22A4B@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: aa10e4a9-b3c6-40bd-7325-08d7686ef3d7
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2019 19:23:24.1319 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: T7oeggMxTJXuizY3ZqnNahQD0L/qWS6pDUl0LYq3O1gUrr6R59YGEJwXO4lpQubqidBWjqqMQPGNrHq8D4xZDA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2817
X-OriginatorOrg: cisco.com
X-Outbound-SMTP-Client: 173.37.102.16, xch-rcd-006.cisco.com
X-Outbound-Node: alln-core-10.cisco.com
X-Spam-Score: -7.6 (-------)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM white-list
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1iUyEp-001wid-R5
Subject: Re: [tboot-devel] Creating a TXT/tboot policy suitable for a modern
 system with TXT+TPM2
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
Cc: "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tboot-devel-bounces@lists.sourceforge.net

On Wed, 2019-11-13 at 17:17 +0000, Travis.Gilbert@dell.com wrote:
> > -----Original Message-----
> > From: Paul Moore (pmoore2) <pmoore2@cisco.com>
> > Sent: Wednesday, November 13, 2019 09:51
> > To: lukasz.hawrylko@linux.intel.com; Gilbert, Travis
> > Cc: tboot-devel@lists.sourceforge.net
> > Subject: Re: [tboot-devel] Creating a TXT/tboot policy suitable for
> > a modern system with TXT+TPM2

...

> > I'm a bit farther down the patch of sorting out the policy patches
> > for the
> > TXT/sig work, and as it currently stands it looks like the changes
> > for lcptools-
> > v2 is going to be very minor.  Essentially it looks like the only
> > changes I will
> > need to make is to add a predefined custom ELT UUID for a
> > certificate
> > payload, and even then that is optional (one can specify the UUID on
> > the
> > command line if necessary).  
> 
> Are you adding the ELT UUID as a policy element plugin similar to
> mle_elt, sbios_elt, & stm_elt?

That is the current approach, yes, but I consider it very much up for
discussion/review.

Essentially you dump a bundle of DER encoded certificates into a policy
element and mark it with the newly specified UUID and after tboot has
entered into the TXT protected state it imports those certificates into
the cert DB as "trusted" which allows them to act as a root of trust for
the PECOFF signature verification.  This is actually working now, but I
want to sort out the VLP details before updating the GitHub repo.

The VLP changes are still a work in progress, but my current approach is
to introduce a new hash type (e.g. TB_HTYPE_PECOFF) which would be an
indication to tboot to perform PECOFF signature verification (using the
previously imported trusted certificate payload) instead of the
traditional digest verification.  Not only does this preserve the VLP
format, but it allows us to integrate with the rest of the VLP and
leverage all of the existing policy functionality such as configurable
PCR extension.  Similar to the certificate ELT payload, it *should*
result in minimal changes to the tooling, most of the changes will be
in tboot itself.

As soon as I have the VLP changes working I'll update my GH repo and
post an update to the list, but comments on the above approach are
always welcome.

-Paul


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
