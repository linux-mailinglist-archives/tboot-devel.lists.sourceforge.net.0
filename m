Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D00A154114
	for <lists+tboot-devel@lfdr.de>; Thu,  6 Feb 2020 10:23:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1izdNG-0000DF-53; Thu, 06 Feb 2020 09:23:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1izdNE-0000D0-Js
 for tboot-devel@lists.sourceforge.net; Thu, 06 Feb 2020 09:23:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rpQ0VzHVSAWiHh4S+DjAF1uHGxPAM7hkSquvqAwwXSY=; b=GWkhVGySVoPJBEOlp7I0GWhe3Y
 baJEQ4u7eQYMuR4YWUtGx/NUEBY+jTuPpn1ku5+a1W9Kfn2SPx6khn/v+YH+P6Fgoov5peMwuss2r
 xJOyPJVWVe0+W+6lO1X2lZPHXZpFfQHBuXYNN4fpwbfGU+nQtPDcoJu+ZOmptB6c0Yj8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rpQ0VzHVSAWiHh4S+DjAF1uHGxPAM7hkSquvqAwwXSY=; b=Fgv6FDvmv5HFt9Lfxt1sD/NBao
 xHqArT3XMmRdZTI10D2H1d1GBCcNh2pH4M2ZWlryYvykTxFTneZxf5PJWvjnS4prsXKg6DC/Aayni
 BZ1Z4F/9CUfxg1omXRb60L8zm8FVgQx8gdqWowq0uoiUtGMSW00usmupopHLLhdTeIPc=;
Received: from mga01.intel.com ([192.55.52.88])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1izdND-00Bjj5-2e
 for tboot-devel@lists.sourceforge.net; Thu, 06 Feb 2020 09:23:00 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Feb 2020 01:22:53 -0800
X-IronPort-AV: E=Sophos;i="5.70,409,1574150400"; d="scan'208";a="379015550"
Received: from lhawrylk-desk.igk.intel.com ([10.102.89.27])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Feb 2020 01:22:51 -0800
Message-ID: <2e78770ad67265f6452203f4383b6ddb8c2671f0.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: LE ROY Olivier - Contractor <olivier.leroy@external.thalesgroup.com>, 
 "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Date: Thu, 06 Feb 2020 10:22:49 +0100
In-Reply-To: <8af07dee186740a1bcb1f0632a838e9b@external.thalesgroup.com>
References: <3efd665c3f1b4681a0414f12c9c4e666@external.thalesgroup.com>
 , <150ceed6d58de2df2db789ff1346949dbedc4319.camel@linux.intel.com>
 <8af07dee186740a1bcb1f0632a838e9b@external.thalesgroup.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.55.52.88 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1izdND-00Bjj5-2e
Subject: Re: [tboot-devel] Intel TXT + TBOOT + TPM 2.0: can't get LCP_ANY
 policy working on Supermicro X11SPM-TF
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

On Wed, 2020-02-05 at 14:41 +0000, LE ROY Olivier - Contractor wrote:
> Hi Lukasz,
> 
> > What exactly did you add to that policy in lcp-gen2 tool? LCP is a
> policy dedicated for SINIT, not for TBOOT. 
> > The another approach is to create separate index for VLP (0x01C10131)
> and put VLP there. 
> 
> I understand better why there weren't any log for the LCP_ANY policy and why tboot expects a VLP.
> Thanks for the comprehensive answer.
> I am still learning to implement policies in TPM2.0, trying to transpose what was done in a previous TPM1.2 based project.
> 
> > What do mean "doesn't seem to understand it"? With LCP_ANY SINIT will
> allow any MLE to be executed.
> 
> I was following the recommendation to start with something simple, i.e. LCP_ANY.
> Presently, I am trying a list policy, with an MLE element which hash is the tboot.gz hash, to implement a VLP at 0x01c10131.
> 
> TBOOT logs are as follows:
> TBOOT: reading Verified Launch Policy from TPM NV...
> TBOOT:     :70 bytes read
> TBOOT: policy:
> TBOOT: unsupported version (1)
> TBOOT:     :reading failed
> TBOOT: reading Launch Control Policy from TPM NV...
> TBOOT:     :70 bytes read
> TBOOT:     :reading failed
> TBOOT: failed to read policy from TPM NV, using default
> TBOOT: policy:
> TBOOT:      version: 2
> 
> The policy was created using lcp-gen2 from tboot-1.9.9 python tools (tboot-1.9.11 has the same results).
> Do you have a hint why the generated policy has "version (1)" while tboot expects a version: 2?
> 
> Regards,
> 
> Olivier
> 

MLE element goes to LCP and is consumed by SINIT, not TBOOT. You can't
provision VLP index with LCP.

To create VLP you have to use tb_polgen tool. Here is an example:

  # create policy
  tb_polgen --create --ctrl 0x00 --type continue vl.pol

  # add kernel and its cmdline hash, extend PCR19
  tb_polgen --add --num 0 --pcr 19 --hash image --cmdline "..." \
            --image bzImage

  # add initrd hash, extend PCR20
  tb_polgen --add --num 1 --pcr 20 --hash image --cmdline "" \
            --image initrd.img

If you want to create policy with MLE element you have to use lcp-gen2
tool and provision it to LCP index. But as I said, TBOOT has nothing to
do with it, you should not expect that TBOOT will measure itself :)

Thanks,
Lukasz
  



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
