Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 51A8C1E8023
	for <lists+tboot-devel@lfdr.de>; Fri, 29 May 2020 16:24:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jefwL-0001dE-SD; Fri, 29 May 2020 14:24:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1jefwK-0001d8-Uq
 for tboot-devel@lists.sourceforge.net; Fri, 29 May 2020 14:24:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bvwpDn1s/Ni2JnRGejthDsKaCR1u81xnTbd9BMr903I=; b=Bll42cnYChdKGJUDBUAEQGr1KF
 eBjbAl/QXMsssMhFDoo7yV3BSb9bG/3M4KOrcN0EnAcC/LEgIAjb7y7X9rtlKbngeSF7wGa/7KDz7
 932OyRbbCJbaQVHSu4han+/ROfUXCtTZfHXWa8I3qXBv2fV0EQCwBieg8E3Egj9W55v0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bvwpDn1s/Ni2JnRGejthDsKaCR1u81xnTbd9BMr903I=; b=egPW2JQ3iDfp4qzJVlfgxfR2Cn
 65LLZGR4nv3Y2WrVOfKdiHpFz9pMDyatNVh7ICQWs1EPSRvPhVn2xvqOuSFaiRXHqRxVIQvHUDBrF
 i7JLvVAyq3kFl0SJH9L8VOdIrd0cFKYCCfpqeUNAz6Y0qagfSnb3KHLOa3Fij6ay8n3w=;
Received: from mga09.intel.com ([134.134.136.24])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jefwJ-00HMAk-FD
 for tboot-devel@lists.sourceforge.net; Fri, 29 May 2020 14:24:52 +0000
IronPort-SDR: T8NDJa0KAQOuucIHIGuOnYstzDgUvvzEqHCol5/lII0jZkxYXshN3+Ofv4/2DOxQmAI2BCNQ4U
 UKjQxQWMOtuQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2020 07:24:45 -0700
IronPort-SDR: 2yyfPqsiEgIPLuZiOXDG1bd2526N6Edim9rgaR/e1ZDBJkmhNLzWkdzUB5F6pgBdf2kY/ekf1b
 fmerNclgCkWQ==
X-IronPort-AV: E=Sophos;i="5.73,448,1583222400"; d="scan'208";a="443406648"
Received: from lhawrylk-desk.ger.corp.intel.com ([10.213.28.26])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2020 07:24:44 -0700
Message-ID: <fccd42128daa0ff86d2e6970f7e3217ae8f1a01e.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: Timo Lindfors <timo.lindfors@iki.fi>, tboot-devel@lists.sourceforge.net
Date: Fri, 29 May 2020 16:24:42 +0200
In-Reply-To: <alpine.DEB.2.20.2005291234440.22603@mail.home>
References: <alpine.DEB.2.20.2005081919250.3828@mail.home>
 <3da41313c3b91f154f53f9c2c9645ade6399cff9.camel@linux.intel.com>
 <alpine.DEB.2.20.2005121234280.7218@mail.home>
 <alpine.DEB.2.20.2005231924220.17882@mail.home>
 <alpine.DEB.2.20.2005241914180.17882@mail.home>
 <2b9029d61fed0ca5f4d60a14a90fb01c98f6f007.camel@linux.intel.com>
 <alpine.DEB.2.20.2005251307150.19253@mail.home>
 <alpine.DEB.2.20.2005280214320.21222@mail.home>
 <952021e68c90965520a2b1a1cf11245ab49dd31b.camel@linux.intel.com>
 <alpine.DEB.2.20.2005282120080.22086@mail.home>
 <alpine.DEB.2.20.2005291234440.22603@mail.home>
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.24 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1jefwJ-00HMAk-FD
Subject: Re: [tboot-devel] tboot 1.9.12 build failure if CFLAGS is set in
 environment
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

On Fri, 2020-05-29 at 12:36 +0300, Timo Lindfors wrote:
> On Thu, 28 May 2020, Timo Lindfors wrote:
> > > If you don't see this dump in failing scenario please add
> > > "set debug=mmap" to grub.cfg, now GRUB should print that.
> > 
> > I added this after the serial console setup but this does not seem to print 
> > anything? I also cannot find it in the grub2 source code. Is this the correct 
> > syntax?
> 
> Assuming you meant "lsmmap" I am attaching here output from cold and warm 
> boot. Unfortunately as you can see they are identical until the cold boot 
> gets stuck but maybe this still helps?

I see "Failed to get EFI memory map" message, did you configure BIOS to
use legacy boot? "set debug=mmap" should enable EFI memory map print in
grub_efi_mmap_iterate(), but this does not work when booted in legacy
mode.

I will setup my environment to test legacy boot and I will check if the
same problem occurs. If it is possible, please try EFI boot on your PC. 

As printk is blocking call you can add few additional prints somewhere
around tboot.c:384 and inside copy_e820_map() and efi_memmap_copy() to
find out where exactly it hangs.

Thanks,
Lukasz



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
