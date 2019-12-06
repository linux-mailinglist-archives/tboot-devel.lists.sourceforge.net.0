Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C1851114F20
	for <lists+tboot-devel@lfdr.de>; Fri,  6 Dec 2019 11:37:22 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1idAz7-0006wv-RP; Fri, 06 Dec 2019 10:37:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1idAz3-0006wg-OS
 for tboot-devel@lists.sourceforge.net; Fri, 06 Dec 2019 10:37:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7AQwRmxSeAkwbF8eN1eDAnou31cQoAu2B0Y47lQQwqA=; b=S+pR+uuigj/83vTckwy+6FFAmt
 K1RfylGaAS6NoL3e0xiKIz1NcBdyz7avq53r6XrrETcJUf+SmYzGimHKb3KwI6qW1q7mj6Oy5nQHJ
 qPqWloX6BJNsZ3Nwj2FcxyOG9U7vgru2/h+n0ROxZV48WnofOKHuEhviz646cRVZEiJ4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7AQwRmxSeAkwbF8eN1eDAnou31cQoAu2B0Y47lQQwqA=; b=BiZU1iArFNOQZk3kwyNQZuqpil
 UTRxL9ox7qUFqRdHRyoCjvOtpbnnE55I/u9u69cZWFlG7BTN1VJgXc26D/Zzgtt5tEvcwXnPzeivu
 Umvgn+bcw3SJgFig4tGID3cCvtqjQRd8AjDq34sa662dfhJCEXBkPgrwsTWViP68GehU=;
Received: from mga12.intel.com ([192.55.52.136])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1idAz1-009xHq-KE
 for tboot-devel@lists.sourceforge.net; Fri, 06 Dec 2019 10:37:13 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Dec 2019 02:37:05 -0800
X-IronPort-AV: E=Sophos;i="5.69,284,1571727600"; d="scan'208";a="206082982"
Received: from lhawrylk-desk.igk.intel.com ([10.102.89.27])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Dec 2019 02:37:04 -0800
Message-ID: <ceaca929e1b06cae46aff198872af05874ada24b.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: "Paul Moore (pmoore2)" <pmoore2@cisco.com>, 
 "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Date: Fri, 06 Dec 2019 11:37:02 +0100
In-Reply-To: <bd1c6b6134911fd9f7c9c0434ca648c407ddc8f0.camel@cisco.com>
References: <bbaf0eeb3ddb8791533fc9dfba23ed57d3a2c9bd.camel@cisco.com>
 <ba9fa4341c9b9fa27c8ea3229f879d25614a900f.camel@cisco.com>
 <fbb29bfec178bb4b4d586df217d202fbe54430a4.camel@cisco.com>
 <60a05460106ef7cf1186e96d476c4564a500f5e2.camel@linux.intel.com>
 <bd1c6b6134911fd9f7c9c0434ca648c407ddc8f0.camel@cisco.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: hawrylko.pl]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-Headers-End: 1idAz1-009xHq-KE
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

On Wed, 2019-12-04 at 14:33 +0000, Paul Moore (pmoore2) wrote:
> 
> Can you elaborate a bit more on what you mean by "the root of
> certificate"?  Alternatively, could you upload the kernel and signing
> certificate somewhere I could grab so I can play with it?
> 

Maybe I used wrong words, I am talking about pkcs1_search_signer
function and following lines:

  if (!asn1_blob_cmp(&entry->cert.serial, serial) &&
      !asn1_blob_cmp(&entry->cert.ca->subject, subject))

If I change them to

  if (!asn1_blob_cmp(&entry->cert.serial, serial) &&
      !asn1_blob_cmp(&entry->cert.subject, subject))

it will find my certificate. Could you please explain me why are you
using serial from root of entry and subject from sub-element? Is it
connected with certificate chain? What if there is just the simplest
possible certificate that is not signed by anybody?

I have uploaded certificate and key that I have generated here: 
https://cloud.hawrylko.pl/s/ivHd7HZpuLIjQ88 there is also a signed
bzImage that I am using.

On Thu, 2019-12-05 at 17:20 +0000, Paul Moore (pmoore2) wrote:
> 
> A question for discussion: if the VLP is loaded from it's own nvindex,
> and there is also a VLP present inside the LCP, which VLP do we want to
> use?  I'm assuming it is the VLP we loaded directly, and not from inside
> the LCP, but thought it was worth checking.
>  

In "stock" TBOOT, VLP loaded from its own index has higher priority over
one embedded in LCP, so I agree with you that here it should work like
that.

Thanks,
Lukasz



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
