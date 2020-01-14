Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6115C13ADA6
	for <lists+tboot-devel@lfdr.de>; Tue, 14 Jan 2020 16:30:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1irO9P-0000uA-CW; Tue, 14 Jan 2020 15:30:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1irO9O-0000tt-0y
 for tboot-devel@lists.sourceforge.net; Tue, 14 Jan 2020 15:30:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Qd63Sj1jEIyotZI3ESBRNEu7b0qFVWAmFmn+wG4hdzY=; b=VD/wOnQszZWJv7zK3i4Y4+EwNj
 qyDbzxsQZtoVSjMSjJ3CS33J2wiNPCBX1sOGpQuThkWIFnkVSFaJZpgclVQipmbXXOVBuH24eTX2H
 5Lc8/lre7yBZKToejwtzEURDCUtfPsfQGnygfZH6AGi6GFB5nWXqUuXhSBOgio01fSh8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Qd63Sj1jEIyotZI3ESBRNEu7b0qFVWAmFmn+wG4hdzY=; b=bgMqsXrtlfpNymS8zpkycVbasf
 VqGtIOyHtJh3N/YxczG1hnMjNFXeLdBWV4yDTmjmyuR/K0tKKita7WsJBodaUo2bA+4kNkBz20cwg
 5GkDESHow75OEZCVCrWZIPqvJcU/7AH19vTq+Iw1E/0mcBgPYMA6XJSB8MRP7MygAYrE=;
Received: from mga05.intel.com ([192.55.52.43])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1irO9I-0036RS-UM
 for tboot-devel@lists.sourceforge.net; Tue, 14 Jan 2020 15:30:37 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jan 2020 07:30:27 -0800
X-IronPort-AV: E=Sophos;i="5.69,433,1571727600"; d="scan'208";a="397542135"
Received: from lhawrylk-desk.igk.intel.com ([10.102.89.27])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jan 2020 07:30:25 -0800
Message-ID: <6149fe3475395aac9743b82acd6ad2a31a8a924c.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: "Paul Moore (pmoore2)" <pmoore2@cisco.com>, 
 "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Date: Tue, 14 Jan 2020 16:30:23 +0100
In-Reply-To: <f2a750a91b3739951ea170c76e96f136c9d2fe2a.camel@cisco.com>
References: <95c91cf5919cf3ebb3058e90bd6af64939dedee1.camel@cisco.com>
 <2c111f3585e0c048ae090e99be2eef9240bf3445.camel@cisco.com>
 <e72bc640db22e2460c41e9718f550a2a443e4a55.camel@cisco.com>
 <0101df1759aa0bfdf2b30c1696af474902c232a9.camel@intel.com>
 <274b39c26ab00d63acecb2f68d0fca516943f8f9.camel@cisco.com>
 <f2a750a91b3739951ea170c76e96f136c9d2fe2a.camel@cisco.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1irO9I-0036RS-UM
Subject: Re: [tboot-devel] VLP policy and TPM2 hash agility
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

On Tue, 2020-01-14 at 00:18 +0000, Paul Moore (pmoore2) wrote:
> On Mon, 2020-01-13 at 20:33 +0000, Paul Moore (pmoore2) via tboot-devel wrote:
> > On Thu, 2020-01-09 at 14:59 +0000, Hawrylko, Lukasz wrote:
> > > On Fri, 2020-01-03 at 20:26 +0000, Paul Moore (pmoore2) via tboot-devel
> > > wrote:
> > > > 
> > > > Lukasz, is there a way to generate PCR hashes for all supported
> > > > algorithms like tboot does for PCR17/18?
> > > > 
> > > > -Paul
> > > > 
> > >  
> > > Hello Paul
> > > 
> > > I looks like you can't create policy with different hash algorithms,
> > > look at tb_policy_t structure in tb_policy.h There is one field for
> > > setting hash algorithm that is common to all policy entries.
> > 
> > Have you been able to create a VLP which causes tboot to extend the
> > TPM's sha256 PCR bank?
> > 
> 
> After digging through the code some more, it looks like the key to
> making this work is to specify the correct "extpol=" parameter on the
> tboot command line. It appears to be TPM and ACM dependent (?) so I'm
> not sure this will work for everyone, but on my system
> "extpol=embedded" caused tboot to extend all of the TPM PCR banks;
> "extpol=agile" on my system caused the ACM to reset the system.
> 
> -Paul
> 

As far as I remember I was able to extend SHA256 PCRs, because this is
the only way to test my changes in tb_polgen. I am not sure, but I think
that you have to pass "extpol=sha256" in command line and than you can
work with SHA256 policies. Did you try to do that? I will try tomorrow
how agile and embedded options work on my platform.

Thanks,
Lukasz





_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
