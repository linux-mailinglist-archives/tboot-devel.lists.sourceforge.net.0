Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 73A0E657021
	for <lists+tboot-devel@lfdr.de>; Tue, 27 Dec 2022 22:56:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1pAHw1-0002ZD-3L;
	Tue, 27 Dec 2022 21:56:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lukasz@hawrylko.pl>) id 1pAHvq-0002Yx-OU
 for tboot-devel@lists.sourceforge.net;
 Tue, 27 Dec 2022 21:56:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Pic++QnHcUQmq8JBZbV43FnOS1JGrqrTQd7mjnnNJJE=; b=SdLswqMc0At2uzU7j8dvXJbeww
 Usvcuh2B8sLoK4iT1JDPM1+Imr101GWySvw1jtpZyGsOhlq+J0zy2mduAoBa8QAvJs47d/l38wCcQ
 UPO+bkSCcH2nGelYkiLPnh+bJWf3IZno+/6wI6ODgeXbQPWdAuRYEELDvLRrtQ2mVuXo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Pic++QnHcUQmq8JBZbV43FnOS1JGrqrTQd7mjnnNJJE=; b=AbuOilzK/sC2V14dFZlFZojfCp
 /g22Urnot/ZZwGMo3vm/6TY6G6G5LxVJVoWFMqBZ8pt98cWH11ngSp0DMfVH34ALYGwGUMCHSUvvo
 nsqNIOt1S2vj6gcTUNz0w2zs+Zncyhb1gP1tB5xVIVY24g5jDLbZFBx7e2BMIqAt8VMg=;
Received: from hawrylko.pl ([54.37.138.145])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pAHvm-0005L6-KQ for tboot-devel@lists.sourceforge.net;
 Tue, 27 Dec 2022 21:56:22 +0000
Received: from shaman-lnx.home.arpa (apn-31-2-70-74.dynamic.gprs.plus.pl
 [31.2.70.74]) by hawrylko.pl (Postfix) with ESMTPSA id 0B2FA42B69;
 Tue, 27 Dec 2022 22:40:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=hawrylko.pl;
 s=201812; t=1672177220;
 bh=A2H3m++3XDQ8F+Sfr/fw820njyXbmwOyjESCipweNQ0=;
 h=Subject:From:To:Date:In-Reply-To:References:From;
 b=hMiWtkBPSIaRHc2oUSVQgaAP7JrjSEBQ05SInCRYeRu7inlBjGAS+Kgc6AJEENphF
 Zm9XV8fE6peshxKayYWD6Hkz0dLQd7G1BgngJbwpgL31rgN+ITDdFEBzzAFT408FE/
 qIf/QpKhTWWzxvkOM24pG6YjgdzDkx9Y4RbGylT9FULhbdi3ISZv+PJXtwLjFNYCdT
 CXJoPAbEYnUK+zuTQzqUKRaNWITB8Ez4r1nNR8J17DrDoxcXRfXOUGMuA69My3nokE
 uwYTo0rmrTxfXdKs7F2yx04uYrerGfn/qTr3Q1Xd+Y0XyDHNeIXj7os+NlgWba+PJJ
 +sOGCSbWrX/ZQ==
Message-ID: <0f5241a6e5db26c6c6d6a71f08bf1d6f3c7c1179.camel@hawrylko.pl>
To: Pawel Randzio <pawel.randzio@intel.com>, tboot-devel
 <tboot-devel@lists.sourceforge.net>
Date: Tue, 27 Dec 2022 22:40:19 +0100
In-Reply-To: <hg.b06289220ef8.1671721989.3207253666863992512@sfp-scm-5.v30.lw.sourceforge.com>
References: <hg.b06289220ef8.1671721989.3207253666863992512@sfp-scm-5.v30.lw.sourceforge.com>
User-Agent: Evolution 3.46.2-1 
MIME-Version: 1.0
X-Helo-Check: bad, Forged Random Domain (hawrylko.pl)
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Paweł On Thu, 2022-12-22 at 15:13 +0000, Pawel Randzio
    wrote: > changeset b06289220ef8 in /hg/p/tboot/code > details: http://hg.code.sf.net/p/tboot/code/code?cmd=changeset;node=b06289220ef8
    > description: > [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
X-Headers-End: 1pAHvm-0005L6-KQ
Subject: Re: [tboot-devel] [Tboot-changelog] changeset in code: Extend low
 memory range reserved for logs
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
From: =?UTF-8?Q?=C5=81ukasz_Hawry=C5=82ko?= via tboot-devel
 <tboot-devel@lists.sourceforge.net>
Reply-To: =?UTF-8?Q?=C5=81ukasz_Hawry=C5=82ko?= <lukasz@hawrylko.pl>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: tboot-devel-bounces@lists.sourceforge.net

SGkgUGF3ZcWCCgpPbiBUaHUsIDIwMjItMTItMjIgYXQgMTU6MTMgKzAwMDAsIFBhd2VsIFJhbmR6
aW8gd3JvdGU6Cj4gY2hhbmdlc2V0IGIwNjI4OTIyMGVmOCBpbiAvaGcvcC90Ym9vdC9jb2RlCj4g
ZGV0YWlsczogaHR0cDovL2hnLmNvZGUuc2YubmV0L3AvdGJvb3QvY29kZS9jb2RlP2NtZD1jaGFu
Z2VzZXQ7bm9kZT1iMDYyODkyMjBlZjgKPiBkZXNjcmlwdGlvbjoKPiAJRXh0ZW5kIGxvdyBtZW1v
cnkgcmFuZ2UgcmVzZXJ2ZWQgZm9yIGxvZ3MKPiAKPiAJU29tZSBwbGF0Zm9ybXMgd2l0aCBoaWdo
ZXIgY29yZSBjb3VudCBoYWQgdGhlIGlzc3VlIG9mIGxvZ3MKPiAJb3ZlcmZsb3dpbmcgdGhlIG1l
bW9yeSByYW5nZSByZXNlcnZlZCBmb3IgdGhlbSwgYW5kIHRodXMKPiAJb3ZlcndyaXRpbmcgdGhl
bXNlbHZlcywgbGVhdmluZyBqdXN0IGEgYml0IG9mIGxhc3QgbGluZXMKPiAJb2YgbG9ncyB0byBi
ZSBsYXRlciByZWFkLgo+IAo+IAlCZWZvcmUgcmFuZ2Ugd2FzIDMyS0IsIG5vdyBpdCBpcyAyMDBL
QiB3aGljaCBIT1BFRlVMTFkKPiAJd29uJ3QgbmVlZCBmdXJ0aGVyIGV4dGVuc2lvbnMKPiAKClRo
aXMgcGF0Y2ggYWRkcyBhdCBsZWFzdCB0d28gbWVtb3J5IG92ZXJsYXAgaXNzdWVzLgoKUmVhbCBt
b2RlIHBhcnQgb2YgTGludXgga2VybmVsIChhbmQgY21kbGluZSBhcmdzKSBoYXMgc3RhcnRpbmcg
YWRkcmVzcwpsaW1pdGVkIGluIFRCT09UIHRvIG1heCAweDkwMDAwLiBBZnRlciB0aGlzIHBhdGNo
LCBtZW1vcnkgYXNzaWduZWQgdG8KbG9ncyBvdmVybGFwcyB3aXRoIHRoaXMgYWRkcmVzcy4gSW4g
bXkgdGVzdGluZyBzeXN0ZW0gLSBpNS03MzAwVSwgTGludXgKa2VybmVsIGRvZXMgbm90IHN0YXJ0
IGFmdGVyIGFwcGx5aW5nIHRoZSBwYXRjaC4KClNlY29uZGx5LCBhZGRyZXNzIG9mIFRCT09UJ3Mg
UzMgd2FrZXVwIGhhbmRsZXIgaXMgaGFyZGNvZGVkIHRvIDB4OGEwMDAsCnRoYXQgYWxzbyBpcyBj
b3ZlcmVkIGJ5IHRoZSBuZXcgbG9ncyByZWdpb24uCgpJIGFtIG5vdCBYRU4gZXhwZXJ0LCBidXQg
dGhlcmUgaXMgYWxzbyBhIGNvbW1lbnQgaW4gY29uZmlnLmggdGhhdApzdWdnZXN0IHRoYXQgWEVO
IGhhcyBzb21lIHRyYW1wb2xpbmUgY29kZSBhdCAweDhjMDAwLCB0aGlzIG1heSBhbHNvCmNvbmZs
aWN0IHdpdGggbG9ncy4KCkFzIEkgc2FpZCwgbXkgdGVzdGluZyBzeXN0ZW0gZG9lcyBub3QgYm9v
dCB3aXRoIHRoaXMgcGF0Y2gsIEkgZXhwZWN0CnRoYXQgdGhpcyBpcyBub3QgdGhlIG9ubHkgb25l
LiBJIGRvbid0IGtub3cgdGhlIGV4YWN0IG1vdGl2YXRpb24gb24KZXhwYW5kaW5nIHNwYWNlIGZv
ciBsb2dzLCBidXQgeW91IHNob3VsZCBjb25zaWRlciB0byBkbyB0aGlzIGluIGFub3RoZXIKd2F5
LgoKVGhhbmtzLApMdWthc3oKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwp0Ym9vdC1kZXZlbCBtYWlsaW5nIGxpc3QKdGJvb3QtZGV2ZWxAbGlzdHMuc291
cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZv
L3Rib290LWRldmVsCg==
