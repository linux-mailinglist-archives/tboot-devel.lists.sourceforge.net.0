Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AFCD37006E3
	for <lists+tboot-devel@lfdr.de>; Fri, 12 May 2023 13:33:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1pxR1b-0002la-Ms;
	Fri, 12 May 2023 11:33:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lixiaoyi13691419520@gmail.com>) id 1pwVdF-0003Fl-D5
 for tboot-devel@lists.sourceforge.net;
 Tue, 09 May 2023 22:16:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lfLm5cL6jmX98ncghkRN2srZzW5w0nEt8rZVGcbisNo=; b=Elh5MuFcvxhGVOGmfdjVRkmMR5
 TFZpiwQGPkYi/+fDlYWkPitiNFVXL7DMnAQjeU7Hqdn58cBfaJC1uIKAOKXVYzh0N/WcmMf2rrcnM
 OhYT6PBpKWGVsqgRjvcl51CUL93XglNDwbX10eCxiIn7tI8izoawFanHorjm2vYhGVm0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=lfLm5cL6jmX98ncghkRN2srZzW5w0nEt8rZVGcbisNo=; b=g
 XfU9rXOMuBAU3w1aylrTMDtiZEsujqzLkwU8VMgwQPSnmK04nXT7xQ3aTy6Oq1Wy57Py9D2T9bcM/
 ub7KbE7VHZVZP92n1nfM7+deBwwRdgGpkCwbwUQ7FVA53/ptsmOBY9bIcZb/4WVDcJp2FisipdDaA
 4guZ6AIwcalRAVbQ=;
Received: from mail-ed1-f52.google.com ([209.85.208.52])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pwVdE-001V2h-RN for tboot-devel@lists.sourceforge.net;
 Tue, 09 May 2023 22:16:29 +0000
Received: by mail-ed1-f52.google.com with SMTP id
 4fb4d7f45d1cf-50bd875398dso9949117a12.1
 for <tboot-devel@lists.sourceforge.net>; Tue, 09 May 2023 15:16:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1683670582; x=1686262582;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=lfLm5cL6jmX98ncghkRN2srZzW5w0nEt8rZVGcbisNo=;
 b=kjGWq4mic1J2v19h7b7KgdGnF7gfCKvNZoNNOo47bn/rm5IWqLXZS6sE+3RtT4/4nc
 ExgBVk13H0nwIMigyiRritglwRPEhBy8wB26/59EFc8xTaYOS5xW+6Cb8yZLroR4K1nM
 h9m/sZFjHbwys+6fc55/gjuwK8xoD5ifv/bt+AzdNmbU499I5U4nIXp9iYm8SYBYxk7L
 P3Lue51miIrp8llGBtRorLuzAjQ/K/D6IMKIk0HzFWxz60cuoMyOFrvcNoPVlE9vqF/N
 06NTyJt0iAS3BhcbSn+u75Osczqu15eRY+/JSZAe8bN1V+68Zv6OGk2uSdPGpXKV5nUb
 lzSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683670582; x=1686262582;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=lfLm5cL6jmX98ncghkRN2srZzW5w0nEt8rZVGcbisNo=;
 b=QtljZXiVGeUopxEoieStvpisPMbZ9rRq1v+HLvhkUj/lmNnS/Ou6zmDDkY3lSqCULZ
 CPlB81MC8krMxKs7WOQweXiwwAWHlfwiKcWP1Ibcc2AR7eeQ+UfOeVJAeNtNH3xC6/Pp
 nRvZTZUHq9Ywep6bphHAMvkLnVzm4fXb9Fuer8AnOl7JS1MrsZqrRIS5M5o5dGZM9+60
 JYNOCJ8S9YSDhz2w7g+wAjSddrrvb7F3EWLlwIvkCI6mV0TZzNx9H18nfULV2AWXsMMu
 Znjt2FDsf6FpHxViawDz7/AHxnKjvRF1FLli/o1EkX4rqTWuolkWtoOnZZBfe7sjNaYh
 p39g==
X-Gm-Message-State: AC+VfDyku7YAlmzHd+iCPmKBWW2iqYAXPP4SP//PQEZg3tPXBBAmC/he
 ZL/Ns7DORp4CgIZxnF73TKZSsw1d/4tKPZC8JuMJ38CQ3GKDvg==
X-Google-Smtp-Source: ACHHUZ5Y09iZXl6OzaMUoGf1yAJevgJDPiIm5g5NihLvqXb69iz3AIa4ZJucv2EjnD+TzgR9Bt0wwC2PEcW7c95dZ+8=
X-Received: by 2002:aa7:d3d0:0:b0:50d:ba93:be51 with SMTP id
 o16-20020aa7d3d0000000b0050dba93be51mr2588216edr.26.1683670582051; Tue, 09
 May 2023 15:16:22 -0700 (PDT)
MIME-Version: 1.0
From: Eric Li <lixiaoyi13691419520@gmail.com>
Date: Tue, 9 May 2023 18:16:11 -0400
Message-ID: <CAEyL3im5+tJJa7qwdZEjrDO_i0FsjVzLYuGEHGdgBuUtpubysQ@mail.gmail.com>
To: tboot-devel@lists.sourceforge.net
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  I recently found that in tboot/include/txt/heap.h,
 os_mle_data_t
 defines saved_misc_enable_msr with type uint32_t. However, MSRs contain 64
 bits, so uint64_t should be used. The consequence of this bu [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 HK_RANDOM_ENVFROM      Envelope sender username looks random
 0.0 FROM_LOCAL_DIGITS      From: localpart has long digit sequence
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 HK_RANDOM_FROM         From username looks random
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lixiaoyi13691419520[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [lixiaoyi13691419520[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.52 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.52 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1pwVdE-001V2h-RN
X-Mailman-Approved-At: Fri, 12 May 2023 11:33:26 +0000
Subject: [tboot-devel] Bug report: integer truncation in
 saved_misc_enable_msr
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

I recently found that in tboot/include/txt/heap.h, os_mle_data_t
defines saved_misc_enable_msr with type uint32_t. However, MSRs
contain 64 bits, so uint64_t should be used. The consequence of this
bug is that in tboot/txt/txt.c, "os_mle_data->saved_misc_enable_msr =
rdmsr(MSR_IA32_MISC_ENABLE);" results in integer truncation.

On my machine (Dell 7050 with Intel(R) Core(TM) i5-7600 CPU @
3.50GHz), I see that IA32_MISC_ENABLE before SENTER is 0x4000840089.
However, IA32_MISC_ENABLE after SENTER is restored to 0x840089, where
the 34th bit is lost.

This bug appears in tboot-1.11.1, it also appears in the latest
version on sourceforge:
https://sourceforge.net/p/tboot/code/ci/20d511/tree/tboot/include/txt/heap.h#l288

Could you please fix this bug in tboot? Thank you.


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
