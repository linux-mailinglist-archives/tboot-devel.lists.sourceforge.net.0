Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D3478C04BD
	for <lists+tboot-devel@lfdr.de>; Fri, 27 Sep 2019 13:59:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1iDouF-0000dl-Ph; Fri, 27 Sep 2019 11:59:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1iDouD-0000dC-DO
 for tboot-devel@lists.sourceforge.net; Fri, 27 Sep 2019 11:59:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yxWJFGHYK3VnIjyGhbXWXeye8T/gTvxOcr6sryMazXg=; b=h04Nis8Z1yi46q4G6M6witLcDs
 RXJ73ceI6lH9Z4NwdHDnTkQA5US3oTl7fOZ+XEOAwg00OmPLtqz+O9hIxsmMyJ87vAZiUjVIeCmV0
 wwfkkqMRnd/LTRp/ALz5kGbqm5HxISiteQautnJbJG6UyBseqBoRW+PfmsUMEj4K8BWA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yxWJFGHYK3VnIjyGhbXWXeye8T/gTvxOcr6sryMazXg=; b=VDoUT5DE9dLDJcZOKXj4rXDF0I
 gyFjzQpY1OWL8+2/W0vxGU/Oq981LfJkgw291BkdOp8+AvO5SA9qbvbz8MFa1akffCf8/DBUMRz2/
 A7/E8eWbZ+ZPjs5yX0g3aj9tUOpw3l/2WzhRcFTgRm8CXgzAgWO7H4vCkRuG6NlWzunU=;
Received: from mga06.intel.com ([134.134.136.31])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iDouB-00B7zY-BP
 for tboot-devel@lists.sourceforge.net; Fri, 27 Sep 2019 11:59:25 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Sep 2019 04:43:47 -0700
X-IronPort-AV: E=Sophos;i="5.64,555,1559545200"; d="scan'208";a="204145947"
Received: from lhawrylk-desk.igk.intel.com ([10.102.89.27])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Sep 2019 04:43:46 -0700
Message-ID: <e21bae5563b1afd411ce2bcd1f98d2e2983d4b48.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: "Paul Moore (pmoore2)" <pmoore2@cisco.com>, 
 "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Date: Fri, 27 Sep 2019 13:43:44 +0200
In-Reply-To: <bbaf0eeb3ddb8791533fc9dfba23ed57d3a2c9bd.camel@cisco.com>
References: <bbaf0eeb3ddb8791533fc9dfba23ed57d3a2c9bd.camel@cisco.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: paul-moore.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1iDouB-00B7zY-BP
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

Hi Paul

Thank you for sharing your work. I will look at this patch and check how
it works, idea of measuring kernel signature instead of whole binary is
very interesting. I hope that next week I will find some time for that,
as you said patch is quite big.

Do you plan to add ability to verify public key using VLP? If I
understand correctly your current goal is to verify kernel binary with
signature and extend PCRs with signature's public key hash, am I right?
In this approach tboot is not able to verify if kernel is signed by
proper authority, this need to be done be local/remote attestation in
further boot process.

Thanks,
Lukasz

On Thu, 2019-09-19 at 15:39 +0000, Paul Moore (pmoore2) via tboot-devel
wrote:
> Hello,
> 
> I've been working on adding PECOFF/kernel signature verification to
> tboot and now that I have a rough working prototype I wanted to bring
> it to the list to see if this is something the tboot community would
> be interested in eventually merging (once the work is more complete
> and polished).
> 
> The patchset is quite large, mostly due to the inclusion of
> libtomcrypt and libtomfastmath to the tboot repository, so I'm going
> to refrain from spamming the list with the full patchset at this early
> stage.  The current patchset can be found on GitHub at the URL below
> (look in the "working-txtsig" branch):
> 
> * 
> https://github.com/pcmoore/misc-tboot/tree/working-txtsig
> 
> 
> The prototype doesn't actually enforce any policy or change the PCR
> measurements based on the kernel signatures (both are planned work
> items), but it does demonstrate the ability to parse and verify a
> signed PECOFF image.  The individual patch descriptions provide some
> additional information on some of the planned work to take this from
> a prototype to a proper implementation.
> 
> My motivation for this work is to create a mechanism that is capable
> of generating a stable set of PCR values across multiple kernels that
> can be used to seal TPM NVRAM secrets on both legacy BIOS and UEFI
> systems.  Imagine being able to store a storage encryption key in the
> TPM, and restricting access to that key to only authorized kernels in
> such a way that didn't require changing the tboot policy when booting
> different kernels.  I imagine I'm not along in thinking this would
> be a nice capability to have, especially on systems that don't support
> UEFI Secure Boot.
> 
> For those who are interested, I gave a presentation on this work at
> the Linux Security Summit last month, the video and sldies are
> available at the links below:
> 
> * 
> https://www.youtube.com/watch?v=Qbjz_5jUE9o
> 
> * 
> https://www.paul-moore.com/docs/lss-securing_tpm_with_txt-pmoore-201909-r2.pdf
> 
> 
> Thoughts?  Is this capability something the TXT/tboot community would
> be interested in merging into the main tboot repository once it is
> more complete?
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
