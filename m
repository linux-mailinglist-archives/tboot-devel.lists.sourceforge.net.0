Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A995127882
	for <lists+tboot-devel@lfdr.de>; Fri, 20 Dec 2019 10:53:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1iiEyF-0007Lx-Su; Fri, 20 Dec 2019 09:53:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1iiEyB-0007Ll-SS
 for tboot-devel@lists.sourceforge.net; Fri, 20 Dec 2019 09:53:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZexcFV9YdIckd8bYsQlROX2YDOVkQO7r4dt+wC/dyQY=; b=YktkeCB/XSdX2RSZgn701LT5S6
 ThlEdzR9crasgiKudeh+Me6PndRiCKFHzwSkD+lzif1X2Nh6HahpFLP/bkKfJ/6lC+4aej4x8Tl+q
 iCD9aEKDb/huBpj25kWe5frqfryHiUhSLBpnVzZZwOQq/ImV8qi6/BoLLkPoqFQ+FB5k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZexcFV9YdIckd8bYsQlROX2YDOVkQO7r4dt+wC/dyQY=; b=PeC6cm5wEEDN/Db697WO9PjlZm
 DM00hB0olwzYjKoqW9PF9ML+7ESOLYDUI8FglLiKD8LfIwhS9+UhzrqMzvS2aDkXqjW7oraGpVDXK
 1QdNUE711qjxjrkIiYfrhHbYwGogOX4J1Px1BiXm9zjEHFvU9AFgRbhrHI2G3w4ZCZa4=;
Received: from mga18.intel.com ([134.134.136.126])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iiEyA-00B5lh-9R
 for tboot-devel@lists.sourceforge.net; Fri, 20 Dec 2019 09:53:15 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Dec 2019 01:53:08 -0800
X-IronPort-AV: E=Sophos;i="5.69,335,1571727600"; d="scan'208";a="218445737"
Received: from lhawrylk-desk.igk.intel.com ([10.102.89.27])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Dec 2019 01:53:07 -0800
Message-ID: <35b471a6a202d88f772f85ccf58e48e3fcfbe959.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: "Paul Moore (pmoore2)" <pmoore2@cisco.com>, 
 "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Date: Fri, 20 Dec 2019 10:53:05 +0100
In-Reply-To: <eefde0b8f223d6e0c73468f3eb032ce186167fea.camel@cisco.com>
References: <bbaf0eeb3ddb8791533fc9dfba23ed57d3a2c9bd.camel@cisco.com>
 <ba9fa4341c9b9fa27c8ea3229f879d25614a900f.camel@cisco.com>
 <fbb29bfec178bb4b4d586df217d202fbe54430a4.camel@cisco.com>
 <60a05460106ef7cf1186e96d476c4564a500f5e2.camel@linux.intel.com>
 <bd1c6b6134911fd9f7c9c0434ca648c407ddc8f0.camel@cisco.com>
 <ceaca929e1b06cae46aff198872af05874ada24b.camel@linux.intel.com>
 <10173e9af141fb38c0a4482b6f8f58f1c31ccb0f.camel@cisco.com>
 <eefde0b8f223d6e0c73468f3eb032ce186167fea.camel@cisco.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: hawrylko.pl]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1iiEyA-00B5lh-9R
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

On Tue, 2019-12-17 at 20:06 +0000, Paul Moore (pmoore2) wrote:
> On Fri, 2019-12-06 at 21:28 +0000, Paul Moore (pmoore2) via tboot-devel
> wrote:
> > On Fri, 2019-12-06 at 11:37 +0100, Lukasz Hawrylko wrote:
> > > On Wed, 2019-12-04 at 14:33 +0000, Paul Moore (pmoore2) wrote:
> > > > Can you elaborate a bit more on what you mean by "the root of
> > > > certificate"?  Alternatively, could you upload the kernel and
> > > > signing
> > > > certificate somewhere I could grab so I can play with it?
> > > 
> > > Maybe I used wrong words, I am talking about pkcs1_search_signer
> > > function and following lines:
> > > 
> > >   if (!asn1_blob_cmp(&entry->cert.serial, serial) &&
> > >       !asn1_blob_cmp(&entry->cert.ca->subject, subject))
> > > 
> > > If I change them to
> > > 
> > >   if (!asn1_blob_cmp(&entry->cert.serial, serial) &&
> > >       !asn1_blob_cmp(&entry->cert.subject, subject))
> > > 
> > > it will find my certificate.
> > 
> > Thanks, that makes it much more clear.  One of the benefits of sharing
> > code is that it helps remove any uncertainties. :)
> > 
> > > Could you please explain me why are you
> > > using serial from root of entry and subject from sub-element? Is it
> > > connected with certificate chain? What if there is just the simplest
> > > possible certificate that is not signed by anybody?
> > 
> > That does look a little odd, doesn't it?
> 
> It turns out it wasn't quite as odd as originally thought.  While wrong,
> it wasn't far from the truth; the PKCS #7 blob in the signed PECOFF
> kernel image doesn't contain the signer's subject name, but rather the
> issuer's subject name.  This explains why the code worked: in the self-
> signed (Lukasz's test case) and one intermediate CA cases (the Fedora
> test case) using the CA would result in the signer being found, anything
> with more than one intermediate CA would fail.
> 
> I've corrected the code and pushed it to the repo/branch below:
> 
> * 
> https://github.com/pcmoore/misc-tboot/tree/working-txtsig
> 
> 
> 
> > > I have uploaded certificate and key that I have generated here: 
> > > https://cloud.hawrylko.pl/s/ivHd7HZpuLIjQ88
> > >  there is also a signed
> > > bzImage that I am using.
> > 
> > Great, thank you.  I'll take a closer look.
> 
> It turns out this was due to a limitation in libtomfastmath.  Your test
> key/certificate used a 4k RSA key, but libtomfastmath had a restriction
> on keys larger than 2k (it turns out the Fedora keys are 2k).  I
> increased the libtomfastmath number limit to support 4k keys, and
> increased the tboot stack size accordingly.  The updated misc-
> tboot/working-txtsig code should now work for your self-signed test
> case, if not please let me know.
> 
> Thanks,
> -Paul
> 
> 

Great, I will test it after Christmas break.

Thanks,
Lukasz



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
