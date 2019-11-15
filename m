Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 72791FDFA6
	for <lists+tboot-devel@lfdr.de>; Fri, 15 Nov 2019 15:07:39 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1iVcG5-0008Qx-N7; Fri, 15 Nov 2019 14:07:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1iVcG5-0008Qq-3N
 for tboot-devel@lists.sourceforge.net; Fri, 15 Nov 2019 14:07:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6jNXZIoHVZFua8ubQPIJ+lzE5qDXm9i+BsVxzgvCL8M=; b=Xbdoid1ovcISF1/z7Wk/IOZ0wp
 L98IqgdbD6d5h8ea+YucdlixWuMBHps46XDYPFwjt0RkatzhDMWKk4TghwVRP7CVaNWp1Y3k3mm6q
 nLr+FRjMjfpeYmb+dUFwtlYA0+/rD0BUGPf1YVYBBvheb5+jf9mr8ZOESFYUbLgcAfa4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6jNXZIoHVZFua8ubQPIJ+lzE5qDXm9i+BsVxzgvCL8M=; b=loZ18dfQkIAx4Bxn3WEMGU4R4J
 NFQxo5syMtEFneDufb3h+PEg7/+zXtvzavd0+ZPmlhk+sYlOADHqqd0TYoIONg6GFiX/lROPCMa4/
 hSA4xO14QName2uZSslh6AGHZ8QgJxEgACJ7pCxgpiXuwPtfwlJoubi2yiYOQBB1kHV8=;
Received: from mga04.intel.com ([192.55.52.120])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iVcG2-000uJX-W7
 for tboot-devel@lists.sourceforge.net; Fri, 15 Nov 2019 14:07:33 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 06:07:23 -0800
X-IronPort-AV: E=Sophos;i="5.68,308,1569308400"; d="scan'208";a="199208373"
Received: from lhawrylk-desk.igk.intel.com ([10.102.89.27])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 06:07:21 -0800
Message-ID: <0064e5367b67e3caf51f5a1f955db577fe51ccd6.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: Travis.Gilbert@dell.com, pmoore2@cisco.com
Date: Fri, 15 Nov 2019 15:07:19 +0100
In-Reply-To: <248f9a4ad62243db9b46e8d35eca12a9@AUSX13MPC102.AMER.DELL.COM>
References: <681a21560a8a9f41a4be8cdc399cf5008f7adecc.camel@cisco.com>
 <1926e09cfdf84af28414b36c2652f421@AUSX13MPC102.AMER.DELL.COM>
 <52ba4fc58ef941c81458ea95eeaed31b0aa669e1.camel@cisco.com>
 <b4e1bf1374114acdaa3b99d91b43bd64@AUSX13MPC102.AMER.DELL.COM>
 <a250508c1d6ba4cf2b080b6f69803698539f7b0c.camel@cisco.com>
 <2a4c6551b68be437cd02c7987ef75a6d315f0368.camel@linux.intel.com>
 <beabd66d2dffc0d8d08d411588501412cca2fdfe.camel@cisco.com>
 <473a0d4460a64bfe8a96c1942ae21de4@AUSX13MPC102.AMER.DELL.COM>
 <f3f94fc1ba73ff604260a6bfb8e4a8ee8b1e9e00.camel@linux.intel.com>
 <248f9a4ad62243db9b46e8d35eca12a9@AUSX13MPC102.AMER.DELL.COM>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1iVcG2-000uJX-W7
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

To be honest I don't know the history of lcp-gen2, personally I prefer
CLI tools too, so I understand your point. I thought that migration to
GUI tool was requested by TBOOT users. I going to start internal
discussion who is using lcp-gen2, maybe we should take a step back and
instead of developing new tool that nobody is going to use, continue
support for lcptools-v2.


On Wed, 2019-11-13 at 17:15 +0000, Travis.Gilbert@dell.com wrote:
> > -----Original Message-----
> > From: Lukasz Hawrylko <
> > lukasz.hawrylko@linux.intel.com
> > >
> > Sent: Wednesday, November 13, 2019 08:24
> > To: Gilbert, Travis; 
> > pmoore2@cisco.com
> > 
> > Cc: 
> > tboot-devel@lists.sourceforge.net
> > 
> > Subject: Re: [tboot-devel] Creating a TXT/tboot policy suitable for a modern
> > system with TXT+TPM2
> > 
> > 
> > Thank you for feedback, I understand your point. I was talking with tools
> > maintainer and he started working on migration to Python 3.x and better CLI
> > support (together with documentation how to use it). Our idea is not to add
> > enormous list parameters to generate LCP with desired options, but to add
> > JSON/XML file that will describe LCP in human- readable format. After
> > preparing that file (you can do that in VIM) you will feed it into tool and than
> > get LCP. I would like to hear your opinion about that idea.
> > 
> > The only reason why I don't want to maintain lcptools-v2 is to not have two
> > tools that do the same thing.
> 
> I understand your desire to avoid unnecessary duplication of work. Please understand my frustration with the situation and lack of communication from Intel. I understand that you weren't directly involved at the time, but you're the face now, so you get the complaints :)
> 
> Intel created a separate tool, lcp-gen2, without mentioning it on the mailing list in the months leading up to its release. Until then we *had* one functioning toolset that everyone else was using for TPM 2.0. It was lcptools-v2. Then Intel abandoned it with no warning. Just pushed a whole new toolset at once.
> 
> It broke a bunch of testing we had when your ACMs started checking things that lcptools-v2 apparently wasn't writing correctly. Up until the ACM changes, everything was fine. Intel apparently knew this because the lcp-gen2 toolset was merged not too long after and they generated working LCPs.
> 
> That's the history of the situation in which we now find ourselves. Now that the air is clear, we can move on and work together on a solution.
> 
> > I hope that with your input we can improve lcp-
> > gen2 so it can replace lcptools-v2 in every case. In my opinion adding CLI to
> > GUI application is easier than adding GUI to CLI application, that's why I
> > decided to go with lcp-gen2.
> 
> We're very happy to work with Intel to get a solution that meets all our needs. We want TXT to be a robust solution for everyone.
> 
> > We are working on lcp-gen2 in our local repository, I will ask maintainer when
> > he will be ready with Python 3.x migration if that will be less than month I will
> > wait for that to release new version.
> > 
> > Lukasz
> > 
> > On Fri, 2019-11-08 at 18:34 +0000, 
> > Travis.Gilbert@dell.com
> >  wrote:
> > > > -----Original Message-----
> > > > From: Paul Moore (pmoore2) <
> > > > pmoore2@cisco.com
> > > > 
> > > > 
> > > > Sent: Friday, November 8, 2019 11:19
> > > > To:
> > > > lukasz.hawrylko@linux.intel.com
> > > > 
> > > > ; Gilbert, Travis
> > > > Cc:
> > > > tboot-devel@lists.sourceforge.net
> > > > 
> > > > 
> > > > Subject: Re: [tboot-devel] Creating a TXT/tboot policy suitable for
> > > > a modern system with TXT+TPM2
> > > > 
> > > > On Fri, 2019-11-08 at 12:47 +0100, Lukasz Hawrylko wrote:
> > > > > For TPM2.0 LCP generation there is a Python tool lcp-gen2 that is
> > > > > included in tboot's source code. To be honest I didn't try to
> > > > > generate LCP with tboot's VLP inside but it should work. If not -
> > > > > this is a bug and need to be fixed.
> > > > > 
> > > > > lcptools-v2 will is not maintained, any new features like new
> > > > > signing algorithms will not be included there, so I suggest not to
> > > > > use it for new designs. We are actively improving lcp-gen2, if
> > > > > there is something that is missing in your opinion please let me know.
> > > > 
> > > > A few problems come to mind with lcp-gen2 all of which are blockers:
> > > > 
> > > > * I see references to upgrading to newer versions of Python 2.x, but
> > > > nothing about upgrading to Python 3.x; with Python 2.x going EOL in
> > > > a few months this needs to happen very soon.
> > > > 
> > > > * No documentation.  This is a general problem with the tboot
> > > > code/tools: there is very little documentation, and what does seem
> > > > to be present is mostly wrong or incomplete.
> > > > 
> > > > * The lcp-gen2 tool appears to be intended mostly as a GUI tool, and
> > > > I need a CLI tool.  It looks like there might be some sort of "batch
> > > > build" available from the command line, but I don't see any further
> > > > explanation or documentation on this ability.
> > > > 
> > > > You mention that lcp-gen2 is being actively improved, is this
> > > > happening offline?  The last commit I see is to the sf.net repo for
> > > > lcp-gen2 is over six months old.
> > > > 
> > > > If these issues can't be resolved within the next month or two, is
> > > > there any reason why we couldn't continue to make changes to the
> > 
> > lcptools-v2 tools?
> > > > -Paul
> > > > 
> > > 
> > > I'm with Paul. I strongly disagree with discontinuing support for lcptools-v2.
> > > 
> > > lcp-gen2 requires that you have a Window Manager installed. It requires
> > 
> > clicking around in a GUI. Both of these limit its use. The most important thing
> > it limits is the ability to script LCP creation like I have done. When I give
> > someone else an LCP to use, instead of a 10 page document with pictures
> > that walks them through clicking everything in lcp-gen2, with lcptools-v2, I
> > can just say "Run this script." If that script doesn't error out, then I *know*
> > that the LCP was correctly created. In the lcp-gen2 case, I have to have the
> > user send me the LCP and other intermediate files and compare them with
> > what I expect in order to figure out whether something went wrong or not.
> > Troubleshooting for a script is simpler. If for some reason they can't copy &
> > paste the console output with the error (very easy), I can have the user run
> > the script again while redirecting the output to a file, and then send me the
> > file.
> > > I also have philosophical issues with GUI-only, mostly that it violates the
> > 
> > UNIX philosophy of "Write programs to handle text streams, because that is
> > a universal interface." My evidence for why this should be considered
> > consists of my previous paragraph and Paul's concerns.
> 
> 



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
