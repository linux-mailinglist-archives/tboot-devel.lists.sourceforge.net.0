Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C3DB71A75F1
	for <lists+tboot-devel@lfdr.de>; Tue, 14 Apr 2020 10:24:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jOGs9-0002kX-V7; Tue, 14 Apr 2020 08:24:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1jOGs8-0002kN-4C
 for tboot-devel@lists.sourceforge.net; Tue, 14 Apr 2020 08:24:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bwD+85nhwysX02RHFQUo+3K77X2Go1ox1d486+5wknU=; b=C9hEDVz+G4PHwlD9LqtteJ1zr5
 ye7vJBwstQz/qcum0ugBQ4sNRJZ/vRGY96bas5GXciNP3o4eKIxnfHescsFs5wVuCHjvWYPDwlFkc
 9H0HH0Ht3uxA0R542Hw7d329Zbb1xqfyQodkderv+7aHkOuU6FPK96cZB/7/TI7ZNu9c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bwD+85nhwysX02RHFQUo+3K77X2Go1ox1d486+5wknU=; b=JMjPeqy3wuF7OZhrwr+6z89PKO
 R+1PRoaq79J4xG63oQwCl6FR8H7MhI25/7zVdSRIXGkajh++Aswx701L2zED9uU8UZRoaxJ902zoD
 YzPG5uXOy+7Qp3kpdsas6OgqEVYFkol3dpsIDB4OWoRqoyw2h+lFRseb9AR2y0rGfIrg=;
Received: from mga09.intel.com ([134.134.136.24])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jOGs5-00EUKS-5I
 for tboot-devel@lists.sourceforge.net; Tue, 14 Apr 2020 08:24:43 +0000
IronPort-SDR: 1ZSMaSw7SJi7yoCyaSHCTjZjotkel1BucvoEb8B6/LlS8VPelJNe1QmZHx6zy4xzIUw0LyZHi9
 RBMFur9PaWmQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2020 01:24:35 -0700
IronPort-SDR: fssN+kUB4wgIrg6Lig3DmStGcPA4cZB8lhxRU7KO8o2SMuTtloUBk3bmoxaBVgfDqsU8C6eYg+
 mdmabqlD/4rQ==
X-IronPort-AV: E=Sophos;i="5.72,382,1580803200"; d="scan'208";a="399884452"
Received: from lhawrylk-desk.ger.corp.intel.com ([10.213.26.93])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2020 01:24:34 -0700
Message-ID: <1787201313da7a0fdc21a52e6319c94c80c995bb.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: Timo Lindfors <timo.lindfors@iki.fi>, tboot-devel@lists.sourceforge.net
Date: Tue, 14 Apr 2020 10:24:32 +0200
In-Reply-To: <alpine.DEB.2.20.2004141036360.11002@mail.home>
References: <alpine.DEB.2.20.2003312317470.19721@mail.home>
 <dc275925ce5f44633594ec3fd6732b13f3abeb4c.camel@linux.intel.com>
 <alpine.DEB.2.20.2004021722080.21308@mail.home>
 <d5d36808a38af260d0e8390aaaf5dc6724cf787f.camel@linux.intel.com>
 <alpine.DEB.2.20.2004081710220.25471@mail.home>
 <c5561325a53303ad556dadf49ba7269295ac30fc.camel@linux.intel.com>
 <alpine.DEB.2.20.2004081831250.25596@mail.home>
 <89eb86fd43cd9cadd48db77433959d708d060e74.camel@linux.intel.com>
 <alpine.DEB.2.20.2004141036360.11002@mail.home>
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
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jOGs5-00EUKS-5I
Subject: Re: [tboot-devel] tboot not picking the right ACM module on Dell
 Latitude E5470
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

On Tue, 2020-04-14 at 10:40 +0300, Timo Lindfors wrote:
> On Tue, 14 Apr 2020, Lukasz Hawrylko wrote:
> > As KBL SINIT works with both SKL and KBL platforms, the old one,
> > compatible only with SKL, is not longer supported and may not work with
> > newer versions of SKL bioses. Recommendation is to use the KBL SINIT for
> > both KBL and SKL systems.
> > 
> > To avoid possible confusion in the future, old, not longer supported
> > SINIT, will be removed from download site. After that, there will be
> > only one binary available - 6th_7th_gen_i5_i7-SINIT_74 (that works with
> > both SKL and KBL platforms). Please do not use 6th_gen_i5_i7_SINIT_71.
> Great to hear that you found the root cause! Would it be possible to 
> publish a simple tool that can pick the right ACM module for a given CPU 
> automatically? So that I could use that tool to generate my grub.cfg this 
> would greatly improve usability of the whole solution. I can of course try 
> to extract that logic from tboot but maybe such a tool already exists?
> 

I don't know if that tool exists. Anyway, I will look at that multiple
SINITs bug in TBOOT, when it will be fixed, that kind of tool will not
be required.

In mean time, you can check acminfo from utils directory. It examines
SINIT binary and also can check if SINIT is compatible with current
platform. You can easily adopt it (with bash scripting help) to do what
you need.

Lukasz



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
