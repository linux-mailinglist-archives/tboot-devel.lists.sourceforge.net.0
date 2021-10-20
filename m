Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D9537434F16
	for <lists+tboot-devel@lfdr.de>; Wed, 20 Oct 2021 17:31:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1mdDZ5-00082Z-Dj; Wed, 20 Oct 2021 15:31:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <this.is.a0lson@gmail.com>) id 1mdDZ3-00082D-MQ
 for tboot-devel@lists.sourceforge.net; Wed, 20 Oct 2021 15:31:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:Date:References:In-Reply-To:Message-Id:Subject:
 Content-Transfer-Encoding:Content-Type:MIME-Version:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=69aVu+pPppEqoR/Rc/0zv3GkffeLgs3xIWHY/Df3s+Q=; b=k/WlAcYRSg3LfEZUu7FJ46i9rM
 IYTYBivhDs4kvgcM4zAuRPDqEsKVJB6RgLzLWnWYijD5Uuk0TOYHH4nHwgrpGOJuKA1IGrvTexy8r
 RUErw23Z7NFFn1Fom86Ej6N/+WfH9/x+jbLiFreJyTiH7wXPsb5Dm1wSdjdBRITexCn8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=To:Date:References:In-Reply-To:Message-Id:Subject:
 Content-Transfer-Encoding:Content-Type:MIME-Version:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=69aVu+pPppEqoR/Rc/0zv3GkffeLgs3xIWHY/Df3s+Q=; b=guxeBBxF6WJHcCWhoWzU1YBE9u
 v/iYxtUeB2Y1Ye2+W5GZ1kvn6tiXxWPoJDAPFzPoSbtAHNXWzKtmgxsJZgSbZbGqi/Z0i7bnm5Nx3
 WI+GP9CUIqc/uBqd6CvXYz98tY4b+bUSrjRDJOPUvhBnNwnX/pwXRJo30p6DdcvWB1Is=;
Received: from mail-qv1-f42.google.com ([209.85.219.42])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mdDYz-0001Tm-9f
 for tboot-devel@lists.sourceforge.net; Wed, 20 Oct 2021 15:31:37 +0000
Received: by mail-qv1-f42.google.com with SMTP id k19so2267780qvm.13
 for <tboot-devel@lists.sourceforge.net>; Wed, 20 Oct 2021 08:31:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:mime-version:content-transfer-encoding:subject:message-id
 :in-reply-to:references:user-agent:date:to;
 bh=69aVu+pPppEqoR/Rc/0zv3GkffeLgs3xIWHY/Df3s+Q=;
 b=a7oPRBbu0OnRVRY7Wt+8YTZyLf7DbGzLeRCPiOfMwotGFr83xb8rqnQuJpbAN+7dyf
 UxDlqU28YwN9W5NZPaDQXxnrW6CSNygqtY0h5qQtgekxj5owvAvvNCg6aG+nNkKbPeqd
 fQKeXz/rCrT84cFXm+spT6sGcJiIXgDT0h8lb7JeHU9wblf3u2YaztLkx9bbQRuv9ZUE
 j5+0i0hePe/HU+HscW9v2AeeuXl/yhJnks5TV2UR4zFPg5boLST3KTG60BscCGrenuFD
 xxfHKaNQj0xz/KoWbyL+0EZcasg0tycueh/3GEvdXfqcIUH0L1n62vk8McRMd2xnUMoV
 rPyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:mime-version:content-transfer-encoding
 :subject:message-id:in-reply-to:references:user-agent:date:to;
 bh=69aVu+pPppEqoR/Rc/0zv3GkffeLgs3xIWHY/Df3s+Q=;
 b=tIft0XGVtpmBCuXClZQNfKI49j2tXu9zfPjVrZp2wUjoojO0gvzg9YSlw7PEFBz8fv
 qFfrZasXmAA8sPdd3/8FNwPyRUQcvgULMuKQteGGexRXGSKA1bCi3/mHJtUF3H1o+qg+
 /Q+SdDZyXXvjKTrPia0w95M3Bxh7bPFkQ6Hwsxz4DtujlMMhnDwuKq5ZaZQ6qeMo6m5l
 rBNdaENcg9d1O8LBWuO8ciZXWzpRzg+h7gVLFtTEvUEc1pv27109BASHoPFConD5ZlCj
 eOKUxKqb6ISWpKkTfAdDkRpjsLBmTR9N0AMj6j9h0b4X/mpcZz04XigBTqL+bqO9DBpA
 DG+Q==
X-Gm-Message-State: AOAM532qyUA+8en2T11wwyjm/w2+3aO7tEGPOC6kxbBqJm1lJgqYkgxZ
 pqw1Cypgp8oVZBt9bWcU8OAg1A0vzyQ=
X-Google-Smtp-Source: ABdhPJyGdeoA1EvW8Ck/Dd0qEiwB5xbmLi0goOfSJYlvp+bwME4MnNVeEaaG2h9pzA1qu13hmnZZUQ==
X-Received: by 2002:ad4:436d:: with SMTP id u13mr308010qvt.19.1634743887035;
 Wed, 20 Oct 2021 08:31:27 -0700 (PDT)
Received: from development ([24.214.236.228])
 by smtp.gmail.com with ESMTPSA id r9sm1076922qtx.15.2021.10.20.08.31.25
 for <tboot-devel@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Oct 2021 08:31:26 -0700 (PDT)
From: alex <this.is.a0lson@gmail.com>
X-Google-Original-From: "alex" <alex@development>
Received: by development (sSMTP sendmail emulation);
 Wed, 20 Oct 2021 10:31:24 -0500
MIME-Version: 1.0
X-Mercurial-Node: f3574795bf2ecbd0e717268f9cb9ccc8982f1861
X-Mercurial-Series-Index: 2
X-Mercurial-Series-Total: 3
Message-Id: <f3574795bf2ecbd0e717.1634743880@development>
X-Mercurial-Series-Id: <4eda9c0cf72d0fe0c217.1634743879@development>
In-Reply-To: <patchbomb.1634743878@development>
References: <patchbomb.1634743878@development>
User-Agent: Mercurial-patchbomb/5.3.1
Date: Wed, 20 Oct 2021 10:31:20 -0500
To: tboot-devel@lists.sourceforge.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: # HG changeset patch # User Alex Olson # Date 1634669589
 18000 # Tue Oct 19 13:53:09 2021 -0500 # Node ID
 f3574795bf2ecbd0e717268f9cb9ccc8982f1861
 # Parent 4eda9c0cf72d0fe0c217c251bdef2c5628e0c0a6 R [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.42 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [this.is.a0lson[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.42 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1mdDYz-0001Tm-9f
Subject: [tboot-devel] [PATCH 2 of 3] Replace EFI memory map in Multiboot2
 info
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
# Date 1634669589 18000
#      Tue Oct 19 13:53:09 2021 -0500
# Node ID f3574795bf2ecbd0e717268f9cb9ccc8982f1861
# Parent  4eda9c0cf72d0fe0c217c251bdef2c5628e0c0a6
Replace EFI memory map in Multiboot2 info

tboot modifies both the e820 and EFI memory maps during its boot process,
but was only updating the Multiboot content's e820 map.  This meant
the unmodified EFI map was being passed even though it should have contained
reserved ranges specific to tboot.

This probably went unnoticied since the Linux kernel is not booted using
Multiboot (thus, was already receiving the updated EFI map on EFI systems).

This revision adds the update of the EFI Multiboot content, but has to make a
slight tradeoff as the combined expansion of the E820 and EFI memory maps
cannot be "paid" for with the memory savings from other Multiboot tag deletions.

Signed-off-by: Alex Olson <alex.olson@starlab.io>

diff -r 4eda9c0cf72d -r f3574795bf2e tboot/common/efi_memmap.c
--- a/tboot/common/efi_memmap.c	Fri Oct 15 13:35:59 2021 -0500
+++ b/tboot/common/efi_memmap.c	Tue Oct 19 13:53:09 2021 -0500
@@ -372,4 +372,10 @@
     } else {
         return false;
     }
-}
\ No newline at end of file
+}
+
+
+bool efi_memmap_present(void)
+{
+    return efi_mmap_available;
+}
diff -r 4eda9c0cf72d -r f3574795bf2e tboot/common/loader.c
--- a/tboot/common/loader.c	Fri Oct 15 13:35:59 2021 -0500
+++ b/tboot/common/loader.c	Tue Oct 19 13:53:09 2021 -0500
@@ -331,6 +331,18 @@
     return true;
 }
 
+
+static bool remove_mb2_tag_by_type(loader_ctx *lctx, uint32_t tag_type)
+{
+    struct mb2_tag *start = next_mb2_tag(NULL);
+    struct mb2_tag *victim = find_mb2_tag_type(start, tag_type);
+
+    if (victim != NULL) {
+        return remove_mb2_tag(lctx,victim);
+    }
+    return false;
+}
+
 static bool
 grow_mb2_tag(loader_ctx *lctx, struct mb2_tag *which, uint32_t how_much)
 {
@@ -1401,11 +1413,22 @@
     }
 
     /* replace map in loader context with copy */
-    replace_e820_map(g_ldr_ctx);
+    if ( is_loader_launch_efi(g_ldr_ctx) && efi_memmap_present() ) {
+        /* for EFI, reclaim MB2 space by deleting the E820 map,
+           this ensures grow_mb2_tag() has enough slack available.
+           Due to the growth of each, there can only be one...
+         */
+        remove_mb2_tag_by_type(g_ldr_ctx, MB2_TAG_TYPE_MMAP);
+        replace_efi_map(g_ldr_ctx);
+    } else {
+        remove_mb2_tag_by_type(g_ldr_ctx, MB2_TAG_TYPE_EFI_MMAP);
+        replace_e820_map(g_ldr_ctx);
+    }
 
     if (get_tboot_dump_memmap()) {
         printk(TBOOT_DETA"adjusted e820 map:\n");
         print_e820_map();
+        efi_memmap_dump();
     }
 
     if ( !verify_loader_context(g_ldr_ctx) )
@@ -1907,6 +1930,47 @@
     return;
 }
 
+void
+replace_efi_map(loader_ctx *lctx)
+{
+    /* currently must be MBI type 2 */
+    if ( LOADER_CTX_BAD(lctx) || lctx->type == MB1_ONLY ){
+        return;
+    }
+
+    struct mb2_tag *start = (struct mb2_tag *)(lctx->addr + 8);
+    struct mb2_tag_efi_mmap *tag;
+    tag = (struct mb2_tag_efi_mmap *)find_mb2_tag_type(start, MB2_TAG_TYPE_EFI_MMAP);
+
+    if ( !tag ) {
+        printk(TBOOT_INFO"MB2 EFI map not found\n");
+        return;
+    }
+
+    const uint32_t old_mmap_size = tag->size - sizeof(struct mb2_tag_efi_mmap);
+    uint32_t new_descr_size=0;
+    uint32_t new_descr_vers=0;
+    uint32_t new_mmap_size=0;
+    void    *new_mmap;
+
+    new_mmap = (void *)efi_memmap_get_addr(&new_descr_size, &new_descr_vers, &new_mmap_size);
+
+    if ( old_mmap_size < new_mmap_size ) {
+        /* we have to grow */
+        if (false ==
+            grow_mb2_tag(lctx, (struct mb2_tag *)tag, (new_mmap_size-old_mmap_size))) {
+            printk(TBOOT_ERR"MB2 failed to grow EFI map tag\n");
+            return;
+        }
+    } else {
+        tag->size = sizeof(struct mb2_tag_efi_mmap) + new_mmap_size;
+    }
+    /* copy in new data */
+    tag->descr_size = new_descr_size;
+    tag->descr_vers = new_descr_vers;
+    tb_memcpy(tag->efi_mmap, new_mmap, new_mmap_size);
+}
+
 void print_loader_ctx(loader_ctx *lctx)
 {
     if (lctx->type != MB2_ONLY){
diff -r 4eda9c0cf72d -r f3574795bf2e tboot/include/efi_memmap.h
--- a/tboot/include/efi_memmap.h	Fri Oct 15 13:35:59 2021 -0500
+++ b/tboot/include/efi_memmap.h	Tue Oct 19 13:53:09 2021 -0500
@@ -98,4 +98,5 @@
                                       uint64_t *ram_base, uint64_t *ram_size);
 void efi_memmap_dump(void);
 
-#endif
\ No newline at end of file
+bool efi_memmap_present(void);
+#endif
diff -r 4eda9c0cf72d -r f3574795bf2e tboot/include/loader.h
--- a/tboot/include/loader.h	Fri Oct 15 13:35:59 2021 -0500
+++ b/tboot/include/loader.h	Tue Oct 19 13:53:09 2021 -0500
@@ -97,6 +97,7 @@
 extern void determine_loader_type(void *addr, uint32_t magic);
 extern unsigned long get_loader_ctx_end(loader_ctx *lctx);
 extern void replace_e820_map(loader_ctx *lctx);
+extern void replace_efi_map(loader_ctx *lctx);
 extern uint8_t *get_loader_rsdp(loader_ctx *lctx, uint32_t *length);
 extern bool is_loader_launch_efi(loader_ctx *lctx);
 extern bool get_loader_efi_ptr(loader_ctx *lctx, uint32_t *address, 


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
