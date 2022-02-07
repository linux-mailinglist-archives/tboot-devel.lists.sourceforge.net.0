Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D8E94ABECA
	for <lists+tboot-devel@lfdr.de>; Mon,  7 Feb 2022 14:06:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1nH3iF-0000yg-Q9; Mon, 07 Feb 2022 13:05:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <z23@posteo.net>) id 1nH3iC-0000yW-PC
 for tboot-devel@lists.sourceforge.net; Mon, 07 Feb 2022 13:05:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RSxWtCdBEgbyyed9BIEIcZ9aUz0rlq3LuaPQkk2XJCQ=; b=FheM6YdxkHYD9CRnhzMdNRu+U9
 k3dhu6NkEijVgkGWd3bW1STye0362//4oN66svB7v7MWDhvXyQC/5DVp5cXQ5razmcKAU8tLs6wrj
 ILRd8ff3M9ZaBoRyLFYEUKjHwxg/+5ZbGIfMkkXFIiVYOOFNR7UDpJtQEOSWQDR+bodw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RSxWtCdBEgbyyed9BIEIcZ9aUz0rlq3LuaPQkk2XJCQ=; b=V+dH0lnnaEPFlQaFy40GMF1wSn
 jScJ2ij4++WdHwYkGRF8HQLZ5a0xsuiO5vlksz3oHZaBsa6KIvqg8klb07zeD5Rxq5mnr2lDvkHgC
 BHlw7af4xlh6EAGCKtXIejaZYanZpE3xnQDahSF4Wmr7SJrZ123+LZwOPBqqBE0V9EgI=;
Received: from mout01.posteo.de ([185.67.36.65])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nH3i9-0008Cn-2I
 for tboot-devel@lists.sourceforge.net; Mon, 07 Feb 2022 13:05:43 +0000
Received: from submission (posteo.de [185.67.36.169]) 
 by mout01.posteo.de (Postfix) with ESMTPS id 9D2B3240027
 for <tboot-devel@lists.sourceforge.net>; Mon,  7 Feb 2022 14:05:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.net; s=2017;
 t=1644239134; bh=+rs7rfwuOdJecT3mSt3BXm9B3PN3TSJCEzLn/98tGg8=;
 h=Subject:To:From:Date:From;
 b=MOVqUpqFRyt6mc6DTcB5GJpFKxST+zBOhw2UT2FN2mJVKCTZF3kk7W4u0HQPOCxK8
 yRWN/TqrZSg3bNL1XXxmMnt9BmVv+B6puJZNQtTvkkvJHCAZ6FDycMN4vcnRUeNFzw
 Ll1r9mcVNxMHXQMK+QS67LXCAKD3z7oHGk0x4+RZMPb+hVv4WSCgE54ajr4QnaY59Q
 UUsCamTZjF3cFu6TY3WIDInaCi+51M0nEn94Qod+e68+C9hDNZEKsC3AIpZ3U/W3pL
 xkDh0UKvP4fOQFWbpnbJD7xxrlM3HOBb9S3wmpSAbAjuzq1YxqmMSrmTIUc087nU7q
 Bdks7dW143ztA==
Received: from customer (localhost [127.0.0.1])
 by submission (posteo.de) with ESMTPSA id 4JsmbK4Vs2z9rxb;
 Mon,  7 Feb 2022 14:05:33 +0100 (CET)
To: =?UTF-8?B?xYF1a2FzeiBIYXdyecWCa28=?= <lukasz@hawrylko.pl>,
 tboot-devel@lists.sourceforge.net
References: <4b3349f2-69f2-d6d3-ab66-6178af102333@posteo.net>
 <dcb47ad40ac22b08380312c1c18f322848ccd4d6.camel@hawrylko.pl>
From: Derek Dolney <z23@posteo.net>
Message-ID: <6ca692b5-c54d-c57c-03a8-e774a86762c0@posteo.net>
Date: Mon,  7 Feb 2022 13:04:59 +0000
MIME-Version: 1.0
In-Reply-To: <dcb47ad40ac22b08380312c1c18f322848ccd4d6.camel@hawrylko.pl>
Content-Language: en-US
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2/1/22 5:25 AM, Łukasz Hawryłko wrote: > Hi Derek > >
    On Mon, 2022-01-31 at 17:26 +0000, Derek Dolney wrote: >> I am using tboot
    1.10.3 and all was working fine with Linux kernel >> 5.10.88. Howe [...] 
 
 Content analysis details:   (-2.5 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
                             medium trust
                             [185.67.36.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nH3i9-0008Cn-2I
Subject: Re: [tboot-devel] suspend problem since kernel 5.15
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

T24gMi8xLzIyIDU6MjUgQU0sIMWBdWthc3ogSGF3cnnFgmtvIHdyb3RlOgo+IEhpIERlcmVrCj4g
Cj4gT24gTW9uLCAyMDIyLTAxLTMxIGF0IDE3OjI2ICswMDAwLCBEZXJlayBEb2xuZXkgd3JvdGU6
Cj4+IEkgYW0gdXNpbmcgdGJvb3QgMS4xMC4zIGFuZCBhbGwgd2FzIHdvcmtpbmcgZmluZSB3aXRo
IExpbnV4IGtlcm5lbAo+PiA1LjEwLjg4LiBIb3dldmVyLCBJIHVwZ3JhZGVkIHRvIGtlcm5lbCA1
LjE1LjE2IGFuZCwgd2hpbGUgYm9vdGluZyBzZWVtcwo+PiB0byBoYXBwZW4gcHJvcGVybHksIHN1
c3BlbmQgaXMgYnJva2VuLiBJIGFtIHVzaW5nIGEgTGVub3ZvIFQ0NjBwLgo+PiBVc3VhbGx5IHdo
ZW4gc3VzcGVuZGluZyB0aGUgcG93ZXIgYnV0dG9uIExFRCB3aWxsIGJsaW5rIDggdGltZXMgYW5k
IHRoZW4KPj4gaXQgZ29lcyBpbnRvIGEgc2xlZXAgc3RhdGUuIFdpdGggdGhlIG5ld2VyIGtlcm5l
bCBJIGdldCBwb3dlciBMRUQgYW5kCj4+IGNhcHMgbG9jayBMRUQgYmxpbmtpbmcsIGNwdSBmYW4g
cnVucyBmYXN0LCBhbmQgY2FuJ3QgZ2V0IG91dCBvZiB0aGF0Cj4+IHN0YXRlLiBOZWVkIHRvIGhh
cmQgcG93ZXJkb3duLgo+Pgo+PiBBdHRhY2hpbmcgYSB0eHQtc3RhdCBvdXRwdXQuIEFueSBpZGVh
cyB3aGF0IG1heSBiZSBoYXBwZW5pbmc/IFNlZW1zIGxpa2UKPj4gSSBtYXliZSBuZWVkIHRvIHJl
cG9ydCB0byB0aGUga2VybmVsIGRldnMsIGJ1dCBsZXQgbWUga25vdyBpZiB5b3UgaGF2ZQo+PiBz
b21lIG90aGVyIHN1Z2dlc3Rpb25zLiBJIGNvdWxkIGRvIGEgZ2l0IGJpc2VjdCBvZiB0aGUga2Vy
bmVsIHNvdXJjZSBhbmQKPj4gcHJvYmFibHkgZmluZCB0aGUga2VybmVsIGNvZGUgY2hhbmdlcyB0
aGF0IGJyb2tlIHN1c3BlbmQgZm9yIG1lLiBQbGVhc2UKPj4gYWR2aXNlCj4gCj4gV2l0aG91dCBz
ZXJpYWwgY29uc29sZSwgSSBndWVzcyB0aGF0IGFzIHlvdSBoYXZlIGEgbGFwdG9wIHlvdSBkb24n
dAo+IGhhdmUgUlMyMzIgcG9ydCwgaXQgd2lsbCBub3QgYmUgYW4gZWFzeSB0YXNrIHRvIGRlYnVn
IHRoZSBpc3N1ZS4KPiAKPiBEdXJpbmcgUzMgc3VzcGVuZCBMaW51eCBrZXJuZWwgaXMganVtcGlu
ZyB0byB0Ym9vdCdzIHNodXRkb3duIGVudHJ5Cj4gcG9pbnQgdG8gc2VhbCBSQU0gY29udGVudC4g
WW91IGNhbiB0cnkgdG8gY29tbWVudCBvdXQgdGhpcyBiZWhhdmlvciBpbgo+IExpbnV4IGtlcm5l
bCB0byBzZWUgaWYgc3RpbGwgeW91IGNhbiBzZWUgdGhlIGlzc3VlLiBUaGlzIGV4cGVyaW1lbnQg
bWF5Cj4gdGVsbCB1cyBpZiBoYW5nIGlzIHJlbGF0ZWQgdG8gdGJvb3QncyBzaHV0ZG93biBoYW5k
bGVyIG9yIG5vdC4KPiAKPiBMdWthc3oKPiAKTHVrYXN6LCB0aGFua3MgZm9yIHRoZSBpZGVhcy4g
SSB0cmllZCBjb21tZW50aW5nIHRoZXNlIDIgbGluZXMgaW4KdGJvb3RfbGF0ZV9pbml0KCk6Cgov
LyBhY3BpX29zX3NldF9wcmVwYXJlX3NsZWVwKCZ0Ym9vdF9zbGVlcCk7Ci8vIGFjcGlfb3Nfc2V0
X3ByZXBhcmVfZXh0ZW5kZWRfc2xlZXAoJnRib290X2V4dGVuZGVkX3NsZWVwKTsKCk5vdCBlbnRp
cmVseSBzdXJlIGJ1dCBteSBob3BlIHdhcyB0aGF0IHRoaXMgd291bGQga2VlcCB0aGUga2VybmVs
IG91dCBvZgp0Ym9vdCdzIHNodXRkb3duIGhhbmRsZXIuIEkgZG9uJ3Qga25vdyB0aGlzIGNvZGUs
IHBsZWFzZSBsZXQgbWUga25vdyBpZgp5b3UgaGFkIHNvbWV0aGluZyBlbHNlIGluIG1pbmQuCgpB
bnl3YXksIGl0IHN0aWxsIGhhbmdzIHdpdGggdGhlc2UgbGluZXMgY29tbWVudGVkIG91dC4gSG93
ZXZlciwgaWYgSQpib290IHRoaXMga2VybmVsIChvciB0aGUga2VybmVsIHdpdGggdGhlc2UgbGlu
ZXMgbm90IGNvbW1lbnRlZCBvdXQpCndpdGhvdXQgdGJvb3QsIEkgY2FuIHN1c3BlbmQgYW5kIHJl
c3VtZSBqdXN0IGZpbmUuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KdGJvb3QtZGV2ZWwgbWFpbGluZyBsaXN0CnRib290LWRldmVsQGxpc3RzLnNvdXJj
ZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby90
Ym9vdC1kZXZlbAo=
