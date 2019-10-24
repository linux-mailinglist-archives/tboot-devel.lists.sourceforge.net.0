Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 16BB9E2AF4
	for <lists+tboot-devel@lfdr.de>; Thu, 24 Oct 2019 09:19:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1iNXP1-00076Y-60; Thu, 24 Oct 2019 07:19:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1iNXP0-00074z-1s
 for tboot-devel@lists.sourceforge.net; Thu, 24 Oct 2019 07:19:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=35MMv3G/ZM1TwIIZRMTll/vKS98dDyPD+P7xzdpIutQ=; b=aKZ+qJq+yQbbml5SBdG9l2CcG1
 EnxUmvskO6TSt2/f5sJV7D8NP6PkJniKJsNprf/9zirFdZf9W91NL+BqHEi18lETLAO2/sLUDel8g
 u1suehYA1E3l1kajil5nl53s9cbXVlkh8qxiyaTwhXpLrNJXSG/9pgfdCofgNmcju8B8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=35MMv3G/ZM1TwIIZRMTll/vKS98dDyPD+P7xzdpIutQ=; b=TkbIeQnXkrCIE4l0aUNROI0vBh
 L9AteBjLb79nQP5qpUQ58HbplvMGoedsSDJ2KA9NsmqJASamTJ+1JzPi9XwxcONvgVOqmNzioN8pq
 eg+74gwmePOR+0JV/Q71CWboBErvpiObHFhzESiP9A9QXPzgTC7HK+TeOwH3oYdY5+z8=;
Received: from mga11.intel.com ([192.55.52.93])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iNXOo-001EL0-SF
 for tboot-devel@lists.sourceforge.net; Thu, 24 Oct 2019 07:19:21 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 00:19:04 -0700
X-IronPort-AV: E=Sophos;i="5.68,223,1569308400"; d="scan'208";a="192099429"
Received: from lhawrylk-desk.igk.intel.com ([10.102.89.27])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 00:19:03 -0700
Message-ID: <c04e94af5aabc02dde0fb816f7acd9912f049927.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: "Paul Moore (pmoore2)" <pmoore2@cisco.com>, 
 "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Date: Thu, 24 Oct 2019 09:18:47 +0200
In-Reply-To: <ba9fa4341c9b9fa27c8ea3229f879d25614a900f.camel@cisco.com>
References: <bbaf0eeb3ddb8791533fc9dfba23ed57d3a2c9bd.camel@cisco.com>
 <ba9fa4341c9b9fa27c8ea3229f879d25614a900f.camel@cisco.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linuxfoundation.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1iNXOo-001EL0-SF
Subject: Re: [tboot-devel] [RFC] tboot: kernel signature verification
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

Hi

I will be on LSS EU, I will catch you after your presentation for a
short (or not short) conversation.

Thanks,
Lukasz

On Fri, 2019-10-18 at 13:27 +0000, Paul Moore (pmoore2) via tboot-devel
wrote:
> On Thu, 2019-09-19 at 15:39 +0000, Paul Moore (pmoore2) via tboot-devel
> wrote:
> > Hello,
> > 
> > I've been working on adding PECOFF/kernel signature verification to
> > tboot and now that I have a rough working prototype I wanted to bring
> > it to the list to see if this is something the tboot community would
> > be interested in eventually merging (once the work is more complete
> > and polished).
> > 
> > The patchset is quite large, mostly due to the inclusion of
> > libtomcrypt and libtomfastmath to the tboot repository, so I'm going
> > to refrain from spamming the list with the full patchset at this early
> > stage.  The current patchset can be found on GitHub at the URL below
> > (look in the "working-txtsig" branch):
> > 
> > * 
> > https://github.com/pcmoore/misc-tboot/tree/working-txtsig
> > 
> > 
> 
> I've updated the working-txtsig branch with a number of fixes relating
> to the ASN.1/PKCS parsing code as well as improved signing/hash
> algorithm support (previously limited to SHA256) and the ability to
> verify kernels using variable length certificate chains (previously
> limited to the immediate signer).  Work on adding certificate support to
> the tboot launch control policy is ongoing (it's the next major work
> item), but the prototype contains a hard coded Fedora CA which should be
> able to verify any modern Fedora kernel.  Just as before, if you have
> any questions, concerns, or feedback please get in touch on-list or
> privately.
> 
> I'll be giving an updated presentation on this effort at the Linux
> Security Summit EU later this month, if you are in the area please stop
> by and introduce yourself - I'd love to talk about TXT/tboot!
> 
> https://events19.linuxfoundation.org/events/linux-security-summit-europe-2019
> 
> 
> Thanks,
> -Paul
> 
> 
> _______________________________________________
> tboot-devel mailing list
> tboot-devel@lists.sourceforge.net
> 
> https://lists.sourceforge.net/lists/listinfo/tboot-devel
> 
> 



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
