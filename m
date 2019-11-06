Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F38F1F8E
	for <lists+tboot-devel@lfdr.de>; Wed,  6 Nov 2019 21:12:36 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1iSRfJ-0004yh-GM; Wed, 06 Nov 2019 20:12:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Travis.Gilbert@dell.com>) id 1iSRfH-0004yJ-Hn
 for tboot-devel@lists.sourceforge.net; Wed, 06 Nov 2019 20:12:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uC3gU6cPEyj9XLbSdNgJJmJthOcoT/qN6uuk3FngWnY=; b=eTKrSTefZ9VbP50TFz3J9ywXFE
 QgQXQqaDaAqufXFWaBiq2mR4Ho8XIs2+BxHEUc3SC3dcriEY5r4weQmNz2/w1nZiukhjXnBJ0DFrP
 ocU3GZyfRmn8G+ztqMl215sz06gfcK6uw5dZgZI4CA3nzY8XFW7GZHygQLOdLfetWuaY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uC3gU6cPEyj9XLbSdNgJJmJthOcoT/qN6uuk3FngWnY=; b=cV597oA9oemePsh9NzNb4bWbzF
 vUc4DjB1xK5NfTJtu/Yo98Rb18c6tnRYZ2A9ZIPkVQaGhH3E10+y8st54gXd47IP4Dq23X9LiSIvC
 DnIjGmHAQtHMD1wG4/xxE6Pl6hyyBx4mZbSC41xTyVbsDe6Apg62F8wCKoDitiCrBAco=;
Received: from mx0b-00154904.pphosted.com ([148.163.137.20])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iSRfF-003c9f-92
 for tboot-devel@lists.sourceforge.net; Wed, 06 Nov 2019 20:12:27 +0000
Received: from pps.filterd (m0170396.ppops.net [127.0.0.1])
 by mx0b-00154904.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xA6KAjwo022323
 for <tboot-devel@lists.sourceforge.net>; Wed, 6 Nov 2019 15:12:18 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=smtpout1;
 bh=uC3gU6cPEyj9XLbSdNgJJmJthOcoT/qN6uuk3FngWnY=;
 b=sS6UImsmbBB5TV6SX8Lfq/gP+6ZSrpqKwvnAxzQ6+oz2h2j/Pv/hvOPvKPpfwceUAQ6h
 uA2rCQUDUhyD+p8G8Z8bY0WXQAntot+YoBYhX62CaynTbrHSTapFNxe1BvupGxQOchiG
 YozDBsA2voYJcyGJw0crAPPr8KkVVXwlV0d2eeEmfE+m/swyZMWmZCwlJeo+HTHdN3uO
 ISUl1qiURoVRW52+3PQNusyKG1tu1PZJnRxfU66WTWMBISMuvEerPH/lHkZLUSwfS1Ve
 evoqxQr4AytmdzrKQqblnHzt8DWy77qbhFqdZo8jeF35HkIKXeKbgD4tmcMUCDNuGB73 iA== 
Received: from mx0b-00154901.pphosted.com (mx0b-00154901.pphosted.com
 [67.231.157.37])
 by mx0b-00154904.pphosted.com with ESMTP id 2w41uwgyt0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <tboot-devel@lists.sourceforge.net>; Wed, 06 Nov 2019 15:12:18 -0500
Received: from pps.filterd (m0144102.ppops.net [127.0.0.1])
 by mx0b-00154901.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xA6K9MrA063260
 for <tboot-devel@lists.sourceforge.net>; Wed, 6 Nov 2019 15:12:18 -0500
Received: from ausc60ps301.us.dell.com (ausc60ps301.us.dell.com
 [143.166.148.206])
 by mx0b-00154901.pphosted.com with ESMTP id 2w41wmb4se-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <tboot-devel@lists.sourceforge.net>; Wed, 06 Nov 2019 15:12:18 -0500
X-LoopCount0: from 10.166.132.127
X-PREM-Routing: D-Outbound
X-IronPort-AV: E=Sophos;i="5.60,349,1549951200"; d="scan'208";a="1374084745"
From: <Travis.Gilbert@dell.com>
To: <pmoore2@cisco.com>
Thread-Topic: Creating a TXT/tboot policy suitable for a modern system with
 TXT+TPM2
Thread-Index: AQHVlCtYW12WBIFGSk+TwpFcVCWnTad9MGGQgAAqOICAATPX0A==
Date: Wed, 6 Nov 2019 20:12:15 +0000
Message-ID: <b4e1bf1374114acdaa3b99d91b43bd64@AUSX13MPC102.AMER.DELL.COM>
References: <681a21560a8a9f41a4be8cdc399cf5008f7adecc.camel@cisco.com>
 <1926e09cfdf84af28414b36c2652f421@AUSX13MPC102.AMER.DELL.COM>
 <52ba4fc58ef941c81458ea95eeaed31b0aa669e1.camel@cisco.com>
In-Reply-To: <52ba4fc58ef941c81458ea95eeaed31b0aa669e1.camel@cisco.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.143.18.86]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-06_07:2019-11-06,2019-11-06 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=999
 suspectscore=0 mlxscore=0 phishscore=0 clxscore=1015 spamscore=0
 adultscore=0 impostorscore=0 malwarescore=0 bulkscore=0 lowpriorityscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1910280000 definitions=main-1911060198
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 impostorscore=0
 mlxlogscore=999 phishscore=0 mlxscore=0 priorityscore=1501 clxscore=1015
 adultscore=0 spamscore=0 suspectscore=0 bulkscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-1910280000
 definitions=main-1911060198
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: cisco.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1iSRfF-003c9f-92
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
> From: Paul Moore (pmoore2) <pmoore2@cisco.com>
> Sent: Tuesday, November 5, 2019 19:28
> To: Gilbert, Travis
> Cc: tboot-devel@lists.sourceforge.net
> Subject: Re: Creating a TXT/tboot policy suitable for a modern system with
> TXT+TPM2
> 
> On Tue, 2019-11-05 at 23:02 +0000, Travis.Gilbert@dell.com wrote:
> > > -----Original Message-----
> > > From: Paul Moore (pmoore2) via tboot-devel <tboot-
> > > devel@lists.sourceforge.net>
> > > Sent: Tuesday, November 5, 2019 16:50
> > > To: lukasz.hawrylko@linux.intel.com;
> > > tboot-devel@lists.sourceforge.net
> > > Subject: [tboot-devel] Creating a TXT/tboot policy suitable for a
> > > modern system with TXT+TPM2
> > >
> > >
> > >
> > > Hi Lukasz, others,
> > >
> > > I'm in the process of working on the TXT/sig extensions to the LCP
> > > but I'm running into problems using the tboot tools to create a
> > > working LCP as a baseline.  Simply put, the instructions I've been
> > > able to find either in the sources, the mailing list archives, or
> > > through Google searches do not produce a working LCP on my test
> > > system.  The tools/arguments are either wrong, or the resulting LCP
> > > is bogus.
> >
> > I had to patch lcptools-v2 because I found the same problem. Nothing
> > would produce a good LCP.
> >
> > > Before I start hacking away at the tools to get them to create a
> > > functional LCP that tboot understands, does anyone have a working
> > > how-to for creating a LCP using the current sources?
> >
> > When I patched lcptools-v2, I added a simple how-to for an MLE LCP,
> > it's in the mailing list archives at the link below. If you need more,
> > I have a few other examples.
> >
> > https://sourceforge.net/p/tboot/mailman/message/35976955/
> 
> Thanks Travis, that got me going in the right direction; I needed to add a
> tboot policy element to make my system happy, but that was a trivial
> addition to your instructions above.
> 
> If you're willing to share your other examples, I'd love to see them, and I'm
> sure others would as well.
> 
> Thanks again.

I've got about 20 some of which are negative test cases. They're bash scripts. I've stripped out the beginning shell line to make it more email handler friendly. #9 is actually split into 5 different tests signing various other policies that were previously unsigned. They were designed to be run in order as some later tests rely on the outputs of previous tests. I've included #3 and one of #9. Let me know if you have interest in any of the others. You don't have to take ownership or define the index every time, but keeping it in the script didn't cause us any issues. We could just copy some of the intermediate files and keep things simple when running tests out of order on multiple machines.

TXT - Scenario#1, Single MLE element and Unsigned Policy
TXT - Scenario#2, Three MLE elements and Unsigned LCP
TXT - Scenario#3, One PCONF element and Unsigned LCP
TXT - Scenario#4, Two PCONF elements and Unsigned LCP
TXT - Scenario#5, MLE, PCONF list Unsigned
TXT - Scenario#6, SINIT Revocation (Negative Testing)
TXT - Scenario#7, MLE Mismatch 1 - wrong hash file (Negative Testing)
TXT - Scenario#8, PCONF mismatch (Negative Testing)
TXT - Scenario#9, Signed policies with 2048 keys
TXT - Scenario#10, Signed policy with 1024 key
TXT - Scenario#11, Signed policy with 3072 key
TXT - Scenario#12: signed policy with invalid key size (2000)
TXT - Scenario#13 Input Validation, signed policy with invalid key size (512)
TXT - Scenario#14, signed policy with invalid key size (4096)
TXT - Scenario#15, MLE Mismatch - change in boot parameters (Negative Testing)

<3>
cd /boot
tpm2_takeownership -o new -e new -l new
tpm2_nvdefine -x 0x1c10106 -a 0x40000001 -P new -s 70 -t 0x204000A

#TXT - Scenario#3, One PCONF element and Unsigned LCP
tpm2_listpcrs -g 0x0B -o 1pcrs
truncate -s 32 1pcrs #only select PCR0 for the policy
lcp2_crtpolelt --create --type pconf --out 1pconf.elt 1pcrs
lcp2_crtpollist --create --out lists3_unsig.lst 1pconf.elt
lcp2_crtpol --create --type list --pol lists3.pol --alg sha256 --sign 0x0A --data lists3.data lists3_unsig.lst
tpm2_nvwrite -x 0x1c10106 -a 0x40000001 -P new -f lists3.pol
echo TBOOT_POLICY_DATA_FILE="lists3.data" > /etc/default/grub-tboot
grub2-mkconfig -o /boot/grub2/grub.cfg
</3>

<9>
cd /boot
tpm2_takeownership -o new -e new -l new
tpm2_nvdefine -x 0x1c10106 -a 0x40000001 -P new -s 70 -t 0x204000A

#TXT - Scenario#9, Signed policies with 2048 keys
openssl genrsa -out privkey.pem 2048
openssl rsa -pubout -in privkey.pem -out pubkey.pem
cp lists1_unsig.lst lists1_sig.lst
lcp2_crtpollist --sign --pub pubkey.pem --priv privkey.pem --out lists1_sig.lst
lcp2_crtpol --create --type list --alg sha256 --sign 0x0A --pol lists9a.pol --data lists9a.data lists1_sig.lst
tpm2_nvwrite -x 0x1c10106 -a 0x40000001 -P new -f lists9a.pol
echo GRUB_TBOOT_POLICY_DATA="lists9a.data" > /etc/default/grub-tboot
grub2-mkconfig -o /boot/grub2/grub.cfg
</9>

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
