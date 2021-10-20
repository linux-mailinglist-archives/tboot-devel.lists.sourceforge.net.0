Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 17523434F15
	for <lists+tboot-devel@lfdr.de>; Wed, 20 Oct 2021 17:31:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1mdDZ2-0005PY-5u; Wed, 20 Oct 2021 15:31:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <this.is.a0lson@gmail.com>) id 1mdDYz-0005PP-KM
 for tboot-devel@lists.sourceforge.net; Wed, 20 Oct 2021 15:31:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:Date:References:In-Reply-To:Message-Id:Subject:
 Content-Transfer-Encoding:Content-Type:MIME-Version:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3CzsRJYW6TNUGY2dTyBkIL5MCOy3Zmw8nVz1N8IdJPk=; b=Kc/KtrMmD8y41pY+d2eJ/mla1z
 l99xV2qU3OfTOTJl9jqcKKOW/mjbXb1u/w5eR3VpCfyI37Odhg2SF9BN/aPvj2y7K3DC+xEp9WO75
 PI8O27v1arKOQKtvCIUAqBT8gddOAPMmZ06ljz9mHVhtabKuhaRhdTe0tVWTjsnNakrw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=To:Date:References:In-Reply-To:Message-Id:Subject:
 Content-Transfer-Encoding:Content-Type:MIME-Version:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3CzsRJYW6TNUGY2dTyBkIL5MCOy3Zmw8nVz1N8IdJPk=; b=L6/xWiqj3NpeWfWm6AEvR6T3Tl
 kalydvCKhBUI3YOK2dfW994Runojsb8pKrAe8wqRfcDFp+mBX1ZcIRQnBoytzpsP0RxEMWU7qILIo
 wpvbVT5WJ4AQpa6ltZ4BMpoS+7pzk7RAsE9CkGy/fYqZDgceHHRHPUgj9lN6wjxIva9I=;
Received: from mail-qk1-f181.google.com ([209.85.222.181])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mdDYw-008cBt-DA
 for tboot-devel@lists.sourceforge.net; Wed, 20 Oct 2021 15:31:33 +0000
Received: by mail-qk1-f181.google.com with SMTP id 77so3452928qkh.6
 for <tboot-devel@lists.sourceforge.net>; Wed, 20 Oct 2021 08:31:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:mime-version:content-transfer-encoding:subject:message-id
 :in-reply-to:references:user-agent:date:to;
 bh=3CzsRJYW6TNUGY2dTyBkIL5MCOy3Zmw8nVz1N8IdJPk=;
 b=aEtP/2PNzmJf39UnfiLSAdbMtaJIxgy4eRmQD5EJmiigE1ek+aWy2b2aXvxi3mCAJT
 /9hjYGTzIyB4XJbTSbRZe4zOZ7v2F/Sq1MnFF/Ib57BdFVmCDtft/dcmDZwfamnZd3M2
 ZTAc1AqUkRpNUFEcW7+KKuGjJ3F9qHw5RHpyNYdnXNEwrCGwqFFiMmaLsGmgoPJgBEt3
 Rolxi745+6+AHUCWTy2EdMzGQwK0hMdQSyZEMZ4EaIe3XvrxFXeJ3pX8AYlD6ksssgwE
 MtEhaAFETZ822inKClnYMPbSvpGEkVT1J+Lbb+FNg4u/T2UfAqGuZOm1xGMqbJXU1D5K
 vEvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:mime-version:content-transfer-encoding
 :subject:message-id:in-reply-to:references:user-agent:date:to;
 bh=3CzsRJYW6TNUGY2dTyBkIL5MCOy3Zmw8nVz1N8IdJPk=;
 b=xcXORFuFQGXU4EA8nm+CwARjypBsGqMWMoygcCLoWHGxWt/owOeQwdExoZTAQMJh8O
 qOQ73UnVX/reEBxPRSwaAvyRM63VQ5MwzrMK4db4aH758iBegPE/qZIWK2XRKbzh1zNZ
 mw/pI2XyoG1NA0Xr/8e5SSVNzbDb9hIoGdwnznzVmrOQkWZ/wuFujPTDrwgR4k8DTRYo
 kRn8bXFJaLIM0JTFJNMvpqrt1kyoAeQVwQ9JKQ+GadYKnDxLpm1OqnvEUgb68pvS3Jlq
 /Bpwmivc5yZya0K664LojJjk5vIRnXZ08fZb0Sot7rRQiGIIipbzmve9rylvI0QYen6r
 StjA==
X-Gm-Message-State: AOAM531xzmr3XzwI5CVtKj5NGniAdaGgq1NeGGIJtkPGbYc3GG9TbL0G
 3zRntoYozMlddUyTHHde+m0mzY381o8=
X-Google-Smtp-Source: ABdhPJzp+pzfWbODjIUyCFFezUT0s72MT14R/Zm4ZG8ZAJjxcYPGbNrHv7UiXotRqBZaYAK7JKwyIQ==
X-Received: by 2002:a37:9781:: with SMTP id z123mr242133qkd.140.1634743884314; 
 Wed, 20 Oct 2021 08:31:24 -0700 (PDT)
Received: from development ([24.214.236.228])
 by smtp.gmail.com with ESMTPSA id z26sm1164737qko.13.2021.10.20.08.31.22
 for <tboot-devel@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Oct 2021 08:31:23 -0700 (PDT)
From: alex <this.is.a0lson@gmail.com>
X-Google-Original-From: "alex" <alex@development>
Received: by development (sSMTP sendmail emulation);
 Wed, 20 Oct 2021 10:31:21 -0500
MIME-Version: 1.0
X-Mercurial-Node: 4eda9c0cf72d0fe0c217c251bdef2c5628e0c0a6
X-Mercurial-Series-Index: 1
X-Mercurial-Series-Total: 3
Message-Id: <4eda9c0cf72d0fe0c217.1634743879@development>
X-Mercurial-Series-Id: <4eda9c0cf72d0fe0c217.1634743879@development>
In-Reply-To: <patchbomb.1634743878@development>
References: <patchbomb.1634743878@development>
User-Agent: Mercurial-patchbomb/5.3.1
Date: Wed, 20 Oct 2021 10:31:19 -0500
To: tboot-devel@lists.sourceforge.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: # HG changeset patch # User Alex Olson # Date 1634322959
 18000 # Fri Oct 15 13:35:59 2021 -0500 # Node ID
 4eda9c0cf72d0fe0c217c251bdef2c5628e0c0a6
 # Parent 5bf5c12411d3a4a7e0a552203b40bfe59d5c7789 m [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.181 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [this.is.a0lson[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.181 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1mdDYw-008cBt-DA
Subject: [tboot-devel] [PATCH 1 of 3] make efi_memmap_reserve handle gaps
 like e820_protect_region already does
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
# Date 1634322959 18000
#      Fri Oct 15 13:35:59 2021 -0500
# Node ID 4eda9c0cf72d0fe0c217c251bdef2c5628e0c0a6
# Parent  5bf5c12411d3a4a7e0a552203b40bfe59d5c7789
make efi_memmap_reserve handle gaps like e820_protect_region already does

This revision corrects an inconsistency in the way efi_memmap_reserve
deals with requests that lie within a gap in the memory map.

In such cases, e820_protect_region() created a new range in the map,
however efi_memmap_reserve was doing nothing since its logic was
based on finding an overlapping range.

This revision makes efi_memmap_reserve add a new range.  Unlike
the e820 case, the EFI memory map have an "attributes" field as well
and it is somewhat ambigious how to define the attributes of a new map.
Since we are only using this for reserved ranges, the attributes are set to zero
for simplicity...

Signed-off-by: Alex Olson <alex.olson@starlab.io>

diff -r 5bf5c12411d3 -r 4eda9c0cf72d tboot/common/efi_memmap.c
--- a/tboot/common/efi_memmap.c	Wed Sep 15 16:53:34 2021 +0200
+++ b/tboot/common/efi_memmap.c	Fri Oct 15 13:35:59 2021 -0500
@@ -144,6 +144,8 @@
  * Region has to be aligned to page size, function will round non-aligned
  * values. Base address is rounded down, length - up.
  * 
+ * If the specified region lies within a gap, a new region will be added
+ *
  * @param base   starting address
  * @param length length of region to reserve
  */
@@ -164,6 +166,7 @@
     uint64_t end = base + length;
     efi_mem_descr_t* desc = NULL;
     uint32_t i = 0;
+    bool in_range = false;
 
     while ((desc = efi_memmap_walk(desc)) != NULL) {
         uint64_t desc_base = desc->physical_start;
@@ -185,6 +188,9 @@
             goto cont;
         }
 
+        /* In all cases below, the current range is involved */
+        in_range = true;
+
         /* case 1: the current ram range is within the range:
            base, desc_base, desc_end, end */
         if ((base <= desc_base) && (desc_end <= end)) {
@@ -250,6 +256,15 @@
         ++i;
     }
 
+    /* Insert the new region */
+    if ( !in_range ) {
+
+        desc = efi_memmap_walk(NULL);
+        if( !insert_after_region(0, base, length, EFI_RESERVED_TYPE, 0) ) {
+            return false;
+        }
+    }
+
     return true;
 }
 


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
