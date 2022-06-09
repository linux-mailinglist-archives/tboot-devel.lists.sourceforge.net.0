Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FFA1545496
	for <lists+tboot-devel@lfdr.de>; Thu,  9 Jun 2022 21:04:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1nzNSQ-0005ew-HD; Thu, 09 Jun 2022 19:04:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcamuso@redhat.com>) id 1nzNSP-0005ep-1m
 for tboot-devel@lists.sourceforge.net; Thu, 09 Jun 2022 19:04:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:From
 :Cc:To:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=a6WQr+iPgVJbqZJbUS6aTwPPaGyoq8WREjqYt00IZEo=; b=QQ3oHWgw0CVNQuWKLaKd1uKxj9
 z8rvllvww6HnOKPHBkqOOSqC+gJwFAr5KB+uD6HIcupN/VNnxGNxtws1i5QyeZH4tgDbOO43zc7Yn
 rHNtkyfohHwOhgrHiB5+NIIvczsaQ0XaKp/lo0jIYtroAzQoUg3F3H+nXkWXKtN7w3rA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:From:Cc:To:MIME-Version:
 Date:Message-ID:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=a6WQr+iPgVJbqZJbUS6aTwPPaGyoq8WREjqYt00IZEo=; b=d
 9xAqUhQUGo3OKtZheT7NCUjyM9AO5mcaox9ipahF9vVWq+DDaoyrqhbnJZU1WfDDoDKLq2qQmJA/3
 6qQj89VILY5r19cHxO5kbzd4esNnqhBdm1+iEWL0PcDtzJPno4Ij4xOIsXLaexcVygMAKnzf0ccHI
 JG49b9yLrt/LimO8=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nzNSI-0003aV-QU
 for tboot-devel@lists.sourceforge.net; Thu, 09 Jun 2022 19:04:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1654801465;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=a6WQr+iPgVJbqZJbUS6aTwPPaGyoq8WREjqYt00IZEo=;
 b=cZydJ3fmsnwXlt3SKmo3JZYryE/ewCJhT7rnPCV360cFk6ktQg+EQU4gRsBC0hLQvax46o
 7vzrt/HfjRq3o44umxkrR1wVZgipRENhMTUrpaFXHgjzlzoAJXjF5J4iNwBjz+F0jXoZTc
 sMCW+Q5MD2RkZh5qDAoeI2qh2uFtClk=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-628-VSakoQVAOKKOsF0_KsSkPw-1; Thu, 09 Jun 2022 15:04:24 -0400
X-MC-Unique: VSakoQVAOKKOsF0_KsSkPw-1
Received: by mail-qt1-f197.google.com with SMTP id
 s7-20020ac85cc7000000b00304e11cb41fso14444477qta.4
 for <tboot-devel@lists.sourceforge.net>; Thu, 09 Jun 2022 12:04:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent
 :content-language:to:cc:from:subject:content-transfer-encoding;
 bh=a6WQr+iPgVJbqZJbUS6aTwPPaGyoq8WREjqYt00IZEo=;
 b=vgN4qEn/S+SPdZ74GIgEdHRXIM87J82MjSr5v3+0iUfsnHpQozSptE39Sr6KhvJrql
 tqHARrcDlO9eY0J0GOpDewWz+t6aWK/htIGnBZuFLLx2+oJCLBwBVGyYHRca0/ifkFFj
 N4Dtdt874jGbYI3SL8jzTAjr8VuqvbIPKOTiYys9a+47ElXK+P8ChObjM6oSd28xfMdi
 4JftuBvK9RQNtNTED/SsjUNRocoOuPznj1Ue4vQkGqRIXHx/IJRiHAgZU90hs3F0ARY0
 jKpxyEWIKYi3ZOkL0tamgj6+MMasbgoE4FG5BcISF+dy9VAWtP4lsePjX66nFPFAgkB5
 iO3g==
X-Gm-Message-State: AOAM532Bv2PFbANUCWzVo/bM7zjJYec8WKkLma0Cu7qDdAr60s5VWUtv
 rAm6WACqYqMKAwNF72NxwBWfnDUW4q3QR9Tg804NIuDB39FuCAqGbWY6i95DnAD/AZ9TfK4DdHl
 C92pA77I+xyOjHJ74QTH8sNff6bRZBl/kjNFULyGFRxw8D47nFfS2kiLJtOdDHUIr6zslIZXCHw
 VZ+7r1hA==
X-Received: by 2002:a05:620a:4402:b0:6a6:7220:8a0d with SMTP id
 v2-20020a05620a440200b006a672208a0dmr27781767qkp.265.1654801463672; 
 Thu, 09 Jun 2022 12:04:23 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy3sDOB15zQzzypfBlxJHDDMph5Yl2vBMf0Dv1ykv4XonJAIGDspJRoTneR1QseAHRLfYlo4Q==
X-Received: by 2002:a05:620a:4402:b0:6a6:7220:8a0d with SMTP id
 v2-20020a05620a440200b006a672208a0dmr27781725qkp.265.1654801463139; 
 Thu, 09 Jun 2022 12:04:23 -0700 (PDT)
Received: from [192.168.3.2] (48.sub-174-196-205.myvzw.com. [174.196.205.48])
 by smtp.gmail.com with ESMTPSA id
 bi19-20020a05620a319300b006a6dcd92eb3sm7136785qkb.121.2022.06.09.12.04.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Jun 2022 12:04:22 -0700 (PDT)
Message-ID: <ab6971de-9fd8-eb64-94d7-af4ebf4b4cd0@redhat.com>
Date: Thu, 9 Jun 2022 15:04:20 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
To: tboot-devel@lists.sourceforge.net
From: Tony Camuso <tcamuso@redhat.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=tcamuso@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: # HG changeset patch # User Tony Camuso <tcamuso@redhhat.com>
 # Date 1654800659 14400 # Thu Jun 09 14:50:59 2022 -0400 # Node ID
 be868f53407d4460491a0e77e5165025153b0329
 # Parent 206a47f3e9d2c18c8a3db [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nzNSI-0003aV-QU
Subject: [tboot-devel] [PATCH] 20_linux_tboot: efi logic was inverted
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

# HG changeset patch
# User Tony Camuso <tcamuso@redhhat.com>
# Date 1654800659 14400
#      Thu Jun 09 14:50:59 2022 -0400
# Node ID be868f53407d4460491a0e77e5165025153b0329
# Parent  206a47f3e9d2c18c8a3db082216ee6fc3c5d475c
20_linux_tboot: efi logic was inverted

There was a RAID0 system that could boot normally, but not through
a tboot launch. The problem was that the logic in this script
incorrectly appended 'noefi' to the grub.cfg module2 kernel stanza.

When 'noefi' was removed from that stanza, the system could boot
through a tboot launch. This patch corrects the logic in the script.

diff -r 206a47f3e9d2 -r be868f53407d tboot/20_linux_tboot
--- a/tboot/20_linux_tboot	Thu Mar 17 23:58:50 2022 +0200
+++ b/tboot/20_linux_tboot	Thu Jun 09 14:50:59 2022 -0400
@@ -105,11 +105,11 @@
    if [ -d /sys/firmware/efi ] ; then
        mb_directive="multiboot2"
        mb_mod_directive="module2"
-      mb_extra_kernel="noefi"
+      mb_extra_kernel=""
    else
        mb_directive="multiboot2"
        mb_mod_directive="module2"
-      mb_extra_kernel=""
+      mb_extra_kernel="noefi"
    fi
  
    printf "menuentry '${title}' ${CLASS} {\n" "${os}" "${tboot_version}" "${version}"



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
