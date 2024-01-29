Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D2AD084001D
	for <lists+tboot-devel@lfdr.de>; Mon, 29 Jan 2024 09:32:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1rUN3y-0000Zg-4r;
	Mon, 29 Jan 2024 08:32:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <fweimer@redhat.com>) id 1rUN3u-0000ZK-Rr
 for tboot-devel@lists.sourceforge.net;
 Mon, 29 Jan 2024 08:32:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=b0JJ+Cctcp4bBZ3/tht49hANa5GT8dG2yCJVS4wp86c=; b=RWjXasCx2TYoOSuTfejVwYXjX9
 6MJkqVFbXFBIQUtunFz96iqE6bSDK/+XEI8E3VHqmQaPhqZsHfbDJ1vJEb3SaRynV3+ZO0Fvya/1u
 LBRNsvLeY627bo0AZwfyKlVjLd4i2M4isiviFbRxl+lh0bEbwN1smaD3r0C1vO3JSmDE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=b0JJ+Cctcp4bBZ3/tht49hANa5GT8dG2yCJVS4wp86c=; b=O
 rdX8QMWUVN7gaIXuTyNX/CTOByetR9IavxO2C7FmQf3ikUp42ulj/YsW1anp02rJcz91mjBvam1/G
 ZlzUm8nnzDGYqo2A6eSduxUKPEI8cDA5X2XrxvkTN4/VkAKJGWlLRdVUK4fU7O3aVt331UXZUJ4o0
 DrTOfYXqbL2/F7xI=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rUN3o-0005T6-OC for tboot-devel@lists.sourceforge.net;
 Mon, 29 Jan 2024 08:32:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1706517123;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=b0JJ+Cctcp4bBZ3/tht49hANa5GT8dG2yCJVS4wp86c=;
 b=H/jFeENnVHivF9o9AGMWTVL6XgpPNUE2R59HzPQ613mrZAt+r/q0su7yJQnQL40ywp5SyW
 NMfapgYovFWLN4Ei/yGVrrdWOhYt53QnM1FeNJf3LJT0sI6Y3wiAU4b5eNWyCl8U1yhNfu
 n91rjIOtiHgGIEOit5Sdq0K0G6maCao=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-28-p05BFUDPPvGxGuvU02xznA-1; Mon, 29 Jan 2024 03:32:01 -0500
X-MC-Unique: p05BFUDPPvGxGuvU02xznA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
 [10.11.54.3])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8027610B93E7
 for <tboot-devel@lists.sourceforge.net>; Mon, 29 Jan 2024 08:32:01 +0000 (UTC)
Received: from oldenburg.str.redhat.com (unknown [10.39.192.66])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 2A0031121306
 for <tboot-devel@lists.sourceforge.net>; Mon, 29 Jan 2024 08:32:00 +0000 (UTC)
From: Florian Weimer <fweimer@redhat.com>
To: tboot-devel@lists.sourceforge.net
Date: Mon, 29 Jan 2024 09:31:59 +0100
Message-ID: <87ede0fslc.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.3 (gnu/linux)
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -1.5 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  As far as I can tell,
 this warning is both technically correct
 and harmless. The called generate_composite_hash hash function only writes
 SHA1_DIGEST_SIZE bytes and uses byte accesses. Thanks, Florian 
 Content analysis details:   (-1.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -1.3 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rUN3o-0005T6-OC
Subject: [tboot-devel] [PATCH] Suppress GCC 14 allocation size warning in
 lcptools-v2/pconf_legacy.c
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

As far as I can tell, this warning is both technically correct and
harmless.  The called generate_composite_hash hash function only writes
SHA1_DIGEST_SIZE bytes and uses byte accesses.

Thanks,
Florian

diff --git a/lcptools-v2/pconf_legacy.c b/lcptools-v2/pconf_legacy.c
index 443b5cd5525b9fe1..5ebc6c451f7008b1 100644
--- a/lcptools-v2/pconf_legacy.c
+++ b/lcptools-v2/pconf_legacy.c
@@ -324,7 +324,7 @@ static lcp_policy_element_t *create(void)
             ERROR("Error: no pcrs were selected.\n");
             return NULL;
         }
-        digest = malloc(SHA1_DIGEST_SIZE);
+        digest = malloc(sizeof(*digest));
         if (digest == NULL) {
             ERROR("Error: failed to allocate memory for digest buffer.\n");
             return NULL;



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
