Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 63D94151C7B
	for <lists+tboot-devel@lfdr.de>; Tue,  4 Feb 2020 15:44:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:To:Sender:Cc:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=h/j5862/pTUMDN4UEqnlsQ1NmommNgGywWwgphdEkaU=; b=XcmGpxi7JKLW5blgBQZLCeoxx
	nR76YGD0QPpU2hSZp5W2u0f1S3zotjwkrijcxel8qHzLR5bArwW+kER+qG7DkiAqfpu1xLY6MhhqI
	pcK5SZsrk/k9fEzBqcX02yV086k7dj3oy2jRU2JfQt77BtXb75eBR7ClL2v7JrvwKkra0=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1iyzRK-0000g8-39; Tue, 04 Feb 2020 14:44:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pmoore2@cisco.com>) id 1iyzRH-0000fv-Mq
 for tboot-devel@lists.sourceforge.net; Tue, 04 Feb 2020 14:44:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:
 Reply-To:Cc:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/Ah/vLDMnFmr4aJbZpegUveZYZTfFK5NYmrPf7M3YFk=; b=MY49RUrLKfI1n9oCQAx6IKAcAz
 dRVOfCUmjVHio1J/HSd6e7lBiGx3pC8irXaGGFCMEDtLEIP1dyB9GJzYJPZcSwb653Tbul3jiAlWX
 8gG///9KHeA8UZC0Qfwd1NB2D+0PmgO9+q/QcNIO1UuXEJVk12hG5/4uYbknylLRGNA4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/Ah/vLDMnFmr4aJbZpegUveZYZTfFK5NYmrPf7M3YFk=; b=Zilkvo46blmXR4Fo9xx+y29qaI
 ocWgqFCx2nIg6Gf3FzsF6e6ZIys2XSU6h2mzYKxjZ7CTtF4IWQRMvA7Iz4hlMrqjp+GybsexiBG6R
 I+q5mKCotUUn4XDXnJ/Gb8UP1aLIvjcvTxh5ui6QJBeQhppd6ygi/9Pae7BiMPOwH7Y8=;
Received: from alln-iport-5.cisco.com ([173.37.142.92])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps (TLSv1.2:DHE-RSA-SEED-SHA:128)
 (Exim 4.92.2) id 1iyzRG-00A3gb-3P
 for tboot-devel@lists.sourceforge.net; Tue, 04 Feb 2020 14:44:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=cisco.com; i=@cisco.com; l=3498; q=dns/txt; s=iport;
 t=1580827470; x=1582037070;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=/Ah/vLDMnFmr4aJbZpegUveZYZTfFK5NYmrPf7M3YFk=;
 b=XqstA9MrghERmHEkEyBCxIr5l6Iu3W8VgmT3UcvYYfgKXyjvCDd/iGH/
 g2BKG0+sGow5xDNml8PjpB71d28gzR02sFUtk4XTTPjusT8JvFw0Q69Gx
 bvLo2VtmBc5F9pDMFsDLnit71M2BG5HmE3IgnPsHS4XP1SziwIslC5W/r 4=;
IronPort-PHdr: =?us-ascii?q?9a23=3AnhBlPRZxbyDzlHCootit09b/LSx94ef9IxIV55?=
 =?us-ascii?q?w7irlHbqWk+dH4MVfC4el20gebRp3VvvRDjeee87vtX2AN+96giDgDa9QNMn?=
 =?us-ascii?q?1NksAKh0olCc+BB1f8Kavyais9BskYfFRk5Hq8d0NSHZW2ag=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0BvDQAggjle/5hdJa1lHQEBAQkBEQU?=
 =?us-ascii?q?FAYF7gVRQBYFEIAQLKgqECoNGA4p/ToIRmA+BQoEQA1QJAQEBDAEBLQIBAYR?=
 =?us-ascii?q?AAheCICQ4EwIDDQEBBAEBAQIBBQRthTcMhWcBAQEDEhERDAEBOA8CAQgYAgI?=
 =?us-ascii?q?UCwcCAgIwFRACBAE0hU8DLgECoWsCgTmIYnWBMoJ/AQEFhRAYggwJgQ4qjCK?=
 =?us-ascii?q?CGoQkPoQyaIJBgl6BQwGMFIJ/iCeHM482BgSCO5ZDG4JIjFaLai2ONJsaAgQ?=
 =?us-ascii?q?CBAUCDgEBBYFpIiqBLnBQgR6BTlAYDY4dCRoVgzuKU3SBKYtHgQ0BgQ8BAQ?=
X-IronPort-AV: E=Sophos;i="5.70,402,1574121600"; d="scan'208";a="429114764"
Received: from rcdn-core-1.cisco.com ([173.37.93.152])
 by alln-iport-5.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA;
 04 Feb 2020 14:44:19 +0000
Received: from XCH-RCD-010.cisco.com (xch-rcd-010.cisco.com [173.37.102.20])
 by rcdn-core-1.cisco.com (8.15.2/8.15.2) with ESMTPS id 014EiJJO003838
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=FAIL)
 for <tboot-devel@lists.sourceforge.net>; Tue, 4 Feb 2020 14:44:19 GMT
Received: from xhs-rcd-001.cisco.com (173.37.227.246) by XCH-RCD-010.cisco.com
 (173.37.102.20) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Tue, 4 Feb 2020 08:44:19 -0600
Received: from xhs-aln-001.cisco.com (173.37.135.118) by xhs-rcd-001.cisco.com
 (173.37.227.246) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Tue, 4 Feb 2020 08:44:18 -0600
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (173.37.151.57)
 by xhs-aln-001.cisco.com (173.37.135.118) with Microsoft SMTP Server (TLS) id
 15.0.1473.3 via Frontend Transport; Tue, 4 Feb 2020 08:44:18 -0600
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=di/1sPFArps4mwpUyx/cQ1SyXlhIj+XgdlZ3TopVQt5rVKON3vQwJSIOovdtYS6t6XYE6cCf1Er9riHmAa7jVNz40axHC43IgpDBzfdQ0PZ27HV8NHmEki/T76VPbCIGj4LiCbz+fj9Li3ZROGTf9p7N9+US5SsBWCZehkotjaN8IDtvfSzuOp456aj0vNqxuf6CpRgLI1ImJXCDPt/T99i1KA96qw5GbfD2lrcfiqeIRl/dz51o+HP0vvH/CBZkxuoNqe4oi8gyZ71UNL0Zw9UNW1TgQO8edzJUsuCWFSYXC9KdTDGoNJNVEGqVhKpw7QiFVKW3HNSVBWB9eq5s5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/Ah/vLDMnFmr4aJbZpegUveZYZTfFK5NYmrPf7M3YFk=;
 b=faGBs8Fpp5xJNoBaRerDvwEEbx8OjiRulxHpR+UlRKG3udbIovLYxPJh8vy9heF2IWyedc0BfD08VDjZwGpl5Yqt2K//YpHx9rRKwMfyl1C0DDqHtrtc88FgQeEDa2BhfcuT23N0bAMK3/K7EcrOGbgNUb5LFjypUAlSI7sU6Rl5Ywa4U2M9UqtIUd3M1ZqJ9sl+UAwOtJNtDJ7txZiq2efEtH1SPdABTWSx0JzXZpJ5QRCGvRt77ZlNqk5vZ94AryLaZgNpdciamNTFtPz724619HCD0qfnGkP+pzIbQspJB6vWf3y2um9kDVi/2PwBbPLI8gbN0kwxusGHBGezHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cisco.com; dmarc=pass action=none header.from=cisco.com;
 dkim=pass header.d=cisco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cisco.onmicrosoft.com; 
 s=selector2-cisco-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/Ah/vLDMnFmr4aJbZpegUveZYZTfFK5NYmrPf7M3YFk=;
 b=Flxz+cJHiu2W349vfXzC58OMyeXuopLvo4Pnd1AfAkyLBSJGQBtJmGmRj4/VNbJdpIXCBJoJYCg193PWwUlsKpyk1N45FweKwBtB+33uIbBG6xvpwscVz10YZuyQhWYJysmd8P1foJBV7G2Ksca/BorF+UJDXkfM5ah7qLs/Hs4=
Received: from BN7PR11MB2866.namprd11.prod.outlook.com (52.135.246.157) by
 BN7PR11MB2833.namprd11.prod.outlook.com (52.135.246.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.21; Tue, 4 Feb 2020 14:44:16 +0000
Received: from BN7PR11MB2866.namprd11.prod.outlook.com
 ([fe80::cd3e:44d9:e156:8a93]) by BN7PR11MB2866.namprd11.prod.outlook.com
 ([fe80::cd3e:44d9:e156:8a93%5]) with mapi id 15.20.2686.034; Tue, 4 Feb 2020
 14:44:16 +0000
To: "olivier.leroy@external.thalesgroup.com"
 <olivier.leroy@external.thalesgroup.com>,
 "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Thread-Topic: [tboot-devel] Intel TXT + TBOOT + TPM 2.0: can't get LCP_ANY
 policy working on Supermicro X11SPM-TF
Thread-Index: AQHV22EGqt0P81817Ums16JNP8TN2qgLHGKA
Date: Tue, 4 Feb 2020 14:44:16 +0000
Message-ID: <19895b6c0f53d73cf695e251cfd0b058c963b67a.camel@cisco.com>
References: <3efd665c3f1b4681a0414f12c9c4e666@external.thalesgroup.com>
In-Reply-To: <3efd665c3f1b4681a0414f12c9c4e666@external.thalesgroup.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pmoore2@cisco.com; 
x-originating-ip: [173.38.117.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b34225e3-1b96-4f1d-0a65-08d7a980b5cf
x-ms-traffictypediagnostic: BN7PR11MB2833:|BN7PR11MB2833:
x-microsoft-antispam-prvs: <BN7PR11MB283348EAF217225BB2D0A4A0F8030@BN7PR11MB2833.namprd11.prod.outlook.com>
x-ms-exchange-transport-forked: True
x-ms-oob-tlc-oobclassifiers: OLM:2887;
x-forefront-prvs: 03030B9493
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(346002)(376002)(366004)(136003)(189003)(199004)(110136005)(64756008)(91956017)(36756003)(66476007)(76116006)(66446008)(66556008)(66946007)(316002)(5660300002)(86362001)(71200400001)(6506007)(6486002)(478600001)(6512007)(186003)(26005)(2616005)(8936002)(2906002)(81166006)(81156014)(8676002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN7PR11MB2833;
 H:BN7PR11MB2866.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: cisco.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Do/+CPOvlBiCjSxd51ZWurnsKIx/yXqEYSAX6quKR+8QEVjMBxIbnAYSVl32ywjZR+lyylv3Ayu3tthrOIynHchtqU+o9aOoW2WLmDvak7XZYnwArf99FaM+BuzVQu4VU6lwZvHq9FWUB4oXNku0Nou5V95ZoKkJ+wZSVJTM7mrV3zSGUR7zldNBbWXUkZzpiON2LiUiYxSz8Mvhs6T4hxqB9quM66HULrbhXU+hCAdr/asfhwSBCkLCKIyLB8Ix2BUEoMm4g6YvaaMLkPVeQPtMEXug1Z4oiZdcVG9d1j1sXBqBDHg0INrjlJgQzqipnIhOqnHRlj0epDlMSCyoX5CEHXjenDrGnYAvkhuUhbybwu9vv9UX7z9tF2+w98XtcACTjZ+uQntRVED13Gx3AyF56sZcgG2mjOPzhf9MEuAidJjuZRFVYe9Ma+qGpMI8
x-ms-exchange-antispam-messagedata: wyJhSvRgjlTdNHIXTaNnRm6KPQZ1qTNpdV9HTrAx6Zp9296St6byTy6Wl3o0Ny+HkX3gikA1WCBg9oWl9uqCzumS0oinLS4Y3V3abRi47qgReKtPvd7QhK4sA/BZEyhdQ+wErIl9Dt5QtItTd6RCNA==
Content-ID: <ADC290C0A08755418C5BB4CC7B0C95D5@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: b34225e3-1b96-4f1d-0a65-08d7a980b5cf
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Feb 2020 14:44:16.6068 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: g/goJEvAtNsHQaAH3K34+B7DtNn/BGkh4egKhszEtryT0FAVfWCXxEcSAqQfLemlSmgFbF98e2IfNrXNUjhobw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2833
X-OriginatorOrg: cisco.com
X-Outbound-SMTP-Client: 173.37.102.20, xch-rcd-010.cisco.com
X-Outbound-Node: rcdn-core-1.cisco.com
X-Spam-Score: -7.6 (-------)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM white-list
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1iyzRG-00A3gb-3P
Subject: Re: [tboot-devel] Intel TXT + TBOOT + TPM 2.0: can't get LCP_ANY
 policy working on Supermicro X11SPM-TF
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tboot-devel-bounces@lists.sourceforge.net

On Tue, 2020-02-04 at 13:50 +0000, LE ROY Olivier - Contractor wrote:
> These two policies fail with following tboot error:
> TBOOT: no SINIT provided by bootloader; using BIOS SINIT
> ...
> TBOOT: reading Verified Launch Policy from TPM NV...
> TBOOT: TPM: fail to get public data of 0x01C10131 in TPM NV
> TBOOT:     :reading failed
> TBOOT: reading Launch Control Policy from TPM NV...
> TBOOT:     :70 bytes read
> TBOOT:     :reading failed
> TBOOT: failed to read policy from TPM NV, using default
> TBOOT: policy:
> 
> The point is the SINIT ACM reads my LCP_ANY policy from TPM2 NVram but
> doesn't seem to understand it.
> 
> There are no reason indicated in the TBOOT log.
> 
> One reason I think of could be that the NVram index 0x01C10106 wasn't
> defined with proper attributes.
> I define it with:
> 
> tpm2_nvdefine -x 0x01c10106 -a 0x40000001 -s 70 -t 0x0204000a -P
> password
> 
> Hoping someone will help me solve this problem,

Hi,

I'm not sure if this would help, but here is the process I typically
follow when first getting TXT working on a TPM2 system.

1. Reset / Clear the TPM and Take Ownership

This may not be strictly necessary if you can guarantee the TPM is in a
known good state, but if you aren't certain and you don't have anything
stored in the TPM I think a full TPM reset/clear is a smart idea.  You
typically need to do the TPM clear via the BIOS menu system, and on some
systems you need an admin/supervisor password set before you can access
the TPM clear option.  Once the TPM is cleared you can take ownership
with the following command:

  # tpm2_takeownership -o <password> -e <password> -l <password>

2. Define the LCP Index

You already know how to do this, but after you clear the TPM you will
need to redefine the NVRAM index on the TPM.

  # tpm2_nvdefine -x 0x1c10106 -a 0x40000001 -P <password> \
                  -s 70 -t 0x204000A

3. Write the TPM's Portion of the LCP into the TPM

The LCP is too large to fit into the TPM so we split into *.data and
*.pol files when generating it via the lcp2_crtpol tool.  You'll want to
pass the *.data file to tboot during boot and the *.pol file (lists.pol
in the example below) you'll want to write to the TPM using the
following command:

  # tpm2_nvwrite -x 0x1c10106 -a 0x40000001 -P <password> lists.pol

Hopefully that gets you closer to a working system.  I'm in the process
of writing up some better notes, I'll send a note to the list when they
are available.

Good luck!

-Paul


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
