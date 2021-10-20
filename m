Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 13DD8434F14
	for <lists+tboot-devel@lfdr.de>; Wed, 20 Oct 2021 17:31:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1mdDZ0-0001DW-0k; Wed, 20 Oct 2021 15:31:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <this.is.a0lson@gmail.com>) id 1mdDYy-0001D7-T8
 for tboot-devel@lists.sourceforge.net; Wed, 20 Oct 2021 15:31:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:Date:Message-Id:Subject:
 Content-Transfer-Encoding:Content-Type:MIME-Version:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4Yv2vVbUvbSY6dmqoM6nVzWCpbOdkZEEoOHdzRrdg6Q=; b=M2Cn3jlxj6V5mRYKblrULDzzX
 TkeCDzkIBNBnpEYQuIU3RpZuKZ4SUcJh/iDmxrLlLx7QBq27siI1yLDVC7eZHaAtcfCpsoFWONQ7a
 FYUwku+5EuZMvnA28jYtoRPJsriiEyd1b6ATeTjnv3LmFszrHHRiJVL5EcuPAeMIkeb2o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:Date:Message-Id:Subject:Content-Transfer-Encoding:Content-Type:
 MIME-Version:From:Sender:Reply-To:Cc:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4Yv2vVbUvbSY6dmqoM6nVzWCpbOdkZEEoOHdzRrdg6Q=; b=ZV/EOTaOnksGPjZoUjOlSiQrPc
 gWcYkw7erGqRu79aI2VNwWecz9c0Lb0lcbvNFI/pSHuI6nFgYj5ukjvvmOp4dJ5meS2ntfyXcng22
 dVviKOKd5p6FNXvp7CVLDqw9uWB1eM0+uDsJQKmvzYqPo6T5RZB1G+/T1j3ko0vNjkXc=;
Received: from mail-qv1-f48.google.com ([209.85.219.48])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mdDYt-0001T4-Od
 for tboot-devel@lists.sourceforge.net; Wed, 20 Oct 2021 15:31:32 +0000
Received: by mail-qv1-f48.google.com with SMTP id a16so2297704qvm.2
 for <tboot-devel@lists.sourceforge.net>; Wed, 20 Oct 2021 08:31:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:mime-version:content-transfer-encoding:subject:message-id
 :user-agent:date:to;
 bh=4Yv2vVbUvbSY6dmqoM6nVzWCpbOdkZEEoOHdzRrdg6Q=;
 b=nAVywqPhOXY2weQtzSbTVaMeC+Ttddmu8zYUSshvwx1s6OpB8/ImyGuPhybOeG/wfs
 /KSUhvhhW0DolMxeKo6ASsZN8WcDhrcbOWrlpprcPfL7ECtKlW7n/weSzraolEry02a0
 m7BqvLU3HNlDmYrUl/P54RuacbRm0waPdt49+Q1Em8R719gk4NCsGAzz4lN8CxoKmsII
 X6g5nG3XPWsU+k8ebvMQmp44kb8a3c68fiHSTgon3JkCpz2gJ3805izf1SR2uN63qMT6
 +O2reFOuUyBUjPCAHC4IiXI0wefD+Gu6RoD+z0COIEiIEDMIKjm/1PA2bREHNX2mb8Uq
 pOyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:mime-version:content-transfer-encoding
 :subject:message-id:user-agent:date:to;
 bh=4Yv2vVbUvbSY6dmqoM6nVzWCpbOdkZEEoOHdzRrdg6Q=;
 b=r3NLvb5cORDFyJeKe3zzL/pvF3mNL+BzPLhbkuRhEntg6qlBJ6KGY2Udmd9RWhYoIG
 4KoWOJFrWXuxKjZjtJGquApKvDdFYuACDU56Ii7TfV/4tvHxNHPMSsrLSE9BJJfun2rn
 N9buYq5g1KHNrOOP+ukGIuBS9msP3wBuLFixYCDb5pq2xh563MmZPJV5MRwqy01PUb9A
 jgvtpfFRJLUXuaWQCYLyvu/nsp19HjuXWZaXKbbIVH3pbVGyhGIsCin55ia4663Mbqb0
 iGoY5JrCFXtt9VFIjxpDy+wqA2H7IVwFMSRxMb3qt4TnSy/4cIOWKfiZlUQBS2d2lgw+
 EvUQ==
X-Gm-Message-State: AOAM531HF7fheJjkKoYjUv3xG0E+QzuYU7VpC9Ku8emdp23tSJvzGk6n
 BuAa8goclMiug2y+RGIVdo05vIAYe+I=
X-Google-Smtp-Source: ABdhPJzSP37oQiKuxQpYonnGI207oNd6ivRuaTt18HFRCS14sdceBvzo5ODF2SyC7Rx58pe61TGHXA==
X-Received: by 2002:ad4:45ed:: with SMTP id q13mr50353qvu.7.1634743881651;
 Wed, 20 Oct 2021 08:31:21 -0700 (PDT)
Received: from development ([24.214.236.228])
 by smtp.gmail.com with ESMTPSA id z30sm1096496qtm.55.2021.10.20.08.31.19
 for <tboot-devel@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Oct 2021 08:31:21 -0700 (PDT)
From: alex <this.is.a0lson@gmail.com>
X-Google-Original-From: "alex" <alex@development>
Received: by development (sSMTP sendmail emulation);
 Wed, 20 Oct 2021 10:31:18 -0500
MIME-Version: 1.0
Message-Id: <patchbomb.1634743878@development>
User-Agent: Mercurial-patchbomb/5.3.1
Date: Wed, 20 Oct 2021 10:31:18 -0500
To: tboot-devel@lists.sourceforge.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: These patches allow tboot to boot an OS kernel/VMM using
 Multiboot2
 with a proper EFI Memory map. This is relevant to booting a non-Linux OS,
 such as Xen. Issues fixed: - The EFI-related code for marking reserved memory
 ranges did not create a new range if the requested range was outside all
 existing ranges. (This was different behavior than the related code for hand
 [...] Content analysis details:   (-0.2 points, 6.0 required)
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
X-Headers-End: 1mdDYt-0001T4-Od
Subject: [tboot-devel] [PATCH 0 of 3] Use correct EFI memory map for
 Multiboot2 booting
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

These patches allow tboot to boot an OS kernel/VMM using
Multiboot2 with a proper EFI Memory map.  This is relevant to booting
a non-Linux OS, such as Xen.

Issues fixed:

- The EFI-related code for marking reserved memory ranges did not create
  a new range if the requested range was outside all existing ranges.
  (This was different behavior than the related code for handling the E820 memory map)

- Although tboot previously updated its internal copy of the EFI Memory Map,
  the EFI Memory map used for Multiboot2 booting of the OS kernel/VMM was the original,
  lacking tboot's updates to it.

- There was no safeguard that prevented tboot's updated Multiboot2 content from
  overflowing the original area used for such.


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
