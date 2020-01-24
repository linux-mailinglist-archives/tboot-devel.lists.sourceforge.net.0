Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AD826148B56
	for <lists+tboot-devel@lfdr.de>; Fri, 24 Jan 2020 16:35:10 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1iv0zA-0000cq-Hf; Fri, 24 Jan 2020 15:35:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <omgalvan.86@gmail.com>) id 1iv0z8-0000cd-Qj
 for tboot-devel@lists.sourceforge.net; Fri, 24 Jan 2020 15:35:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ai0zBRROs0t2j97oVHzw1H7bgxkHe9+vlP0hwAQq6Bc=; b=J732rZ6In2rO8jdQVKbIbOaRc1
 xnnknQE2PnWjpczeHqafcJVPQHHvlaM7jnwZ6xHMTO6SP3Ly7gBKTtZKK9KrkGG85l/dDSR8bf7Yb
 OQK6Ni4R9P/HBacUzNV9fpLdXyQX0FTepkQ04mDNFoAq7/dySPtm2yCoj9qo+9079JYk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ai0zBRROs0t2j97oVHzw1H7bgxkHe9+vlP0hwAQq6Bc=; b=F6IDgEMspdP3nFveSXLIwyGHGb
 AtdWkcM+Uznie8QrKg6o2k4WnEdwXk5r6ytVd+EVDQinzfWn+J1sKYe6CGoWo8vq004a8YFladoiS
 aNhTMNIEXW3IQ/jvUaNf6/Zzw2sYJgUKNXPbNrTLPZJgA2ePuiLGqcTg5adNGBfbQQsQ=;
Received: from mail-oi1-f179.google.com ([209.85.167.179])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iv0z7-00HClJ-EF
 for tboot-devel@lists.sourceforge.net; Fri, 24 Jan 2020 15:35:02 +0000
Received: by mail-oi1-f179.google.com with SMTP id 18so2181370oin.9
 for <tboot-devel@lists.sourceforge.net>; Fri, 24 Jan 2020 07:35:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ai0zBRROs0t2j97oVHzw1H7bgxkHe9+vlP0hwAQq6Bc=;
 b=c6RxP4JIMr3mHyxMIbiYVsyDxZxmJxJoYoExwL3KeD0MoD8SeHsZXbogRdm+cTqqY2
 n/5pQa3JYOetDQB67gW2EPpVYpBtFD6x7LCUtjy+6IMJSfNNNLmV5/BvewvTPiKVy9ab
 cvP0SsGQbiKBvuPuqRFuuddizufnhKcMhKayf/ApmdMB8cytg4CkCS3EhIR/Swnb/j4L
 Ct0pTEpOExfaG6sXH9TqXmwDn9svNs0Q+yipKFlALmYWGUmi9N4T/jb6SYt7V6EJLEYH
 Y4+1ups71xOAG+CZspuwYJrnb0yleLS7MHBTFmotYeEDH9WLx8EN/4gWOjAVrGVKOBom
 WXMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ai0zBRROs0t2j97oVHzw1H7bgxkHe9+vlP0hwAQq6Bc=;
 b=Vlbvoh+sO59HWO9PJun2ahEYiVZMOqevfTXF2gu4w3wROBWHj8apYbzM5OrqFTsZ7P
 zKbRdMssCkAsnCQi9VIdn1OWcyC4mYC/s1+nE6xEtZrsebP5/MtJ5E0HrWd3/T6J51vR
 Kzzvpmt/kSmSfczSPIpO6IEUSvFn6CUVFYNP7TtzibxgnbKICNAUztGb8CX0NsYmiZxe
 gZ2yf1wzKi5q0e8GLaPDYoWCwIoqvDAxGEUKOPVuthwWu3aNaFtpssGSDMSC0IklUmQx
 G4ZuliboPLkZlNGq+9PTKoVK1v49LIBbaXB4Ryd7KpuLysss0G4ZGM8UMLOZfISCvBBx
 0lWQ==
X-Gm-Message-State: APjAAAX7HJM4Uf+R6raIA7TCth+g1D1ttns1SokkobNqQv9DKJZ3GcSY
 pDVhifUPV8QBiTLA3z8ugY8AYcstJYeQBwvL0LEVcIr9
X-Google-Smtp-Source: APXvYqxgNLE+wZ6JknRm1alLjNbV1vmjmAXHckoi7g7aZPLjy10MC4uh+Oq0CpJyOCsD0wTZ5VZqSpcheJeQYUnxXi4=
X-Received: by 2002:aca:dc45:: with SMTP id t66mr2416569oig.39.1579880095616; 
 Fri, 24 Jan 2020 07:34:55 -0800 (PST)
MIME-Version: 1.0
References: <CAN19L9G6aATCT2gP_P_spwmK-pv+FBi30pLe0CXRyfFtNBXORw@mail.gmail.com>
 <e79098d128ee35f7c370ab7cb100e6c80d3546ed.camel@linux.intel.com>
 <CAN19L9HLhhsXRU-1h5HT33y-nQOsS+NyBN2PzqYZNAd-cZsp_Q@mail.gmail.com>
In-Reply-To: <CAN19L9HLhhsXRU-1h5HT33y-nQOsS+NyBN2PzqYZNAd-cZsp_Q@mail.gmail.com>
From: Martin Galvan <omgalvan.86@gmail.com>
Date: Fri, 24 Jan 2020 12:34:44 -0300
Message-ID: <CAN19L9HESgc2KMSsffTNRx_OZuT2f+bHX4Vfo6AG3P9=PgxQnQ@mail.gmail.com>
To: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (omgalvan.86[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.179 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.179 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (omgalvan.86[at]gmail.com)
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iv0z7-00HClJ-EF
Subject: Re: [tboot-devel] Confused about the TXT register values
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
Cc: tboot-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tboot-devel-bounces@lists.sourceforge.net

I just ran the same tool on a Supermicro system which I'm positive has
TXT, and am now seeing the following (with TXT disabled):

Intel(r) TXT Configuration Registers:
    STS: 0x00000002
        senter_done: FALSE
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
    DIDVID: 0x00000001b0028086
        vendor_id: 0x8086
        device_id: 0xb002
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
        2d 67 dd d7 5e f9 33 92 66 a5 6f 27 18 95 55 ae
        77 a2 b0 de 77 42 22 e5 de 24 8d be b8 e3 3d d7

***********************************************************
     TXT measured launch: FALSE
     secrets flag set: FALSE
***********************************************************
unable to find TBOOT log

The TXT.STS values make more sense now, though the PCH DID is still
incorrect. Is there a way to check whether TXT is enabled other than
looking at SINIT.BASE and HEAP.BASE?


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
