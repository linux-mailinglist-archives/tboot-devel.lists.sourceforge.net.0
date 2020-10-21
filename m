Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 24809294911
	for <lists+tboot-devel@lfdr.de>; Wed, 21 Oct 2020 09:45:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1kV8oA-0005kV-Pz; Wed, 21 Oct 2020 07:45:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1kV8o9-0005kP-Sp
 for tboot-devel@lists.sourceforge.net; Wed, 21 Oct 2020 07:45:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=y9c0gppuDlK7ZoGSwE30Hz79+1aKZZgE3gkPB3Q9pEI=; b=MEqYIjMOMs013o/T7+uNoMUgMU
 WVDCBP/uDk1UNUhTnqSbnWIEZwufyrrsCba3eppLc0mk9Wm/9+huwgXSY+g5LCRcz/5TI+bXLu/pU
 ptHVW/F/LSvNN2GZ5kO1gYN6jJjLvWxGh/V/N4G0mM1RxeB2ZnDHrkQmRvdHN7WBUKag=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=y9c0gppuDlK7ZoGSwE30Hz79+1aKZZgE3gkPB3Q9pEI=; b=WS8aJHSc0iaFa/ESGXzLtpa0E6
 w6kATBto3rvOeNUBLj/b0IzFHFGvJ32Qm6BYI8w+CFCnBhFYCoC3N6W3iXxCxPAaPGfozznoswlRC
 bNFtioHwwb4TZoZIltVaUDweAnRgzH7Q2gH1sVh6Z2Lqd7dwFjRILyWhsUGCobpOcvgY=;
Received: from mga09.intel.com ([134.134.136.24])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kV8o4-000r9Q-PY
 for tboot-devel@lists.sourceforge.net; Wed, 21 Oct 2020 07:45:17 +0000
IronPort-SDR: yZT3bSiCKkpo9x7lbz03FG7EJGfFse2orS0BctS0jBMFKawy4UCMP+/CjgNBdX40zu+rvYfDGQ
 hAeTEMce5kEQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9780"; a="167449128"
X-IronPort-AV: E=Sophos;i="5.77,400,1596524400"; d="scan'208";a="167449128"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 00:45:06 -0700
IronPort-SDR: 1KaXD2v+pGEZNsQdT2M2hzWAPG018WjTIqlZdlDk10jCanGE11wiEjURuWNIyc6xBpme808oT0
 WjhclNxvCNqA==
X-IronPort-AV: E=Sophos;i="5.77,400,1596524400"; d="scan'208";a="533429723"
Received: from lhawrylk-desk.ger.corp.intel.com ([10.213.12.81])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 00:45:05 -0700
Message-ID: <969ac82b8f87a33a73c4c395a5481851f0be071f.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: tony camuso <tcamuso@redhat.com>, tboot-devel@lists.sourceforge.net
Date: Wed, 21 Oct 2020 09:45:02 +0200
In-Reply-To: <00da3226-24d7-e4fe-f53f-56f79f23a100@redhat.com>
References: <00da3226-24d7-e4fe-f53f-56f79f23a100@redhat.com>
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.24 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1kV8o4-000r9Q-PY
Subject: Re: [tboot-devel] tboot fails to build after applying changeset:
 599:d4c520cbea8c
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

Hi Tony

On Tue, 2020-10-20 at 12:48 -0400, tony camuso wrote:
> I'm applying the following patches from the hg repo.
> 
> 0001-Fix-CFLAGS-passing-to-recursive-makefiles.patch
> 0002-Install-man-pages-only-for-tools-that-are-installed.patch
> 0003-Add-man-pages-for-all-installed-commands.patch
> 0004-Fix-spelling-errors.patch
> 0005-All-TXT-tools-now-have-txt-prefix.patch
> 0006-Update-man-pages-for-txt-tools.patch
> 0007-Clarify-license-issues.patch
> 0008-Fix-issues-reported-by-Coverity-Scan.patch
> 0009-Fix-man-page-syntax-error.patch
> 0010-Ensure-txt-acminfo-does-not-print-false-information-.patch
> 0011-Do-not-try-to-read-EFI-mem-map-when-booted-with-mult.patch
> 0012-Use-SHA1-based-default-policy-when-TPM1.2-is-detecte.patch
> 0013-Unmask-NMI-after-returning-from-SINIT.patch
> 0014-Update-GRUB-scripts-to-use-multiboot2-only.patch
> 0015-Update-lcptools-v2-to-meet-requirements-from-MLE-DG-.patch
> 0016-Implement-SM2-signing-and-SM2-signature-verification.patch
> 
> After applying this patch ...
> changeset:   599:d4c520cbea8c
> user:        Mateusz Mowka <mateusz.mowka@intel.com>
> date:        Fri Jul 17 14:19:31 2020 +0200
> summary:     Implement SM2 signing and SM2 signature verification.
> 
> I get the following build errors. What am I missing?
> 
> lcputils.c: In function 'verify_ec_signature':
> lcputils.c:730:19: error: 'NID_sm2' undeclared (first use in this function)
>           curveId = NID_sm2;
>                     ^
> lcputils.c:730:19: note: each undeclared identifier is reported only once for each function it appears in
> lcputils.c:731:9: error: implicit declaration of function 'EVP_sm3' [-Werror=implicit-function-declaration]
>           mdtype = EVP_sm3();
>           ^

What is your OpenSSL version? These functions should be available in
OpenSSL since 1.1.1 version.

Thanks,
Lukasz



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
