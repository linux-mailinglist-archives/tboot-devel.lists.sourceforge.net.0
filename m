Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C291613C5EA
	for <lists+tboot-devel@lfdr.de>; Wed, 15 Jan 2020 15:25:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1irjc4-0007cn-3u; Wed, 15 Jan 2020 14:25:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1irjc3-0007cg-2Y
 for tboot-devel@lists.sourceforge.net; Wed, 15 Jan 2020 14:25:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VlTwHv5EfWLo7PFaSkyFPKmSs6DbO1zCFyS5cZVqZqo=; b=gypy7yDdkplxZ8khnl6bWelxPa
 69RXUMWKtkKBCayFj0YFhAWXRk9sjrIcO4gjKnEcP6ZrU2UM79ll5wNm96byAXDzCsVISopCM6GXB
 6lMOR6wAqPsAiqMTcfoOLEOce2TFNtJ59SpKpcIiXWU5u+QAiBD+o4foE4muEUaNUNac=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VlTwHv5EfWLo7PFaSkyFPKmSs6DbO1zCFyS5cZVqZqo=; b=JyOQ7WLQQXbLJSP2LlADOVOdH6
 JoepTqlMUWORufZhTeGm6w7Tohs0BT1OOdDTZsF9Cv8TKhLUoWyVqRV62dZxTsjH1BWpzLI1zoD4Z
 EnGMvKv7GM2Rl+IOCJUgcXLGUoh7ND/6Dkh7FFZzt3sDB6jka3KSqak5XpTxbMCIanUM=;
Received: from mga14.intel.com ([192.55.52.115])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1irjbx-004nlS-Aq
 for tboot-devel@lists.sourceforge.net; Wed, 15 Jan 2020 14:25:39 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Jan 2020 06:25:27 -0800
X-IronPort-AV: E=Sophos;i="5.70,322,1574150400"; d="scan'208";a="218141160"
Received: from lhawrylk-desk.igk.intel.com ([10.102.89.27])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Jan 2020 06:25:26 -0800
Message-ID: <50cbd716f02d7cdb7e3911b327328c4f94f83962.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: Paul Moore <paul@paul-moore.com>
Date: Wed, 15 Jan 2020 15:25:23 +0100
In-Reply-To: <CAHC9VhSj+yWXiSTJDpx+CQENn_xsv7wTu2dkm_bcu46m2CXgAA@mail.gmail.com>
References: <95c91cf5919cf3ebb3058e90bd6af64939dedee1.camel@cisco.com>
 <2c111f3585e0c048ae090e99be2eef9240bf3445.camel@cisco.com>
 <e72bc640db22e2460c41e9718f550a2a443e4a55.camel@cisco.com>
 <0101df1759aa0bfdf2b30c1696af474902c232a9.camel@intel.com>
 <274b39c26ab00d63acecb2f68d0fca516943f8f9.camel@cisco.com>
 <f2a750a91b3739951ea170c76e96f136c9d2fe2a.camel@cisco.com>
 <6149fe3475395aac9743b82acd6ad2a31a8a924c.camel@linux.intel.com>
 <CAHC9VhSj+yWXiSTJDpx+CQENn_xsv7wTu2dkm_bcu46m2CXgAA@mail.gmail.com>
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
X-Headers-End: 1irjbx-004nlS-Aq
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
Cc: "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tboot-devel-bounces@lists.sourceforge.net

On Tue, 2020-01-14 at 11:47 -0500, Paul Moore wrote:
> On Tue, Jan 14, 2020 at 10:31 AM Lukasz Hawrylko
> <
> lukasz.hawrylko@linux.intel.com
> > wrote:
> > On Tue, 2020-01-14 at 00:18 +0000, Paul Moore (pmoore2) wrote:
> > > On Mon, 2020-01-13 at 20:33 +0000, Paul Moore (pmoore2) via tboot-devel wrote:
> > > > On Thu, 2020-01-09 at 14:59 +0000, Hawrylko, Lukasz wrote:
> > > > > On Fri, 2020-01-03 at 20:26 +0000, Paul Moore (pmoore2) via tboot-devel
> > > > > wrote:
> > > > > > Lukasz, is there a way to generate PCR hashes for all supported
> > > > > > algorithms like tboot does for PCR17/18?
> > > > > > 
> > > > > > -Paul
> > > > > > 
> > > > > 
> > > > > Hello Paul
> > > > > 
> > > > > I looks like you can't create policy with different hash algorithms,
> > > > > look at tb_policy_t structure in tb_policy.h There is one field for
> > > > > setting hash algorithm that is common to all policy entries.
> > > > 
> > > > Have you been able to create a VLP which causes tboot to extend the
> > > > TPM's sha256 PCR bank?
> > > > 
> > > 
> > > After digging through the code some more, it looks like the key to
> > > making this work is to specify the correct "extpol=" parameter on the
> > > tboot command line. It appears to be TPM and ACM dependent (?) so I'm
> > > not sure this will work for everyone, but on my system
> > > "extpol=embedded" caused tboot to extend all of the TPM PCR banks;
> > > "extpol=agile" on my system caused the ACM to reset the system.
> > > 
> > > -Paul
> > > 
> > 
> > As far as I remember I was able to extend SHA256 PCRs, because this is
> > the only way to test my changes in tb_polgen. I am not sure, but I think
> > that you have to pass "extpol=sha256" in command line and than you can
> > work with SHA256 policies. Did you try to do that? I will try tomorrow
> > how agile and embedded options work on my platform.
> 
> Yes, "extpol=sha256" did work to extend the sha256 PCR bank, but it
> didn't extend the sha1 bank; ideally I would be able to do both and
> that is what "extpol=embedded" did for my system.
> 
> I have a suspicion that instead of defaulting to sha1, we may be able
> to query the ACM to get the TPM2 extpol setting, but I haven't done
> any serious investigation of that yet.
> 
> 

On my platform both "agile" and "embedded" options extends sha1 and
sha256 banks. When using "agile" whole process is much longer because
hash computation is done on TPM. In "embedded" hashes are computed
locally and result is sent to TPM to extend PCRs. The easiest way to
find out how that mechanism work is to look at hash_module() function in
policy.c file.

Interesting thing is that on your platform you can't use "agile" method.
If reset is invoked by SINIT ACM there should be error code value in
TXT.ERRORCODE register, can you check what is there? TBOOT prints its
value during each boot, so just allow platform to boot once again after
that reset and you will find TXT.ERRORCODE somewhere in logs.

Thanks,
Lukasz



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
