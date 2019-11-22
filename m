Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F182710747B
	for <lists+tboot-devel@lfdr.de>; Fri, 22 Nov 2019 16:01:59 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1iYARV-0001Ad-2t; Fri, 22 Nov 2019 15:01:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1iYART-0001AT-Ge
 for tboot-devel@lists.sourceforge.net; Fri, 22 Nov 2019 15:01:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PQGlRSAs7SFzQhkHw2S7NwZXNKW35o9FWVvM7Jli+fI=; b=hXRUhLamXxVp6wdgTS6IUNj3LQ
 xiLAoDhTHImpQv2hWWMOcVigzNM+gxFKS4OSj9vR2zG0o6f3iaagd4/cSkdBuhQHGlvlut8PEj0lz
 fi2MHGd+O6SvjfFybZdV2jVwFmdJRvLWMsCf0s2n0X3AcWBmakuA3ZZszkDuadnEnGGk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PQGlRSAs7SFzQhkHw2S7NwZXNKW35o9FWVvM7Jli+fI=; b=MRHIJz8WnxzP65AOv6VlHMfBHX
 jshVtBmWhXmSDrZ6pOgZit6YEPDBYYLF9X9CsHcckFLV9yu/oeZ3Xl5U7KIB+HCFjo98ng7XSM4Um
 t7aOw4lBGKE5wxrZvy2+def+4kBE8ACfBX7dKyUGR7BoDtcyRhGSpzdMwsk07yo66AnU=;
Received: from mga01.intel.com ([192.55.52.88])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iYARR-000Zlw-Tg
 for tboot-devel@lists.sourceforge.net; Fri, 22 Nov 2019 15:01:51 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Nov 2019 07:01:43 -0800
X-IronPort-AV: E=Sophos;i="5.69,230,1571727600"; d="scan'208";a="210444905"
Received: from lhawrylk-desk.igk.intel.com ([10.102.89.27])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Nov 2019 07:01:42 -0800
Message-ID: <588a16f940c7a3b5fe25324eda104b6d365338e2.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: "Paul Moore (pmoore2)" <pmoore2@cisco.com>, 
 "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Date: Fri, 22 Nov 2019 16:01:39 +0100
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
X-Headers-End: 1iYARR-000Zlw-Tg
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

Great news, I will check in the next week how it works and come back
with feedback.

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
