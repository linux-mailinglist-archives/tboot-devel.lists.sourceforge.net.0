Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A03AFB629
	for <lists+tboot-devel@lfdr.de>; Wed, 13 Nov 2019 18:17:33 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1iUwGj-0003vs-Jq; Wed, 13 Nov 2019 17:17:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Travis.Gilbert@dell.com>) id 1iUwGi-0003vR-7O
 for tboot-devel@lists.sourceforge.net; Wed, 13 Nov 2019 17:17:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Fb0M7DN+JTqnOljB0o+IT19iEzCcnNs8caB51w0PSNE=; b=YULcIXphoxemXLgH5mLHKd7rk6
 /cSS5yrSk0zEu4/GfQk9H8eueL6zLw7ritVu/AapPOUEzIEugBeNwVRhGqcZ3GsoA5xN+dUax4f8Q
 UR5Z9zrSRbVvEbawRTgWXC5c8njmMSk8HCyoiYBeErVaK6e3kYaMj9dwQ0bsYGCFgJ5Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Fb0M7DN+JTqnOljB0o+IT19iEzCcnNs8caB51w0PSNE=; b=Z97K3reQiGPA1vOX33QjiOK5jz
 ssmEcf8VL7mQrNulCljypdvXPndcTwXSoERhG4Nsgb/Mqqdr/7dOT/Sn6ZByb5YCm0/DcpdkV3wUq
 niJ9SruKHENSyWl306FGl8sRffvUya6+Hzunf5iyZZu1XwPfL/NPL/o9iZullF1h4lOg=;
Received: from mx0b-00154904.pphosted.com ([148.163.137.20])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iUwGe-00FXCx-Fy
 for tboot-devel@lists.sourceforge.net; Wed, 13 Nov 2019 17:17:24 +0000
Received: from pps.filterd (m0170395.ppops.net [127.0.0.1])
 by mx0b-00154904.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xADH0BN4020236
 for <tboot-devel@lists.sourceforge.net>; Wed, 13 Nov 2019 12:17:13 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=smtpout1;
 bh=Fb0M7DN+JTqnOljB0o+IT19iEzCcnNs8caB51w0PSNE=;
 b=gLIn3DqdrzjqG5iQViA4yG1mmmwXjigeAJ/fANYnR+Y6kaDD9fW237KFkbPlZhvt+LND
 Gfg0OtUbApee4efuYgRI+uitiTvu+mw2xcbp0cxWXAQrfk9Z5GBJrCkvDR7UB8fcgUXd
 6OjlCtCLY1sRcJnt+Ww3Q7rMJzl70elxIXee2Hvb9sseNsTx98KJrWnGzqefY6icZZSU
 j5iVpF7UNvv/Qit1hg2b3jXLELa9j8R7gl0GbOeGPl0M+0+exB8lNAafmuPfTDDEbI0V
 7OKVNAEahwHO9G9advOZJJMhx9ijdeMqNO+MDqY9NXVDbfUet705GB2yBMb2a6ePXdqN 1Q== 
Received: from mx0a-00154901.pphosted.com (mx0b-00154901.pphosted.com
 [67.231.157.37])
 by mx0b-00154904.pphosted.com with ESMTP id 2w7ppw0btk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <tboot-devel@lists.sourceforge.net>; Wed, 13 Nov 2019 12:17:13 -0500
Received: from pps.filterd (m0089484.ppops.net [127.0.0.1])
 by mx0b-00154901.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xADH4GU2036320
 for <tboot-devel@lists.sourceforge.net>; Wed, 13 Nov 2019 12:17:12 -0500
Received: from ausxipps310.us.dell.com (AUSXIPPS310.us.dell.com
 [143.166.148.211])
 by mx0b-00154901.pphosted.com with ESMTP id 2w8n2b97w5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <tboot-devel@lists.sourceforge.net>; Wed, 13 Nov 2019 12:17:12 -0500
X-LoopCount0: from 10.166.132.133
X-PREM-Routing: D-Outbound
X-IronPort-AV: E=Sophos;i="5.60,349,1549951200"; d="scan'208";a="448772120"
From: <Travis.Gilbert@dell.com>
To: <pmoore2@cisco.com>, <lukasz.hawrylko@linux.intel.com>
Thread-Topic: [tboot-devel] Creating a TXT/tboot policy suitable for a modern
 system with TXT+TPM2
Thread-Index: AQHVlCtYW12WBIFGSk+TwpFcVCWnTad9MGGQgAAqOICAATPX0IABqGkAgAFZ5wCAAFyugP//reAwgAf86oCAABhIgP//szUA
Date: Wed, 13 Nov 2019 17:17:10 +0000
Message-ID: <f6a2c34a67f5471096cb4f760a8ac1b1@AUSX13MPC102.AMER.DELL.COM>
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
In-Reply-To: <95c9252416abb41d2a654fdffb9208371ecb91c4.camel@cisco.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [143.166.24.40]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-13_04:2019-11-13,2019-11-13 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 impostorscore=0 lowpriorityscore=0 suspectscore=0 malwarescore=0
 phishscore=0 mlxscore=0 bulkscore=0 clxscore=1015 adultscore=0 spamscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1910280000 definitions=main-1911130148
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1015
 adultscore=0 phishscore=0
 spamscore=0 impostorscore=0 mlxscore=0 bulkscore=0 lowpriorityscore=0
 suspectscore=0 priorityscore=1501 mlxlogscore=999 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-1910280000
 definitions=main-1911130148
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
X-Headers-End: 1iUwGe-00FXCx-Fy
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
> Sent: Wednesday, November 13, 2019 09:51
> To: lukasz.hawrylko@linux.intel.com; Gilbert, Travis
> Cc: tboot-devel@lists.sourceforge.net
> Subject: Re: [tboot-devel] Creating a TXT/tboot policy suitable for a modern
> system with TXT+TPM2
> 
> 
> I'm glad to hear that Python 3.x support is in the works, but I remain
> concerned about the CLI support.  While JSON/XML is better than nothing, it
> still adds a bit of pain for those of us wishing to script the tools; while a
> parameter based approach might not be pretty, it is much easier to script.

Agreed. CLI is a requirement.

> I'm a bit farther down the patch of sorting out the policy patches for the
> TXT/sig work, and as it currently stands it looks like the changes for lcptools-
> v2 is going to be very minor.  Essentially it looks like the only changes I will
> need to make is to add a predefined custom ELT UUID for a certificate
> payload, and even then that is optional (one can specify the UUID on the
> command line if necessary).  

Are you adding the ELT UUID as a policy element plugin similar to mle_elt, sbios_elt, & stm_elt?

> The other changes to the tboot policy would live
> outside lcptools-v2 in tb_polgen.  Would you be open to merging *small*
> patches to lcptools-v2?
> 
> I *really* don't want to have to deal with a GUI and/or JSON/XML if I don't
> have to do so.
> 
> On Wed, 2019-11-13 at 15:23 +0100, Lukasz Hawrylko wrote:
> > Thank you for feedback, I understand your point. I was talking with
> > tools maintainer and he started working on migration to Python 3.x and
> > better CLI support (together with documentation how to use it). Our
> > idea is not to add enormous list parameters to generate LCP with
> > desired options, but to add JSON/XML file that will describe LCP in
> > human- readable format. After preparing that file (you can do that in
> > VIM) you will feed it into tool and than get LCP. I would like to hear
> > your opinion about that idea.
> >
> > The only reason why I don't want to maintain lcptools-v2 is to not
> > have two tools that do the same thing. I hope that with your input we
> > can improve lcp-gen2 so it can replace lcptools-v2 in every case. In
> > my opinion adding CLI to GUI application is easier than adding GUI to
> > CLI application, that's why I decided to go with lcp-gen2.
> >
> > We are working on lcp-gen2 in our local repository, I will ask
> > maintainer when he will be ready with Python 3.x migration if that
> > will be less than month I will wait for that to release new version.
> >
> > Lukasz
> >
> > On Fri, 2019-11-08 at 18:34 +0000, Travis.Gilbert@dell.com wrote:
> > > > -----Original Message-----
> > > > From: Paul Moore (pmoore2) <
> > > > pmoore2@cisco.com
> > > > Sent: Friday, November 8, 2019 11:19
> > > > To:
> > > > lukasz.hawrylko@linux.intel.com
> > > > ; Gilbert, Travis
> > > > Cc:
> > > > tboot-devel@lists.sourceforge.net
> > > >
> > > > Subject: Re: [tboot-devel] Creating a TXT/tboot policy suitable
> > > > for a modern system with TXT+TPM2
> > > >
> > > > On Fri, 2019-11-08 at 12:47 +0100, Lukasz Hawrylko wrote:
> > > > > For TPM2.0 LCP generation there is a Python tool lcp-gen2 that
> > > > > is included in tboot's source code. To be honest I didn't try to
> > > > > generate LCP with tboot's VLP inside but it should work. If not
> > > > > - this is a bug and need to be fixed.
> > > > >
> > > > > lcptools-v2 will is not maintained, any new features like new
> > > > > signing algorithms will not be included there, so I suggest not
> > > > > to use it for new designs. We are actively improving lcp-gen2,
> > > > > if there is something that is missing in your opinion please let
> > > > > me know.
> > > >
> > > > A few problems come to mind with lcp-gen2 all of which are
> > > > blockers:
> > > >
> > > > * I see references to upgrading to newer versions of Python 2.x,
> > > > but nothing about upgrading to Python 3.x; with Python 2.x going
> > > > EOL in a few months this needs to happen very soon.
> > > >
> > > > * No documentation.  This is a general problem with the tboot
> > > > code/tools: there is very little documentation, and what does seem
> > > > to be present is mostly wrong or incomplete.
> > > >
> > > > * The lcp-gen2 tool appears to be intended mostly as a GUI tool,
> > > > and I need a CLI tool.  It looks like there might be some sort of
> > > > "batch build"
> > > > available from
> > > > the command line, but I don't see any further explanation or
> > > > documentation on this ability.
> > > >
> > > > You mention that lcp-gen2 is being actively improved, is this
> > > > happening offline?  The last commit I see is to the sf.net repo
> > > > for lcp-gen2 is over six months old.
> > > >
> > > > If these issues can't be resolved within the next month or two, is
> > > > there any reason why we couldn't continue to make changes to the
> > > > lcptools-v2 tools?
> > > >
> > > > -Paul
> > > >
> > >
> > > I'm with Paul. I strongly disagree with discontinuing support for
> > > lcptools-v2.
> > >
> > > lcp-gen2 requires that you have a Window Manager installed. It
> > > requires clicking around in a GUI. Both of these limit its use. The
> > > most important thing it limits is the ability to script LCP creation
> > > like I have done. When I give someone else an LCP to use, instead of
> > > a 10 page document with pictures that walks them through clicking
> > > everything in lcp-gen2, with lcptools-v2, I can just say "Run this
> > > script." If that script doesn't error out, then I *know* that the
> > > LCP was correctly created. In the lcp-gen2 case, I have to have the
> > > user send me the LCP and other intermediate files and compare them
> > > with what I expect in order to figure out whether something went
> > > wrong or not. Troubleshooting for a script is simpler. If for some
> > > reason they can't copy & paste the console output with the error
> > > (very easy), I can have the user run the script again while
> > > redirecting the output to a file, and then send me the file.
> > >
> > > I also have philosophical issues with GUI-only, mostly that it
> > > violates the UNIX philosophy of "Write programs to handle text
> > > streams, because that is a universal interface." My evidence for why
> > > this should be considered consists of my previous paragraph and
> > > Paul's concerns.
> > >

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
