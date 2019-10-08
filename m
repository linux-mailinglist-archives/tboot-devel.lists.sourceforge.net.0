Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F1D1BCF9E0
	for <lists+tboot-devel@lfdr.de>; Tue,  8 Oct 2019 14:34:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1iHohL-0004nE-5p; Tue, 08 Oct 2019 12:34:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1iHohK-0004n8-0q
 for tboot-devel@lists.sourceforge.net; Tue, 08 Oct 2019 12:34:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OtaQdGtPhv5z/GuVpHhfMGyZVT49RLf0IIgKgvudJvc=; b=gPWTADCHPYZGrqslO7PGoTuPLX
 toJ+ZxlDtLlNgjP+OVg2tNDXaYQ+PFfufLLhz4fQNRFQzIZmqjPUDemWeqtP9y7+4M6I59Q4sc7Vr
 45DxgdSz6vHA8UY1H/apE1kG3NPjUGXyLFUxOOsHVmyQU6PUGvFyMBubGauTryr01w6M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OtaQdGtPhv5z/GuVpHhfMGyZVT49RLf0IIgKgvudJvc=; b=LI0jdBLaK/zfVTDBo74zeYBMRQ
 fX9O2yvPyuIFRmu4b8NVVZYpiGux2c7Jz4GwxhJMQgrYF47OSyxU1tEI3OY7euBRfhI2M7+0M70G6
 DmyrZ6WIbqiS1hM/jC+KU2ulJVykuasoeCYoc5K/kCmKqvTgcCbQbmGA8hLE5C1DpWR8=;
Received: from mga17.intel.com ([192.55.52.151])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iHohH-002vGm-Rv
 for tboot-devel@lists.sourceforge.net; Tue, 08 Oct 2019 12:34:37 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Oct 2019 05:18:55 -0700
X-IronPort-AV: E=Sophos;i="5.67,270,1566889200"; d="scan'208";a="368410686"
Received: from lhawrylk-desk.igk.intel.com ([10.102.89.27])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Oct 2019 05:18:53 -0700
Message-ID: <4df296cd524fe43a5cdd5ba47fe5c9d227c1573e.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: "Paul Moore (pmoore2)" <pmoore2@cisco.com>, 
 "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Date: Tue, 08 Oct 2019 14:18:51 +0200
In-Reply-To: <665a38a855a527bba60e4ef4ef01d6e3e022bf5b.camel@cisco.com>
References: <bbaf0eeb3ddb8791533fc9dfba23ed57d3a2c9bd.camel@cisco.com>
 <e21bae5563b1afd411ce2bcd1f98d2e2983d4b48.camel@linux.intel.com>
 <665a38a855a527bba60e4ef4ef01d6e3e022bf5b.camel@cisco.com>
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
X-Headers-End: 1iHohH-002vGm-Rv
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

We are going to have internal discussion about this feature in two
weeks, I have to prepare some presentation, so be prepare for questions
in near future :)

I have built version with your patch, looks like verification is working
with Fedora's kernel indeed. However I was not be able to verify kernel
signed with my testing certificate, did you try that? TBOOT is hanging
on:

    TBOOT: >>> DBG/SIG: mod[0], pkcs7 parsing

I guess that pkcs7_signeddata_parse can't read kernel signature, if you
want to test it by yourself here are commands that I was using:

    openssl req -newkey rsa:4096 -nodes -keyout db.key -new -x509 \
        -sha256 -days 3650 -subj "/CN=my Signature Database key/" \
        -out db.crt
    openssl x509 -outform DER -in db.crt -out db.cer
    sbsign --key db.key --cert db.crt --output bzImage_signed bzImage

Adding certificate to VLP has one major disadvantage - VLP is stored in
TPM NV that has very limited space. Putting ~1kB certificate there is in
my opinion bad idea. I would suggest to implement the same mechanism as
we already have for LCP. Certificate will be stored on disk and will be
passed to TBOOT using multiboot2 protocol. In VLP there will be only
hash of that file, so TBOOT will be able to verify if certificate is
valid. Storing another hash in VLP is not a problem. What do you think
about that? Hardcoding certificate in TBOOT should be avoided at all
costs.

Thanks,
Lukasz

On Fri, 2019-09-27 at 15:35 +0000, Paul Moore (pmoore2) wrote:
> Hi Lukasz,
> 
> Thanks for taking a look, I know it is a lot to ask.  When looking at
> the patches I'm mostly concerned about feedback on the general
> concepts
> at this stage; the patches are still very much a work in progress.  My
> goal in posting this on-list was to get some feedback now to see if
> this
> is something that would be of interest to the project.  I would hate
> to
> spend a few more months on this only to find out that tboot has not
> interest in signature verification :)
> 
> As far as changes to the VLP are concerned, if you look at the patch
> titled "tboot: add PECOFF signature verification hooks" you will see
> that two of the TODO items are ...
> 
> - Support for kernel signature verification in the tboot policy.
>   This probably means specifying a signing certificate as part of
>   the policy.  We want to support certificate chains.  Backwards
>   compatibility is a must.
> - If the tboot policy can not be easily extended to support
>   signature verification, we could consider embedding the
>   certificate into the tboot binary at build time, similar to what
>   is done with the UEFI Secure Boot shim.
> 
> I would obviously prefer to add a signing certificate or CA to the
> VLP,
> but I haven't done enough investigation into the VLP format to know if
> that is practical.  As a fallback I could envision embedding the
> certificate into the binary (as the current prototype does), but that
> is
> something I would like to avoid if possible.
> 
> As far as attestation and PCR values are concerned, my current thought
> is to hash the signing certificate into one PCR (say PCR A) (assuming
> the kernel signature is valid) and a combined hash of the
> kernel/initrd/cmdline into a different PCR (say PCR B).  My thinking
> is
> that this would allow admins to seal/attest to either a specific
> kernel/initrd/cmdline using PCR B or to the signing authority which
> has
> validated the kernel/etc. using PCR A.  However, I am open to other
> ideas if you have suggestions - this effort is still in the early
> stages.  This is one of the reasons I wanted to bring this effort to
> the
> list as soon as the basic idea (PECOFF signature verification in
> tboot)
> was working.
> 
> Thanks again,
> -Paul
> 
> On Fri, 2019-09-27 at 13:43 +0200, Lukasz Hawrylko wrote:
> > Hi Paul
> > 
> > Thank you for sharing your work. I will look at this patch and check
> > how
> > it works, idea of measuring kernel signature instead of whole binary
> > is
> > very interesting. I hope that next week I will find some time for
> > that,
> > as you said patch is quite big.
> > 
> > Do you plan to add ability to verify public key using VLP? If I
> > understand correctly your current goal is to verify kernel binary
> > with
> > signature and extend PCRs with signature's public key hash, am I
> > right?
> > In this approach tboot is not able to verify if kernel is signed by
> > proper authority, this need to be done be local/remote attestation
> > in
> > further boot process.
> > 
> > Thanks,
> > Lukasz
> > 
> > On Thu, 2019-09-19 at 15:39 +0000, Paul Moore (pmoore2) via tboot-
> > devel
> > wrote:
> > > Hello,
> > > 
> > > I've been working on adding PECOFF/kernel signature verification
> > > to
> > > tboot and now that I have a rough working prototype I wanted to
> > > bring
> > > it to the list to see if this is something the tboot community
> > > would
> > > be interested in eventually merging (once the work is more
> > > complete
> > > and polished).
> > > 
> > > The patchset is quite large, mostly due to the inclusion of
> > > libtomcrypt and libtomfastmath to the tboot repository, so I'm
> > > going
> > > to refrain from spamming the list with the full patchset at this
> > > early
> > > stage.  The current patchset can be found on GitHub at the URL
> > > below
> > > (look in the "working-txtsig" branch):
> > > 
> > > * 
> > > https://github.com/pcmoore/misc-tboot/tree/working-txtsig
> > > 
> > > 
> > > 
> > > The prototype doesn't actually enforce any policy or change the
> > > PCR
> > > measurements based on the kernel signatures (both are planned work
> > > items), but it does demonstrate the ability to parse and verify a
> > > signed PECOFF image.  The individual patch descriptions provide
> > > some
> > > additional information on some of the planned work to take this
> > > from
> > > a prototype to a proper implementation.
> > > 
> > > My motivation for this work is to create a mechanism that is
> > > capable
> > > of generating a stable set of PCR values across multiple kernels
> > > that
> > > can be used to seal TPM NVRAM secrets on both legacy BIOS and UEFI
> > > systems.  Imagine being able to store a storage encryption key in
> > > the
> > > TPM, and restricting access to that key to only authorized kernels
> > > in
> > > such a way that didn't require changing the tboot policy when
> > > booting
> > > different kernels.  I imagine I'm not along in thinking this would
> > > be a nice capability to have, especially on systems that don't
> > > support
> > > UEFI Secure Boot.
> > > 
> > > For those who are interested, I gave a presentation on this work
> > > at
> > > the Linux Security Summit last month, the video and sldies are
> > > available at the links below:
> > > 
> > > * 
> > > https://www.youtube.com/watch?v=Qbjz_5jUE9o
> > > 
> > > 
> > > * 
> > > https://www.paul-moore.com/docs/lss-securing_tpm_with_txt-pmoore-201909-r2.pdf
> > > 
> > > 
> > > 
> > > Thoughts?  Is this capability something the TXT/tboot community
> > > would
> > > be interested in merging into the main tboot repository once it is
> > > more complete?
> > > 
> > > _______________________________________________
> > > tboot-devel mailing list
> > > tboot-devel@lists.sourceforge.net
> > > 
> > > 
> > > https://lists.sourceforge.net/lists/listinfo/tboot-devel
> > > 
> > > 
> > > 



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
