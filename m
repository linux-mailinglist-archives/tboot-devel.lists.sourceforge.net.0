Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EE2B825FA75
	for <lists+tboot-devel@lfdr.de>; Mon,  7 Sep 2020 14:26:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1kFGDw-00076E-F5; Mon, 07 Sep 2020 12:26:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1kFGDu-000762-OC
 for tboot-devel@lists.sourceforge.net; Mon, 07 Sep 2020 12:26:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RnADZse70rehE+yHIW++rD1mxlkyYMmqnbI4H8kyXzc=; b=FyTcs468ca1NpxUSLmPib3XBI3
 bfkntbxrJGHhzHIdTcJCde9C0b4J0rMw1MDwF4GzEbGxoslnfxeolcuhUhJhyNAAL9DAAf8K/liR+
 LUFonryHpa00O0kNOwtSUGbOQysmlt/D4F51wpVHY5x4HJyllT1ojfYkAvj+DcVYbow4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RnADZse70rehE+yHIW++rD1mxlkyYMmqnbI4H8kyXzc=; b=iijqQYktw7EqBHhvONDxZc8Hcu
 23mrz2uA7GgM9OCdRuVVk+DLySJTwaUCpbIq/NOswIPbv++Z6v/yaBNtMmGVshqEn0LSQ2MsY58yv
 oq6FsT/pfNHtgJJpaAqZaPf4vuQZbNr5YI+oiA7nhIBMHTIVTH+HxQL31p14i7NY+5Rk=;
Received: from mga14.intel.com ([192.55.52.115])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kFGDo-00FTMo-3d
 for tboot-devel@lists.sourceforge.net; Mon, 07 Sep 2020 12:26:14 +0000
IronPort-SDR: yWmPVFjl2w7PNm30c15blod93Lk6KYpG8+JsEhmbQKu1VM3lClmYdX3WQKEfiUycHkHzS8/uvE
 Nw1i2jhEPN8w==
X-IronPort-AV: E=McAfee;i="6000,8403,9736"; a="157258013"
X-IronPort-AV: E=Sophos;i="5.76,401,1592895600"; d="scan'208";a="157258013"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2020 05:26:02 -0700
IronPort-SDR: X02Fb8FIiruJOO6X7pXRYlfWNpi4RvvTW/RSUutrGmZLrjaRKjuwj2JxzdZvOFNmWXInAMVjMh
 bXJjWvj2XmQA==
X-IronPort-AV: E=Sophos;i="5.76,401,1592895600"; d="scan'208";a="448409892"
Received: from lhawrylk-desk.ger.corp.intel.com ([10.213.17.218])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2020 05:26:01 -0700
Message-ID: <82c6c54a780c08a4f12c157415d66d3b44adea34.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: LE ROY Olivier - Contractor <olivier.leroy@external.thalesgroup.com>, 
 "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Date: Mon, 07 Sep 2020 14:25:58 +0200
In-Reply-To: <6e0aeb936ee041f3853388cb4a14e183@external.thalesgroup.com>
References: <6e0aeb936ee041f3853388cb4a14e183@external.thalesgroup.com>
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1kFGDo-00FTMo-3d
Subject: Re: [tboot-devel] "no LCP module found" on Getac X500 G3
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

Hi Olivier

On Fri, 2020-09-04 at 09:28 +0000, LE ROY Olivier - Contractor wrote:

> I tried to implement a LCP @ 0x01400001 and a VLP @ 0x01200001. These 2 policies were known to work on same OS but different platform (Supermicro).
> For LCP, I have the following error:
> 
> reading Launch Control Policy from TPM NV...
> TBOOT:     :70 bytes read
> TBOOT: in unwrap_lcp_policy
> TBOOT: no LCP module found
> TBOOT:     :reading failed
> TBOOT: failed to read policy from TPM NV, using default
> TBOOT: policy:

[snip]

> My LCP is created the following manner:
> 
>         tpm2_nvdefine -x 0x01400001 -a 0x40000001 -s 70 -t 0x204000a -P $TPM_OWNER_PASSWORD
>         lcp2_mlehash --create --alg sha256 --cmdline "extpol=sha256 logging=serial,memory" /boot/tboot.gz > mle_hash
>         lcp2_crtpolelt --create --type mle --alg sha256 --ctrl 0x00 --minver 0 --out mle.elt mle_hash
>         lcp2_crtpollist --create --out list_unsig.lst mle.elt
>         lcp2_crtpol --create --type list --pol list.pol --alg sha256 --sign 0x0A --ctrl 0x00 --data list.data list_unsig.lst
>         tpm2_nvwrite -x 0x01400001 -a 0x40000001 -P $TPM_OWNER_PASSWORD list.pol
>         cp -f list.data /boot/
> 
> Any idea why this LCP, which consists in just an mle element, could be functional on a platform and not on another?

With these commands you create LCP with MLE element that is consumed by
SINIT. It is an expected behaviour that TBOOT is unable to read it.

To create policy for TBOOT (VLP) you have to use tb_polgen tool, ex.:

    tb_polgen --create --ctrl 0x00 --type continue vl.pol
    tb_polgen --add --num 0 --pcr 19 --hash image \
              --cmdline "intel_iommu=on console=ttyS0,115200n8" \
              --image /boot/bzImage vl.pol

Then you have two options how to provision it to TPM:
 * provision as standalone policy
 * add it to LCP as custom element

If you already use LCP, easier way is to add custom element with TBOOT's
policy.

    lcp2_crtpolelt --create --ctrl 0x00 --type custom --out vl.elt \
                   --uuid tboot vl.pol

Then build LCP list with all elements that you want to have, provision
it to TPM and copy .data file to /boot (and add entry to grub.cfg).

If anything is unclear, please ask. It would be helpful if you can
describe what is your goal, what behaviour you want to achieve.

Thanks,
Lukasz



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
