Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 52B02434F17
	for <lists+tboot-devel@lfdr.de>; Wed, 20 Oct 2021 17:31:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1mdDZ6-00082o-FR; Wed, 20 Oct 2021 15:31:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <this.is.a0lson@gmail.com>) id 1mdDZ4-00082N-N3
 for tboot-devel@lists.sourceforge.net; Wed, 20 Oct 2021 15:31:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:Date:References:In-Reply-To:Message-Id:Subject:
 Content-Transfer-Encoding:Content-Type:MIME-Version:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=joV2v+fteDcpdTyIi4sdFxGyFRQRxNkGRf9L3bWj+6s=; b=k5rdq7iB7yylN9h4s6qksU009X
 ov5GkolNveZ8szXoo7SOjV0bOxZ4RCloOYMSxA84kqbaOQUqQksynBlu2Bmda5mlLMyecHN83GuQe
 atR/r6zbuLtBxVQDmDu44WGru726WwlLvGrw6zd8Fqa8qtT07YAEx5j8SSO8q4zXTEmU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=To:Date:References:In-Reply-To:Message-Id:Subject:
 Content-Transfer-Encoding:Content-Type:MIME-Version:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=joV2v+fteDcpdTyIi4sdFxGyFRQRxNkGRf9L3bWj+6s=; b=ZuwREcHBgdRCki3o+i+sfp8TqT
 E754GIvr41JLMxfWY0Pktn8FHAawU3tigYl+XwEHozPORsO1qb9RqrKOt/7M7Ttgz7XUTIot+vAzw
 Nc9YmXbPTIsClmv3yG5YFnu0iGPIauvler7IC4mccjNMsTt7KBqCNXtID0kTBv4eAszI=;
Received: from mail-qv1-f48.google.com ([209.85.219.48])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mdDZ1-008cCV-Lv
 for tboot-devel@lists.sourceforge.net; Wed, 20 Oct 2021 15:31:38 +0000
Received: by mail-qv1-f48.google.com with SMTP id e13so2285318qvf.5
 for <tboot-devel@lists.sourceforge.net>; Wed, 20 Oct 2021 08:31:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:mime-version:content-transfer-encoding:subject:message-id
 :in-reply-to:references:user-agent:date:to;
 bh=joV2v+fteDcpdTyIi4sdFxGyFRQRxNkGRf9L3bWj+6s=;
 b=DaIfzpsGvva/HNeGDWxXPhZgqJBQBxqAKgGHqgPzR/jpMJutpoeDSCuiGA8MCxnsuH
 np5n/6lwS5rCGanC3yDnLKAvcb0OTHZzhkijBeh3dMx6I636Kvgxt8RGa4NXv/GYPTXa
 9jwXXLPJQH6z/BeJXO9X+rMVEdXOmleZz4FSIZ/9XbzLMaCUHQIbrsmvwNI1VGS7kuJA
 1MYebeeS0krgpE0YN+aQUPjDArfp/e6TPPOH9RtnywxYS2RzNv1e2BmsmO4udnmgcpNC
 fsbfe2LSDp7Q/ruTlKCxX/96Hn9ZPnW01pQ0e0Bp96MtvJNw0aDMp+2ao+WuqovNfMFb
 rgdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:mime-version:content-transfer-encoding
 :subject:message-id:in-reply-to:references:user-agent:date:to;
 bh=joV2v+fteDcpdTyIi4sdFxGyFRQRxNkGRf9L3bWj+6s=;
 b=5+DZ1o2NPjEs5gxpu3cM/gGTiRd+f3jyvHf6dYc4FzezWsueyFp1F1ivHNqI8Uhilt
 6eJs7699dJwP+REROwipVPzsxE//hb1Y9rigGpXBfUUAQ74YNczVOOzqmvvjjbJ1e7VD
 XCz4QOemAjW7DOOG4kko+tmiWyazW6vpoMOrhZNUHokLgnBgVcgwSkO2pwWvIrSEPC0C
 BuzsUZC4pSmuW9l31bLwi8yrUY3XeEJZlStp7VPsnk7iu0wO+uu7r5nDd3qo9U3tU/97
 Nik34NtJ1ckF8woww7B4YHHB3bRMxJeDQmI1bhjGNUqOvmWvurWS1hXmsjc4W7rdViQl
 9xCQ==
X-Gm-Message-State: AOAM532j/jK//cJ8Otfz5MDO5FwN62kKBPRMK+naHGKV4A1VDAA6CeX+
 IY6zJdGx9TKdRSoXXS6nBovAh4MwweI=
X-Google-Smtp-Source: ABdhPJwC+k69UVMqoB6y4FPG0fcxTBNaImJUwVvaFS9M1o90Z8OMnB7dme8zMyMMjLgURNtd9Yiohg==
X-Received: by 2002:a05:6214:226e:: with SMTP id
 gs14mr385068qvb.4.1634743889508; 
 Wed, 20 Oct 2021 08:31:29 -0700 (PDT)
Received: from development ([24.214.236.228])
 by smtp.gmail.com with ESMTPSA id h2sm1139799qkf.106.2021.10.20.08.31.27
 for <tboot-devel@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Oct 2021 08:31:29 -0700 (PDT)
From: alex <this.is.a0lson@gmail.com>
X-Google-Original-From: "alex" <alex@development>
Received: by development (sSMTP sendmail emulation);
 Wed, 20 Oct 2021 10:31:27 -0500
MIME-Version: 1.0
X-Mercurial-Node: 06433602ffe048ceb946d538d51620ae8152c93d
X-Mercurial-Series-Index: 3
X-Mercurial-Series-Total: 3
Message-Id: <06433602ffe048ceb946.1634743881@development>
X-Mercurial-Series-Id: <4eda9c0cf72d0fe0c217.1634743879@development>
In-Reply-To: <patchbomb.1634743878@development>
References: <patchbomb.1634743878@development>
User-Agent: Mercurial-patchbomb/5.3.1
Date: Wed, 20 Oct 2021 10:31:21 -0500
To: tboot-devel@lists.sourceforge.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: # HG changeset patch # User Alex Olson # Date 1634323050
 18000 # Fri Oct 15 13:37:30 2021 -0500 # Node ID
 06433602ffe048ceb946d538d51620ae8152c93d
 # Parent f3574795bf2ecbd0e717268f9cb9ccc8982f1861 E [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [this.is.a0lson[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.48 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.48 listed in list.dnswl.org]
X-Headers-End: 1mdDZ1-008cCV-Lv
Subject: [tboot-devel] [PATCH 3 of 3] Ensure that growth of Multiboot tags
 does not go beyond original area
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

# HG changeset patch
# User Alex Olson <alex.olson@starlab.io>
# Date 1634323050 18000
#      Fri Oct 15 13:37:30 2021 -0500
# Node ID 06433602ffe048ceb946d538d51620ae8152c93d
# Parent  f3574795bf2ecbd0e717268f9cb9ccc8982f1861
Ensure that growth of Multiboot tags does not go beyond original area

The grow_mb2_tag() function can only rearrange Multiboot content
within the area originally allocated by the parent bootloader (Grub).

This revision ensures that boot will not continue if the expansion of
a tag would overflow the original area.

In practice, small expansions as a result of tboot added content
are normally "paid for" through tboot's removal of other tags.

Signed-off-by: Alex Olson <alex.olson@starlab.io>

diff -r f3574795bf2e -r 06433602ffe0 tboot/common/loader.c
--- a/tboot/common/loader.c	Tue Oct 19 13:53:09 2021 -0500
+++ b/tboot/common/loader.c	Fri Oct 15 13:37:30 2021 -0500
@@ -375,6 +375,7 @@
     if (growth > slack){
         printk(TBOOT_ERR"YIKES!!! grow_mb2_tag slack %d < growth %d\n",
                slack, growth);
+        apply_policy(TB_ERR_FATAL);
     }
 
     /* now we copy down from the bottom, going up */


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
