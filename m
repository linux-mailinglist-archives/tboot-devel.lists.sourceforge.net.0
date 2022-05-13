Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 83A96525F98
	for <lists+tboot-devel@lfdr.de>; Fri, 13 May 2022 12:12:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1npSHP-0001Rw-89; Fri, 13 May 2022 10:12:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <pawel.randzio@intel.com>) id 1npSHO-0001Rp-2K
 for tboot-devel@lists.sourceforge.net; Fri, 13 May 2022 10:12:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IWjiS9mST4qjuFjH2SiWJ1pInBamKBdtNqV3KoJ5xCs=; b=OYCmP79Re7NttrJUjxgOGxknWc
 mLh0kB89Ug6ck0zKRwa+5PKoEpHr5vYW4WHUuDg3EyeAe00CVBor37SAxRB3xvU8jwuHxsReW8pmZ
 8+yoWBRfNXburFzFHU8X3cCOjJedOIUei3A+QNOokNlbKEu2XNJYPWjNad8HZs53SiBM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IWjiS9mST4qjuFjH2SiWJ1pInBamKBdtNqV3KoJ5xCs=; b=SdYaVitMw2eztcM4YWG4w0mIcv
 Y9mfR+0Ku+Ch8bHPYZqiuOJUnroIKnnV7UPOlRYjfzC+jor9XnsNTLNHKmEGhF/+x63mbOo9p2kDK
 8tp0iYP64xdZi6tWhns+a6fcFAAgR42Z+7s4MZu8UJ0e1sTIh8Wpq0Q0vpYs7snQQaWs=;
Received: from mga17.intel.com ([192.55.52.151])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1npSHJ-0000Zw-Gk
 for tboot-devel@lists.sourceforge.net; Fri, 13 May 2022 10:12:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652436729; x=1683972729;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:mime-version:content-transfer-encoding;
 bh=9ra+ZTMhoI7FcBqiEt0/2bR4uizyKR+TAYMjmGoc/7w=;
 b=OneLlzt3whxArF0YOU9MJKBnz+QX0hD5mMKPj+DW/pIVqwRgtHA18zVt
 SBLDDg8AbD7Mjc6VVl9X8X8Tkd+Bl6QJ+eABf5/ogUkO6CbJPDNiAnOWg
 nCqmxEMidG63oivMHGBsPwWFxoUmu/DiVCLHu4h6LFiq/87a8XGQfCdk4
 VbXbNUVXwxh9IiSMiBDurtDOFybACHq96kaIBwLmCrVxFtKy2wagx39Dc
 ZeimaD0aBL6Ib6gFqY20mz52TJG04N1owHm7rC4GNnyrIgKvESqnBkQ/h
 HPMn3JzfBuedZwLHj3qc0L0TtArpGO0DkeZEWG0Xi0JYLbKU59PhsUL+3 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10345"; a="250801795"
X-IronPort-AV: E=Sophos;i="5.91,221,1647327600"; d="scan'208";a="250801795"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2022 03:12:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,221,1647327600"; d="scan'208";a="554168074"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga002.jf.intel.com with ESMTP; 13 May 2022 03:12:02 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 13 May 2022 03:12:02 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 13 May 2022 03:12:02 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 13 May 2022 03:12:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zj/Z/OhSvP2IvNuGA9sEgsjHUN4W1SA+bxwwRYDs+37ojfcsEA2o2It2/auPNa4M3YTRLtPej/yaVjXphNN3Cc2f8YfhW18pXaXNVZIlF9wuG+/Qr/8KRkilMY/eb2rrk+nqstnJ41fXpZjg0FtELAO2hlfrvgt4IeDCs+T0SjkA9IDEpGo8e2PvAr1BWSRZhAX1y56pZGe2sslJvCpLyP+H0Vn/ryX3KbYS+OMPQZ3CyWQvVU6zMO8n4sZFLB0zOrcpBuW09QXUQ+YggxXkOGy6DhByk5g7yAgqAvCuBvhkS/ji60p273gWdAvltShGazOKGk8sSuGLOuc3736/RQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LIF1y5mfkcS59PoFrRc5gASnySHHwoRwulzWAf3GXrw=;
 b=Zu5XqI7H7mUGEVdaB0JKORdmkx4hQYlijCEbpr/BSjI6hIMpuLBiGnlpDh733fkuj1Hc/Mn5h9FtKvdrbYSfOL7PIfUwvCu2Fr8R5w7siUh3J1+hY9kjSO9EFaVp2YuCX0rN75sOU0FqbGv4Gk/BPI0c+J3660yLgeFqZZcdVYDIbqDYoWI8rYRAp5kC9tD1hHi0acyOXLNIxWLUxJk/sTRNPpZhb1sEKUbpdrz8iVMF71tBbY2VE7D6AuIRomqCnx7rWWCuHuDj85epMHCUge+40qwErP00yKVUFehLXEFdhM4hMPYh14SO2SvosZHfnfNXlmoPSpUtrOUwq4yQvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR1101MB2070.namprd11.prod.outlook.com
 (2603:10b6:910:1c::17) by MWHPR11MB1808.namprd11.prod.outlook.com
 (2603:10b6:300:10f::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5250.14; Fri, 13 May
 2022 10:12:00 +0000
Received: from CY4PR1101MB2070.namprd11.prod.outlook.com
 ([fe80::1139:809d:2a86:dcc6]) by CY4PR1101MB2070.namprd11.prod.outlook.com
 ([fe80::1139:809d:2a86:dcc6%10]) with mapi id 15.20.5250.014; Fri, 13 May
 2022 10:12:00 +0000
From: "Randzio, Pawel" <pawel.randzio@intel.com>
To: Derek Dolney <z23@posteo.net>, =?iso-8859-2?Q?=A3ukasz_Hawry=B3ko?=
 <lukasz@hawrylko.pl>
Thread-Topic: [tboot-devel] suspend problem since kernel 5.15
Thread-Index: AQHYFsgdNvrgDroV/E6nh0QWYk7Ohax+foIAgAmajICAPgmhgIBV5/CAgAEqAJA=
Date: Fri, 13 May 2022 10:12:00 +0000
Message-ID: <CY4PR1101MB207005F236983E9353227654EBCA9@CY4PR1101MB2070.namprd11.prod.outlook.com>
References: <4b3349f2-69f2-d6d3-ab66-6178af102333@posteo.net>
 <dcb47ad40ac22b08380312c1c18f322848ccd4d6.camel@hawrylko.pl>
 <6ca692b5-c54d-c57c-03a8-e774a86762c0@posteo.net>
 <3ae8a2cd-9ca3-1feb-4a96-0abc54277b34@posteo.net>
 <9da7e209-01bf-ee90-33cc-d6ed9ef355f9@posteo.net>
In-Reply-To: <9da7e209-01bf-ee90-33cc-d6ed9ef355f9@posteo.net>
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
x-ms-office365-filtering-correlation-id: 503eebe4-7601-498a-5820-08da34c90525
x-ms-traffictypediagnostic: MWHPR11MB1808:EE_
x-microsoft-antispam-prvs: <MWHPR11MB1808BE194315AE0C70A3EB33EBCA9@MWHPR11MB1808.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4tirGVESjPatIjgtwXpaZlg8K/96+KCLd9u8Ryjpga7t5WcDgCqo8EjX868aJfkV8UyJ0RjtYLcBKQosrWxvbFFSsIXqXND/SDoVQN19Lwaal4fisSHqvPB6v4J4Dm1/GLdiloqqYjxw/agTS6tMxPElptPDwn+7D8dVkxNAJOKlklCBInSwZ1pGk4vcVYWLSYCoE+lg9BKjUCV53WFdophmHD5q0TK1bEYt2az60tAmhb88vH1usNk+EUJ0AH9JejWilEdGxeN0onJlrGfbolxTaYfOrDt5udpgsP8YY6s38D8i+cASdIKcxfDCqx6NeitGPgN7Mn3PJfvG7gx6vCLivwCSLrs+nXypunBKFtQbtJrN8HYJtqucw36wyztxbCJsr+rS9NEuy1IvvbANmKM3Y+v+x1hTNAqb9sWdwAdzcTKI2wa7+VVIGVAb9zhho27R2LJ/tElS5xV8tu06W7SRhERJoWE6dkEQiZ2EwzQVZiKRdByO7XkTjI3mPAAozigvMaBwntpVQOj2O8jsDkezI7KSGg0VfGKHeCgAz8zq0d8oPoLxUAEd8R9QDUdDlj8f+mnMBR9bovYdzzYAsWj2CzoGHjDxbXF596h4aaphYOI96re9sdf2cOkhy24IdUcb3ZdGn+7BD12xPqQXea43tIqcw48STezj7U8frnXEgILdIdk+GpvkYi7+fNpg56mSKgvJeBKR7VDA8btkf64rBXUhtLA2gndDJvqoC+ItMQxp4qQt2UUlwMm1jORabaPtktBBgW9pVxwpcjePLBnY77Pzqy7on250t4sD1mw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR1101MB2070.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(55016003)(316002)(38100700002)(186003)(38070700005)(2906002)(15650500001)(7696005)(82960400001)(122000001)(110136005)(66446008)(66946007)(8676002)(4326008)(9686003)(66476007)(64756008)(66556008)(26005)(6506007)(76116006)(5660300002)(66574015)(508600001)(86362001)(33656002)(8936002)(71200400001)(53546011)(83380400001)(966005)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?OmyKJgpD4/vGgr+A/UAAK/yii2yjKKkUVL++HWi0iLrnMv8kxP+r0533BO?=
 =?iso-8859-2?Q?KKRo4PEZ1at7RPUWTpTC0KhiT+ixF75nSfPawMQ4nQkClPhMB6sES3CSTx?=
 =?iso-8859-2?Q?7rLoXAfJEJEJCQLbNa3jnyQ/kGu+GJrXJxqoUhIXqrvrCCJMFhT3VitMvE?=
 =?iso-8859-2?Q?ZygnLxmyxdNAgtQjZiXzPTFa98x+bbs+NbWSmtZJJAiLp4/75IqMEiQCbe?=
 =?iso-8859-2?Q?CKvd3xw06RCHQeYsco2qEmw3gggwmaScXtZEC+bHxql2wn/7LwT6Lq0dlx?=
 =?iso-8859-2?Q?o9MAdfhAPGfMVDXkbWa5kzljl9CCv/58teBRDWb1vcmZWbx2EpLZohpJdw?=
 =?iso-8859-2?Q?A4a3AUG33av6erUXfSW14E7T9bzU2P1ibftOevF1P6wYttfEKHr64pEOIh?=
 =?iso-8859-2?Q?yjk7O5/QpOs33zt/PCSpo7JhBdiKbn9Z/iLQi1pF3GztiqoUyEQn6a5b5B?=
 =?iso-8859-2?Q?tM2fbp8XXHrP+bYeTOtBS6Ank+RTz3SYPiaIOFNYZLwjmc/HTB+I3UVB1b?=
 =?iso-8859-2?Q?RzQpt8wQ6JFw4cI3Ti9qe/IZfwPigobW6kTHA+KNnFAE8B1h6+h85ul22X?=
 =?iso-8859-2?Q?MjsN2pc5z5VwraHRXQkRvC7rvknoa3bZjfoxcX48BzT85nMW5M0k6NdVXR?=
 =?iso-8859-2?Q?XmPVLDmTzZsSPLWwW3/7J7T6U65YTKLqV3P+P8WiqpHzxEP7+250Gd0Dpc?=
 =?iso-8859-2?Q?uh3Z3pnOHRfN3WTjd3OzyIA/xlE0b+6Ydfmu6xgMZPfXkRaqCG+1A4TzL3?=
 =?iso-8859-2?Q?rNik22Zm3fJz4e9xJPstnZWD+Q6cxvxtJBm5IOWBs3ytjzqDxHRh2qcGcc?=
 =?iso-8859-2?Q?EQVFSXIuoXt5BPk618mNpBFuqMjmQaqcFPt633F5dB1eeGt+ftqYzZ63HY?=
 =?iso-8859-2?Q?PzlO6P6mWbumLPLZ/GzDcR64MHa/6T9UBjpr3sA5EF82mvjjGWlKHDLEMC?=
 =?iso-8859-2?Q?tkzxJyddDDbQFlG3o4sun88PjhAsQmDjC5a6T3zS6SrIZxiszJaNQnlHlu?=
 =?iso-8859-2?Q?xx+c4q+UFLpNSrvrb03lMuBE8t1vI+UFTwnTcSZI9Yc+UxkyXaEoIcIQw5?=
 =?iso-8859-2?Q?yeBTdIBC23JPFevw8hB+f7QKfDW3MJXfpxKSOtHcrU2TSf574/ZSOnANIv?=
 =?iso-8859-2?Q?T+9q+GDlaeqHIoZpXF3vD/Sru8ENSASL825U/IjX5uZz11wE4/cUPHqjBC?=
 =?iso-8859-2?Q?UnVGYloVsSK/eKQkOPFEdXlbQPH9x6rVnCOeCC9RC6VoCE2WdhFLCO6t7/?=
 =?iso-8859-2?Q?Qg4Ch5VyYv7BXsXJRB2kqGsw+gUO/IghUchWUlnUtUd5uzpUkF3SDycyRo?=
 =?iso-8859-2?Q?y+4/9Pu3UrR3t98fvCElr8e7+PPUXDzS5GjfnwNMnPEpg3HF28GLEIQMqK?=
 =?iso-8859-2?Q?H/qcoLcnKZO8HyhrDMP/E5BJQvXFyXOZZ9S16N54wtSD8md+LbfKssEhzL?=
 =?iso-8859-2?Q?kEPqCdaAuJzeAPvFTpLSqEpK/Ua9xDfdNckAvjmEUz4JDyW8wAF9xFwZCT?=
 =?iso-8859-2?Q?eNoLdMJf0ZjxyiHVzZ4Y7OrQfCh1t3puXfPeAcObxVrGEERbsGMxDP3aGV?=
 =?iso-8859-2?Q?FCVmI6zxFDMCHQFiYFsDujeYq+dKnSpKUbSV01XveATLxDUi8+UiW7yVKF?=
 =?iso-8859-2?Q?9l6BHswrxGZLaKcSI0BZZLo2OoZ3hfaFgvf4W5PM9MLO412SUdxEwVK8US?=
 =?iso-8859-2?Q?kCNdNoFnxxue72Eutx2IaLA0IhiZNLluBv2i4xzYFHIY0lVp4we/64MhkF?=
 =?iso-8859-2?Q?WHAtu32ZpGj2wOSa94sECCVapxCDqPwCwhx9D8zvFsJgcHwzDSKj5oKGgB?=
 =?iso-8859-2?Q?XO5smg/MLQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR1101MB2070.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 503eebe4-7601-498a-5820-08da34c90525
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2022 10:12:00.5594 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wrmhkmryK6ldQ9Sh21feOlVmHJRWRPPWaSc4/Z9ufoNG/DAPLN6GTUDoWCNSM0DnFDVEwmgrzFSgjblBbSMGVQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1808
X-OriginatorOrg: intel.com
X-Spam-Score: -3.1 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Derek, I've also been picking at that issue for the past
 few months and reached the same wall as you have with the -EBUSY callback
 return, although your message kind of gives me a new idea for where to look
 [...] Content analysis details:   (-3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.6 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1npSHJ-0000Zw-Gk
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
