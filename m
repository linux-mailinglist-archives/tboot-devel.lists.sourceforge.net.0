Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 191DF4C5399
	for <lists+tboot-devel@lfdr.de>; Sat, 26 Feb 2022 04:59:33 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1nNoEq-0005rj-6u; Sat, 26 Feb 2022 03:59:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <salah.coronya@gmail.com>) id 1nNoEp-0005rc-1T
 for tboot-devel@lists.sourceforge.net; Sat, 26 Feb 2022 03:59:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:From
 :To:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=paWK319iWKH8huLH6wn3Y7lKi5XGLHnqhuk3PeV7sz4=; b=K9gCapDhdQr7DxnWATUCJRn+wi
 XyHcBLiSCT8yaB4WdaedKPgIGnY5msrPKbVLzhI1Vj4uODf/6D4tqh1Wh0mBSws3rdD/X4rm9dKX9
 JAQlJyZBJGMV7WTdGmh5Z7wksz9Uq2OCgr2uKw5HT6MCcS8S8EMAPj8KBGpaSzPR8zks=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:From:To:MIME-Version:Date:
 Message-ID:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=paWK319iWKH8huLH6wn3Y7lKi5XGLHnqhuk3PeV7sz4=; b=k
 T8tbXEz8OyLri14+OPOFfps8WqUOkvUxRcjhIawyNyeX+LBwrU3ElBM7pgKDOQFFgQAsFeKHwNaaE
 8DSge5D9Y0TX5ukqX2AKUE9fX4yWdK2cw6JM5geAlLdO5X0C0YW24nyRSzsCbhdVYRmaj5HWpnuAg
 Jv4KlPSFI6u4q67A=;
Received: from mail-qt1-f174.google.com ([209.85.160.174])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nNoEi-00FXri-Sf
 for tboot-devel@lists.sourceforge.net; Sat, 26 Feb 2022 03:59:17 +0000
Received: by mail-qt1-f174.google.com with SMTP id 11so4320680qtt.9
 for <tboot-devel@lists.sourceforge.net>; Fri, 25 Feb 2022 19:59:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:content-language:to:from
 :subject:content-transfer-encoding;
 bh=paWK319iWKH8huLH6wn3Y7lKi5XGLHnqhuk3PeV7sz4=;
 b=BODlvPppRp2/w6Nt0HOFwVpte+DIpNlxm1wsQwMVggbYCrLGv1Jzhy+dnvEUBwInng
 +wxPiU0zIlSgABdFy+mtVWNvwZKBrRD4qZNHVCMWofeqwhV4PBykRLPztuLa0JXmujlY
 QQPF+CBas8TwBnTL1n9poqN0/FUDYmWZvE02BCw9hJkbuSj+pwzKhDDIsL99CrkQeUf4
 6CxHslGnNp6LoYQdUHSJQyejZPBFfEkUHUK1mCPEoL9GpPX2al4Eur9nnobVi34/OX5o
 ND+aInfjzc1E7m6KJ+HTKgKKv7uwf+iANytYaDUpyZCszonnI31dEMjSbotUGFFjmUs9
 cMPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent
 :content-language:to:from:subject:content-transfer-encoding;
 bh=paWK319iWKH8huLH6wn3Y7lKi5XGLHnqhuk3PeV7sz4=;
 b=YenzOhQ5j8P1fIgMF1kiY7/hpacgTblkmr2LKF9KiT5RcPrUEvrYv1+riK7WU6bBnp
 fDoD7j8gESiRA4hWXlgsqcpAaDOAuZpIEGGyYEDROyOszF6IoOjJ1WjWbrvFO+UrHmfd
 CE1/V1ppesUjsH3fzYliLQNhTsXj8qAup/w4t0Z8bida+WzsUzOIuJ/qzItZZ31/BWwZ
 4ho9GW2ZjniKhwcWpAlXiqaEU26NCIEHmX/ay8RN15qIi7dOp2G3WGvySGV4kh56L+cg
 TKsPH7b4bmn7Vxk2JxLT3+EUyhWO3u+WJde4zMW40zedzurWUZLBBx6Ytgdchp453J6X
 YOBA==
X-Gm-Message-State: AOAM530lULKBi0UCUJcm/n+FiGpp//lEQ5DRDMDRrciYuDpqxo1KwWNA
 X4wI5B3U4ijQwppaLSGY/K25LQ1LbmARtg==
X-Google-Smtp-Source: ABdhPJyqLBaCq1yvj1TTZwPsqEGJzrwje5tZJfY5BpE4VfKa0dDBFDIe/Zdj6N42SzVA0zT7liHCOA==
X-Received: by 2002:ac8:7f15:0:b0:2de:4ded:d7b1 with SMTP id
 f21-20020ac87f15000000b002de4dedd7b1mr9594160qtk.490.1645847946682; 
 Fri, 25 Feb 2022 19:59:06 -0800 (PST)
Received: from ?IPV6:2600:6c40:4300:be3:c1dc:16e9:29a:6790?
 ([2600:6c40:4300:be3:c1dc:16e9:29a:6790])
 by smtp.gmail.com with ESMTPSA id
 v19-20020ae9e313000000b0060dd4ca4d00sm1941808qkf.57.2022.02.25.19.59.06
 for <tboot-devel@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 25 Feb 2022 19:59:06 -0800 (PST)
Message-ID: <32add51e-4b72-4646-fcb7-d17cbd3173b7@gmail.com>
Date: Fri, 25 Feb 2022 21:59:05 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Content-Language: en-US
To: tboot-devel@lists.sourceforge.net
From: Christopher Byrne <salah.coronya@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  First fix attempt was almost correct. System still doesn't
 boot with PCONF element. I forgot 1 important line though. Once added, the
 system now boots with the PCONF element. Tested with both 1 PCR an [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [salah.coronya[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.174 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.174 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1nNoEi-00FXri-Sf
Subject: [tboot-devel] Patch: Add missing BE size_of_pcrs to hash buffer
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

First fix attempt was almost correct. System still doesn't boot with 
PCONF element. I forgot 1 important line though. Once added, the system 
now boots with the PCONF element. Tested with both 1 PCR and 2 PCRs.

# HG changeset patch
# User Christopher Byrne <salah.coronya@gmail.com>
# Date 1645847383 21600
#      Fri Feb 25 21:49:43 2022 -0600
# Node ID ada51f373f12ee91feb2526220b6a94db92319ac
# Parent  6e831184f480ed34154e12eddc2d037d6a417a5f
lcptools-v2/pconf_legacy.c: Add missing BE size_of_pcrs to hash buffer

Signed-of-by: Christopher Byrne <salah.coronya@gmail.com>

diff --git a/lcptools-v2/pconf_legacy.c b/lcptools-v2/pconf_legacy.c
--- a/lcptools-v2/pconf_legacy.c
+++ b/lcptools-v2/pconf_legacy.c
@@ -241,6 +241,7 @@
          ERROR("Error: failed to allocate buffer for composite digest.\n");
          return false;
      }
+    buff->size_of_pcrs = htonl(no_of_pcrs * SHA1_DIGEST_SIZE);
      memcpy_s(
          &buff->pcr_selection,
          sizeof buff->pcr_selection,


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
