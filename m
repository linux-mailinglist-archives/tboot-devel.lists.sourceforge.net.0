Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AA6A446661A
	for <lists+tboot-devel@lfdr.de>; Thu,  2 Dec 2021 16:03:04 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1msnbs-0001Rb-Kc; Thu, 02 Dec 2021 15:02:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <Travis.Gilbert@dell.com>)
 id 1msnbk-0001R5-Bh; Thu, 02 Dec 2021 15:02:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=I5vDlgXttbwPfXEJHjfIj3E24x5vZ7KY42KbZZIrYnM=; b=mBOQkNZzqV0wEF3+xfS3tjpNsS
 +a0G1L8TB1MWer6cwA92a/83esf0QjMKze2ThwWo3U1jwk24Q179yxtKMq8wAdr+ryq1sPjbmvznf
 FgGNVCEaFlMpRDFuf9kOfrqAsHDrrBYPyD0gJpnaDMIwoQnJp+K7VIU7e8ln1LfOkMpY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=I5vDlgXttbwPfXEJHjfIj3E24x5vZ7KY42KbZZIrYnM=; b=JwLB4xw8l3XFEuZpWF4ozfxkPh
 8BLKhEZS/p+gDhJNP7khPf3eYkpyt7gyt44jnkyeAQKeemKfIrbWKmiEU6EzJrQ7trut3kUTr8kvO
 FngcUAuKdVM45IE4BvS3Ebldaqw+ubX2bKSsEukCulrVWmAxIHGD+plfyQcKessqkrL4=;
Received: from mx0a-00154904.pphosted.com ([148.163.133.20])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1msnbe-0003S5-75; Thu, 02 Dec 2021 15:02:45 +0000
Received: from pps.filterd (m0170389.ppops.net [127.0.0.1])
 by mx0a-00154904.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 1B1BI5R9018886; 
 Wed, 1 Dec 2021 12:05:34 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : subject :
 date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=smtpout1;
 bh=I5vDlgXttbwPfXEJHjfIj3E24x5vZ7KY42KbZZIrYnM=;
 b=qhnPHZ4PIDX8LTxGpixv1QpZVLKGPnhkX4SeTsuOtuVN7JUyualZhmSISnLlm5/6z2ml
 1DESApj8DJSKHJCcDYFHhLvDJvpftJp7IpLYcrb2x2LQDUui122uAqft60cuEQvMuweN
 DGYOCFoAdLegRIJ7U+xtpyb03439yfBet2VqXmX559M33S0mOKg0Re1CEUIWobydOUrV
 /SEJ2n2vOveBFr0W+ubH3tk4PNqap4QpHSFKwrvn63yLMfgDg/ptdvAC/nlFT2UjQJU+
 PKDdPn0TivgfTYB4HgrogbHg2k+tLb/n6Z9rK6qUu/JpQB+xLaN23Zy4Q2ly4RM2guN0 NA== 
Received: from mx0a-00154901.pphosted.com (mx0a-00154901.pphosted.com
 [67.231.149.39])
 by mx0a-00154904.pphosted.com with ESMTP id 3cntnymk1q-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 01 Dec 2021 12:05:34 -0500
Received: from pps.filterd (m0134746.ppops.net [127.0.0.1])
 by mx0a-00154901.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 1B1H0xv2188708; Wed, 1 Dec 2021 12:05:25 -0500
Received: from nam10-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam10lp2109.outbound.protection.outlook.com [104.47.55.109])
 by mx0a-00154901.pphosted.com with ESMTP id 3cnqghhrsb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 01 Dec 2021 12:05:25 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YT6kEaEPbeKuim2jhn4F6v3HUc5biuvqPjCzh2EsmSDwzWtghtJNj74m4/Ct4QCp68N3C3CKTpi6gpd75RFaNERTI/I4EpG2LY4vrs/AH2msueke+ZaOKu3hU79JFB5J2ZY0KaZA0wQq3JtFW8wWAoL7xmOmB1GECGuRuZJk0F1xfsewyxMXNjqqgYLmXTkESlbbm/EzdXH/ECOqMfCHeoiz27H6gRavNauIAHqOFvT59wkhJULYSPyVCUklj6MsesR3mEmLd9TWGN/z5SJRmfFa/yHsTsHUbUhgjr95yWBQJsA7kwVeg02VGY10KK0aC+3AjzN1oSOJPg/4kfvzDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I5vDlgXttbwPfXEJHjfIj3E24x5vZ7KY42KbZZIrYnM=;
 b=ciTCmfFHl4FD4JdvAIkpmgdQrmHcqVOpiXf3kDYx7Rtn1qQ4rdSnThB4VHiziTU5ROkqQGfdRPYmcFdklx7kO+gaCy99pcrn6cFBbtJQK/roOmKLC01uNgmaTEnoyzrawrqWVvQk0aEoQxtnrtYtARbbnZT9jYX0PnbFH0wteXpRC15ip2C6OdXzVpgp84Ja2zOoEhOQ5AQf+0Xv79YtJegyil2zz9ML8QySJzZ5MCtBkSl/AmDPNUxSPAsmYK0wQ1+xUrz2hWFzH/bQkocHM9tP4DtvB4pxJk16k9FPtoPRYUb8UX/EeMBGSMvlytwbF18LZyUFF0877LJeXiOvpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dell.com; dmarc=pass action=none header.from=dell.com;
 dkim=pass header.d=dell.com; arc=none
Received: from CO1PR19MB5233.namprd19.prod.outlook.com (2603:10b6:303:d8::22)
 by MW5PR19MB5481.namprd19.prod.outlook.com (2603:10b6:303:190::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4690.26; Wed, 1 Dec
 2021 17:05:24 +0000
Received: from CO1PR19MB5233.namprd19.prod.outlook.com
 ([fe80::59fa:24ce:1240:4ab]) by CO1PR19MB5233.namprd19.prod.outlook.com
 ([fe80::59fa:24ce:1240:4ab%9]) with mapi id 15.20.4734.024; Wed, 1 Dec 2021
 17:05:24 +0000
From: "Gilbert, Travis" <Travis.Gilbert@dell.com>
To: "greg@enjellic.com" <greg@enjellic.com>, "Randzio, Pawel"
 <pawel.randzio@intel.com>, "tboot-changelog@lists.sourceforge.net"
 <tboot-changelog@lists.sourceforge.net>,
 "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Thread-Topic: [tboot-devel] [ANNOUNCEMENT] PCR Extended Policy - planned
 DEFEATURING
Thread-Index: AQHX5siim3N50ZvpR0K0jbLWjCNtfKwd3Mtw
Date: Wed, 1 Dec 2021 17:05:24 +0000
Message-ID: <CO1PR19MB52333B9A94079CB744097C2483689@CO1PR19MB5233.namprd19.prod.outlook.com>
References: "Randzio, Pawel" <pawel.randzio@intel.com> "[tboot-devel]
 [ANNOUNCEMENT] PCR Extended Policy - planned DEFEATURING" (Dec 1, 9:04am)
 <202112011453.1B1Er4LL029272@wind.enjellic.com>
In-Reply-To: <202112011453.1B1Er4LL029272@wind.enjellic.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_73dd1fcc-24d7-4f55-9dc2-c1518f171327_Enabled=true;
 MSIP_Label_73dd1fcc-24d7-4f55-9dc2-c1518f171327_SetDate=2021-12-01T17:05:21Z; 
 MSIP_Label_73dd1fcc-24d7-4f55-9dc2-c1518f171327_Method=Standard;
 MSIP_Label_73dd1fcc-24d7-4f55-9dc2-c1518f171327_Name=No Protection (Label
 Only) - Internal Use;
 MSIP_Label_73dd1fcc-24d7-4f55-9dc2-c1518f171327_SiteId=945c199a-83a2-4e80-9f8c-5a91be5752dd;
 MSIP_Label_73dd1fcc-24d7-4f55-9dc2-c1518f171327_ActionId=5395caa3-e9df-4b3a-9318-e2b73a7e5a77;
 MSIP_Label_73dd1fcc-24d7-4f55-9dc2-c1518f171327_ContentBits=2
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bbbdd84f-2812-473f-a3eb-08d9b4ecc409
x-ms-traffictypediagnostic: MW5PR19MB5481:
x-microsoft-antispam-prvs: <MW5PR19MB5481BF1BF1B075AC46FCF34783689@MW5PR19MB5481.namprd19.prod.outlook.com>
x-exotenant: 2khUwGVqB6N9v58KS13ncyUmMJd8q4
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7vleDC+N6ke+Eq/qh60MDKa9oInlfUtdTHiN/ONaeVoLyRFQEI6ftJ6jIjvko+1/NnOvLbsrpBFMMzhBzhyX2+9MXsDskNSiJxSDpGH0I1VOWGg6A8kHPg/9G5HPFTa7aAuDf92KF/j7fiE2QOjqb+pQB5qaqPyq76GEO7n6IagzyTbBsxC1VAGogz1cgWE+LxSd9bNuZKZk9fRYQocIS7f2Y1yWEAiDMCcrTQAIpZsO3yND9u83jwbQY+kn9EAG8z4XlHbkwq1N+wG+bN4WBDFc99cwKx89U24NYZ8Vs/tENhMW9DMvu3PtxIrrxWb6fDyHtyZVApWWy/bAGHTuJkqHyobb/n1w8ZahmPyHKoWaTsfTPiq8Z3+/Syf6tGhwk+CF3THPESk5WnO5xgheX7VY7nwKceDCm3Bfv1hPc71Gyz9Q5mh4OP7ytu+AcKpHyJnqbUpWMQLqHUMLBPEm0ea81cT7Pd/Rd6UX2kbLf1xEBuN3SxH0xTZDI6Aw6xG6p5spxGlDGvaTjhFGnSFAvK53xX9ABCfxA0IrfYtKwiz2mt0u33V0ZKd4I4VDxcJCAbFP434ewn/9yLhiyLH9r6pmh8cETHTTgBiPzs2W3QoUX24lZIWf/7OtB3m55llq5+pgSB+tOvfwUqpg7w5NxXZg6zdhSaoodZGZxpiSlj8uLzQeuFsvNIdHcQMglzJFz2YeWNBrV1pc44xBNtHxZw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR19MB5233.namprd19.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(110136005)(8676002)(52536014)(55016003)(508600001)(38070700005)(786003)(66476007)(66446008)(64756008)(66556008)(86362001)(316002)(76116006)(83380400001)(7696005)(2906002)(26005)(66946007)(5660300002)(33656002)(122000001)(186003)(71200400001)(6506007)(8936002)(9686003)(82960400001)(53546011)(38100700002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?IG+bxhu4ZlWm3H3PWpGrZNTrQdde+YLV8+f4ztEkQU2hkQGTwJgm8gpog7AM?=
 =?us-ascii?Q?rxW0fBzIueXx24Dlee3JysmW8a3aqhQJcKelaaAKgNqtwj4oxpm0yMO2H/br?=
 =?us-ascii?Q?p/HeuOgymxkT8ZUyRfDF34EzMlF95Q8xT8EB+XXLWo05uQHjsuWfFCg96IzT?=
 =?us-ascii?Q?Yc9wqUSLrpXjnwAXizIwSxh8WY1KZ22FA1RUcn+hxDhwkPB72xqbOFzFK9ja?=
 =?us-ascii?Q?YtTZpG20i8brtCrcpew+h9NCcT8bwnsJKYsdXj8LHVBtJT1KY8h8omz/Qt2T?=
 =?us-ascii?Q?G0haVYu26qaFeIKGLeVERLylitwy29KpgvOFSiVC4Ifvlrk546RrvJfvGi6A?=
 =?us-ascii?Q?/1zkIFOU2ShPqXHxKn0hc89AOTHZcZKnY/GDc8q7Of7ZTcXYzfA5f64P2BjN?=
 =?us-ascii?Q?gCeWqianwkO33Qf49vQ+L8XWtXjwXO0N9niOc+FoqwpXpQvqURiG0i+Z4KHo?=
 =?us-ascii?Q?X6lOGM8mCwQEFeD+OYSdwJiFIHbjc0UEVh73Lgkld7BPFMzIfey4I2wclb3e?=
 =?us-ascii?Q?pIrKjOSbZedXM5EUrvgd9h5INV/M6luW+mIkFus/uo1H1LOVejEmKMNkIB7d?=
 =?us-ascii?Q?3jUIzY8ozG3L0vVp1OWBpBMcKQDWNGFqnfSTdpbMtJ91h+4A2wir7SOtxnxo?=
 =?us-ascii?Q?C8aZ5cqISoZbncy8R00DgnS4cF2bysB2yDbPNZsEvEJ/4eSq7l4G3LB4aKmZ?=
 =?us-ascii?Q?Qdjy3HrpdDlJq7bRBIaFJ0ZcohzuiQe74qCA00Hh1jiCAZT9bq43HcIW0dXG?=
 =?us-ascii?Q?lRh5XeKRhkz5BUBUTEa409u3FiQ8WAlDQlKXdPIfxVegwrPmZeVRNul73Bl1?=
 =?us-ascii?Q?oCadkLgy+Hc7VD0sca6mifQ10bRzyR7iQg89PHs/0t0xpz4oq6xwe9G9zAdL?=
 =?us-ascii?Q?r6+LCwgqez2qARDygjw/QxMXwKI/zJFQyP5m5TgQ4K7U4ZLhiv+tgwDnTmvu?=
 =?us-ascii?Q?nUFdp+PX1tqerhgvlDd+YfQoUv0vh50auv2s/fpJAupm/nQUWq+HuWXP5t1P?=
 =?us-ascii?Q?I2y4zvltWslAPWwELqItxI2FTGlEFscenLh12pLlYbLfBItKp6Pnj6acDGGa?=
 =?us-ascii?Q?JnQ/MnNuB7gUoEIQfBYqJUWcfzz/V9MRfjywW5V9/SfQVCH518xtgQQJveVP?=
 =?us-ascii?Q?4OJyxzMhmOC5wsSRrCuSlLyBQk4uN5XBi2AMNPEfdwZN/wy+c9HLlDA3UKay?=
 =?us-ascii?Q?BCF2b/ViSitR3ATo5XOMsSPEnpsPM1vpMwN3cebvD5B+lp42DOoAqvAXenTN?=
 =?us-ascii?Q?pfghlLSPyZxp3L/KF4HZWmxb1k1MCsOD3HJcHkPNSTc9PazZhScT+0apTgUS?=
 =?us-ascii?Q?njes9OvH4/BtKbhVmUXdWAn646+JMMYyM+yqFclcBk3Bg7JNJxewDGEM3SWG?=
 =?us-ascii?Q?j23dLJGa2G0LYKlI5liHR7XoG4QVS3mcaHLrNIEh/VcKB9226bkJgHM4aZoH?=
 =?us-ascii?Q?3BN/UsCYhvurW66srSqCbzuGUI1yLRJ09INs28+gQF5J3AAyWZXP7YbQXNUq?=
 =?us-ascii?Q?XjVjQQqgjNj+K3i3WlcNtNRSuMl6A6IVsCznWxLFtivvEpfqJzYgA136SRg3?=
 =?us-ascii?Q?CEOOCikWYXaVT0ac1wwL6Mh6WiAKYqiklR4gaVaEWjlj1E8YsSWWsHTNZA1H?=
 =?us-ascii?Q?ewiAykxzyYOTn8e0vakJPEs=3D?=
MIME-Version: 1.0
X-OriginatorOrg: Dell.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR19MB5233.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bbbdd84f-2812-473f-a3eb-08d9b4ecc409
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Dec 2021 17:05:24.2708 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 945c199a-83a2-4e80-9f8c-5a91be5752dd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5mh3jew23Ipg03ud9P49qOQKxNSC5iFyWRkTdqbSrrD9hklYJzURVSP/WgFH42U5BhkhoOTlibwH6NCRWPo1yA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR19MB5481
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.425, 18.0.790
 definitions=2021-12-01_01:2021-11-30,
 2021-11-30 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 mlxscore=0
 priorityscore=1501 lowpriorityscore=0 spamscore=0 malwarescore=0
 adultscore=0 phishscore=0 impostorscore=0 suspectscore=0 mlxlogscore=999
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2110150000 definitions=main-2112010092
X-Proofpoint-GUID: 4RELPBkMkQde9HvEsXaxnuWsOZewlHAe
X-Proofpoint-ORIG-GUID: 4RELPBkMkQde9HvEsXaxnuWsOZewlHAe
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 mlxlogscore=999 bulkscore=0
 suspectscore=0 phishscore=0 mlxscore=0 malwarescore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2110150000
 definitions=main-2112010093
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Internal Use - Confidential > 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.133.20 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.133.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1msnbe-0003S5-75
Subject: Re: [tboot-devel] [ANNOUNCEMENT] PCR Extended Policy - planned
 DEFEATURING
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tboot-devel-bounces@lists.sourceforge.net



Internal Use - Confidential

> -----Original Message-----
> From: Dr. G.W. Wettstein <greg@wind.enjellic.com>
> Sent: Wednesday, December 1, 2021 08:53
> To: Randzio, Pawel; tboot-changelog@lists.sourceforge.net; tboot-
> devel@lists.sourceforge.net
> Subject: Re: [tboot-devel] [ANNOUNCEMENT] PCR Extended Policy - planned
> DEFEATURING
> 
> 
> [EXTERNAL EMAIL]
> 
> On Dec 1,  9:04am, "Randzio, Pawel" wrote:
> } Subject: [tboot-devel] [ANNOUNCEMENT] PCR Extended Policy - planned
> DEFEAT
> 
> > Hello,
> 
> Good morning, I hope this note finds the day, or evening, going well for
> everyone.
> 
> > I would like to inform you that there are plans to defeature TBOOT
> > extpol option and fix it to current default.
> >
> > The change affects TPM2.0 PCR Extended Policy Support. It has two options:
> >
> >   *   "Maximum Agility" - hashes computed using TPM2.0
> >   *   "Maximum Performance" - hashes computed using software, no TPM
> usage
> >
> > We want to defeature the "Maximum Agility" option and leave only
> "Maximum Performance" (current default).

Why would you not just switch the default and leave the Agility as an option?

> >
> > If you have any objections, please inform me.
> 
> No objections but we would be interested in understanding the root rationale
> for the change.

I'm also interested in the rationale. The change of default I can understand. I think that
 most people using tboot use the "extpol" option. I don't understand completely removing agility as an option.


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
