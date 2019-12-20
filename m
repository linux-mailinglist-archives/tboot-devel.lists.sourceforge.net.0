Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A6BF12787B
	for <lists+tboot-devel@lfdr.de>; Fri, 20 Dec 2019 10:51:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1iiEwo-0002kg-2O; Fri, 20 Dec 2019 09:51:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1iiEwj-0002kA-OA
 for tboot-devel@lists.sourceforge.net; Fri, 20 Dec 2019 09:51:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FiXy18eY6+o31py/Y4wo49TlclzlBwI7xMW0RKHUPoY=; b=Em+5QHEq4l+nLl4VLee5tGHEbu
 On9qFi5A/17bCm3gDTcc2//i64R4XQGIu1AgdLqUL6wn1bFxQflIJhgjlPudsU+8j2k6x/kULABnc
 TGBgS/Y4SrRBpAJoM56vAEW32zBLVwqSrrnGCumIt4tA8JM6tRwjC5yrAu/xrrdsbctA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FiXy18eY6+o31py/Y4wo49TlclzlBwI7xMW0RKHUPoY=; b=PsNVzXYImp9yfhmhUlqTkznF8c
 OGEyvOZc9m8b1cHx9Ru74tjr3qOBg3nJyRV1CLa6cRhv89gD7eW2P88eOa4txNkUfkk2Aakdo7Pfm
 t/65x2OXP2VjGFfDyg5gXVKiYtHZwzbm0Ol47knfw7HQ/7UM8+jb4YmosCKlsXTx8m74=;
Received: from mga03.intel.com ([134.134.136.65])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iiEwf-008apd-EO
 for tboot-devel@lists.sourceforge.net; Fri, 20 Dec 2019 09:51:43 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Dec 2019 01:51:35 -0800
X-IronPort-AV: E=Sophos;i="5.69,335,1571727600"; d="scan'208";a="210768152"
Received: from lhawrylk-desk.igk.intel.com ([10.102.89.27])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Dec 2019 01:51:34 -0800
Message-ID: <0fa151128d5fd81337cf9383c4a9f46108fc5b7a.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: "Paul Moore (pmoore2)" <pmoore2@cisco.com>, 
 "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Date: Fri, 20 Dec 2019 10:51:32 +0100
In-Reply-To: <4981a097e7aeda6240fcd614164b72b69e25a2aa.camel@cisco.com>
References: <bbaf0eeb3ddb8791533fc9dfba23ed57d3a2c9bd.camel@cisco.com>
 <ba9fa4341c9b9fa27c8ea3229f879d25614a900f.camel@cisco.com>
 <fbb29bfec178bb4b4d586df217d202fbe54430a4.camel@cisco.com>
 <60a05460106ef7cf1186e96d476c4564a500f5e2.camel@linux.intel.com>
 <bd1c6b6134911fd9f7c9c0434ca648c407ddc8f0.camel@cisco.com>
 <ceaca929e1b06cae46aff198872af05874ada24b.camel@linux.intel.com>
 <4981a097e7aeda6240fcd614164b72b69e25a2aa.camel@cisco.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1iiEwf-008apd-EO
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

On Tue, 2019-12-17 at 20:12 +0000, Paul Moore (pmoore2) wrote:
> On Fri, 2019-12-06 at 11:37 +0100, Lukasz Hawrylko wrote:
> > On Thu, 2019-12-05 at 17:20 +0000, Paul Moore (pmoore2) wrote:
> > > A question for discussion: if the VLP is loaded from it's own
> > > nvindex,
> > > and there is also a VLP present inside the LCP, which VLP do we want
> > > to
> > > use?  I'm assuming it is the VLP we loaded directly, and not from
> > > inside
> > > the LCP, but thought it was worth checking.
> > >  
> > 
> > In "stock" TBOOT, VLP loaded from its own index has higher priority
> > over
> > one embedded in LCP, so I agree with you that here it should work like
> > that.
> 
> I was thinking about this some more and I'm now wondering if we should
> only support the new TB_HTYPE_PECOFF hash type if it is present in a VLP
> loaded from the LCP.  In order to use the new signature support admins
> are going to need to generate a new LCP to contain the certificate
> payload, why not store the VLP in the LCP at that point?

To be honest I don't like to add any kind of limitation when it is not
needed. I think that in first approach we should allow to use any of
possible configurations. If admins prefer to delete VLP index in TPM and
put everything in LCP, they will do it, if, for any reasons, they want
to keep VLP under its own index and put only certificate in LCP - why
not, we support that case too :)

> Is there any advantage to storing the VLP directly in the TPM and not in
> the LCP?
> 
> -Paul
> 

That's a good question. I don't know if customers prefer to use VLP in
LCP or directly, I will talk with our application engineers about that.

Thanks,
Lukasz



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
