Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D7AFB27E
	for <lists+tboot-devel@lfdr.de>; Wed, 13 Nov 2019 15:24:21 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1iUtZ5-0007TH-Hu; Wed, 13 Nov 2019 14:24:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1iUtZ4-0007Sy-Kb
 for tboot-devel@lists.sourceforge.net; Wed, 13 Nov 2019 14:24:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=74aX6zJdpcEb7F35+sgbHQDK5ERTMD0sXZkyzZ6I6Pc=; b=DqFb22NKbRrZJNt8vECOO6kIQD
 VC0viHka/mXs3mIjWeI7cdsEuMNNJ3Ttvu2ajb+2flW8Iw50DtzRtX9aq992iCfF5c7RZ++nuj6gp
 1NsF9OQ41nEeB1YPCwB8OlVzBCZK6JCInvfUyoQs72tMc+t+IDWSZhXrajwFArZwixHs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=74aX6zJdpcEb7F35+sgbHQDK5ERTMD0sXZkyzZ6I6Pc=; b=N8vdC219FxONAblPhYxZZ5uKK/
 DzLg0vgrWOoUzvQ9dMku6khMM7v/gneK08K9IxE1ad02eQtPge9W/8hwvK5uhTNUojc8CBfTNUvrx
 JbxFRH0VLl/iI3f73l9pHS/le6nVNliHIu0f9jAoTPy807EuYml40HqqIVQP2X4Gt+mk=;
Received: from mga06.intel.com ([134.134.136.31])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iUtZ2-001Y73-Ka
 for tboot-devel@lists.sourceforge.net; Wed, 13 Nov 2019 14:24:10 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Nov 2019 06:24:02 -0800
X-IronPort-AV: E=Sophos;i="5.68,300,1569308400"; d="scan'208";a="194684033"
Received: from lhawrylk-desk.igk.intel.com ([10.102.89.27])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Nov 2019 06:24:01 -0800
Message-ID: <f3f94fc1ba73ff604260a6bfb8e4a8ee8b1e9e00.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: Travis.Gilbert@dell.com, pmoore2@cisco.com
Date: Wed, 13 Nov 2019 15:23:59 +0100
In-Reply-To: <473a0d4460a64bfe8a96c1942ae21de4@AUSX13MPC102.AMER.DELL.COM>
References: <681a21560a8a9f41a4be8cdc399cf5008f7adecc.camel@cisco.com>
 <1926e09cfdf84af28414b36c2652f421@AUSX13MPC102.AMER.DELL.COM>
 <52ba4fc58ef941c81458ea95eeaed31b0aa669e1.camel@cisco.com>
 <b4e1bf1374114acdaa3b99d91b43bd64@AUSX13MPC102.AMER.DELL.COM>
 <a250508c1d6ba4cf2b080b6f69803698539f7b0c.camel@cisco.com>
 <2a4c6551b68be437cd02c7987ef75a6d315f0368.camel@linux.intel.com>
 <beabd66d2dffc0d8d08d411588501412cca2fdfe.camel@cisco.com>
 <473a0d4460a64bfe8a96c1942ae21de4@AUSX13MPC102.AMER.DELL.COM>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: cisco.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1iUtZ2-001Y73-Ka
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

Thank you for feedback, I understand your point. I was talking with
tools maintainer and he started working on migration to Python 3.x and
better CLI support (together with documentation how to use it). Our idea
is not to add enormous list parameters to generate LCP with desired
options, but to add JSON/XML file that will describe LCP in human-
readable format. After preparing that file (you can do that in VIM) you
will feed it into tool and than get LCP. I would like to hear your
opinion about that idea.

The only reason why I don't want to maintain lcptools-v2 is to not have
two tools that do the same thing. I hope that with your input we can
improve lcp-gen2 so it can replace lcptools-v2 in every case. In my
opinion adding CLI to GUI application is easier than adding GUI to CLI
application, that's why I decided to go with lcp-gen2.

We are working on lcp-gen2 in our local repository, I will ask
maintainer when he will be ready with Python 3.x migration if that will
be less than month I will wait for that to release new version.

Lukasz

On Fri, 2019-11-08 at 18:34 +0000, Travis.Gilbert@dell.com wrote:
> > -----Original Message-----
> > From: Paul Moore (pmoore2) <
> > pmoore2@cisco.com
> > >
> > Sent: Friday, November 8, 2019 11:19
> > To: 
> > lukasz.hawrylko@linux.intel.com
> > ; Gilbert, Travis
> > Cc: 
> > tboot-devel@lists.sourceforge.net
> > 
> > Subject: Re: [tboot-devel] Creating a TXT/tboot policy suitable for a modern
> > system with TXT+TPM2
> > 
> > On Fri, 2019-11-08 at 12:47 +0100, Lukasz Hawrylko wrote:
> > > For TPM2.0 LCP generation there is a Python tool lcp-gen2 that is
> > > included in tboot's source code. To be honest I didn't try to generate
> > > LCP with tboot's VLP inside but it should work. If not - this is a bug
> > > and need to be fixed.
> > > 
> > > lcptools-v2 will is not maintained, any new features like new signing
> > > algorithms will not be included there, so I suggest not to use it for
> > > new designs. We are actively improving lcp-gen2, if there is something
> > > that is missing in your opinion please let me know.
> > 
> > A few problems come to mind with lcp-gen2 all of which are blockers:
> > 
> > * I see references to upgrading to newer versions of Python 2.x, but nothing
> > about upgrading to Python 3.x; with Python 2.x going EOL in a few months
> > this needs to happen very soon.
> > 
> > * No documentation.  This is a general problem with the tboot
> > code/tools: there is very little documentation, and what does seem to be
> > present is mostly wrong or incomplete.
> > 
> > * The lcp-gen2 tool appears to be intended mostly as a GUI tool, and I need a
> > CLI tool.  It looks like there might be some sort of "batch build" available from
> > the command line, but I don't see any further explanation or documentation
> > on this ability.
> > 
> > You mention that lcp-gen2 is being actively improved, is this happening
> > offline?  The last commit I see is to the sf.net repo for lcp-gen2 is over six
> > months old.
> > 
> > If these issues can't be resolved within the next month or two, is there any
> > reason why we couldn't continue to make changes to the lcptools-v2 tools?
> > 
> > -Paul
> > 
> 
> I'm with Paul. I strongly disagree with discontinuing support for lcptools-v2.
> 
> lcp-gen2 requires that you have a Window Manager installed. It requires clicking around in a GUI. Both of these limit its use. The most important thing it limits is the ability to script LCP creation like I have done. When I give someone else an LCP to use, instead of a 10 page document with pictures that walks them through clicking everything in lcp-gen2, with lcptools-v2, I can just say "Run this script." If that script doesn't error out, then I *know* that the LCP was correctly created. In the lcp-gen2 case, I have to have the user send me the LCP and other intermediate files and compare them with what I expect in order to figure out whether something went wrong or not. Troubleshooting for a script is simpler. If for some reason they can't copy & paste the console output with the error (very easy), I can have the user run the script again while redirecting the output to a file, and then send me the file.
> 
> I also have philosophical issues with GUI-only, mostly that it violates the UNIX philosophy of "Write programs to handle text streams, because that is a universal interface." My evidence for why this should be considered consists of my previous paragraph and Paul's concerns.
> 



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
