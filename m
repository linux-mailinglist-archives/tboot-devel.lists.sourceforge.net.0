Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CFC6D4E48C3
	for <lists+tboot-devel@lfdr.de>; Tue, 22 Mar 2022 22:59:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1nWmXg-00062M-Aq; Tue, 22 Mar 2022 21:59:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <lukasz@hawrylko.pl>) id 1nWmXe-00062G-Us
 for tboot-devel@lists.sourceforge.net; Tue, 22 Mar 2022 21:59:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:References:In-Reply-To:
 Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SOkgIWu+CZn5Ksy1wwJyWhtaiLJka/smm8kSlMQCS/Y=; b=FeMfYKqrPMenkf4nAkXsbS69Et
 hnbxH2zrjSo2jRVjedVfzD55sUg2rNqj2a69JeDeb6Q6DDdTraFdvHx3iUH56OaS/IPRmt3JrmD1i
 TMngpKZMn3DOJyCOZPNVWHuFBm1D8Wzh/D/NDAZPaMTAYUj7tF0Q8xg3U0Xt7JQNz/b8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:
 Message-ID:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SOkgIWu+CZn5Ksy1wwJyWhtaiLJka/smm8kSlMQCS/Y=; b=Qa0Uz3DlWSuFOa3BCOtSLDNCqH
 SWgSnpPefaQdLFyyQo+/Q1gZ+5JpMLNju/k/GfTI7Imkvt43kDe9VpWJ90cOS0YB7AGE+hmttDLdh
 JXMy4kFqzvSj+c/ksqRYcmjnrcRGfb5OraHgsEcNSuR6NIcCPka/RNxtjgSsHzXPyk4U=;
Received: from hawrylko.pl ([54.37.138.145])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nWmXa-008tol-JP
 for tboot-devel@lists.sourceforge.net; Tue, 22 Mar 2022 21:59:49 +0000
Received: from shaman-lnx.local (apn-31-1-82-131.dynamic.gprs.plus.pl
 [31.1.82.131]) by hawrylko.pl (Postfix) with ESMTPSA id 662C943679;
 Tue, 22 Mar 2022 22:59:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=hawrylko.pl;
 s=201812; t=1647986365;
 bh=r04r2Fh+UniUT9ZBE/qvgVbmHFz8h1+k5uXFGP7NIwA=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=DXEAf8clIrnU3MY5gm11iBqWzY5iPv2Cz0sSuW4fYoA9zEl/Ewvt3WSXTXhJK6Xn7
 xuWwM3qdt+n+rz5bAZkbYOoSPUpJKo5qFS/xSjWt/JLvzgiHfT6yFicDMb+YTmLNrh
 CZw25sI+45YXnhS+9I/GsdRxRPtuqBchzQPPodxenA5h+QSFfBx5tcOxgXUhdzzEVP
 GBfj5fVQ6P2FO7VKqlAYlYvfok+izlLGlU9MokIz4nLeQtgODcJ8v6pENLvYfuI0mU
 yf3nMzNu/NVSaWCU9HeEtWGr//Ow/wzCQErXSfTpaLbFiS5/u6L3S6FAzbNpgazXtv
 bFP1NYWPs058A==
Message-ID: <31ae0c949efdc5698b075920af53c63f1cd1ce83.camel@hawrylko.pl>
To: Timo Lindfors <timo.lindfors@iki.fi>
Date: Tue, 22 Mar 2022 22:59:24 +0100
In-Reply-To: <alpine.DEB.2.20.2203120933010.25337@mail.home>
References: <alpine.DEB.2.20.2203110900580.24286@mail.home>
 <6981e56e786ff0c7e9ebe67cd7465bcb0c87a4e1.camel@hawrylko.pl>
 <alpine.DEB.2.20.2203111121420.24510@mail.home>
 <47436efda1c61ed2c5267dad2347a0a7859375f0.camel@hawrylko.pl>
 <alpine.DEB.2.20.2203120933010.25337@mail.home>
Content-Type: multipart/mixed; boundary="=-3E5ruY3s94P2EUNDVe9+"
User-Agent: Evolution 3.43.2-2 
MIME-Version: 1.0
X-Helo-Check: bad, Forged Random Domain (hawrylko.pl)
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Sat, 2022-03-12 at 09:34 +0200, Timo Lindfors wrote: >
   On Fri, 11 Mar 2022, Łukasz Hawryłko wrote: > > I see that you have quite
    complex environment for testing tboot, if I > > find my old GRUB p [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nWmXa-008tol-JP
Subject: Re: [tboot-devel] status of the grub patch to support multiple
 SINIT modules?
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
Cc: tboot-devel@lists.sourceforge.net
Errors-To: tboot-devel-bounces@lists.sourceforge.net

--=-3E5ruY3s94P2EUNDVe9+
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, 2022-03-12 at 09:34 +0200, Timo Lindfors wrote:
> On Fri, 11 Mar 2022, =C5=81ukasz Hawry=C5=82ko wrote:
> > I see that you have quite complex environment for testing tboot, if I
> > find my old GRUB patch and prepare patch for tboot that combined should
> > fix the issue, will you be able to run tests?
>=20
> Yes, I'm happy to run tests :)

I am attaching two patches:

GRUB:
multiboot2__Implement_the_new_module_load_and_preferences_tag.patch

tboot:
Use_multiboot2_module_load_preference_tag.patch

On my test platform they fix the issue. Please check how they work on
your environment.

Thanks,
Lukasz

--=-3E5ruY3s94P2EUNDVe9+
Content-Disposition: attachment;
	filename*0=multiboot2__Implement_the_new_module_load_and_preferences_tag;
	filename*1=.patch
Content-Type: text/x-patch;
	name*0=multiboot2__Implement_the_new_module_load_and_preferences_tag.pat;
	name*1=ch; charset="UTF-8"
Content-Transfer-Encoding: base64

IyBIRyBjaGFuZ2VzZXQgcGF0Y2gKIyBVc2VyIFppZGUgQ2hlbiA8emlkZS5jaGVuQGludGVsLmNv
bT4KIyBEYXRlIDE2MjkxMDgxNzIgLTcyMDAKIyAgICAgIE1vbiBBdWcgMTYgMTI6MDI6NTIgMjAy
MSArMDIwMAojIE5vZGUgSUQgZTc3NDY1MWE1OGY0OGU2ZjgxNmM1NWVkNGJmMDc2MDQzYWExMmE3
OAojIFBhcmVudCAgMzBjMGMyYWU1MTY3YmNiZmI4NjdkNmEzNWIyMjk1NjYyMTE3ZmNhYQptdWx0
aWJvb3QyOiBJbXBsZW1lbnQgdGhlIG5ldyBtb2R1bGUgbG9hZCBhbmQgcHJlZmVyZW5jZXMgdGFn
CkluIGNvbnRyYXN0IHRvIE11bGl0Ym9vdCwgaW4gTXVsaXRib290MiwgdGhlcmUgaXMgY3VycmVu
dGx5IG5vIHdheSB0bwpjb250cm9sIHdoZXJlIHRvIGxvYWQgdGhlIG1vZHVsZXMgdG8uIFRoaXMg
Y291bGQgYmUgYSBwcm9ibGVtLCBlLmcuLCB0aGUKT1MgbG9hZGVkIGJ5IE11bHRpYm9vdDIgbmVl
ZHMgdG8gcmVzZXJ2ZSBsb3cgYWRkcmVzcyBmb3Igc29tZSBwYXJ0aWN1bGFyCnB1cnBvc2VzIGFu
ZCBub3QgZm9yIGxvYWRpbmcgbW9kdWxlcy4KClRoaXMgbmV3IHRhZyBnaXZlcyBpdCBmbGV4aWJp
bGl0eSB0byBjb250cm9sIHRoZSBtb2R1bGVzIGxvYWQgYWRkcmVzc2VzLAp3aGljaCBpcyBpbmRl
cGVuZGVudCB0byB3aGV0aGVyIHRoZSBrZXJuZWwgcmVsb2NhdGFibGUgdGFnIGlzIHByZXNlbnQg
b3IKbm90LgoKU2lnbmVkLW9mZi1ieTogWmlkZSBDaGVuIDx6aWRlLmNoZW5AaW50ZWwuY29tPgpT
aWduZWQtb2ZmLWJ5OiBMdWthc3ogSGF3cnlsa28gPGx1a2FzekBoYXdyeWxrby5wbD4KCmRpZmYg
LXIgMzBjMGMyYWU1MTY3IC1yIGU3NzQ2NTFhNThmNCBncnViLWNvcmUvbG9hZGVyL211bHRpYm9v
dC5jCi0tLSBhL2dydWItY29yZS9sb2FkZXIvbXVsdGlib290LmMJV2VkIE1hciAwOSAxNTozMTo1
MSAyMDIyIC0wNTAwCisrKyBiL2dydWItY29yZS9sb2FkZXIvbXVsdGlib290LmMJTW9uIEF1ZyAx
NiAxMjowMjo1MiAyMDIxICswMjAwCkBAIC0zNjMsMTIgKzM2MywxNCBAQAogCQkgaW50IGFyZ2Ms
IGNoYXIgKmFyZ3ZbXSkKIHsKICAgZ3J1Yl9maWxlX3QgZmlsZSA9IDA7Ci0gIGdydWJfc3NpemVf
dCBzaXplOworICBncnViX3NpemVfdCBzaXplOwogICB2b2lkICptb2R1bGUgPSBOVUxMOwogICBn
cnViX2FkZHJfdCB0YXJnZXQ7CiAgIGdydWJfZXJyX3QgZXJyOwogICBpbnQgbm91bnppcCA9IDA7
Ci0gIGdydWJfdWludDY0X3QgbG93ZXN0X2FkZHIgPSAwOworICBncnViX3VpbnQ2NF90IGxvd2Vz
dF9hZGRyID0gMCwgbWF4X2FkZHI7CisgIGdydWJfc2l6ZV90IGFsaWduID0gTVVMVElCT09UX01P
RF9BTElHTjsKKyAgaW50IHByZWZlcmVuY2UgPSBHUlVCX1JFTE9DQVRPUl9QUkVGRVJFTkNFX05P
TkU7CiAKICAgaWYgKGFyZ2MgPT0gMCkKICAgICByZXR1cm4gZ3J1Yl9lcnJvciAoR1JVQl9FUlJf
QkFEX0FSR1VNRU5ULCBOXygiZmlsZW5hbWUgZXhwZWN0ZWQiKSk7CkBAIC00MDEsMTEgKzQwMywz
MSBAQAogICBzaXplID0gZ3J1Yl9maWxlX3NpemUgKGZpbGUpOwogICBpZiAoc2l6ZSkKICAgewor
ICAgIG1heF9hZGRyID0gVVBfVE9fVE9QMzIgKHNpemUpOworCisjaWZkZWYgR1JVQl9VU0VfTVVM
VElCT09UMgorICAgIGlmIChncnViX211bHRpYm9vdDJfbWxwLnJlbG9jYXRhYmxlKQorICAgICAg
eworICAgICAgICBsb3dlc3RfYWRkciA9IGdydWJfbXVsdGlib290Ml9tbHAubWluX2FkZHI7Cisg
ICAgICAgIG1heF9hZGRyID0gZ3J1Yl9tdWx0aWJvb3QyX21scC5tYXhfYWRkcjsKKyAgICAgICAg
cHJlZmVyZW5jZSA9IGdydWJfbXVsdGlib290Ml9tbHAucHJlZmVyZW5jZTsKKworICAgICAgICBp
ZiAoZ3J1Yl9tdWx0aWJvb3QyX21scC5hbGlnbikKKyAgICAgICAgICBhbGlnbiA9IGdydWJfbWF4
IChncnViX211bHRpYm9vdDJfbWxwLmFsaWduLCBhbGlnbik7CisKKyAgICAgICAgaWYgKHNpemUg
PiBtYXhfYWRkciB8fCBsb3dlc3RfYWRkciA+IG1heF9hZGRyIC0gc2l6ZSkKKyAgICAgICAgICB7
CisgICAgICAgICAgICBncnViX2ZpbGVfY2xvc2UgKGZpbGUpOworICAgICAgICAgICAgcmV0dXJu
IGdydWJfZXJyb3IgKEdSVUJfRVJSX0JBRF9BUkdVTUVOVCwgImludmFsaWQgbWluL21heCBhZGRy
ZXNzIGFuZC9vciBsb2FkIHNpemUgZm9yIG1vZHVsZXMiKTsKKyAgICAgICAgICB9CisgICAgICB9
CisjZW5kaWYKKwogICAgIGdydWJfcmVsb2NhdG9yX2NodW5rX3QgY2g7CiAgICAgZXJyID0gZ3J1
Yl9yZWxvY2F0b3JfYWxsb2NfY2h1bmtfYWxpZ24gKEdSVUJfTVVMVElCT09UIChyZWxvY2F0b3Ip
LCAmY2gsCi0JCQkJCSAgICBsb3dlc3RfYWRkciwgVVBfVE9fVE9QMzIgKHNpemUpLAotCQkJCQkg
ICAgc2l6ZSwgTVVMVElCT09UX01PRF9BTElHTiwKLQkJCQkJICAgIEdSVUJfUkVMT0NBVE9SX1BS
RUZFUkVOQ0VfTk9ORSwgMSk7CisJCQkJCSAgICBsb3dlc3RfYWRkciwgbWF4X2FkZHIsCisJCQkJ
CSAgICBzaXplLCBhbGlnbiwKKwkJCQkJICAgIHByZWZlcmVuY2UsIDEpOwogICAgIGlmIChlcnIp
CiAgICAgICB7CiAJZ3J1Yl9maWxlX2Nsb3NlIChmaWxlKTsKQEAgLTQyNyw3ICs0NDksNyBAQAog
ICAgICAgcmV0dXJuIGVycjsKICAgICB9CiAKLSAgaWYgKHNpemUgJiYgZ3J1Yl9maWxlX3JlYWQg
KGZpbGUsIG1vZHVsZSwgc2l6ZSkgIT0gc2l6ZSkKKyAgaWYgKHNpemUgJiYgZ3J1Yl9maWxlX3Jl
YWQgKGZpbGUsIG1vZHVsZSwgc2l6ZSkgIT0gKGdydWJfc3NpemVfdClzaXplKQogICAgIHsKICAg
ICAgIGdydWJfZmlsZV9jbG9zZSAoZmlsZSk7CiAgICAgICBpZiAoIWdydWJfZXJybm8pCmRpZmYg
LXIgMzBjMGMyYWU1MTY3IC1yIGU3NzQ2NTFhNThmNCBncnViLWNvcmUvbG9hZGVyL211bHRpYm9v
dF9tYmkyLmMKLS0tIGEvZ3J1Yi1jb3JlL2xvYWRlci9tdWx0aWJvb3RfbWJpMi5jCVdlZCBNYXIg
MDkgMTU6MzE6NTEgMjAyMiAtMDUwMAorKysgYi9ncnViLWNvcmUvbG9hZGVyL211bHRpYm9vdF9t
YmkyLmMJTW9uIEF1ZyAxNiAxMjowMjo1MiAyMDIxICswMjAwCkBAIC03NSw2ICs3NSw3IEBACiBz
dGF0aWMgdm9pZCAqZWxmX3NlY3Rpb25zOwogc3RhdGljIGludCBrZWVwX2JzID0gMDsKIHN0YXRp
YyBncnViX3VpbnQzMl90IGxvYWRfYmFzZV9hZGRyOworc3RydWN0IG1vZHVsZV9sb2FkX3ByZWZl
cmVuY2VzIGdydWJfbXVsdGlib290Ml9tbHA7CiAKIHZvaWQKIGdydWJfbXVsdGlib290Ml9hZGRf
ZWxmc3ltcyAoZ3J1Yl9zaXplX3QgbnVtLCBncnViX3NpemVfdCBlbnRzaXplLApAQCAtMTE0LDYg
KzExNSw3IEBACiAgIHN0cnVjdCBtdWx0aWJvb3RfaGVhZGVyX3RhZyAqdGFnOwogICBzdHJ1Y3Qg
bXVsdGlib290X2hlYWRlcl90YWdfYWRkcmVzcyAqYWRkcl90YWcgPSBOVUxMOwogICBzdHJ1Y3Qg
bXVsdGlib290X2hlYWRlcl90YWdfcmVsb2NhdGFibGUgKnJlbF90YWc7CisgIHN0cnVjdCBtdWx0
aWJvb3RfaGVhZGVyX3RhZ19tb2R1bGVfbG9hZF9wcmVmZXJlbmNlcyAqbW9kX2xvYWRfdGFnOwog
ICBpbnQgZW50cnlfc3BlY2lmaWVkID0gMCwgZWZpX2VudHJ5X3NwZWNpZmllZCA9IDA7CiAgIGdy
dWJfYWRkcl90IGVudHJ5ID0gMCwgZWZpX2VudHJ5ID0gMDsKICAgZ3J1Yl91aW50MzJfdCBjb25z
b2xlX3JlcXVpcmVkID0gMDsKQEAgLTEyMyw2ICsxMjUsNyBAQAogCiAgIG1sZC5tYmlfdmVyID0g
MjsKICAgbWxkLnJlbG9jYXRhYmxlID0gMDsKKyAgZ3J1Yl9tdWx0aWJvb3QyX21scC5yZWxvY2F0
YWJsZSA9IDA7CiAKICAgbWxkLmJ1ZmZlciA9IGdydWJfbWFsbG9jIChNVUxUSUJPT1RfU0VBUkNI
KTsKICAgaWYgKCFtbGQuYnVmZmVyKQpAQCAtMjQ4LDYgKzI1MSwyNyBAQAogCSAgfQogCWJyZWFr
OwogCisgICAgICBjYXNlIE1VTFRJQk9PVF9IRUFERVJfVEFHX01PRFVMRV9MT0FEX1BSRUZFUkVO
Q0VTOgorCWdydWJfbXVsdGlib290Ml9tbHAucmVsb2NhdGFibGUgPSAxOworCW1vZF9sb2FkX3Rh
ZyA9IChzdHJ1Y3QgbXVsdGlib290X2hlYWRlcl90YWdfbW9kdWxlX2xvYWRfcHJlZmVyZW5jZXMg
KikgdGFnOworCWdydWJfbXVsdGlib290Ml9tbHAubWluX2FkZHIgPSBtb2RfbG9hZF90YWctPm1p
bl9hZGRyOworCWdydWJfbXVsdGlib290Ml9tbHAubWF4X2FkZHIgPSBtb2RfbG9hZF90YWctPm1h
eF9hZGRyOworCWdydWJfbXVsdGlib290Ml9tbHAuYWxpZ24gPSBtb2RfbG9hZF90YWctPmFsaWdu
OworCXN3aXRjaCAobW9kX2xvYWRfdGFnLT5wcmVmZXJlbmNlKQorCSAgeworCSAgY2FzZSBNVUxU
SUJPT1RfTE9BRF9QUkVGRVJFTkNFX0xPVzoKKwkgICAgZ3J1Yl9tdWx0aWJvb3QyX21scC5wcmVm
ZXJlbmNlID0gR1JVQl9SRUxPQ0FUT1JfUFJFRkVSRU5DRV9MT1c7CisJICAgIGJyZWFrOworCisJ
ICBjYXNlIE1VTFRJQk9PVF9MT0FEX1BSRUZFUkVOQ0VfSElHSDoKKwkgICAgZ3J1Yl9tdWx0aWJv
b3QyX21scC5wcmVmZXJlbmNlID0gR1JVQl9SRUxPQ0FUT1JfUFJFRkVSRU5DRV9ISUdIOworCSAg
ICBicmVhazsKKworCSAgZGVmYXVsdDoKKwkgICAgZ3J1Yl9tdWx0aWJvb3QyX21scC5wcmVmZXJl
bmNlID0gR1JVQl9SRUxPQ0FUT1JfUFJFRkVSRU5DRV9OT05FOworCSAgfQorCWJyZWFrOworCiAJ
LyogR1JVQiBhbHdheXMgcGFnZS1hbGlnbnMgbW9kdWxlcy4gICovCiAgICAgICBjYXNlIE1VTFRJ
Qk9PVF9IRUFERVJfVEFHX01PRFVMRV9BTElHTjoKIAlicmVhazsKZGlmZiAtciAzMGMwYzJhZTUx
NjcgLXIgZTc3NDY1MWE1OGY0IGluY2x1ZGUvZ3J1Yi9tdWx0aWJvb3QyLmgKLS0tIGEvaW5jbHVk
ZS9ncnViL211bHRpYm9vdDIuaAlXZWQgTWFyIDA5IDE1OjMxOjUxIDIwMjIgLTA1MDAKKysrIGIv
aW5jbHVkZS9ncnViL211bHRpYm9vdDIuaAlNb24gQXVnIDE2IDEyOjAyOjUyIDIwMjEgKzAyMDAK
QEAgLTkyLDYgKzkyLDE1IEBACiB9OwogdHlwZWRlZiBzdHJ1Y3QgbWJpX2xvYWRfZGF0YSBtYmlf
bG9hZF9kYXRhX3Q7CiAKK3N0cnVjdCBtb2R1bGVfbG9hZF9wcmVmZXJlbmNlcworeworICBpbnQg
cmVsb2NhdGFibGU7CisgIGdydWJfdWludDMyX3QgbWluX2FkZHI7CisgIGdydWJfdWludDMyX3Qg
bWF4X2FkZHI7CisgIGdydWJfdWludDMyX3QgYWxpZ247CisgIGdydWJfdWludDMyX3QgcHJlZmVy
ZW5jZTsKK307CisKIC8qIExvYWQgRUxGMzIgb3IgRUxGNjQuICAqLwogZ3J1Yl9lcnJfdAogZ3J1
Yl9tdWx0aWJvb3QyX2xvYWRfZWxmIChtYmlfbG9hZF9kYXRhX3QgKm1sZCk7CkBAIC05OSw2ICsx
MDgsNyBAQAogZXh0ZXJuIGdydWJfc2l6ZV90IGdydWJfbXVsdGlib290Ml9wdXJlX3NpemU7CiBl
eHRlcm4gZ3J1Yl9zaXplX3QgZ3J1Yl9tdWx0aWJvb3QyX2FsbG9jX21iaTsKIGV4dGVybiBncnVi
X3VpbnQzMl90IGdydWJfbXVsdGlib290Ml9wYXlsb2FkX2VpcDsKK2V4dGVybiBzdHJ1Y3QgbW9k
dWxlX2xvYWRfcHJlZmVyZW5jZXMgZ3J1Yl9tdWx0aWJvb3QyX21scDsKIAogCiAjZW5kaWYgLyog
ISBHUlVCX01VTFRJQk9PVF9IRUFERVIgKi8KZGlmZiAtciAzMGMwYzJhZTUxNjcgLXIgZTc3NDY1
MWE1OGY0IGluY2x1ZGUvbXVsdGlib290Mi5oCi0tLSBhL2luY2x1ZGUvbXVsdGlib290Mi5oCVdl
ZCBNYXIgMDkgMTU6MzE6NTEgMjAyMiAtMDUwMAorKysgYi9pbmNsdWRlL211bHRpYm9vdDIuaAlN
b24gQXVnIDE2IDEyOjAyOjUyIDIwMjEgKzAyMDAKQEAgLTc0LDYgKzc0LDcgQEAKICNkZWZpbmUg
TVVMVElCT09UX0hFQURFUl9UQUdfRUZJX0JTICA3CiAjZGVmaW5lIE1VTFRJQk9PVF9IRUFERVJf
VEFHX0VOVFJZX0FERFJFU1NfRUZJNjQgIDkKICNkZWZpbmUgTVVMVElCT09UX0hFQURFUl9UQUdf
UkVMT0NBVEFCTEUgIDEwCisjZGVmaW5lIE1VTFRJQk9PVF9IRUFERVJfVEFHX01PRFVMRV9MT0FE
X1BSRUZFUkVOQ0VTICAxMQogCiAjZGVmaW5lIE1VTFRJQk9PVDJfQVJDSElURUNUVVJFX0kzODYg
IDAKICNkZWZpbmUgTVVMVElCT09UMl9BUkNISVRFQ1RVUkVfTUlQUzMyICA0CkBAIC0xNzgsNiAr
MTc5LDE3IEBACiAgIG11bHRpYm9vdF91aW50MzJfdCBwcmVmZXJlbmNlOwogfTsKIAorc3RydWN0
IG11bHRpYm9vdF9oZWFkZXJfdGFnX21vZHVsZV9sb2FkX3ByZWZlcmVuY2VzCit7CisgIG11bHRp
Ym9vdF91aW50MTZfdCB0eXBlOworICBtdWx0aWJvb3RfdWludDE2X3QgZmxhZ3M7CisgIG11bHRp
Ym9vdF91aW50MzJfdCBzaXplOworICBtdWx0aWJvb3RfdWludDMyX3QgbWluX2FkZHI7CisgIG11
bHRpYm9vdF91aW50MzJfdCBtYXhfYWRkcjsKKyAgbXVsdGlib290X3VpbnQzMl90IGFsaWduOwor
ICBtdWx0aWJvb3RfdWludDMyX3QgcHJlZmVyZW5jZTsKK307CisKIHN0cnVjdCBtdWx0aWJvb3Rf
Y29sb3IKIHsKICAgbXVsdGlib290X3VpbnQ4X3QgcmVkOwo=


--=-3E5ruY3s94P2EUNDVe9+
Content-Disposition: attachment; filename="Use_multiboot2_module_load_preference_tag.patch"
Content-Type: text/x-patch; name="Use_multiboot2_module_load_preference_tag.patch";
	charset="UTF-8"
Content-Transfer-Encoding: base64

IyBIRyBjaGFuZ2VzZXQgcGF0Y2gKIyBVc2VyIMWBdWthc3ogSGF3cnnFgmtvIDxsdWthc3pAaGF3
cnlsa28ucGw+CiMgRGF0ZSAxNjI5Mzc1NDYwIC03MjAwCiMgICAgICBUaHUgQXVnIDE5IDE0OjE3
OjQwIDIwMjEgKzAyMDAKIyBOb2RlIElEIGI4ZDE4ZGY1YWRjMjZjMzlhOGNiZmM1YjZiYWJlOTQ2
Yjc2MmU3NDEKIyBQYXJlbnQgIDhhYjFjZmE2MzAxZjFmODkyZDdkOGU4MjUzMmM2NjA5ZTEzNjc2
NWMKVXNlIG11bHRpYm9vdDIgbW9kdWxlIGxvYWQgcHJlZmVyZW5jZSB0YWcKClRoaXMgaXMgbmV3
IGEgdGFnIGFkZGVkIHJlY2VudGx5IHRvIEdSVUIgdGhhdCBhbGxvd3MgdG8gc3BlY2lmeSBtZW1v
cnkgcmVnaW9uCndoZXJlIEdSVUIgc2hvdWxkIGxvYWQgbXVsdGlib290MiBtb2R1bGVzLiBUaGFu
a3MgdG8gdGhpcywgVEJPT1QgY2FuIG5vdyBiZSBzdXJlCnRoYXQgbm9uZSBvZiB0aGUgbW9kdWxl
cyBvdmVybGFwcyBtZW1vcnkgaW50ZW5kZWQgZm9yIG1lbW9yeSBsb2cuCgpUaGlzIHBhdGNoLCB0
b2dldGhlciB3aXRoIG5ldyBHUlVCIHZlcnNpb24sIGZpeGVzIGlzc3VlIHdoZW4gbXVsdGlwbGUg
U0lOSVRzCmhhcyBiZWVuIGxvYWRlZCBpbiBtdWx0aWJvb3QyIGFuZCBzb21lIG9mIHRoZW0gbWF5
IGdldCBvdmVyd3JpdHRlbiBieSBUQk9PVCdzCm1lbW9yeSBsb2cuCgpTaWduZWQtb2ZmLWJ5OiBM
dWthc3ogSGF3cnlsa28gPGx1a2FzekBoYXdyeWxrby5wbD4KCmRpZmYgLXIgOGFiMWNmYTYzMDFm
IC1yIGI4ZDE4ZGY1YWRjMiB0Ym9vdC9jb21tb24vYm9vdC5TCi0tLSBhL3Rib290L2NvbW1vbi9i
b290LlMJU3VuIERlYyAxMiAwMTo1NTo1MyAyMDIxICswMTAwCisrKyBiL3Rib290L2NvbW1vbi9i
b290LlMJVGh1IEF1ZyAxOSAxNDoxNzo0MCAyMDIxICswMjAwCkBAIC0xMTMsNiArMTEzLDEzIEBA
CiAgICAgICAgICAgICAgICAgICAgRkJfTUFYX1ZSRVMsICAgLyogaGVpZ2h0ICovIFwKICAgICAg
ICAgICAgICAgICAgICBGQl9CUFAgICAgICAgICAvKiBkZXB0aCAqLwogCisgICAgICAgIC8qIE1v
ZHVsZSBsb2FkIHByZWZlcmVuY2UgdGFnICovCisgICAgICAgIG1iMmh0X2luaXQgTUIyX0hEUl9U
QUdfTU9EX0xPQURfUFJFRkVSRU5DRSwgTUIyX0hEUl9UQUdfT1BUSU9OQUwsIFwKKyAgICAgICAg
ICAgICAgICAgICAweDkwMDAwMCwgICAgICAvKiBtaW5fYWRkciAqLyBcCisgICAgICAgICAgICAg
ICAgICAgMHhGRkZGRkZGRiwgICAgLyogbWF4X2FkZHIgKi8gXAorICAgICAgICAgICAgICAgICAg
IDB4MTAwMCwgICAgICAgIC8qIGFsaWduICovIFwKKyAgICAgICAgICAgICAgICAgICAwICAgICAg
ICAgICAgICAvKiBwcmVmZXJlbmNlICovCisKICAgICAgICAgLyogTXVsdGlib290MiBoZWFkZXIg
ZW5kIHRhZy4gKi8KICAgICAgICAgbWIyaHRfaW5pdCBNQjJfSERSX1RBR19FTkQsIE1CMl9IRFJf
VEFHX1JFUVVJUkVECiAKZGlmZiAtciA4YWIxY2ZhNjMwMWYgLXIgYjhkMThkZjVhZGMyIHRib290
L2luY2x1ZGUvbXVsdGlib290LmgKLS0tIGEvdGJvb3QvaW5jbHVkZS9tdWx0aWJvb3QuaAlTdW4g
RGVjIDEyIDAxOjU1OjUzIDIwMjEgKzAxMDAKKysrIGIvdGJvb3QvaW5jbHVkZS9tdWx0aWJvb3Qu
aAlUaHUgQXVnIDE5IDE0OjE3OjQwIDIwMjEgKzAyMDAKQEAgLTc3LDYgKzc3LDcgQEAKICNkZWZp
bmUgTUIyX0hEUl9UQUdfQ09OU09MRV9GTEFHUwkgIDQKICNkZWZpbmUgTUIyX0hEUl9UQUdfRlJB
TUVCVUZGRVIJCSAgNQogI2RlZmluZSBNQjJfSERSX1RBR19NT0RfQUxJR04JCSAgNgorI2RlZmlu
ZSBNQjJfSERSX1RBR19NT0RfTE9BRF9QUkVGRVJFTkNFIDExCiAKICNkZWZpbmUgTUIyX0hEUl9U
QUdfUkVRVUlSRUQgICAgICAwCiAjZGVmaW5lIE1CMl9IRFJfVEFHX09QVElPTkFMCQkgIDEK


--=-3E5ruY3s94P2EUNDVe9+
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--=-3E5ruY3s94P2EUNDVe9+
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel

--=-3E5ruY3s94P2EUNDVe9+--

