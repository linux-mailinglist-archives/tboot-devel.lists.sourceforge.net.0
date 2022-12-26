Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A24296564E4
	for <lists+tboot-devel@lfdr.de>; Mon, 26 Dec 2022 21:08:47 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1p9tm0-0007xB-G1;
	Mon, 26 Dec 2022 20:08:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <salah.coronya@gmail.com>) id 1p9tly-0007x5-21
 for tboot-devel@lists.sourceforge.net;
 Mon, 26 Dec 2022 20:08:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:From
 :To:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cHcHDHcftLl7SAA4mHq5uZiBKMur7lbyfC6hFet0P58=; b=a0XURf+Na+RZSPzQXLdBlOaAyH
 W1AnWG93MyatDu0wmDFA77mXvq05kzilQcCeWHaKnEBNY+WN+5ZMpXw7fecXHBsRfTAMkQhVhFAa8
 Cp1/xP3afZOrVb8nXXnPyqGsZR3m3wx83nulaqQbZfJCM9j5q9qfu0Ik1u8yTyBS3LF0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:From:To:MIME-Version:Date:
 Message-ID:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=cHcHDHcftLl7SAA4mHq5uZiBKMur7lbyfC6hFet0P58=; b=Q
 hdbN/8sCILz1M1LA+38MbRWBG4ZBxatnM6rYITmn1zPSXDKGmBWwWY0CERbfWVZEiZoLFD2arsTw8
 xwejzneOgpek2bnS0ozk9lzVzM+j6Q1UvpxvyHMRTwOYKsrbiyvTx32u3NOfTw/TxCSIf7EuGCeeW
 rtGlErjFW9l7WMJQ=;
Received: from mail-qt1-f174.google.com ([209.85.160.174])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1p9tlt-0001b4-Rq for tboot-devel@lists.sourceforge.net;
 Mon, 26 Dec 2022 20:08:33 +0000
Received: by mail-qt1-f174.google.com with SMTP id jr11so9117848qtb.7
 for <tboot-devel@lists.sourceforge.net>; Mon, 26 Dec 2022 12:08:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:subject:from:to:content-language
 :user-agent:mime-version:date:message-id:from:to:cc:subject:date
 :message-id:reply-to;
 bh=cHcHDHcftLl7SAA4mHq5uZiBKMur7lbyfC6hFet0P58=;
 b=hwA8mmxgq7kjRKYOnZTFOK0YYgikSpDhUFlyCqL6Zc20KldUqShbsB858NLQaK1j/P
 wr+Ke+WfNUubfAqAoYIg8dHbh4v56HLb9EsnHp7z9FQRUnAe4/YFpEyx4OvHElhAqO4U
 Ou/09h228FJ+44zsUREvSAecYo6S4/03UUd5vZf/M9HgNUAZoRsRpLOu9Qw6YAuQ5MKD
 hGqfrnGJHiho390BqlQONTK6d4rm1KHDLkmGYL/akUTrhZeKB6zvEMMbXXHpRb3ZRM8G
 zmEfp/v4ga8NwTZfpzWYLLewrqy9RGtVqHaimRAzaEgUrK2AXQei5pTgrpqGQPTX7KUN
 aHUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:subject:from:to:content-language
 :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=cHcHDHcftLl7SAA4mHq5uZiBKMur7lbyfC6hFet0P58=;
 b=b7mIrPb2LioYP4PJNMdP49UTOevyUM1B3YLanqHb2jXpP7y3aW8IDQe3FacNQcM5Sw
 NB0XSnEkp4fKVKgHPuLYvWMv7OsO/8fOEcBTrBEyOjmLwPZJGTbX0suqqZG+zyhyLJxK
 uPm93juNtS+DRNbxLXwPd2XzOP1MmAt/bGCXn8pBBXGDdS4rMGIHPyXmwAoKPmt/ltNw
 nE/qhFf+Dq3InCDKUfX7H5qbjCSxBgTWSHxf0TYIbLg9uvM3nYGvWRDCyvOX0ZFh+7cw
 jnHm2KYFPLM+Hbm1vJefateVQRdLMuO8Ibk/ZWdUtTKWf6pFD8DXstuj5rVpqjnWl1md
 Wolg==
X-Gm-Message-State: AFqh2krC1g4SHxpOSYMNlH9d+i804pgIsAA4hD/0g19TDmyOcJzhzLN0
 w+/ax1rqv8Tv51M0Bk1nQ3oE3y5Qubs=
X-Google-Smtp-Source: AMrXdXsdjsuedLIXFoGDmX6L6KobdnYMqYW+H+mmBZMlpMgqsPLkGJNQvBjwfd0S1sxL4P8u95fqBg==
X-Received: by 2002:ac8:615e:0:b0:3a8:1a6d:3daa with SMTP id
 d30-20020ac8615e000000b003a81a6d3daamr27021733qtm.40.1672085303881; 
 Mon, 26 Dec 2022 12:08:23 -0800 (PST)
Received: from ?IPV6:2600:6c40:4300:9ce::1460? ([2600:6c40:4300:9ce::1460])
 by smtp.gmail.com with ESMTPSA id
 b6-20020ac86786000000b003a50b9f099esm7186638qtp.12.2022.12.26.12.08.23
 for <tboot-devel@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 26 Dec 2022 12:08:23 -0800 (PST)
Message-ID: <0c8ba828-e563-cb6f-b83c-552cabf70718@gmail.com>
Date: Mon, 26 Dec 2022 14:08:22 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To: tboot-devel@lists.sourceforge.net
From: Christopher Byrne <salah.coronya@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  This got missed for the current version, so I'm resubmitting
 for the next version: # HG changeset patch # User Christopher Byrne # Date
 1672084560 21600 # Mon Dec 26 13:56:00 2022 -0600 # Node ID
 de13f5fe8812350a662e411d5253067a2bb3e3b6
 # Parent 4a904a608c70468d3156341dd9132233c4c [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [salah.coronya[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.174 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.174 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1p9tlt-0001b4-Rq
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

This got missed for the current version, so I'm resubmitting for the 
next version:

# HG changeset patch
# User Christopher Byrne <salah.coronya@gmail.com>
# Date 1672084560 21600
#      Mon Dec 26 13:56:00 2022 -0600
# Node ID de13f5fe8812350a662e411d5253067a2bb3e3b6
# Parent  4a904a608c70468d3156341dd9132233c4c4ff5b
lcptools-v2/pconf_legacy.c: Add missing BE size_of_pcrs to hash buffer

First fix attempt was almost correct. System still doesn't boot with 
PCONF element. I forgot 1 important line though. Once added, the system 
now boots with the PCONF element. Tested with both 1 PCR and 2 PCRs.

Signed-of-by: Christopher Byrne <salah.coronya@gmail.com>

diff -r 4a904a608c70 -r de13f5fe8812 lcptools-v2/pconf_legacy.c
--- a/lcptools-v2/pconf_legacy.c	Fri Dec 23 10:15:47 2022 +0100
+++ b/lcptools-v2/pconf_legacy.c	Mon Dec 26 13:56:00 2022 -0600
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
