Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DB0DF5C36
	for <lists+tboot-devel@lfdr.de>; Sat,  9 Nov 2019 01:11:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1iTELa-0002hW-D3; Sat, 09 Nov 2019 00:11:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Travis.Gilbert@dell.com>) id 1iTELY-0002hG-Fu
 for tboot-devel@lists.sourceforge.net; Sat, 09 Nov 2019 00:11:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YYaah4yxp88X3C7cLow69yURtp5M76UJC/RAZN/DlHw=; b=j6di5oDWJ0kcrfGnwskXvxpqEk
 YRNMC7SKgZV8boIP161AqVNJjrVyhPV9VXQ/h+xkOVNgifCRdLEin53qYIRAdiQo9F9oKJiInXA3y
 k44m9NUO4/0jmeO9vllswhcJzKnyGQyC7f74E7XbYP8eSmaJocaw9Rk1gB4dmjGIiU2U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YYaah4yxp88X3C7cLow69yURtp5M76UJC/RAZN/DlHw=; b=k5nIzlVESMu2+klCGQfVNIm1Of
 jK7ZDk1F2Byjcf19zqRaiukL8bHE5I4XQKvXHo4CjDDTzDSEzLDNHZr15YWqFy42hO/LHFGcRA1Q/
 dim5ByeBQqSw8tLartIXrzOHov+L43WEARkoA/joohkQ7rhXtwIrYLt1vrRN6oP7V4rM=;
Received: from mx0a-00154904.pphosted.com ([148.163.133.20])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iTELU-007A2P-L1
 for tboot-devel@lists.sourceforge.net; Sat, 09 Nov 2019 00:11:20 +0000
Received: from pps.filterd (m0170390.ppops.net [127.0.0.1])
 by mx0a-00154904.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xA8IUxXZ014107
 for <tboot-devel@lists.sourceforge.net>; Fri, 8 Nov 2019 13:34:25 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=smtpout1;
 bh=YYaah4yxp88X3C7cLow69yURtp5M76UJC/RAZN/DlHw=;
 b=W2c4MAye/cKhquKao657jGtMsKEYgTpkPYkXtjJ+K2syGMwM/FZOV+iWyGUIbbR26fcy
 M92Yb8Qbtq0NTSfJyJWAngSRFd4o6LJhRoFGcZf3SnxSlQOTazc2NMS0+cEPzKeRmWwy
 7GTEPHvLhy7H+UFFDBjy8blo9wmbpj5gnGkBJMVt/Es84o5DZbt06a3xEgdHBqGMOjkX
 QECN1vZ0v0UI2E+Iz9iUgJBT7DM6FV6npe59g5jOkJa9UtapvVVjnd3bLVCArb6Hs43X
 ouIHw1yEiioG0z3bjCT/T5tRK5pRpstQpSmcmyg/Epro0DzhinewEU538cfzy5KDVYQ3 GQ== 
Received: from mx0a-00154901.pphosted.com (mx0b-00154901.pphosted.com
 [67.231.157.37])
 by mx0a-00154904.pphosted.com with ESMTP id 2w41uw3quc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <tboot-devel@lists.sourceforge.net>; Fri, 08 Nov 2019 13:34:25 -0500
Received: from pps.filterd (m0089484.ppops.net [127.0.0.1])
 by mx0b-00154901.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xA8IWWFP060215
 for <tboot-devel@lists.sourceforge.net>; Fri, 8 Nov 2019 13:34:24 -0500
Received: from ausxipps301.us.dell.com (ausxipps301.us.dell.com
 [143.166.148.223])
 by mx0b-00154901.pphosted.com with ESMTP id 2w4tef0x4p-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <tboot-devel@lists.sourceforge.net>; Fri, 08 Nov 2019 13:34:24 -0500
X-LoopCount0: from 10.166.132.129
X-PREM-Routing: D-Outbound
X-IronPort-AV: E=Sophos;i="5.60,349,1549951200"; d="scan'208";a="420842342"
From: <Travis.Gilbert@dell.com>
To: <pmoore2@cisco.com>, <lukasz.hawrylko@linux.intel.com>
Thread-Topic: [tboot-devel] Creating a TXT/tboot policy suitable for a modern
 system with TXT+TPM2
Thread-Index: AQHVlCtYW12WBIFGSk+TwpFcVCWnTad9MGGQgAAqOICAATPX0IABqGkAgAFZ5wCAAFyugP//reAw
Date: Fri, 8 Nov 2019 18:34:21 +0000
Message-ID: <473a0d4460a64bfe8a96c1942ae21de4@AUSX13MPC102.AMER.DELL.COM>
References: <681a21560a8a9f41a4be8cdc399cf5008f7adecc.camel@cisco.com>
 <1926e09cfdf84af28414b36c2652f421@AUSX13MPC102.AMER.DELL.COM>
 <52ba4fc58ef941c81458ea95eeaed31b0aa669e1.camel@cisco.com>
 <b4e1bf1374114acdaa3b99d91b43bd64@AUSX13MPC102.AMER.DELL.COM>
 <a250508c1d6ba4cf2b080b6f69803698539f7b0c.camel@cisco.com>
 <2a4c6551b68be437cd02c7987ef75a6d315f0368.camel@linux.intel.com>
 <beabd66d2dffc0d8d08d411588501412cca2fdfe.camel@cisco.com>
In-Reply-To: <beabd66d2dffc0d8d08d411588501412cca2fdfe.camel@cisco.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.143.242.75]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-08_06:2019-11-08,2019-11-08 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0
 lowpriorityscore=0 mlxlogscore=999 bulkscore=0 priorityscore=1501
 phishscore=0 mlxscore=0 malwarescore=0 clxscore=1015 adultscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1910280000 definitions=main-1911080182
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 suspectscore=0
 mlxscore=0 bulkscore=0 phishscore=0 spamscore=0 clxscore=1015
 impostorscore=0 lowpriorityscore=0 adultscore=0 priorityscore=1501
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1910280000 definitions=main-1911080182
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1iTELU-007A2P-L1
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
> Sent: Friday, November 8, 2019 11:19
> To: lukasz.hawrylko@linux.intel.com; Gilbert, Travis
> Cc: tboot-devel@lists.sourceforge.net
> Subject: Re: [tboot-devel] Creating a TXT/tboot policy suitable for a modern
> system with TXT+TPM2
> 
> On Fri, 2019-11-08 at 12:47 +0100, Lukasz Hawrylko wrote:
> > For TPM2.0 LCP generation there is a Python tool lcp-gen2 that is
> > included in tboot's source code. To be honest I didn't try to generate
> > LCP with tboot's VLP inside but it should work. If not - this is a bug
> > and need to be fixed.
> >
> > lcptools-v2 will is not maintained, any new features like new signing
> > algorithms will not be included there, so I suggest not to use it for
> > new designs. We are actively improving lcp-gen2, if there is something
> > that is missing in your opinion please let me know.
> 
> A few problems come to mind with lcp-gen2 all of which are blockers:
> 
> * I see references to upgrading to newer versions of Python 2.x, but nothing
> about upgrading to Python 3.x; with Python 2.x going EOL in a few months
> this needs to happen very soon.
> 
> * No documentation.  This is a general problem with the tboot
> code/tools: there is very little documentation, and what does seem to be
> present is mostly wrong or incomplete.
> 
> * The lcp-gen2 tool appears to be intended mostly as a GUI tool, and I need a
> CLI tool.  It looks like there might be some sort of "batch build" available from
> the command line, but I don't see any further explanation or documentation
> on this ability.
> 
> You mention that lcp-gen2 is being actively improved, is this happening
> offline?  The last commit I see is to the sf.net repo for lcp-gen2 is over six
> months old.
> 
> If these issues can't be resolved within the next month or two, is there any
> reason why we couldn't continue to make changes to the lcptools-v2 tools?
> 
> -Paul
> 

I'm with Paul. I strongly disagree with discontinuing support for lcptools-v2.

lcp-gen2 requires that you have a Window Manager installed. It requires clicking around in a GUI. Both of these limit its use. The most important thing it limits is the ability to script LCP creation like I have done. When I give someone else an LCP to use, instead of a 10 page document with pictures that walks them through clicking everything in lcp-gen2, with lcptools-v2, I can just say "Run this script." If that script doesn't error out, then I *know* that the LCP was correctly created. In the lcp-gen2 case, I have to have the user send me the LCP and other intermediate files and compare them with what I expect in order to figure out whether something went wrong or not. Troubleshooting for a script is simpler. If for some reason they can't copy & paste the console output with the error (very easy), I can have the user run the script again while redirecting the output to a file, and then send me the file.

I also have philosophical issues with GUI-only, mostly that it violates the UNIX philosophy of "Write programs to handle text streams, because that is a universal interface." My evidence for why this should be considered consists of my previous paragraph and Paul's concerns.

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
