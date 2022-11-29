Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C066D63C755
	for <lists+tboot-devel@lfdr.de>; Tue, 29 Nov 2022 19:45:30 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1p05bc-0007Je-3J;
	Tue, 29 Nov 2022 18:45:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <miguel.mota@ua.pt>) id 1p05ba-0007JP-FW
 for tboot-devel@lists.sourceforge.net;
 Tue, 29 Nov 2022 18:45:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=upeYHsUEbAfgDyoT0/soUSlw7uqq6G+7baTc6AS564U=; b=TCLHaAQbzrLdlALB/RhNL4xg8+
 oVjJ1n96dps0wbNMwJfpj7hmsJx4mzRuzTwxne3bYZywnFtYvF3DkTvx4z+UlBHyib5IHtr4LrbJC
 qwKMZMQMjslp6CzpSaJ/eD5xU/G6yxe6AGLgoEUOwCIn0WXwsPMU2iu1r/STwG/l8eUY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=upeYHsUEbAfgDyoT0/soUSlw7uqq6G+7baTc6AS564U=; b=SfrFfj1mx7yaJ8ACTTXuMEM9NS
 PFTj+b/fy3K4DiDkGsPYr9wgnUmK8xjpitPalLKjYEV7phMRolYADbld8REbOkvdq0UkPBXARKvPt
 BFvkrBc7Jp1Qo4Pt1NtnORa3ky0kFHc/1eTT6y5PCd+m0bKZABdck3OZb5CC7kvhQxZY=;
Received: from mail-am6eur05on2129.outbound.protection.outlook.com
 ([40.107.22.129] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p05bV-000VmL-4x for tboot-devel@lists.sourceforge.net;
 Tue, 29 Nov 2022 18:45:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g0octFSy86OXwcZGCmxlc6bpP/rjWAwJ5Gm6sa1Ddn4JF6z+r77gyf2CEGorhJ+sMiOrMRnA1aGd0AemDqWarJRyczthZuzOCB19bjigsgK0p9rcQtXA30nCbLQmJYqd4Rt4diHsOJnZFYSrG9dsDf2nONqsjMuKGeFT7OoZzqtmPzqPV/B3hRtCQMTxUQICZjJCKDbqEPYLWSebC3vyVX0QLUpVflYFxe7/P1z8cIVsBXkNe+I2WIWrpkGnTobG7vlDqFqXP/QBDihQDdh0ajqdIdKaatHwutLqztlkIKTRYRSTJapfnK94cIk2nNa5x9mbPvyTvF0GlW0UTMCCbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=upeYHsUEbAfgDyoT0/soUSlw7uqq6G+7baTc6AS564U=;
 b=jNfowHgmGePoiVpKy9bn4VqPYSwZuqiO22mBypvBzjXSNjOGwMR9eoLSpqz3MA8yP9V2ur2mX0mlca4URRcDb+uPHng05czTVHySUk9Zph6KDEMDhQPHZ6LpSRANsmeO6Wzb/iApu/wnwMjVL1k3fKaJyCteDwTwNeVBY/sSyxfUjEPlgWEFW3RvwZx21UOmNCiHHY7uLE0PRcVH56U1yZENXByv6vhFf+65uw0djPAjHPm0Ul061BR/Or+qPbGt6B8sKk7Nqg5PkUSYbhAkxQ4PHwMxxpp9tOrCvu1RKq0NnHxQiNTzeu6SnIsyIcHbYsGVDkZO3NsbVmnQUF2jLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ua.pt; dmarc=pass action=none header.from=ua.pt; dkim=pass
 header.d=ua.pt; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=uapt33090.onmicrosoft.com; s=selector2-uapt33090-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=upeYHsUEbAfgDyoT0/soUSlw7uqq6G+7baTc6AS564U=;
 b=r+BsSAnlpcNQarfBt4FZtOt3HDagaqeX3Z9V1r5djYuNzkyz+VDu5GU/UZS57AnakjZGLWPnt+WJsncimfXHmEdlE0E0IJahtH5pV/u+6UoRtWS7JqfRd34TnVClupuKrHXArgOZD+1+Bk52JKkHDYdR8n5/3kH/LQ3+zfpulew=
Received: from PA4PR02MB6605.eurprd02.prod.outlook.com (2603:10a6:102:f4::21)
 by AM0PR02MB5890.eurprd02.prod.outlook.com (2603:10a6:208:185::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.19; Tue, 29 Nov
 2022 16:12:12 +0000
Received: from PA4PR02MB6605.eurprd02.prod.outlook.com
 ([fe80::91d7:14fc:2680:21e6]) by PA4PR02MB6605.eurprd02.prod.outlook.com
 ([fe80::91d7:14fc:2680:21e6%7]) with mapi id 15.20.5857.023; Tue, 29 Nov 2022
 16:12:12 +0000
From: Miguel Mota <miguel.mota@ua.pt>
To: =?iso-8859-2?Q?=A3ukasz_Hawry=B3ko?= <lukasz@hawrylko.pl>,
 "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Thread-Topic: [tboot-devel] TBOOT on a PowerEdge R730 with a TPM2.0
Thread-Index: AQHY2lfzVdv7iEfpzUq6HKIke6TnPa4HWReAgE8Expk=
Date: Tue, 29 Nov 2022 16:12:12 +0000
Message-ID: <PA4PR02MB6605057D87ECB7F36F3261A4E2129@PA4PR02MB6605.eurprd02.prod.outlook.com>
References: <PA4PR02MB6605DF8E404E182ACECE06EFE25F9@PA4PR02MB6605.eurprd02.prod.outlook.com>
 <fb2f9b64ef053380da568c86ccb091de52528cab.camel@hawrylko.pl>
In-Reply-To: <fb2f9b64ef053380da568c86ccb091de52528cab.camel@hawrylko.pl>
Accept-Language: pt-PT, en-US
Content-Language: pt-PT
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ua.pt;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PA4PR02MB6605:EE_|AM0PR02MB5890:EE_
x-ms-office365-filtering-correlation-id: 4699b20c-cca1-4231-6c11-08dad224794a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yoSRnNSJkiHKX4uBXWJJEq2TwRZBMQt19TlrEJP9NlLpRe14b3Ja78l76eBmRemi6v7G1weHFITgyEEekABMdKvvU6oUGn2yKQOPEItWiCjvipdgpeEwCfOMNezG4dhZuCqgalV2tT8UaddrLvBgB/CxWIzC/AFW6ipvErG+qe7kG2zMgbDVmojn3JSrJ0+ik4vm5i//QUMQ0o2yZ7Eus4pdky8ANITVWfo8q3DAWYxom7h/wNJup09iY0t4DGMMdVKQ1g2GfTl2zo40Um8/AYHc9UqSl0LvJKKHfRaAgdKuBk9PlJrwlZRhLWZdiQXr3bPbfC1aR5UWbNNOHOgN+Ea821ofltKeNp5OdaatS/80tQ8J3DW04gZGtl6Z2XUkg/F4ATot5wo4QZjDVFj1znC9Sab4xtrhjWvH94WWJ26Qv4muWWcnCdEhJAqLCF665McLITXi2eLa/RTu6CttH0FMS+e71XbYD2YkY0n/kheVQYPT9an9NzjpZFoi46xYu7y/zpL2ohZxhfFzcO2oOBZ2NVZtf8gG543hBN/VvJ/RIcXjtykMIcRDkslE1JBUIAaJmyNxZ/rzaEhzQ/WtWgS7RSZxo3T7cfv3nrloEXNKh09AY3wiFs5ueqbLPfWJ2O9L4P3hhW3yBk92CE8Z4sep2qecow2kzHcxWxmxD8zreIDYYx2lvSI1pfH2hXSl
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PA4PR02MB6605.eurprd02.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(346002)(136003)(39850400004)(366004)(396003)(451199015)(41320700001)(186003)(8676002)(66556008)(41300700001)(66446008)(8936002)(76116006)(9686003)(66946007)(64756008)(478600001)(7696005)(786003)(316002)(66476007)(71200400001)(26005)(33656002)(52536014)(38070700005)(6506007)(86362001)(55016003)(19627405001)(5660300002)(2906002)(66574015)(122000001)(83380400001)(110136005)(44832011)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?1TqlY4GLeaQt/DOPlWHVJAscfJShdzHRBL/eqml2UTPKGSl0Kw4p3dfUG7?=
 =?iso-8859-2?Q?2UQzcgj7XeLQXEFprsxEqWfFAmiBn/EfUWQ77zogGpePWKLjtbKwIVrDps?=
 =?iso-8859-2?Q?OOA4fVeJIrh4MS61iKKnxKNvB0a90Y8dXKPGs9eOql32fnLeoBD2fZMVUN?=
 =?iso-8859-2?Q?E5NR0h7YW43zAHCLT55q1mIvokuv+Q6z5yVaoPwwlh4NBEgjmIMGkLahkb?=
 =?iso-8859-2?Q?qXTeG8LtR8CNMjqB2eD78w7A3D/1DLnefSz+N4qfgpV1sxidyGmkSuD9XZ?=
 =?iso-8859-2?Q?3/oW5cXCT5ic5OVRegW7foarF2dz/ppTYPQeeDWwMMTMrB/rY2YMk+eARe?=
 =?iso-8859-2?Q?e8ALjvx9WbnTwxPChSZVnQ4RpfcvVwCs+pfFtXb3GZ880yk0+Iu+GFphNs?=
 =?iso-8859-2?Q?t/lhUVe5s0re6K0eMhCanIJY85OSbeD4ZPj1uMfOrS1CF/NCkjLMWNdb6h?=
 =?iso-8859-2?Q?hc0dUDflUExU3mkWKoexC7mzI66XILzzyusTxmRue8tvElw1kZjeBLqnwJ?=
 =?iso-8859-2?Q?Buoh828Fyw3rbjN8HvDDb1l5fup7Fi6eUEOgJl8d7U5DtxsTLkqO1ctLxF?=
 =?iso-8859-2?Q?d+YBXFrbjNc4PGn+DN9EcciBg47vBNTJZCK8ZCZbm731REOptENmLGi8iT?=
 =?iso-8859-2?Q?jrwG7qsAIv+J7mebrcvp6kDdO+vhAokXSJF1984n79K9Duh/QtU/GotLBC?=
 =?iso-8859-2?Q?Z2TOvJ2OVqApJZ5WMkhhai+LJO2sKGQpp+/7XyqTxhF1lwxdvalyLG0tdU?=
 =?iso-8859-2?Q?B1Jj7+vz4BRgz0clk5JWM+h91G5zgoFHvt6C0hCLG42GtSnUQf9OP5F13M?=
 =?iso-8859-2?Q?XfeopULUiwUt8wkCjdnJMktB+m1DRZWqNU1W7tx1B4Pr6qd9dDTNZCYP2t?=
 =?iso-8859-2?Q?iV8Prhlt3y7Jf5UntplLkVuY+M3lEQwh0e4gYpIp8NdULo/UoC6C1YMwdA?=
 =?iso-8859-2?Q?10YHpsLTPUDWVVn71JqI6sPPmeCi9n0VdiXa1A9SIt3xKx9jQWYTT2YP5B?=
 =?iso-8859-2?Q?wZUKzWKVByIVpPIHR2NlK2vPsxWb1oOjm8Qtllw2bxkcJX7yjAtBfCMCkD?=
 =?iso-8859-2?Q?vM5c9gLRGCONMJ+YSmmCOsNvfvXralqTUNvm9M76EXkVvoDg9kUHPR1LOL?=
 =?iso-8859-2?Q?ODXuTlVG3AwXB2KjEgqs666vgZolUS/ZqlIR/tyixsLkTgUvViU6cc5pkZ?=
 =?iso-8859-2?Q?YdyYuxUEYUE91S2SKY64TJwMRM+6jpxEj+MjH8W2N0y9xikWua8pnMh1nF?=
 =?iso-8859-2?Q?T1s47HS+d5Sqmof/SRPl+SBchta61d4459rVtboVBy8vgdn5ty1PLBPWMn?=
 =?iso-8859-2?Q?tiqjdXYU0h23ki8MTJPn+eV4xPP2AgyJkL684dJ/NzqtCAz2OMr5zqabdh?=
 =?iso-8859-2?Q?hI44aMkaB2Hp/iqyrOgrAQM5ZFWE2weDuHdZhSW2aj//5qpsGOAXVkYbD3?=
 =?iso-8859-2?Q?DZUz8gsji6Q1o0x3DId4R+uiq+Rk7BnmOzewL/LzyL+hGIyEjVDiLlg4QH?=
 =?iso-8859-2?Q?GzL6YbAFuv3sp7KCFbyYyLdMw4PYROE/kIvRHkBSPLtBu3xxOwV0kiaSml?=
 =?iso-8859-2?Q?trFIqG6j1dWvjn0tL8IriKuoANRopVWIrjHdehqUN+//fIqSrnnejgLzla?=
 =?iso-8859-2?Q?7hnSqfLUYwy3Y=3D?=
MIME-Version: 1.0
X-OriginatorOrg: ua.pt
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PA4PR02MB6605.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4699b20c-cca1-4231-6c11-08dad224794a
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Nov 2022 16:12:12.1297 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c1025aae-98b9-4021-b4b6-c201214b884e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Vww2qeszbtmwIICM22SESesD4Vw8jwqIdAoRGGAiyGHVjy1WPi8ju/9j5aNZBzY7aObA0ALSv/xdVhh9yMQuQQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR02MB5890
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, £ukasz, First, thanks for the previous answer. It has
   helped me move forward with remote attestation. While implementing the remote
    attestation procedure, I attempted to extend the TPM's PCRs further. More
    precisely, PCR 21 is locked behind locality 2. Therefore only a trusted OS
    can extend it. Howeve [...] 
 
 Content analysis details:   (-0.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [40.107.22.129 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [40.107.22.129 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
X-Headers-End: 1p05bV-000VmL-4x
Subject: Re: [tboot-devel] TBOOT on a PowerEdge R730 with a TPM2.0
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
Content-Type: multipart/mixed; boundary="===============6402753767614647454=="
Errors-To: tboot-devel-bounces@lists.sourceforge.net

--===============6402753767614647454==
Content-Language: pt-PT
Content-Type: multipart/alternative;
	boundary="_000_PA4PR02MB6605057D87ECB7F36F3261A4E2129PA4PR02MB6605eurp_"

--_000_PA4PR02MB6605057D87ECB7F36F3261A4E2129PA4PR02MB6605eurp_
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable

Hi, =A3ukasz,

First, thanks for the previous answer. It has helped me move forward with r=
emote attestation.

While implementing the remote attestation procedure, I attempted to extend =
the TPM's PCRs further. More precisely, PCR 21 is locked behind locality 2.=
 Therefore only a trusted OS can extend it. However, I can't extend that PC=
R, even though the txt-stat tool shows the following:

"TXT measured launch: TRUE
 secrets flag set: TRUE
...
 locality_1_open: TRUE
 locality_2_open: TRUE
"
The tpm2_pcrwrite command returns the following error:

"
tpm:warn(2.0): bad locality
"

So, from the previous message explanation, I can't write an LCP due to some=
 platform misconfigurations. These configurations don't allow me to write t=
he LCP to the expected NVINDEX. I wrote a VLP instead, which up until this =
point, was working as expected. Is using a VLP instead of an LCP the reason=
 for not being able to write to locality 2 PCRs? Or is there something else=
 I'm missing on?

Best Regards,
Miguel Mota
________________________________
De: =A3ukasz Hawry=B3ko <lukasz@hawrylko.pl>
Enviado: 10 de outubro de 2022 10:01
Para: Miguel Mota <miguel.mota@ua.pt>; tboot-devel@lists.sourceforge.net <t=
boot-devel@lists.sourceforge.net>
Assunto: Re: [tboot-devel] TBOOT on a PowerEdge R730 with a TPM2.0

Hi Miguel

On Fri, 2022-10-07 at 14:30 +0000, Miguel Mota wrote:
> If I change either the kernel or the initrd the system still boots as
> expected (since I have policy of continue instead of halt) and the
> PCR will have different values (as expected) but the TBOOT tool says
> the "TXT Measured Launch: True" when I expected it to to be false. Am
> I miss-interpreting the normal behaviour of TXT here? Also, is this
> VLP (without the LCP) enough for remote attestation? I'd say yes
> since pcr 17-20 have all the required information and they can't be
> altered by an bad actor due to their locality requirements.


"TXT Measured Launch: True" means that system was successfully booted
with TXT. Measured launch is a process where measures of boot
components are collected and stored to TPM PCRs, but not verified. This
is the standard behaviour of TXT.

For remote attestation you don't have to provision LCP or VLP, because
default policies already collect measurements. You can use LCP or VLP
to configure what PCRs will be extended with particular boot
components, but in general this is not required.

To sum up, you are right, your system is ready to enable remote
attestation.

Thanks,
Lukasz

--_000_PA4PR02MB6605057D87ECB7F36F3261A4E2129PA4PR02MB6605eurp_
Content-Type: text/html; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
2">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<span style=3D"font-size: 12pt;"><small class=3D"ContentPasted0"></small></=
span></div>
<span style=3D"font-family: Calibri, Helvetica, sans-serif; color: rgb(0, 0=
, 0);">Hi, =A3ukasz,</span>
<div><br>
</div>
<div><span style=3D"font-family: Calibri, Helvetica, sans-serif; color: rgb=
(0, 0, 0);">First, thanks for the previous answer. It has helped me move fo=
rward with remote attestation.</span></div>
<div><br>
</div>
<div><span style=3D"font-family: Calibri, Helvetica, sans-serif; color: rgb=
(0, 0, 0);">While implementing the remote attestation procedure, I attempte=
d to extend the TPM's PCRs further. More precisely, PCR 21 is locked behind=
 locality 2. Therefore only a trusted
 OS can extend it. However, I can't extend that PCR, even though the txt-st=
at tool shows the following:</span></div>
<div><br>
</div>
<div><span style=3D"font-family: Calibri, Helvetica, sans-serif; color: rgb=
(0, 0, 0);">&quot;TXT measured launch: TRUE</span></div>
<div><span style=3D"font-family: Calibri, Helvetica, sans-serif; color: rgb=
(0, 0, 0);">&nbsp;secrets flag set: TRUE</span></div>
<div><span style=3D"font-family: Calibri, Helvetica, sans-serif; color: rgb=
(0, 0, 0);">...</span></div>
<div><span style=3D"font-family: Calibri, Helvetica, sans-serif; color: rgb=
(0, 0, 0);">&nbsp;locality_1_open: TRUE</span></div>
<div><span style=3D"font-family: Calibri, Helvetica, sans-serif; color: rgb=
(0, 0, 0);">&nbsp;locality_2_open: TRUE</span></div>
<div><span style=3D"font-family: Calibri, Helvetica, sans-serif; color: rgb=
(0, 0, 0);">&quot;</span></div>
<div><span style=3D"font-family: Calibri, Helvetica, sans-serif; color: rgb=
(0, 0, 0);">The tpm2_pcrwrite command returns the following error:</span></=
div>
<div><br>
</div>
<div class=3D"elementToProof"><span style=3D"font-family: Calibri, Helvetic=
a, sans-serif; color: rgb(0, 0, 0);">&quot;</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Calibri, Helvetic=
a, sans-serif; color: rgb(0, 0, 0);">tpm:warn(2.0): bad locality</span></di=
v>
<div><span style=3D"font-family: Calibri, Helvetica, sans-serif; color: rgb=
(0, 0, 0);">&quot;</span></div>
<div><br>
</div>
<span style=3D"font-family: Calibri, Helvetica, sans-serif; color: rgb(0, 0=
, 0);">So, from the previous message explanation, I can't write an LCP due =
to some platform misconfigurations. These configurations don't allow me to =
write the LCP to the expected NVINDEX.
 I wrote a VLP instead, which up until this point, was working as expected.=
 Is using a VLP instead of an LCP the reason for not being able to write to=
 locality 2 PCRs? Or is there something else I'm missing on?</span>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted1 ContentPasted2">
<br>
<span style=3D"font-family: Calibri, Helvetica, sans-serif; color: rgb(0, 0=
, 0);">Best Regards,</span><br>
<span style=3D"font-family: Calibri, Helvetica, sans-serif; color: rgb(0, 0=
, 0);">Miguel Mota</span><br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>De:</b> =A3ukasz Hawry=B3ko &lt=
;lukasz@hawrylko.pl&gt;<br>
<b>Enviado:</b> 10 de outubro de 2022 10:01<br>
<b>Para:</b> Miguel Mota &lt;miguel.mota@ua.pt&gt;; tboot-devel@lists.sourc=
eforge.net &lt;tboot-devel@lists.sourceforge.net&gt;<br>
<b>Assunto:</b> Re: [tboot-devel] TBOOT on a PowerEdge R730 with a TPM2.0</=
font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">Hi Miguel<br>
<br>
On Fri, 2022-10-07 at 14:30 +0000, Miguel Mota wrote:<br>
&gt; If I change either the kernel or the initrd the system still boots as<=
br>
&gt; expected (since I have policy of continue instead of halt) and the<br>
&gt; PCR will have different values (as expected) but the TBOOT tool says<b=
r>
&gt; the &quot;TXT Measured Launch: True&quot; when I expected it to to be =
false. Am<br>
&gt; I miss-interpreting the normal behaviour of TXT here? Also, is this<br=
>
&gt; VLP (without the LCP) enough for remote attestation? I'd say yes<br>
&gt; since pcr 17-20 have all the required information and they can't be<br=
>
&gt; altered by an bad actor due to their locality requirements.<br>
<br>
<br>
&quot;TXT Measured Launch: True&quot; means that system was successfully bo=
oted<br>
with TXT. Measured launch is a process where measures of boot<br>
components are collected and stored to TPM PCRs, but not verified. This<br>
is the standard behaviour of TXT.<br>
<br>
For remote attestation you don't have to provision LCP or VLP, because<br>
default policies already collect measurements. You can use LCP or VLP<br>
to configure what PCRs will be extended with particular boot<br>
components, but in general this is not required.<br>
<br>
To sum up, you are right, your system is ready to enable remote<br>
attestation.<br>
<br>
Thanks,<br>
Lukasz<br>
</div>
</span></font></div>
</body>
</html>

--_000_PA4PR02MB6605057D87ECB7F36F3261A4E2129PA4PR02MB6605eurp_--


--===============6402753767614647454==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============6402753767614647454==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel

--===============6402753767614647454==--

