Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 522C512ED4C
	for <lists+tboot-devel@lfdr.de>; Thu,  2 Jan 2020 23:27:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Content-ID:Message-ID:Date:To:
	Sender:Cc:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
	:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=locF8U+6L5qpPHidI+viw/6ljrSvqGghdvxFkkXYJyk=; b=iaQDQ6ovd9oWs/EYfYWlhqLG0I
	50pVlh7061C8lkwbgIp75iFKvgbaw/Po1qy4F3nR/++pPtZ7ralo8dllqFdM1FNpYGzKqViy9AYm8
	/lXN/zwfnGWSi2568m14BnV+zfQHe5m3bIDxzMM5b27iobbNyEmSKA9ur8CBMb8iaWLk=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1in8w8-0002Kb-8i; Thu, 02 Jan 2020 22:27:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pmoore2@cisco.com>) id 1in8w6-0002KM-Kj
 for tboot-devel@lists.sourceforge.net; Thu, 02 Jan 2020 22:27:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WOVqAFxBExW+cvRQDLojXCY77By4sYTG21L/IOH/7GM=; b=TNCCbNqVGPrzSe73qJSmgxpJW1
 KLegTk1qH348MlazEwNpO+xslLO6MB44DZ1GujafADdym1s4w1hz+O5Qx5HGjJfVhi2bM+x99olLv
 dfW52WbuNhvEu31rDmFCf00KnXR3hjeP+NGKT1yoeF1oyWic1bGkao5Xz9Qq0IAxvcFQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:Message-ID
 :Date:Subject:To:From:Sender:Reply-To:Cc:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=WOVqAFxBExW+cvRQDLojXCY77By4sYTG21L/IOH/7GM=; b=P
 Kojto9+kkxeMXhoGSCYq5ZU0Y2X6n49Bsln/SNRX3Api3aFU4lL7wdByLvTzIkJAP3nNDNa+ut0uP
 vko3TrI3QJEZNSdbtUDRdnBYazFAn1uW5qN3NxDNkCU9rOYiCMRxogCihZbLN52cRvmCfRD+fKul0
 z7vdOvU3PsaWEYy8=;
Received: from alln-iport-6.cisco.com ([173.37.142.93])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps (TLSv1.2:DHE-RSA-SEED-SHA:128)
 (Exim 4.92.2) id 1in8w2-007Wsi-Qv
 for tboot-devel@lists.sourceforge.net; Thu, 02 Jan 2020 22:27:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=cisco.com; i=@cisco.com; l=552; q=dns/txt; s=iport;
 t=1578004038; x=1579213638;
 h=from:to:subject:date:message-id:content-id:
 content-transfer-encoding:mime-version;
 bh=WOVqAFxBExW+cvRQDLojXCY77By4sYTG21L/IOH/7GM=;
 b=JdH6KzK+pt5Wc5Db37bdL42v1NKu94pqs4Bu0lrjBljJ5GaIH+2pZgxZ
 NhskQiF2LgKpdVFnSslP3unVRS/ygBdCmLBCxBodqb8nUSjajUZQ3qk1D
 TArAMFmuVsb4zTwhkMhnUjOdDyzMXIvcouo79EAufSxhEzZfXegMvSfRV o=;
IronPort-PHdr: =?us-ascii?q?9a23=3AiRXQfBaJONTjgOT1qn4BAWL/LSx94ef9IxIV55?=
 =?us-ascii?q?w7irlHbqWk+dH4MVfC4el20gebRp3VvvRDjeee87vtX2AN+96giDgDa9QNMn?=
 =?us-ascii?q?1NksAKh0olCc+BB1f8Kavyais9BskYfFRk5Hq8d0NSHZW2ag=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0CbOQDobQ5e/4sNJK1lHAEBATgBBAQ?=
 =?us-ascii?q?BAQIBBwEBgVQCgVJQBYFEIAQLKgqDfoNGA4sATpF2iCWCUgNUBgMBAQEMAQE?=
 =?us-ascii?q?tAgEBhFmBUiQ3Bg4CAw0BAQQBAQECAQUEbYU3AQuFdxERDAEBOBEBIgImAgQ?=
 =?us-ascii?q?wFRIENYVHAy4BAqBpAoE4iBQBTHWBMoJ+AQEFgkqCQBiCDAk3VygBjBiCGok?=
 =?us-ascii?q?EgzeCXoFDAY55nlsGBII1lhkbgjYBmCCOUppWAgQCBAUCDgEBBYFoI4FYcIF?=
 =?us-ascii?q?ugU5QGA2NHRiDUIpTdIEoi1eBMwGBDwEB?=
X-IronPort-AV: E=Sophos;i="5.69,388,1571702400"; d="scan'208";a="415464873"
Received: from alln-core-6.cisco.com ([173.36.13.139])
 by alln-iport-6.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA;
 02 Jan 2020 22:27:10 +0000
Received: from XCH-ALN-008.cisco.com (xch-aln-008.cisco.com [173.36.7.18])
 by alln-core-6.cisco.com (8.15.2/8.15.2) with ESMTPS id 002MRA00002534
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=FAIL)
 for <tboot-devel@lists.sourceforge.net>; Thu, 2 Jan 2020 22:27:10 GMT
Received: from xhs-rcd-002.cisco.com (173.37.227.247) by XCH-ALN-008.cisco.com
 (173.36.7.18) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Thu, 2 Jan 2020 16:27:09 -0600
Received: from xhs-rtp-001.cisco.com (64.101.210.228) by xhs-rcd-002.cisco.com
 (173.37.227.247) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Thu, 2 Jan 2020 16:27:09 -0600
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (64.101.32.56) by
 xhs-rtp-001.cisco.com (64.101.210.228) with Microsoft SMTP Server
 (TLS) id
 15.0.1473.3 via Frontend Transport; Thu, 2 Jan 2020 17:27:08 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LGXLZ1ZReOeW7y4P+UvarUixOUThedS/MF53m8o+1GzNQO2RDKCQkg14n/5I1dnEToobu6d6hUbv7vlrDEalZ2JjW/AP4qgODDXD/KsYmes9IcdITN8Rb+Wps6fmUqtlFJjPxUoHt019chQ9W2cz19l5R2/FBPaloh8hCJeYCT98qII2pVgezSEAR7gflHX45sxemKTG5moz/CsBb5nTNvQOG4KyDbYo05AXxWXG2rhVrtsq06P3V8Ub2sZUOJUxz02ezfJ37YryUPlbD3IHn9OhnNan37MX0euJ23Ca3MXtZ9gtjgwqeKIXnigEIuAExMdMMz7gHdVhsFB35tig9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WOVqAFxBExW+cvRQDLojXCY77By4sYTG21L/IOH/7GM=;
 b=HBQ++EeNtlStrUp1cagQSPEoVGnUQENj0pZL8+YG+jPog0XAs/MlyEl1S4wxyCptdiRsSULLvqdmlPIX7ATQ8t0MyR5Bf6StSGk2/R10OymQxNF1Q2qG3inhpAArpDothbKMT91L13O8Kb+cnzGlYiBsxPVtcOorn7TL2gmSfWiE6AWwgw/yKdN2gTbzKNHdh58Unk2Ci3fGz+4M92d9igEx0i8STIRlvLEn6/lAk7iDjcP8X6Kdo6WpHT7aa631pwuDx9qvqPWpIBCoIIyKCoE163euoRdg1IO5Ymf3t/N5AYkt2cWF7axLmAAjkWuf6h1+Zd3mkwkOA9fbYayomQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cisco.com; dmarc=pass action=none header.from=cisco.com;
 dkim=pass header.d=cisco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cisco.onmicrosoft.com; 
 s=selector2-cisco-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WOVqAFxBExW+cvRQDLojXCY77By4sYTG21L/IOH/7GM=;
 b=g58qIWHVwUqHI47TBoU01ebgwHWhYQdGGPNxbZjQ5cmBMj24FLUYTXIenwXL0LTluA3L0p/RKN668UQBzvJiXKbJ4WaPJNI3AY6LStPfvn9lHRgiSnnaMWDXBZF6ALgNuW7IZePZmKKoBYeaY1MtzTrsbt+9BOoW2wnTN3OQXfI=
Received: from BN7PR11MB2866.namprd11.prod.outlook.com (52.135.246.157) by
 BN7PR11MB2740.namprd11.prod.outlook.com (52.135.247.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.12; Thu, 2 Jan 2020 22:27:06 +0000
Received: from BN7PR11MB2866.namprd11.prod.outlook.com
 ([fe80::f57d:c6e:3ec:c65a]) by BN7PR11MB2866.namprd11.prod.outlook.com
 ([fe80::f57d:c6e:3ec:c65a%7]) with mapi id 15.20.2602.012; Thu, 2 Jan 2020
 22:27:06 +0000
To: "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Thread-Topic: VLP policy and TPM2 hash agility
Thread-Index: AQHVwbvDFL0LDZYScESwnSphPlBBUw==
Date: Thu, 2 Jan 2020 22:27:06 +0000
Message-ID: <95c91cf5919cf3ebb3058e90bd6af64939dedee1.camel@cisco.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pmoore2@cisco.com; 
x-originating-ip: [96.233.112.89]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: aa979db9-f00a-4b03-14ce-08d78fd2e665
x-ms-traffictypediagnostic: BN7PR11MB2740:
x-microsoft-antispam-prvs: <BN7PR11MB274059E92789604BA8B59752F8200@BN7PR11MB2740.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0270ED2845
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(366004)(396003)(346002)(136003)(376002)(199004)(189003)(66556008)(6916009)(66446008)(64756008)(2616005)(8676002)(186003)(8936002)(36756003)(66476007)(478600001)(81166006)(6486002)(71200400001)(6506007)(76116006)(4744005)(5660300002)(66946007)(91956017)(86362001)(316002)(6512007)(81156014)(2906002)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN7PR11MB2740;
 H:BN7PR11MB2866.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: cisco.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: m5V2gEotAhZX0FQjP7hUsykDYdHn4m2tvMWH8cPov9OhcmgwBFqSti+GUB1jtVgoiC02s8Cl0agyZo53ylOg59t4fcFx50pTdp3OQzvF29TTM481g8ISxe1Evjfz3h0v42/mm4WvGkKmONQNNaVw6RP90H4cDy44DjqUOYt4LjP/ZiWSvOqMhWc9NUeMF7yoLqRfjEpCbbvdhXEd4KAV/729TaiI0rEsyqTLPbLEKUQMoy6B1VJgKbKLTq5WuPcYq7D75SFwlWJCTOajqzJz7S6J0FW8VN2MXNxTMKwBOgUUOknxIaf+cPeDdF9LJAZU1YtOP3xaH9z9KopRHSLNmvxqRWLhwm1IWJ8AOlNdbplPktCmfzuwEvOaKC9epvPNL2Pvq61bnGgv8IEtsKg209oP45PbxwmH1l6J5N7YRvUkH8jDIe7jYsJZDsiaNj/R
x-ms-exchange-transport-forked: True
Content-ID: <1C61844D804B3849A5AC76F0E5E169CB@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: aa979db9-f00a-4b03-14ce-08d78fd2e665
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jan 2020 22:27:06.6803 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: E6XHAvbRU/cNA+MuEL0rNyUbCtdPqE9ISxmSqzHy3hl0Mpmp0YqZr8Uetj4+DSSD15w3arxiiGg87ZNhmkSrzA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2740
X-OriginatorOrg: cisco.com
X-Outbound-SMTP-Client: 173.36.7.18, xch-aln-008.cisco.com
X-Outbound-Node: alln-core-6.cisco.com
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
X-Headers-End: 1in8w2-007Wsi-Qv
Subject: [tboot-devel] VLP policy and TPM2 hash agility
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

I hope everyone had a nice holiday and is enjoying the new year thus
far.

As you've seen in the other thread, I'm playing around with different
tboot/TXT policies and I have a question regarding tboot/VLP policies
that can extend PCRs using something other than SHA1: at present
tb_polgen seems limited to using SHA1, does anyone have any patches to
use SHA256 (or another hash)?

-Paul


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
