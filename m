Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E093A136DD6
	for <lists+tboot-devel@lfdr.de>; Fri, 10 Jan 2020 14:20:59 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1ipuDb-0000YV-6l; Fri, 10 Jan 2020 13:20:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1ipuDa-0000YC-6R
 for tboot-devel@lists.sourceforge.net; Fri, 10 Jan 2020 13:20:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0zxRrwDB+mYLKRFxH7aClzN3pn60FvDcQhQF83186P0=; b=cFuHs9Oyndrtk4WXz0XrTXJDQT
 WVoRYj+5i4pCnrRuRN2/W7zil6qvP04dYI29XS6GU6Yz1N5S5S3FsNuW1mPkprb9+dM52qsLdGBCA
 8QliIY79+M8V+ndXdmZDyRiPa67XswJJ3cYowDJ/ofIj1m7Bik8wlsJs9mAr4uUX5qAQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0zxRrwDB+mYLKRFxH7aClzN3pn60FvDcQhQF83186P0=; b=e0joJnQD+lV/CwxKlx1bP7koKP
 cOqjX5/27jnvZ02uSrTw8C2x7mwOISnq1DDcGUli/eQi1+5m+I5BP+VgJRHkEERJtdrNIjTwLvG8x
 qdF4Uj/U1HspHM6U2fmgwfLRXZG8zCC7DFmKCah1g7VX4J0etCOobWhnx77VfKqe9ijg=;
Received: from mga12.intel.com ([192.55.52.136])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ipuDY-00FU7M-6f
 for tboot-devel@lists.sourceforge.net; Fri, 10 Jan 2020 13:20:50 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jan 2020 05:20:42 -0800
X-IronPort-AV: E=Sophos;i="5.69,417,1571727600"; d="scan'208";a="212261278"
Received: from lhawrylk-desk.igk.intel.com ([10.102.89.27])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jan 2020 05:20:41 -0800
Message-ID: <3e643f8f537781474632a99e09a4c936f8a859a7.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: "Paul Moore (pmoore2)" <pmoore2@cisco.com>, 
 "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Date: Fri, 10 Jan 2020 14:20:18 +0100
In-Reply-To: <e72bc640db22e2460c41e9718f550a2a443e4a55.camel@cisco.com>
References: <95c91cf5919cf3ebb3058e90bd6af64939dedee1.camel@cisco.com>
 <2c111f3585e0c048ae090e99be2eef9240bf3445.camel@cisco.com>
 <e72bc640db22e2460c41e9718f550a2a443e4a55.camel@cisco.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-Headers-End: 1ipuDY-00FU7M-6f
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

On Fri, 2020-01-03 at 20:26 +0000, Paul Moore (pmoore2) wrote:
> On Fri, 2020-01-03 at 20:07 +0000, Paul Moore (pmoore2) via tboot-devel
> wrote:
> > On Thu, 2020-01-02 at 22:27 +0000, Paul Moore (pmoore2) via tboot-
> > devel
> > wrote:
> > > I hope everyone had a nice holiday and is enjoying the new year thus
> > > far.
> > > 
> > > As you've seen in the other thread, I'm playing around with
> > > different
> > > tboot/TXT policies and I have a question regarding tboot/VLP
> > > policies
> > > that can extend PCRs using something other than SHA1: at present
> > > tb_polgen seems limited to using SHA1, does anyone have any patches
> > > to
> > > use SHA256 (or another hash)?
> > 
> > To answer my own question, it appears that Lukasz added suppport in
> > 549:ca935709d8a6 ("Add support for SHA256 in tb_polgen").
> > 
> > Lukasz, if I wanted to generate both SHA1 and SHA256 hashes for a TPM2
> > system, would I need to create two rules in the VLP?  For example I do
> > the following now for the TXT/sig patches and PCR20:
> > 
> >  # tb_polgen --add --num 0 --pcr 20 \
> >      --hash pecoff pecoff.vlp
> > 
> > ... but that only writes the SHA1 hash into PCR20, presumably I could
> > do
> > the following to support both hashes?
> > 
> >  # tb_polgen --add --num 0 --pcr 20 --alg sha1 \
> >      --hash pecoff pecoff.vlp
> >  # tb_polgen --add --num 0 --pcr 20 --alg sha256 \
> >      --hash pecoff pecoff.vlp
> > 
> 
> It appears I didn't look close enough at the patch, the hash algorithm
> selection is done at VLP policy creation and applies to all the rules.
> 
> Lukasz, is there a way to generate PCR hashes for all supported
> algorithms like tboot does for PCR17/18?
> 
> -Paul
> 

Hello Paul

I looks like you can't create policy with different hash algorithms,
look at tb_policy_t structure in tb_policy.h There is one field for
setting hash algorithm that is common to all policy entries.

Thanks,
Lukasz



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
