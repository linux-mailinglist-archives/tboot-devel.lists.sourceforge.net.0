Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4629FF0BAA
	for <lists+tboot-devel@lfdr.de>; Wed,  6 Nov 2019 02:29:36 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1iSA8c-00076p-8U; Wed, 06 Nov 2019 01:29:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Travis.Gilbert@dell.com>) id 1iSA8b-00076i-KF
 for tboot-devel@lists.sourceforge.net; Wed, 06 Nov 2019 01:29:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jarEyxJXZcmKlFyfUXEcf14KbdxTrqcxs1Yb6JqHKW0=; b=ZeMqiKVbozM5XHSKLh1SIxL724
 rcePLuPaoo2upLnUc5uNF+uMg5dvMgT+0QZdR1sj0mAzfzevHBhd+j/3Ls44noSWASIskAWba6RYQ
 JMj+QD60UXIYgUd2uPmU8ZoVMDF9YzNJBC3bn3ZQoUZaXEYfA6Lw/dKu3d0/EfNDAPpg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jarEyxJXZcmKlFyfUXEcf14KbdxTrqcxs1Yb6JqHKW0=; b=PYLBdCuPBz6Pk8oeB7ySw6jOE5
 BlWKb+0I65SzK0mblloQPXrqZGXU6a6ZYJNV37i9KnRm5AVQ4sHdIvBjKG1cs/3wYKSss9JTZ2H33
 P0xieOl+e50TIzHmM4uT5D/qzaD1sN2q0CuNBDl23BU2RVKQT213iKFFtiAS9IEJzaoc=;
Received: from mx0b-00154904.pphosted.com ([148.163.137.20])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iSA8U-0028VU-TZ
 for tboot-devel@lists.sourceforge.net; Wed, 06 Nov 2019 01:29:33 +0000
Received: from pps.filterd (m0170397.ppops.net [127.0.0.1])
 by mx0b-00154904.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xA5Msud6020037
 for <tboot-devel@lists.sourceforge.net>; Tue, 5 Nov 2019 18:02:22 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=smtpout1;
 bh=jarEyxJXZcmKlFyfUXEcf14KbdxTrqcxs1Yb6JqHKW0=;
 b=q/fiMWXhL78FdgZqFBXC53b1zc5rYxhzpwCI96yXqLiFygcWr+y8y/I5oSnhhZOPeks3
 a/mfRP9TifqMHlnnKd3bnehcImJW2IRwIjVNZnIs6ESMNXz+rAfm7RdBfzcEWtfTs3/W
 KNMpuFN85fK+dAXrlMmW+8uKmiuKS3th3rSRocheQNCv0UNEtCfiAjfLUtTCXTKkw2rK
 rBKO2HwutQjkvTxjrPc1QWw/Oc4QZTlrHPrNmKkQFhYYs4FTGjVTQnP+TQJduWrqaxsA
 7QP9g30K5/3NfYPEzpo1NC/CdlM/D3aDDOEEtEbuOkksMVeMAz3Nwpbi21RSd5P2Lr5T 0g== 
Received: from mx0a-00154901.pphosted.com (mx0a-00154901.pphosted.com
 [67.231.149.39])
 by mx0b-00154904.pphosted.com with ESMTP id 2w12vw888q-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <tboot-devel@lists.sourceforge.net>; Tue, 05 Nov 2019 18:02:22 -0500
Received: from pps.filterd (m0134746.ppops.net [127.0.0.1])
 by mx0a-00154901.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xA5MqjWb040167
 for <tboot-devel@lists.sourceforge.net>; Tue, 5 Nov 2019 18:02:21 -0500
Received: from ausxipps310.us.dell.com (AUSXIPPS310.us.dell.com
 [143.166.148.211])
 by mx0a-00154901.pphosted.com with ESMTP id 2w33jmfpuw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <tboot-devel@lists.sourceforge.net>; Tue, 05 Nov 2019 18:02:21 -0500
X-LoopCount0: from 10.166.132.133
X-PREM-Routing: D-Outbound
X-IronPort-AV: E=Sophos;i="5.60,349,1549951200"; d="scan'208";a="445676952"
From: <Travis.Gilbert@dell.com>
To: <pmoore2@cisco.com>
Thread-Topic: Creating a TXT/tboot policy suitable for a modern system with
 TXT+TPM2
Thread-Index: AQHVlCtYW12WBIFGSk+TwpFcVCWnTad9MGGQ
Date: Tue, 5 Nov 2019 23:02:18 +0000
Message-ID: <1926e09cfdf84af28414b36c2652f421@AUSX13MPC102.AMER.DELL.COM>
References: <681a21560a8a9f41a4be8cdc399cf5008f7adecc.camel@cisco.com>
In-Reply-To: <681a21560a8a9f41a4be8cdc399cf5008f7adecc.camel@cisco.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.143.18.86]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-11-05_08:2019-11-05,2019-11-05 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0
 lowpriorityscore=0 malwarescore=0 adultscore=0 bulkscore=0 clxscore=1011
 suspectscore=0 spamscore=0 mlxscore=0 phishscore=0 mlxlogscore=830
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1908290000 definitions=main-1911050187
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 mlxlogscore=999
 impostorscore=0 adultscore=0 suspectscore=0 bulkscore=0 priorityscore=1501
 phishscore=0 lowpriorityscore=0 clxscore=1011 mlxscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-1908290000
 definitions=main-1911050187
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1iSA8U-0028VU-TZ
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
Cc: tboot-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tboot-devel-bounces@lists.sourceforge.net

> -----Original Message-----
> From: Paul Moore (pmoore2) via tboot-devel <tboot-
> devel@lists.sourceforge.net>
> Sent: Tuesday, November 5, 2019 16:50
> To: lukasz.hawrylko@linux.intel.com; tboot-devel@lists.sourceforge.net
> Subject: [tboot-devel] Creating a TXT/tboot policy suitable for a modern
> system with TXT+TPM2
> 
> 
> 
> Hi Lukasz, others,
> 
> I'm in the process of working on the TXT/sig extensions to the LCP but I'm
> running into problems using the tboot tools to create a working LCP as a
> baseline.  Simply put, the instructions I've been able to find either in the
> sources, the mailing list archives, or through Google searches do not produce
> a working LCP on my test system.  The tools/arguments are either wrong, or
> the resulting LCP is bogus.

I had to patch lcptools-v2 because I found the same problem. Nothing would produce a good LCP.

> Before I start hacking away at the tools to get them to create a functional LCP
> that tboot understands, does anyone have a working how-to for creating a
> LCP using the current sources?

When I patched lcptools-v2, I added a simple how-to for an MLE LCP, it's in the mailing list archives at the link below. If you need more, I have a few other examples.

https://sourceforge.net/p/tboot/mailman/message/35976955/



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
