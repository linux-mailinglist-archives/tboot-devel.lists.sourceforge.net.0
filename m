Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C4C02940CB
	for <lists+tboot-devel@lfdr.de>; Tue, 20 Oct 2020 18:48:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1kUuoH-0001RQ-N7; Tue, 20 Oct 2020 16:48:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcamuso@redhat.com>) id 1kUuoH-0001RJ-2E
 for tboot-devel@lists.sourceforge.net; Tue, 20 Oct 2020 16:48:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Date:Message-ID:Subject:From:To:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HGI/LyWa/g6wDbQPtqZMPyayg5Ui/1JbbZPpeLDzY50=; b=LWBS/MM9i0ONyD2shyF2NvSEK4
 0AUgfIbBMfRIpw4OpEIhYHSNhqv9yb8nkIGMQGveeNuDsTAKSg4TEYv/s6mYUX81wRPrv5krSWwHj
 cy6eaGWldDbkx/cdLH29WcoCq836hsX4c8LwSH2pI+2DCM+1cwQeYZiVHYAXKKpBsJAQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-ID:
 Subject:From:To:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=HGI/LyWa/g6wDbQPtqZMPyayg5Ui/1JbbZPpeLDzY50=; b=D
 uBsB3IFLGkKHUnUF6AEJXSBD/di57T52qmFpuXqASEnKl9LABVXk+LwT7ZNQt4LLWUwKR7+cyEoSa
 YnLL5W9x1styZJtuGwARZxpktn1w17EFwcQuPPlrV06V+kcJubzLB7Ara8l6CT8igwvjpsHESnl6l
 2PJdFrxIWZbD8KEw=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kUuo6-00HYaP-Uk
 for tboot-devel@lists.sourceforge.net; Tue, 20 Oct 2020 16:48:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1603212485;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=HGI/LyWa/g6wDbQPtqZMPyayg5Ui/1JbbZPpeLDzY50=;
 b=iHVRsMsku9eJEoAWeVfD0U/C2+iSDUSibSNHsm90aDEQ57wwUCKg1LG7NkqfcnLHt0cE9x
 AsjA7wIfnJECdl6z+WiX7oxk0cfSKFOEr0OGGa96HaxhOJcCjXOrzrHLzOwjQLGrlZnqvT
 pYbDtru5iRjXIQ1vURLkYCtUP6oz9wc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-412-99Pqca_BM1yvFXCpj9fw0Q-1; Tue, 20 Oct 2020 12:48:03 -0400
X-MC-Unique: 99Pqca_BM1yvFXCpj9fw0Q-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4831A640A0
 for <tboot-devel@lists.sourceforge.net>; Tue, 20 Oct 2020 16:48:01 +0000 (UTC)
Received: from [10.3.113.64] (ovpn-113-64.phx2.redhat.com [10.3.113.64])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E871F5D9EF
 for <tboot-devel@lists.sourceforge.net>; Tue, 20 Oct 2020 16:48:00 +0000 (UTC)
To: tboot-devel@lists.sourceforge.net
From: tony camuso <tcamuso@redhat.com>
Message-ID: <00da3226-24d7-e4fe-f53f-56f79f23a100@redhat.com>
Date: Tue, 20 Oct 2020 12:48:00 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=tcamuso@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [63.128.21.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [63.128.21.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kUuo6-00HYaP-Uk
Subject: [tboot-devel] tboot fails to build after applying changeset:
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tboot-devel-bounces@lists.sourceforge.net

I'm applying the following patches from the hg repo.

0001-Fix-CFLAGS-passing-to-recursive-makefiles.patch
0002-Install-man-pages-only-for-tools-that-are-installed.patch
0003-Add-man-pages-for-all-installed-commands.patch
0004-Fix-spelling-errors.patch
0005-All-TXT-tools-now-have-txt-prefix.patch
0006-Update-man-pages-for-txt-tools.patch
0007-Clarify-license-issues.patch
0008-Fix-issues-reported-by-Coverity-Scan.patch
0009-Fix-man-page-syntax-error.patch
0010-Ensure-txt-acminfo-does-not-print-false-information-.patch
0011-Do-not-try-to-read-EFI-mem-map-when-booted-with-mult.patch
0012-Use-SHA1-based-default-policy-when-TPM1.2-is-detecte.patch
0013-Unmask-NMI-after-returning-from-SINIT.patch
0014-Update-GRUB-scripts-to-use-multiboot2-only.patch
0015-Update-lcptools-v2-to-meet-requirements-from-MLE-DG-.patch
0016-Implement-SM2-signing-and-SM2-signature-verification.patch

After applying this patch ...
changeset:   599:d4c520cbea8c
user:        Mateusz Mowka <mateusz.mowka@intel.com>
date:        Fri Jul 17 14:19:31 2020 +0200
summary:     Implement SM2 signing and SM2 signature verification.

I get the following build errors. What am I missing?

lcputils.c: In function 'verify_ec_signature':
lcputils.c:730:19: error: 'NID_sm2' undeclared (first use in this function)
          curveId = NID_sm2;
                    ^
lcputils.c:730:19: note: each undeclared identifier is reported only once for each function it appears in
lcputils.c:731:9: error: implicit declaration of function 'EVP_sm3' [-Werror=implicit-function-declaration]
          mdtype = EVP_sm3();
          ^
lcputils.c:731:16: error: assignment makes pointer from integer without a cast [-Werror]
          mdtype = EVP_sm3();
                 ^
lcputils.c:772:5: error: implicit declaration of function 'EVP_MD_CTX_new' [-Werror=implicit-function-declaration]
      mctx = EVP_MD_CTX_new();
      ^
lcputils.c:772:10: error: assignment makes pointer from integer without a cast [-Werror]
      mctx = EVP_MD_CTX_new();
           ^
lcputils.c:779:9: error: implicit declaration of function 'EVP_PKEY_set_alias_type' [-Werror=implicit-function-declaration]
          result = EVP_PKEY_set_alias_type(evp_key, EVP_PKEY_SM2);
          ^
lcputils.c:779:51: error: 'EVP_PKEY_SM2' undeclared (first use in this function)
          result = EVP_PKEY_set_alias_type(evp_key, EVP_PKEY_SM2);
                                                    ^
lcputils.c:792:9: error: implicit declaration of function 'EVP_PKEY_CTX_set1_id' [-Werror=implicit-function-declaration]
          result = EVP_PKEY_CTX_set1_id(pctx, SM2_ID, SM2_ID_LEN);
          ^
lcputils.c:798:5: error: implicit declaration of function 'EVP_MD_CTX_set_pkey_ctx' [-Werror=implicit-function-declaration]
      EVP_MD_CTX_set_pkey_ctx(mctx, pctx);
      ^
lcputils.c: In function 'ec_sign_data':
lcputils.c:889:10: error: assignment makes pointer from integer without a cast [-Werror]
      mctx = EVP_MD_CTX_new();
           ^
lcputils.c:919:51: error: 'EVP_PKEY_SM2' undeclared (first use in this function)
          result = EVP_PKEY_set_alias_type(evp_key, EVP_PKEY_SM2);
                                                    ^
lcputils.c:942:9: error: passing argument 3 of 'EVP_DigestSignInit' makes pointer from integer without a cast [-Werror]
          result = EVP_DigestSignInit(mctx, &pctx, EVP_sm3(), NULL, evp_key);
          ^
In file included from /usr/include/openssl/x509.h:73:0,
                  from /usr/include/openssl/engine.h:99,
                  from lcputils.c:46:
/usr/include/openssl/evp.h:660:5: note: expected 'const struct EVP_MD *' but argument is of type 'int'
  int EVP_DigestSignInit(EVP_MD_CTX *ctx, EVP_PKEY_CTX **pctx,
      ^
lcputils.c:985:5: error: implicit declaration of function 'ECDSA_SIG_get0_r' [-Werror=implicit-function-declaration]
      sig_r = ECDSA_SIG_get0_r(ecdsa_sig);
      ^
lcputils.c:985:11: error: assignment makes pointer from integer without a cast [-Werror]
      sig_r = ECDSA_SIG_get0_r(ecdsa_sig);
            ^
lcputils.c:986:5: error: implicit declaration of function 'ECDSA_SIG_get0_s' [-Werror=implicit-function-declaration]
      sig_s = ECDSA_SIG_get0_s(ecdsa_sig);
      ^
lcputils.c:986:11: error: assignment makes pointer from integer without a cast [-Werror]
      sig_s = ECDSA_SIG_get0_s(ecdsa_sig);
            ^
lcputils.c: In function 'der_encode_sig_comps':
lcputils.c:1274:5: error: implicit declaration of function 'ECDSA_SIG_set0' [-Werror=implicit-function-declaration]
      if (!ECDSA_SIG_set0(sig, r, s)) {
      ^
hash.c: In function 'hash_buffer':
hash.c:124:9: error: implicit declaration of function 'EVP_sm3' [-Werror=implicit-function-declaration]
          md = EVP_sm3();
          ^
hash.c:124:12: error: assignment makes pointer from integer without a cast [-Werror]
          md = EVP_sm3();
             ^



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
