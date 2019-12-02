Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 278AF10EA87
	for <lists+tboot-devel@lfdr.de>; Mon,  2 Dec 2019 14:09:39 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1iblSD-0007Sm-Mg; Mon, 02 Dec 2019 13:09:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1iblRw-0007Qk-Tw
 for tboot-devel@lists.sourceforge.net; Mon, 02 Dec 2019 13:09:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EFPZbPjxdY922SUULyutkI2T5IfD7cO4ToSulWNfAkE=; b=LLqG5V6treNj7TUY3vnA7R7k86
 VWoCVVPJl3+GqAjr/NfDuRP+mMDMppKpA0AIorl8V7dlgBQv4rrZCSm8uKuSU+7kuHypeQImpgQrm
 JjtmVhCiZo/tvsEFCUjtmHbh5dfG+DLRunpv1Ek6cr2tf89A8SVSMByeQvM39HdmgWlA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EFPZbPjxdY922SUULyutkI2T5IfD7cO4ToSulWNfAkE=; b=Yc8x8GJNGqGwmz+OAyqeFaiX7Y
 vaP90YP9N74RbTZORtWqyIDluPqBZul2KuAkQqPfwfxEPjMsqHEO/zEb8OGzJrPAK1I/qO9WwuEZZ
 xHIXkzgpXRm12fCNIyKT2i2wyh7vFOkyAPdQgpB3QCR41jlo1gYz5gvELrYpVLCh9yjk=;
Received: from mga18.intel.com ([134.134.136.126])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iblRv-00GgAJ-4p
 for tboot-devel@lists.sourceforge.net; Mon, 02 Dec 2019 13:09:12 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Dec 2019 05:09:05 -0800
X-IronPort-AV: E=Sophos;i="5.69,268,1571727600"; d="scan'208";a="204551698"
Received: from lhawrylk-desk.igk.intel.com ([10.102.89.27])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Dec 2019 05:09:04 -0800
Message-ID: <60a05460106ef7cf1186e96d476c4564a500f5e2.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: "Paul Moore (pmoore2)" <pmoore2@cisco.com>, 
 "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Date: Mon, 02 Dec 2019 14:09:01 +0100
In-Reply-To: <fbb29bfec178bb4b4d586df217d202fbe54430a4.camel@cisco.com>
References: <bbaf0eeb3ddb8791533fc9dfba23ed57d3a2c9bd.camel@cisco.com>
 <ba9fa4341c9b9fa27c8ea3229f879d25614a900f.camel@cisco.com>
 <fbb29bfec178bb4b4d586df217d202fbe54430a4.camel@cisco.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1iblRv-00GgAJ-4p
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

I went through all steps and I was able to create LCP with certificated,
VLP with TB_HTYPE_PECOFF and finally got platform booted with PCR 20
extended by certificate hash (to be honest I didn't check if it is
correct). So everything works, however I have few notes :)

If VLP is present under its own index (for TPM 2.0 it is 0x01C10131),
tboot will not read LCP at all, so certificate will not be available. I
think that we should modify program flow, so even if VLP is present, LCP
should be read to check if LCP_CUSTOM_ELEMENT_CERTS_UUID element is
there.

Still I can't verify signature of custom build kernel signed by my own
key, I am trying to figure out what is wrong, but without luck. One
thing that I found is a problem in pkcs1_search_signer
function (pkcs1.c:101), it is comparing certificate subject, but not
from the root of certificate. I know that this is working fine with
Fedora's certificate, but I don't know if this is valid for every case. 
With my simple certificate this was a first problem that I found. At
least, you should check if pointer to next element in chain is not NULL.

Thanks,
Lukasz

On Wed, 2019-11-20 at 23:05 +0000, Paul Moore (pmoore2) via tboot-devel
wrote:
> On Fri, 2019-10-18 at 13:27 +0000, Paul Moore (pmoore2) via tboot-devel
> wrote:
> > On Thu, 2019-09-19 at 15:39 +0000, Paul Moore (pmoore2) via
> > tboot-devel wrote:
> > > Hello,
> > > 
> > > I've been working on adding PECOFF/kernel signature verification to
> > > tboot ...
> 
> Hello everyone,
> 
> I just pushed another update to my git repository under the working-
> txtsig branch:
> 
> * 
> https://github.com/pcmoore/misc-tboot/tree/working-txtsig
> 
> 
> This update is notable in that it adds the missing policy support; no
> longer is the Fedora CA built into the tboot binary, verification
> certificates should be included in the LCP and the tboot VLP specifies
> which modules are subject to signature verification.  While there is
> still work to be done, I believe the code is now feature complete (or
> very close to it).  I would appreciate sanity checks on my approach,
> especially when it comes to the policy changes.
> 
> The commit descriptions have additional information, but in order to
> include certificates in the LCP, you would do the following:
> 
>  # lcp2_crtpolelt --create \
>      --type custom --uuid certificates test.der \
>      --out test.elt
> 
> ... in this case test.der is a DER encoded X509 certificate; multiple
> certificates may be concatenated together into the file, tboot will load
> each certificate.  Once the policy ELT has been created, it can be
> included in the LCP just as you would any other ELT module.
> 
> Once you have created a certificate ELT, you need to tell the tboot VLP
> to perform PECOFF signature verification on the kernel module; you can
> do that with the following command(s):
> 
>   # tb_polgen --create --type nonfatal test.vlp
>   # tb_polgen --add --num 0 --pcr 20 --hash pecoff test.vlp
>   # tb_polgen --show test.vlp
>   policy:
>          version: 2
>          policy_type: TB_POLTYPE_CONT_NON_FATAL
>          hash_alg: TB_HALG_SHA1
>          policy_control: 00000001 (EXTEND_PCR17)
>          num_entries: 1
>          policy entry[0]:
>                  mod_num: 0
>                  pcr: 20
>                  hash_type: TB_HTYPE_PECOFF
>                  num_hashes: 0
> 
> ... the pecoff/TB_HTYPE_PECOFF hash type instructs tboot to perform
> PECOFF signature verification on the given module.  When selected, the
> digest of the trusted root for the signing authority will be extended
> into the given PCR, which happens to be PCR 20 in the example above.  As
> a point of clarification, the "trusted root" is not necessarily the root
> CA of the signature chain, but rather the "nearest" certificate that was
> loaded from the LCP which is part of the signature chain.  This should
> provide for the most flexibility while preserving a signature root of
> trust in the LCP/TPM.
> 
> Comments and feedback on this approach are encouraged!
> 
> -Paul
> 
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
