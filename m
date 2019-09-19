Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 15449B7E5D
	for <lists+tboot-devel@lfdr.de>; Thu, 19 Sep 2019 17:40:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Content-ID:Message-ID:Date:To:
	Sender:Cc:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
	:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7de/n3lyqFUO4P7c0uQhuYgQvmPCyR53FwzEljgwanw=; b=FsNs6OpY57Xgk/1ry2N7zI91ld
	IIPzb/oNxn0iHz9oFPadnI0vc9M/yuol/FkJfOW2h5MN1EsQcsT1Dlrp3psK7jDQjJg2H0OooXl9S
	xdxGqfX/S8VWTFVlTlzA2OmRWgwp8in0L5sa73o97/XK8ux8Jb6hK2vfTVLeiZ+iaaLg=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1iAyXD-0001oP-S8; Thu, 19 Sep 2019 15:39:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pmoore2@cisco.com>) id 1iAyXD-0001oH-Bj
 for tboot-devel@lists.sourceforge.net; Thu, 19 Sep 2019 15:39:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bDNu+b+ikcEuBCFDkRkscnojTZwJfuYsbT+zzXw9OCc=; b=YdQi8ac8B3qEgg/Y6Dxj2GYTuH
 K+CRBSi0uZRWw/ZP+bwaQwUSh6yhLu8jS1Qr4qP39tshRGUB+t+WQzqJIKwkNY69hqZGmtqlSR6yt
 nIRmDBcgwitbXwFko4D6Bd4PNAAeTGAWbRN90bXAj6jq7+2gkzBsa7iGRIdCUHBsBbv8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:Message-ID
 :Date:Subject:To:From:Sender:Reply-To:Cc:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=bDNu+b+ikcEuBCFDkRkscnojTZwJfuYsbT+zzXw9OCc=; b=a
 fotCgRS0sXqf2GzyRYUOkemE4FeH0oiElUzEyf5Lsg88+fbDjWRNM2/1NBL62+xghruptOrJ5ujHe
 a+dWGmGNKOUT2DYQW7sdSR3TLDHGaI4eZ/1CvKtcPtEYtBeFV3F4ScjXQ2ZddUTVLq6NgyrhxLEcI
 OqQdUhKFiWftexQo=;
Received: from alln-iport-3.cisco.com ([173.37.142.90])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps (TLSv1.2:DHE-RSA-SEED-SHA:128)
 (Exim 4.90_1) id 1iAyX9-00470V-L6
 for tboot-devel@lists.sourceforge.net; Thu, 19 Sep 2019 15:39:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=cisco.com; i=@cisco.com; l=2886; q=dns/txt; s=iport;
 t=1568907591; x=1570117191;
 h=from:to:subject:date:message-id:content-id:
 content-transfer-encoding:mime-version;
 bh=bDNu+b+ikcEuBCFDkRkscnojTZwJfuYsbT+zzXw9OCc=;
 b=S1bdjpH84Ugdjf0fOdS+L2/fUFz+Kuran51hH4CcNchh6qLEejlSKOhj
 a21Jf00DsHDL1gtICW6Ujr9GMMXT4/oS0GB5PGuiQcdDiC+ucnpvN3r5/
 q32efNgVpBl7fc94xAOY/4qnObms3kO1FjpPIzuba8hWQP4LugSIc58oE 0=;
IronPort-PHdr: =?us-ascii?q?9a23=3A5d6cIBWEFiuB44+ddR/UncYbqfrV8LGuZFwc94?=
 =?us-ascii?q?YnhrRSc6+q45XlOgnF6O5wiEPSA92J8OpK3uzRta2oGXcN55qMqjgjSNRNTF?=
 =?us-ascii?q?dE7KdehAk8GIiAAEz/IuTtankiGcNFTlI/13q6KkNSXs35Yg6arw=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0CfFQANoINd/4wNJK1lHgEGDYFcC4F?=
 =?us-ascii?q?FJCwDbVYgBAsqCoQYg0cDinxNmgKBLoEkA1QJAQEBDAEBJQgCAQGEWIJsIzY?=
 =?us-ascii?q?HDgIDAQMCAwEBBAEBAQIBBQRthS0BC4VPFBERDAEBMgYRASICJgIEMBUSBCc?=
 =?us-ascii?q?OgwGBagMdAQIMoiICgTiIYXOBMoJ9AQEFgTcGCkFAgjsYghcDBoEMKIURhni?=
 =?us-ascii?q?CF4RhgmECAQEYgTODH4JYgTMBi0qCWo5Tjl8GBIIihiFkjgMbmSIBin+CWT6?=
 =?us-ascii?q?IEY08BINAAgQCBAUCDgEBBYFZCieBWHBQgR6BTlAQFIFOg3KKU3MBC4EdjHq?=
 =?us-ascii?q?BMAGBIgEB?=
X-IronPort-AV: E=Sophos;i="5.64,524,1559520000"; d="scan'208";a="340985149"
Received: from alln-core-7.cisco.com ([173.36.13.140])
 by alln-iport-3.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA;
 19 Sep 2019 15:39:45 +0000
Received: from XCH-ALN-002.cisco.com (xch-aln-002.cisco.com [173.36.7.12])
 by alln-core-7.cisco.com (8.15.2/8.15.2) with ESMTPS id x8JFdjRD025255
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=FAIL)
 for <tboot-devel@lists.sourceforge.net>; Thu, 19 Sep 2019 15:39:45 GMT
Received: from xhs-rtp-003.cisco.com (64.101.210.230) by XCH-ALN-002.cisco.com
 (173.36.7.12) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Thu, 19 Sep 2019 10:39:44 -0500
Received: from xhs-aln-003.cisco.com (173.37.135.120) by xhs-rtp-003.cisco.com
 (64.101.210.230) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Thu, 19 Sep 2019 11:39:44 -0400
Received: from NAM05-DM3-obe.outbound.protection.outlook.com (173.37.151.57)
 by xhs-aln-003.cisco.com (173.37.135.120) with Microsoft SMTP Server (TLS) id
 15.0.1473.3 via Frontend Transport; Thu, 19 Sep 2019 10:39:44 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Bw0Id6ACSxS/W4Oky0NbP3Lh0NjSavFz1pleV3mkSfLDwrmihNYiavtuQogOw1PKjfG63s2UKJmtUFgAffYQ7Nsb9JEIMaKvZhia1sJAZcz8yqPaiJP4qszA5n017jwMRWb2f/03PXp2wqrLU9SF+TD36iAdLy1MS39gRbnPkoCcG7WKFAUry8V+MhaudMMxVas5tXXl4lWpDxnAJoMHou8k0geEH9+usjM/TKEPD353L+YkO2hkv9mV0pGxIu2V/xJQU5c/X6SBpynu6QXdsEqJXK2pG5E4rXTR2zFY7vClHlXDpfJkTbol6xgjKBIscFgUS27IfyPxzZk16e9ZBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bDNu+b+ikcEuBCFDkRkscnojTZwJfuYsbT+zzXw9OCc=;
 b=F4GavlxYWYLu3/NAeJetY3PjvnAHZtKdsBfBD00TjgyZLS2Z8T4+7TupLE8eL5/g6YR+gnh8kod9EGCdPNg53J5TBX7ZffBB6C84KwjfA1wYpaqF+Be22oF0dmD7Wm4BNHke1b7YPUVZ7WiyDf6wCYi/9nxO4XivgL3AC+aTrHxjBO15SuRDrVtSDI7vz+trOggPLDlkKtW0NjVhMXvA3p7/kv6deQuOZKRtu3pql74aC27POP1kYq0N3xDkgZfiI1Jw8ZXJ/JHAsEgr0dVCrI0ASmqRczBKV3ENyP8B/7BVt9fThUw94mMACi+m8K93eFV9a6WUAccJVp/SC0C0iQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cisco.com; dmarc=pass action=none header.from=cisco.com;
 dkim=pass header.d=cisco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cisco.onmicrosoft.com; 
 s=selector2-cisco-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bDNu+b+ikcEuBCFDkRkscnojTZwJfuYsbT+zzXw9OCc=;
 b=X5V/c8gLIuh8d0wCta705sCpwLFhVBoqSjlq+8cv2i5KKKKKKHitD3uSBoG5Y1y4uym+gfcHXtQyU8HMrAANaW8Dev3PudGuCgCh+SZLURxcisKEn8jC5bayEnh7D5HuB5PnzB0Grph5sE5ypYuAilEzatYjYi6JLHUWFSbYIl0=
Received: from MN2PR11MB4096.namprd11.prod.outlook.com (20.179.150.82) by
 MN2PR11MB3678.namprd11.prod.outlook.com (20.178.252.94) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.18; Thu, 19 Sep 2019 15:39:42 +0000
Received: from MN2PR11MB4096.namprd11.prod.outlook.com
 ([fe80::6931:def1:9b9f:731e]) by MN2PR11MB4096.namprd11.prod.outlook.com
 ([fe80::6931:def1:9b9f:731e%3]) with mapi id 15.20.2284.009; Thu, 19 Sep 2019
 15:39:42 +0000
To: "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Thread-Topic: [RFC] tboot: kernel signature verification
Thread-Index: AQHVbwB0th12F6sDfUCgP40i/qpaHw==
Date: Thu, 19 Sep 2019 15:39:42 +0000
Message-ID: <bbaf0eeb3ddb8791533fc9dfba23ed57d3a2c9bd.camel@cisco.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pmoore2@cisco.com; 
x-originating-ip: [173.38.117.77]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 27735925-7d7d-4c20-3614-08d73d179753
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR11MB3678; 
x-ms-traffictypediagnostic: MN2PR11MB3678:
x-ms-exchange-purlcount: 3
x-microsoft-antispam-prvs: <MN2PR11MB3678E4123D2C0180A7D12B8DF8890@MN2PR11MB3678.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 016572D96D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(366004)(346002)(136003)(376002)(396003)(189003)(199004)(6436002)(6506007)(305945005)(6116002)(6486002)(5640700003)(316002)(6916009)(8936002)(81156014)(966005)(8676002)(5660300002)(14454004)(81166006)(99286004)(478600001)(6512007)(6306002)(118296001)(102836004)(25786009)(76116006)(3846002)(71200400001)(36756003)(15650500001)(66066001)(186003)(7736002)(2906002)(66556008)(66946007)(66446008)(66476007)(64756008)(86362001)(26005)(476003)(2351001)(71190400001)(14444005)(486006)(2501003)(256004)(2616005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3678;
 H:MN2PR11MB4096.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: cisco.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: KHeN5PFrfCnRyRU8Cg2FjhKaaFF9wp5NuOSC42VbwW/Eg0ParKRw+RSGW6gXIwF85Ezf18DyQa9aCwKxzdqYaZ6hNGG9mESMTpNmZ7S3+J9oaez8+9ZQOj0euq7IAPAf2rFqSav9TPkgdYkGOhVMSlG5YZrOMqbcy9sZCCJbAWsATVkX85Pf3o7ZICJrp5qK/Gr+00hVt/yJJObjvTyTATzA83D0j5xkWBc/BBac/h0+V8FT72u5Sgal771M5yL6LFVHe+Jx7sW53knvIFGU1YlNtpaKpBv0NpY58SYEFn3ffLuXeH6r5s4mRRGstUlcNbigH2gyByXO24+lYzUIVnNOiNuGmPjivHfXMklKe08RFfGldD1G3nZOozZIeYvhGZIkUsG/BqOC0fi+G0UxbVIB+byZjWfAnbZ9d3dqRF4=
x-ms-exchange-transport-forked: True
Content-ID: <E2BDD3C0844BE24BA0D877971788D8DC@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 27735925-7d7d-4c20-3614-08d73d179753
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2019 15:39:42.7959 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cHEno1+8TbOZMCtv6ZQgwEWbl0Row/hB7jWJD8dJCcdM2TdGsVBf3Iwwtizc5CMHzrrR6RUBib190tpn6jk+9w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3678
X-OriginatorOrg: cisco.com
X-Outbound-SMTP-Client: 173.36.7.12, xch-aln-002.cisco.com
X-Outbound-Node: alln-core-7.cisco.com
X-Spam-Score: -7.6 (-------)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: paul-moore.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM white-list
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1iAyX9-00470V-L6
Subject: [tboot-devel] [RFC] tboot: kernel signature verification
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

Hello,

I've been working on adding PECOFF/kernel signature verification to
tboot and now that I have a rough working prototype I wanted to bring
it to the list to see if this is something the tboot community would
be interested in eventually merging (once the work is more complete
and polished).

The patchset is quite large, mostly due to the inclusion of
libtomcrypt and libtomfastmath to the tboot repository, so I'm going
to refrain from spamming the list with the full patchset at this early
stage.  The current patchset can be found on GitHub at the URL below
(look in the "working-txtsig" branch):

* https://github.com/pcmoore/misc-tboot/tree/working-txtsig

The prototype doesn't actually enforce any policy or change the PCR
measurements based on the kernel signatures (both are planned work
items), but it does demonstrate the ability to parse and verify a
signed PECOFF image.  The individual patch descriptions provide some
additional information on some of the planned work to take this from
a prototype to a proper implementation.

My motivation for this work is to create a mechanism that is capable
of generating a stable set of PCR values across multiple kernels that
can be used to seal TPM NVRAM secrets on both legacy BIOS and UEFI
systems.  Imagine being able to store a storage encryption key in the
TPM, and restricting access to that key to only authorized kernels in
such a way that didn't require changing the tboot policy when booting
different kernels.  I imagine I'm not along in thinking this would
be a nice capability to have, especially on systems that don't support
UEFI Secure Boot.

For those who are interested, I gave a presentation on this work at
the Linux Security Summit last month, the video and sldies are
available at the links below:

* https://www.youtube.com/watch?v=Qbjz_5jUE9o
* 
https://www.paul-moore.com/docs/lss-securing_tpm_with_txt-pmoore-201909-r2.pdf

Thoughts?  Is this capability something the TXT/tboot community would
be interested in merging into the main tboot repository once it is
more complete?

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
