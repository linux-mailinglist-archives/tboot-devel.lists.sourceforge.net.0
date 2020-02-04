Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BD20151E35
	for <lists+tboot-devel@lfdr.de>; Tue,  4 Feb 2020 17:21:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1iz0ww-0005BI-A9; Tue, 04 Feb 2020 16:21:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1iz0wu-0005BB-TA
 for tboot-devel@lists.sourceforge.net; Tue, 04 Feb 2020 16:21:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bmYbH8DTZW1E2vy4z6HY4huHQunvfObcui3KHdjErxM=; b=ESOHaw4M/ZstVC04VNX0ubyfSk
 8ZUE560EN+MoPYuSRkBAV1Pc1xIcE5LJVYaKl4Kv+H+FgB4tVvHCX4GltwYevc8XZy4Vr4q9ZFb34
 pLob+aGOLpZ5U4gv2jRNiKU9090dbfTcqSbCgyCWxy3lnlyDJUfjS81SooqHs6KM1LaE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bmYbH8DTZW1E2vy4z6HY4huHQunvfObcui3KHdjErxM=; b=Lb2sV39jEF+dPsnJKAuEHct/4k
 85g1odBwOzatGgJOtohiStRQwIPFA12brXa2EA5LjXZJz4L/SZupQo1Se+LE5e0NGLvkalGrq5dRn
 HIssMOTav2XE0nX/ucQttKoRIBlCy+1JEP0ozkiHkgl3scyhT1Y5oLET7u/vAUyZ4h4w=;
Received: from mga12.intel.com ([192.55.52.136])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iz0wt-00GnwL-Cf
 for tboot-devel@lists.sourceforge.net; Tue, 04 Feb 2020 16:21:16 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 08:21:09 -0800
X-IronPort-AV: E=Sophos;i="5.70,402,1574150400"; d="scan'208";a="224344741"
Received: from lhawrylk-desk.igk.intel.com ([10.102.89.27])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 08:21:07 -0800
Message-ID: <11feb113b1b57f7bc970da90249c5cc5c227d33f.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: Paul Moore <paul@paul-moore.com>
Date: Tue, 04 Feb 2020 17:21:04 +0100
In-Reply-To: <CAHC9VhTGDXOqH4phjAk7yPZEyEJ3FyuZxwv0_GHRvvW3Yav7qg@mail.gmail.com>
References: <bbaf0eeb3ddb8791533fc9dfba23ed57d3a2c9bd.camel@cisco.com>
 <ba9fa4341c9b9fa27c8ea3229f879d25614a900f.camel@cisco.com>
 <fbb29bfec178bb4b4d586df217d202fbe54430a4.camel@cisco.com>
 <60a05460106ef7cf1186e96d476c4564a500f5e2.camel@linux.intel.com>
 <bd1c6b6134911fd9f7c9c0434ca648c407ddc8f0.camel@cisco.com>
 <ceaca929e1b06cae46aff198872af05874ada24b.camel@linux.intel.com>
 <4981a097e7aeda6240fcd614164b72b69e25a2aa.camel@cisco.com>
 <0fa151128d5fd81337cf9383c4a9f46108fc5b7a.camel@linux.intel.com>
 <141d1e7f4cfce39d4e53b292556310f7c31329d7.camel@cisco.com>
 <CAHC9VhTGDXOqH4phjAk7yPZEyEJ3FyuZxwv0_GHRvvW3Yav7qg@mail.gmail.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-Headers-End: 1iz0wt-00GnwL-Cf
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
Cc: "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tboot-devel-bounces@lists.sourceforge.net

On Tue, 2020-01-28 at 22:11 -0500, Paul Moore wrote:
> On Sat, Dec 21, 2019 at 12:00 PM Paul Moore (pmoore2) via tboot-devel
> <
> tboot-devel@lists.sourceforge.net
> > wrote:
> > On Fri, 2019-12-20 at 10:51 +0100, Lukasz Hawrylko wrote:
> > > On Tue, 2019-12-17 at 20:12 +0000, Paul Moore (pmoore2) wrote:
> > > > On Fri, 2019-12-06 at 11:37 +0100, Lukasz Hawrylko wrote:
> > > > > On Thu, 2019-12-05 at 17:20 +0000, Paul Moore (pmoore2) wrote:
> > > > > > A question for discussion: if the VLP is loaded from it's own
> > > > > > nvindex,
> > > > > > and there is also a VLP present inside the LCP, which VLP do we
> > > > > > want
> > > > > > to
> > > > > > use?  I'm assuming it is the VLP we loaded directly, and not
> > > > > > from
> > > > > > inside
> > > > > > the LCP, but thought it was worth checking.
> > > > > > 
> > > > > 
> > > > > In "stock" TBOOT, VLP loaded from its own index has higher
> > > > > priority
> > > > > over
> > > > > one embedded in LCP, so I agree with you that here it should work
> > > > > like
> > > > > that.
> > > > 
> > > > I was thinking about this some more and I'm now wondering if we
> > > > should
> > > > only support the new TB_HTYPE_PECOFF hash type if it is present in a
> > > > VLP
> > > > loaded from the LCP.  In order to use the new signature support
> > > > admins
> > > > are going to need to generate a new LCP to contain the certificate
> > > > payload, why not store the VLP in the LCP at that point?
> > > 
> > > To be honest I don't like to add any kind of limitation when it is not
> > > needed. I think that in first approach we should allow to use any of
> > > possible configurations. If admins prefer to delete VLP index in TPM
> > > and
> > > put everything in LCP, they will do it, if, for any reasons, they want
> > > to keep VLP under its own index and put only certificate in LCP - why
> > > not, we support that case too :)
> > 
> > Okay, that's fine.  FWIW, it seems to me as if keeping the VLP in it's
> > own nvindex is a bit of a legacy solution, especially when we consider
> > the PECOFF signature validation.  In the PECOFF case you *must* have a
> > LCP to carry the certificates.  Not to mention the benefits of a signed
> > LCP allowing you to update the policy without updating the values stored
> > in the TPM nvindex (assuming the same policy signing key).
> 
> I've been playing with this and it would appear, at least on my TPM2
> system, that loading a VLP directly into the TPM conflicts with the
> LCP.
> 
> Lukasz, have you been able to load both a VLP and a LCP into a TPM2?
> 
> 

Yes, I had both VLP and LCP loaded in TPM 2.0, I don't think I had any
issues with that. How does this conflict look like in your platform?

Thanks,
Lukasz



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
