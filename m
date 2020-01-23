Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B0AB146FE8
	for <lists+tboot-devel@lfdr.de>; Thu, 23 Jan 2020 18:41:51 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1iugUC-0006ec-2L; Thu, 23 Jan 2020 17:41:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <omgalvan.86@gmail.com>) id 1iugUB-0006eQ-9x
 for tboot-devel@lists.sourceforge.net; Thu, 23 Jan 2020 17:41:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rHOIE5RYfOpJ+b1Z/jtW0YxAOr0VUfKa/Tt+KZSC+Yk=; b=iAwUJma8+GlZZccGCFpXBJaFYo
 bZqzZ/2PnrqEr0N2VCZq9Uev8sXl4t9iJZKcx69Ul8+Na7/mI65NKOI7ZHu52GBWsKNa8S0s7/czy
 +UQ6Gzahajw1qSEh0rgjpK1flTy+FwYAV2DZVMnmu4/Vf7A8vSmKmWUv/Ouo2QEq0WiA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=rHOIE5RYfOpJ+b1Z/jtW0YxAOr0VUfKa/Tt+KZSC+Yk=; b=c
 qIP38JGMqxIlLnOv0wZgHYj+45hhltc+ZRMm4OVU1YxVZsmiZY0tsE67gvPaCmvbbfDTxrmlsLWts
 KIn3JHU//W4bYWfxaQdgOpsWepyo3bIrbI11moHlqYon/5OQmInVTzx3t7FYVFK2FxjN1EKrxHCV2
 y3+6uUINRyZl0u3U=;
Received: from mail-ot1-f48.google.com ([209.85.210.48])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iugU9-002dm4-Ue
 for tboot-devel@lists.sourceforge.net; Thu, 23 Jan 2020 17:41:43 +0000
Received: by mail-ot1-f48.google.com with SMTP id r9so3494304otp.13
 for <tboot-devel@lists.sourceforge.net>; Thu, 23 Jan 2020 09:41:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=rHOIE5RYfOpJ+b1Z/jtW0YxAOr0VUfKa/Tt+KZSC+Yk=;
 b=q104mqOYgnNVU6ZxzWMNQq8NVw8UUe3AbB79t9ReBWKEHg7RX711SfozTE9fMmAozI
 aaKX1atCw1kd6vQhMnD21b/IynXtpG5vTxUEfOWDHpyV1oEDKD1gEKnsymghLxKhmy09
 wUBiYCCcWuaOz2964Iz31oDaWBKm8VJFXMfQkaECBib9xdjMi3ik1tvew17/S93oJEUQ
 iObbMQ4hs4S+qyCaX3p/5lfdXDYlyqkcr0yXhLZt+19U/bkEVjG515Xqy4OT/5JXZmHu
 FBUwF8fHJuEH6MSPdeS0YAkyLKtk/cgjXL3McnT7wyizxBX99TLZigcXGXnJ+8/5gmzp
 Ttcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=rHOIE5RYfOpJ+b1Z/jtW0YxAOr0VUfKa/Tt+KZSC+Yk=;
 b=O3LyFtR1j8WJGUl9V8T3JOh/V+O6OldfNGfA9aGdkju07NtIBVr3xNkTDlhAQIUWI4
 XgoZN0kuPHwzI9/FWBX6omlRUtfOpRLUElw6SA2H/fVlaLQl/MGxQi2LPPaJRqZtNxSf
 TY5d0/eCMuAuL+2iKuPIyfynfwOVvd0djbAqGJk0oKa7F+Ifemo5U7U8K8Htp0JWfUq2
 wb/yHNP/hNuPiJ/qwwp7RleJQ5arQ73bk66pDts7WhzAMMOJm9N1etAUu3m9VNvcM64G
 LMG2ZQm70N1/Z0QNs5otHTRxTyxKzZE9iBti7M4aWV6ti156ph9GXFla83ttW6io4jC5
 Z4ng==
X-Gm-Message-State: APjAAAUHzj6RkhsZ4mxcAipIiFDQrHLjAmXowyQXygtwOI/5ucfetgR6
 e5Ld5bfYeAVhJprTA2n8FihNOZ8/r6Iu+n3BSjGiCPEd
X-Google-Smtp-Source: APXvYqy76H7iwiees3qgFNBIBCj3v3DyLQgQEAsr9T7dDaVMudHh0Bt4Bm/m1Sx3CU2PGMAZ7WxIr9tCdsOHqrB7YdI=
X-Received: by 2002:a9d:4789:: with SMTP id b9mr9079780otf.277.1579801295843; 
 Thu, 23 Jan 2020 09:41:35 -0800 (PST)
MIME-Version: 1.0
From: Martin Galvan <omgalvan.86@gmail.com>
Date: Thu, 23 Jan 2020 14:41:24 -0300
Message-ID: <CAN19L9G6aATCT2gP_P_spwmK-pv+FBi30pLe0CXRyfFtNBXORw@mail.gmail.com>
To: tboot-devel@lists.sourceforge.net
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.48 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (omgalvan.86[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.48 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (omgalvan.86[at]gmail.com)
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iugU9-002dm4-Ue
Subject: [tboot-devel] Confused about the TXT register values
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

Hi all,

I just ran txt-stat on a system which has an IceLake CPU and a 495
Series PCH, and am seeing the following output:

Intel(r) TXT Configuration Registers:
    STS: 0x00000003
        senter_done: TRUE
        sexit_done: TRUE
        mem_config_lock: FALSE
        private_open: FALSE
        locality_1_open: FALSE
        locality_2_open: FALSE
    ESTS: 0x00
        txt_reset: FALSE
    E2STS: 0x0000000000000004
        secrets: FALSE
    ERRORCODE: 0x00000000
    DIDVID: 0x00000001b00a8086
        vendor_id: 0x8086
        device_id: 0xb00a
        revision_id: 0x1
    FSBIF: 0xffffffffffffffff
    QPIIF: 0x000000009d003000
    SINIT.BASE: 0x00000000
    SINIT.SIZE: 0B (0x0)
    HEAP.BASE: 0x00000000
    HEAP.SIZE: 0B (0x0)
    DPR: 0x0000000000000000
        lock: FALSE
        top: 0x00000000
        size: 0MB (0B)
    PUBLIC.KEY:
        87 9a 8f 9c bf 9e 3d 1d 12 dc 9a d7 6d de 34 e6
        aa 40 36 64 c7 39 db 34 7b 85 8f 0b e0 33 ae 3a

***********************************************************
     TXT measured launch: TRUE
     secrets flag set: FALSE
***********************************************************
unable to find TBOOT log

I'm seeing that the SENTER.DONE.STS and SEXIT.DONE.STS bits are both
set. If I understood right, this doesn't make sense since they signal
whether all the threads are running the code within the MLE or not
(I'm not running an MLE here). In addition, the DID reported by
TXT.DIDVID doesn't match that of my PCH (which is 0x3482). Am I doing
something wrong here?


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
