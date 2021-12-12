Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 58251471777
	for <lists+tboot-devel@lfdr.de>; Sun, 12 Dec 2021 02:02:59 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1mwDGE-0005L4-7Z; Sun, 12 Dec 2021 01:02:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <lukasz@hawrylko.pl>) id 1mwDGC-0005Ky-Fu
 for tboot-devel@lists.sourceforge.net; Sun, 12 Dec 2021 01:02:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:From:Date:Message-Id:Subject:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mzZk8pTXOWgzXjhmA6EH/+hUw/V3tbNNEmYFwEdAFbU=; b=UWKBSonA6JO/NSJCrTwkJCNn5
 gohXjk/o0sXRh32FIyQScDk/Nl0fx0OCzUq3mfkSbGn4gL7FY20lqEumNmt6pNbwebebin3c7XDNP
 KdxRJDOgIJs1CP6SvGWK0o6hbXC2No3O7lEdMNQQ8R673+blp5pNkT20QuUc7ynfpXze0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:From:Date:Message-Id:Subject:Content-Transfer-Encoding:Content-Type:
 MIME-Version:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=mzZk8pTXOWgzXjhmA6EH/+hUw/V3tbNNEmYFwEdAFbU=; b=K
 W5wsSG7fRj2PkUR3YJoCWQ0hhC++XA4eMqVSq2yx70bzqTZiMgMA4NQ7Ra56bxcGNe99rf01bk3Jw
 7pnkoJ4ZJ2nt5TNYt2S9ej7YDX5+KJyhd+XPfA8z4ffD8vSocEoaaE1AG8tskIfBOqrs1aKrXhYEu
 CjC2nysIW7m9WwAY=;
Received: from hawrylko.pl ([54.37.138.145])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mwDG9-00CbF3-M2
 for tboot-devel@lists.sourceforge.net; Sun, 12 Dec 2021 01:02:41 +0000
Received: from shaman-lnx.home.arpa (apn-95-41-98-246.dynamic.gprs.plus.pl
 [95.41.98.246]) by hawrylko.pl (Postfix) with ESMTPSA id A127041B48
 for <tboot-devel@lists.sourceforge.net>; Sun, 12 Dec 2021 02:02:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=hawrylko.pl;
 s=201812; t=1639270949;
 bh=mzZk8pTXOWgzXjhmA6EH/+hUw/V3tbNNEmYFwEdAFbU=;
 h=Subject:Date:From:To:From;
 b=ESp425actw8GkRBPfIHUtoQypFVCnYTUC4E/mydA4S3d6rM8OvX2U3aDTf2GtE52P
 s3KP+2W2uYc1iB25PdGF9f7tbn1+gpj7fNEChktBPlf/1sniYkD9Rdalj2o8yV0s+T
 z2WCWQolYKCaSe9tlMEusmYHPtccZWKeGuB3voWbBvuP+1WF1b++7zWrKu2i//Xf0n
 bHIeBiEgwpXT3rZPv0Xe5n02JQWmpioPzdWggSfYMTqaNPg3pbYE7D4DRGKStS5XzH
 Y9mc/m1CbWOgKMnlYgHN666g0zodZi7/sX6eFkiVUP87gmSY+QXERIgjgr0AtBzgfs
 V9hb+z5bAzlCg==
MIME-Version: 1.0
X-Mercurial-Node: 8ab1cfa6301f1f892d7d8e82532c6609e136765c
X-Mercurial-Series-Index: 1
X-Mercurial-Series-Total: 1
Message-Id: <8ab1cfa6301f1f892d7d.1639270942@shaman-lnx.home.arpa>
X-Mercurial-Series-Id: <8ab1cfa6301f1f892d7d.1639270942@shaman-lnx.home.arpa>
User-Agent: Mercurial-patchbomb/5.9.3
Date: Sun, 12 Dec 2021 02:02:22 +0100
From: =?utf-8?b?xYF1a2FzeiBIYXdyecWCa28=?= <lukasz@hawrylko.pl>
To: tboot-devel@lists.sourceforge.net
X-Helo-Check: bad, Forged Random Domain (hawrylko.pl)
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  # HG changeset patch # User Łukasz Hawryłko <lukasz@hawrylko.pl>
    # Date 1639270553 -3600 # Sun Dec 12 01:55:53 2021 +0100 # Node ID 8ab1cfa6301f1f892d7d8e82532c6609e136765c
    # Parent 5a30b6b09e77844e [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
X-Headers-End: 1mwDG9-00CbF3-M2
Subject: [tboot-devel] [PATCH] Set GDT to map CS and DS to 4GB segments
 before jumping to Linux
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: tboot-devel-bounces@lists.sourceforge.net

IyBIRyBjaGFuZ2VzZXQgcGF0Y2gKIyBVc2VyIMWBdWthc3ogSGF3cnnFgmtvIDxsdWthc3pAaGF3
cnlsa28ucGw+CiMgRGF0ZSAxNjM5MjcwNTUzIC0zNjAwCiMgICAgICBTdW4gRGVjIDEyIDAxOjU1
OjUzIDIwMjEgKzAxMDAKIyBOb2RlIElEIDhhYjFjZmE2MzAxZjFmODkyZDdkOGU4MjUzMmM2NjA5
ZTEzNjc2NWMKIyBQYXJlbnQgIDVhMzBiNmIwOWU3Nzg0NGVhMjZlOTI5OGFjMzgxOWMzM2JjYTYx
N2IKU2V0IEdEVCB0byBtYXAgQ1MgYW5kIERTIHRvIDRHQiBzZWdtZW50cyBiZWZvcmUganVtcGlu
ZyB0byBMaW51eAoKVGhlcmUgd2FzIGFuIGlzc3VlIHRoYXQgVEJPT1QgY2FuIGNvcHkgTGludXgg
a2VybmVsIGJpbmFyeSB0byBhZGRyZXNzIG91dHNpZGUKb2YgbWVtb3J5IG1hcHBlZCBpbiBHVEQu
IElmIHRoaXMgaGFwcGVucywgcGxhdGZvcm0gd2lsbCByZXNldCB3aGVuIHRyeWluZyB0bwpqdW1w
IHRvIExpbnV4LiBJbiBvcmlnaW5hbCBpbXBsZW1lbnRhdGlvbiB0aGlzIGxpbWl0IHdhcyBzZXQg
dG8gMjU2TUIuCgpUbyBwcmV2ZW50IHRoYXQgc2l0dWF0aW9uLCB0aGlzIGNvbW1pdCBzZXRzIEdE
VCBzZWdtZW50cyB0byBjb3ZlciB3aG9sZSBtZW1vcnkKYmVsb3cgNEdCLgoKU2lnbmVkLW9mZi1i
eTogTHVrYXN6IEhhd3J5bGtvIDxsdWthc3pAaGF3cnlsa28ucGw+CgpkaWZmIC1yIDVhMzBiNmIw
OWU3NyAtciA4YWIxY2ZhNjMwMWYgdGJvb3QvY29tbW9uL2xpbnV4LmMKLS0tIGEvdGJvb3QvY29t
bW9uL2xpbnV4LmMJRnJpIERlYyAxMCAxNTozNTo0MiAyMDIxICswMTAwCisrKyBiL3Rib290L2Nv
bW1vbi9saW51eC5jCVN1biBEZWMgMTIgMDE6NTU6NTMgMjAyMSArMDEwMApAQCAtNDcxLDggKzQ3
MSw4IEBACiAgICAgc3RhdGljIGNvbnN0IHVpbnQ2NF90IGdkdF90YWJsZVtdIF9fYXR0cmlidXRl
X18gKChhbGlnbmVkKDE2KSkpID0gewogICAgICAgICAwLAogICAgICAgICAwLAotICAgICAgICAw
eDAwYzA5YjAwMDAwMGZmZmYsICAgICAvKiBjcyAqLwotICAgICAgICAweDAwYzA5MzAwMDAwMGZm
ZmYgICAgICAvKiBkcyAqLworICAgICAgICAweDAwY2Y5YjAwMDAwMGZmZmYsICAgICAvKiBjcyAq
LworICAgICAgICAweDAwY2Y5MzAwMDAwMGZmZmYgICAgICAvKiBkcyAqLwogICAgIH07CiAgICAg
LyogYm90aCA0RyBmbGF0LCBDUzogZXhlY3V0ZS9yZWFkLCBEUzogcmVhZC93cml0ZSAqLwogCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwp0Ym9vdC1kZXZl
bCBtYWlsaW5nIGxpc3QKdGJvb3QtZGV2ZWxAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8v
bGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Rib290LWRldmVsCg==
