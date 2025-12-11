Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BA32CB614C
	for <lists+tboot-devel@lfdr.de>; Thu, 11 Dec 2025 14:46:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:References:To:MIME-Version:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=08I1yQ+01kglf+tzjPNjExdCWqRVIGhiRQF9ZqK+f2E=; b=i3emgjucP191L2pAojAt/dI67E
	c+RZBap7P+ZGyhn1xIJa1QLkW21SbXhhNyaroyZnb5rxB8655NhtfW7dMI+kNN6UcSGY6ZrT7LoqA
	zkidIkmRNAZJMBJumEq/3ZB+sNI9DeLA6ITkReyf7quNicpACAUe3HrAdRYVotl04mrQ=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1vTgzz-0004Jg-0v;
	Thu, 11 Dec 2025 13:46:27 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcamuso@redhat.com>) id 1vTgzx-0004JO-9K
 for tboot-devel@lists.sourceforge.net;
 Thu, 11 Dec 2025 13:46:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Cc:To:From:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KW7IIg1ZAhy1yX6x6fK2/pEDvpxlIRaCqfVt49AdYhg=; b=FULUVlq3jt7zp/pYlpSGSlQFla
 k/Z5y82MU8AZlawAMzl65KEfudQa/qMKjGE9RjOZPSfF1bm9qWwvN7q8dIvyDssCS4y4BUZl6Yiki
 PWhpnF1F9ByCXqUg2eDDgXh0NUkUHXLLuS0iqsM3DmOcPm8kliOgvmKbv96/giL2EIpw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Cc:To:From:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KW7IIg1ZAhy1yX6x6fK2/pEDvpxlIRaCqfVt49AdYhg=; b=AYt0+DfcnpVy3BK0+ZRdMv+FS0
 UlXWuLF1KZSaQ/4ee/+iNEETURbSG57QxYj+621wogCKtGbr1Bb9H9ZqoY1cpNTLzUqWZuYgAcFK9
 ItRwFkskztXglN9onKYDCV/2151UqqxJfol71Oqx4LRpP45aKi0IogmJEP2Jutm+IEg8=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vTgzx-0008T7-Cg for tboot-devel@lists.sourceforge.net;
 Thu, 11 Dec 2025 13:46:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1765460779;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=KW7IIg1ZAhy1yX6x6fK2/pEDvpxlIRaCqfVt49AdYhg=;
 b=ZDJTzP8I+V3DBQKllBzefkqpJWDXi4miaJAOfb5ixsZvtGHxZwrJwZBgM9+22fTatCXpxP
 m8M+KfpzCzH5jijoFS9uKNoiYwm3MfAU34ThKX70lDYlEbO9v8eES3xhZvkY1XfIUcgPnn
 kBUDAHf0AyBvYFIuCqMFPC4TFyew0cY=
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com
 [209.85.215.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-348-xqsFJl7xPhqJuuTwCWWdCg-1; Thu, 11 Dec 2025 08:46:18 -0500
X-MC-Unique: xqsFJl7xPhqJuuTwCWWdCg-1
X-Mimecast-MFC-AGG-ID: xqsFJl7xPhqJuuTwCWWdCg_1765460776
Received: by mail-pg1-f200.google.com with SMTP id
 41be03b00d2f7-b993eb2701bso85303a12.0
 for <tboot-devel@lists.sourceforge.net>; Thu, 11 Dec 2025 05:46:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1765460776; x=1766065576;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:from:subject:user-agent:mime-version:date:message-id:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=KW7IIg1ZAhy1yX6x6fK2/pEDvpxlIRaCqfVt49AdYhg=;
 b=Uzdyifil8R18Zvnr4aYahjbGwI3aodRZ4avTYhCByDFBvpZN8ORv3mewF97Iuic9LZ
 TCU3SLh148BmPGIObcp8fxMT38O2posXy9iyQaFoyJqra4thf4XaqPfPQ7VfLLrSwYG/
 SIUIiwBU9fZ5LoAZ/+BGfmgjjPNVXaHRVreklhJqeXIK6t+W4541QEgil9OY8F4ucH5i
 jQGV3bu3FCToU40w8nUONyUeEhtbRezQp6xwJb9EfNMeVmyElkmRwo98Hhae69dUYLIS
 6bUSoZe8p0OqfWqIX8ZHGEAS1SAit3lqW8SrMyl/D95AuFN1s/SHljnR23UH/+Y9NldD
 3NKA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVj8NXlFnLbFKl2crO6eZFGc3FnkZAKVA2/UEL/tKyXONFnJboK+8+It7tYOSfHzT4Cii64jx0eiwZSDw==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YxnqG0qOF4Hh3VnHyoHkA8n7zOplozKl4nU97VBgyE2Zw+OuN5X
 0TL37qyPTzmNuuLxe3ubQHM9lBuaVxXrWRSeEg07gHRjehTFfXe9VR1SRUX4lv4trcYaP8OU7yE
 ALXzXMNc98dCGqoRSLODKVl0xuVZMBWTXP+FbqRSLF2HvgjSMOUGMPJ868AanqxLFavPL8iHn
X-Gm-Gg: AY/fxX6IWUW/xCmy4KSfPZwX4AeYAlEduyHnLiFQcWgjixKkNBrU/pwcdUrjQiA/FcR
 V9EUqAYLd7FbhHiCe9V1gLmfRPRuWh3BMvJWkYryrsnBwkVgyH7/Ea5EEMyUJ4HUjTnthaL1yX0
 Xje4aVTXqVptZSYoazoLXJqlZ52/Rk6N4TaIGsG1aQH7G2T/kMla7J0V/9JQK2o7Nqy72mWL9K9
 /S1DT9bf8bJUZK2IxP8lO3kJ6N8euz0iunOjs2+Chf8vjBAESMPv4rnPeWZB0/I54ABjp61H155
 C8mGKtuOihWhuIPPGzcF3+T6+yNMy+CgP2YhEZZaq8D+1BU9G2EdY7dqbFS4IMV2DvKs6DAjUbp
 FWVnRseGoRUzhdArit+hR5yXe
X-Received: by 2002:a05:7022:108:b0:11b:c86b:386a with SMTP id
 a92af1059eb24-11f29669e49mr5727928c88.5.1765460775678; 
 Thu, 11 Dec 2025 05:46:15 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEmdUExgraRk+1Ui2l8EGns5r6vwb6F14882sJ83+arvIQXimvQKTEx+Zgm0MwA7ElP2UIGaA==
X-Received: by 2002:a05:7022:108:b0:11b:c86b:386a with SMTP id
 a92af1059eb24-11f29669e49mr5727882c88.5.1765460775003; 
 Thu, 11 Dec 2025 05:46:15 -0800 (PST)
Received: from [192.168.3.252] ([74.75.144.57])
 by smtp.gmail.com with ESMTPSA id
 a92af1059eb24-11f2e1bb3b4sm8073350c88.4.2025.12.11.05.46.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 11 Dec 2025 05:46:14 -0800 (PST)
Message-ID: <358c63d6-5a25-462d-af04-1703bb7840e8@redhat.com>
Date: Thu, 11 Dec 2025 08:46:08 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Bagas Sanjaya <bagasdotme@gmail.com>, ning.sun@intel.com,
 tboot-devel@lists.sourceforge.net
References: <20251017073619.547993-1-michal.camacho.romero@linux.intel.com>
 <aST5ruhnbILZnoUO@archie.me>
 <acdc2b7f-8d2f-47b7-8324-01c060e8aa68@redhat.com>
In-Reply-To: <acdc2b7f-8d2f-47b7-8324-01c060e8aa68@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: HU47iHp-HsUEgjZSpWP1B1vuY5_b7P8ou8uuQWiUZ8Y_1765460776
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 12/10/2025 1:10 PM, Tony Camuso wrote: > On 11/24/2025
 7:34 PM, Bagas Sanjaya wrote: >> On Thu, Nov 13, 2025 at 09:37:14AM -0500,
 Tony Camuso wrote: >>> The tboot->shutdown_entry is effectively bi [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vTgzx-0008T7-Cg
Subject: Re: [tboot-devel] [PATCH 1/1] Disable CET when calling tboot
 shutdown procedure.
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
From: Tony Camuso via tboot-devel <tboot-devel@lists.sourceforge.net>
Reply-To: Tony Camuso <tcamuso@redhat.com>
Cc: linux-kernel@vger.kernel.org, bp@alien8.de, tglx@linutronix.de,
 mingo@kernel.org, rppt@kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: tboot-devel-bounces@lists.sourceforge.net

Ck9uIDEyLzEwLzIwMjUgMToxMCBQTSwgVG9ueSBDYW11c28gd3JvdGU6Cj4gT24gMTEvMjQvMjAy
NSA3OjM0IFBNLCBCYWdhcyBTYW5qYXlhIHdyb3RlOgo+PiBPbiBUaHUsIE5vdiAxMywgMjAyNSBh
dCAwOTozNzoxNEFNIC0wNTAwLCBUb255IENhbXVzbyB3cm90ZToKPj4+IFRoZSB0Ym9vdC0+c2h1
dGRvd25fZW50cnkgaXMgZWZmZWN0aXZlbHkgYmlvcyBjb2RlIGFuZCBDRVQgbmVlZHMgdG8gYmUK
Pj4+IGRpc2FibGVkIGJlZm9yZSBjYWxsaW5nIGl0Lgo+Pj4KPj4+IEl0IHJlc29sdmVzIFRCT09U
IHNodXRkb3duIGZhaWx1cmUgYnVnLCByZXBvcnRlZCBvbiB0aGUgU0xFUyAoU1VTRSBMaW51eAo+
Pj4gRW50ZXJwcmlzZSBTZXJ2ZXIpIDE2LjAgT1MuIE9TIHBvd2VyIG9mZiwgY2FsbGVkIGJ5IHRo
ZSAiaW5pdCAwIiBjb21tYW5kLAo+Pj4gd2FzIGZhaWxpbmcsIGR1ZSB0byBhY3RpdmF0ZWQgSW50
ZWwgQ29udHJvbC1GbG93IEVuZm9yY2VtZW50IFRlY2hub2xvZ3kKPj4+IChDRVQpLgo+Pj4gRGlz
YWJsaW5nIENFVCBoYXMgYWxsb3dlZCB0byBleGVjdXRlIE9TIGFuZCBUQk9PVCBzaHV0ZG93biBw
cm9wZXJseS4KPj4KPj4gQXJlIGBgc3lzdGVtY3RsIHBvd2Vyb2ZmYGAgYW5kIGBgc2h1dGRvd24g
LVBgYCBhcmUgYWxzbyBhZmZlY3RlZD8KPj4KPj4gQ29uZnVzZWQuLi4KPj4KPiAKPiBZZXMsIGFs
bCBzaHV0ZG93biBtZXRob2RzIG9uIGtlcm5lbHMgbGF1bmNoZWQgd2l0aCB0Ym9vdCwgb24gc3lz
dGVtcyB0aGF0Cj4gZXhwb3NlIHRoZSBDUFUgaWJ0IGZsYWcgdG8ga2VybmVscyB2Ni4xMisgd2ls
bCBjYXVzZSB0aGUgc3RhY2sgdHJhY2UgYXBwZW5kZWQKPiBiZWxvdy4KPiAKPiBUaGUgc3RhY2sg
dHJhY2UgZGVtb25zdHJhdGVzIHRoYXQgQ0VUIGVuZm9yY2VtZW50IGNvbGxpZGVzIHdpdGggbGVn
YWN5Cj4gQklPUyBzaHV0ZG93biBjb2RlIHRoYXQgbGFja3MgRU5EQlIgbWFya2Vycy4gVGhlIGtl
cm5lbCBCVUcgYXQKPiBjZXQuYzoxMDIgaXMgYSBkaXJlY3QgcmVzdWx0IG9mIENFVCBiZWluZyBh
Y3RpdmUgd2hlbiBqdW1waW5nIGludG8KPiB0Ym9vdC0+c2h1dGRvd25fZW50cnkuCj4gCj4gTGVn
YWN5IEJJT1MvdGJvb3QgY29kZSB3aXRob3V0IEVOREJSIG5vdyB0cmFwcywgcmVxdWlyaW5nIENF
VCB0byBiZSBkaXNhYmxlZAo+IGFyb3VuZCB0aGF0IGNhbGwuCj4gCj4gVGhlIHBhdGNoOgo+ICDC
oMKgwqAgUHJldmVudHMgQ0VUIGZyb20gZmFsc2VseSB0cmFwcGluZyBvbiBub24tQ0VUIEJJT1Mg
Y29kZS4KCk5lZWQgdG8gY2xhcmlmeSBmdXJ0aGVyOgoKVGhlIHBhdGNoIHByZXZlbnRzIENFVCBm
cm9tIHRyYXBwaW5nIHdoZW4gdGJvb3QgaW52b2tlcyB0aGUgQklPUy1wcm92aWRlZApzaHV0ZG93
bl9lbnRyeSByb3V0aW5lLCB3aGljaCBsYWNrcyBFTkRCUiBpbnN0cnVjdGlvbnMuCgp0Ym9vdCBz
aWRlOgogICBJbiB0Ym9vdF9zaHV0ZG93bigpLCB0aGUga2VybmVsIHN3aXRjaGVzIHRvIHRoZSB0
Ym9vdCBwYWdlIHRhYmxlcyBhbmQKICAgdGhlbiBjYWxsczoKCXNodXRkb3duID0gKHZvaWQoKiko
dm9pZCkpKHVuc2lnbmVkIGxvbmcpdGJvb3QtPnNodXRkb3duX2VudHJ5OwoJc2h1dGRvd24oKTsK
CiAgIFRoYXQgc2h1dGRvd25fZW50cnkgcG9pbnRlciBjb21lcyBmcm9tIHRoZSB0Ym9vdCBzdHJ1
Y3R1cmUsIHBvcHVsYXRlZAogICBhdCBib290LgogICAgIEluIHRoZSB0Ym9vdCBwcm9qZWN0IGRp
cmVjdG9yeSwgc2VlIGluY2x1ZGUvdGJvb3QuaAogICAgIEluIHRoZSBrZXJuZWwsIHNlZSBpbmNs
dWRlL2xpbnV4L3Rib290LmgKCkJJT1Mgc2lkZToKICAgVGhlIGFjdHVhbCByb3V0aW5lIGJlaGlu
ZCBzaHV0ZG93bl9lbnRyeSBpcyBpbXBsZW1lbnRlZCBpbiBCSU9TL2Zpcm13YXJlLgogICBJdOKA
mXMgbm90IGNvbXBpbGVkIHdpdGggQ0VUL0lCVCBzdXBwb3J0LCBzbyBpdCBsYWNrcyB0aGUgcmVx
dWlyZWQgRU5EQlI2NAogICBpbnN0cnVjdGlvbiBhdCBpdHMgZW50cnkgcG9pbnQKCiAgIFdoZW4g
Q0VUIGlzIHN0aWxsIGVuYWJsZWQsIHRoZSBDUFUgZW5mb3JjZXMgSUJULiBKdW1waW5nIGludG8g
dGhhdCBCSU9TCiAgIHJvdXRpbmUgd2l0aG91dCBFTkRCUiB0cmlnZ2VycyBhICNDUCAoY29udHJv
bCBwcm90ZWN0aW9uIGV4Y2VwdGlvbiksCiAgIHdoaWNoIGlzIHdoYXQgdGhlIHN0YWNrIHRyYWNl
IHNob3dzLgoKICAgU28gaXQgaXMgdGhlIEJJT1Mgc2h1dGRvd25fZW50cnkgZnVuY3Rpb24gaXRz
ZWxmIHRoYXQgY2F1c2VzIHRoZSB0cmFwLAogICBidXQgb25seSBiZWNhdXNlIHRib290IGlzIGhh
bmRpbmcgY29udHJvbCB0byBpdCB3aGlsZSBDRVQgaXMgYWN0aXZlLgoKV2hhdCBoYXBwZW5zOgog
ICBGcm9tIHRoZSBzdGFjayB0cmFjZQogICAgIE1pc3NpbmcgRU5EQlI6IDB4ODA0MWQwCiAgICAg
a2VybmVsIEJVRyBhdCBhcmNoL3g4Ni9rZXJuZWwvY2V0LmM6MTAyIQogICAgIFJJUDogMDAxMDow
eDgwNDFkMAogICAKICAgVGhpcyBzaG93cyB0aGUgQ1BVIHRyYXBwaW5nIG9uIGVudHJ5IGludG8g
dGhlIHNodXRkb3duIHJvdXRpbmUgYXQgYWRkcmVzcwogICAweDgwNDFkMCwgd2hpY2ggaXMgdGhl
IHBvaW50ZXIgc3RvcmVkIGluIHRib290LT5zaHV0ZG93bl9lbnRyeQoKICAgVGhlIHNodXRkb3du
X2VudHJ5IGZpZWxkIGlzIGV4cGxpY2l0bHkgZG9jdW1lbnRlZCBhcyB0aGUgcGh5c2ljYWwgYWRk
cmVzcwogICBvZiB0aGUgQklPUyBzaHV0ZG93biByb3V0aW5lLiBUaGlzIHN0cnVjdHVyZSBpcyBw
b3B1bGF0ZWQgYnkgdGJvb3QgYXQgYm9vdC4KCj4gCj4gIMKgwqDCoCBNYWludGFpbnMgc3lzdGVt
IHN0YWJpbGl0eSBkdXJpbmcgc2h1dGRvd24uCj4gCj4gIMKgwqDCoCBQcmVzZXJ2ZXMgQ0VUIHBy
b3RlY3Rpb24gZWxzZXdoZXJlLCBvbmx5IGRpc2FibGluZyBpdCBmb3IgdGhlCj4gIMKgwqDCoCBu
YXJyb3cgd2luZG93IHdoZXJlIGxlZ2FjeSBmaXJtd2FyZSBtdXN0IHJ1bi4KPiAKPiAKPiBbwqAg
MTY5LjQyMDA3OF0gcmVib290OiBQb3dlciBkb3duCj4gW8KgIDE2OS40Mjc1MTZdIE1pc3Npbmcg
RU5EQlI6IDB4ODA0MWQwCj4gW8KgIDE2OS40MzExMjhdIC0tLS0tLS0tLS0tLVsgY3V0IGhlcmUg
XS0tLS0tLS0tLS0tLQo+IFvCoCAxNjkuNDM1ODA1XSBrZXJuZWwgQlVHIGF0IGFyY2gveDg2L2tl
cm5lbC9jZXQuYzoxMDIhCj4gW8KgIDE2OS40NDA4NDBdIE9vcHM6IGludmFsaWQgb3Bjb2RlOiAw
MDAwIFsjMV0gU01QIE5PUFRJCj4gW8KgIDE2OS40NDU5NjZdIENQVTogMCBVSUQ6IDAgUElEOiAz
MzU0IENvbW06IHBvd2Vyb2ZmIEtkdW1wOiBsb2FkZWQgTm90IHRhaW50ZWQgNi4xMi4wLTEyNC44
LjEuZWwxMF8xLng4Nl82NCAjMSBQUkVFTVBUKHZvbHVudGFyeSkKPiBbwqAgMTY5LjQ1NzU4MF0g
SGFyZHdhcmUgbmFtZTogRGVsbCBJbmMuIFBvd2VyRWRnZSBSNTcwLzAzVEpSMywgQklPUyAxLjIu
MSAwMS8yMy8yMDI1Cj4gW8KgIDE2OS40NjUxMTNdIFJJUDogMDAxMDpleGNfY29udHJvbF9wcm90
ZWN0aW9uKzB4MThjLzB4MTkwCj4gW8KgIDE2OS40NzA0OTBdIENvZGU6IDFjIGZmIDQ1IDMxIGM5
IDQ5IDg5IGQ4IGI5IDA5IDAwIDAwIDAwIDQ4IDhiIDkzIDgwIDAwIDAwIDAwIGJlIDYzIDAwIDAw
IDAwIDQ4IGM3IGM3IGE0IDg1IGU1IGE0IGU4IDc5IDkyIDMwIGZmIGU5IDAyIGZmIGZmIGZmIDww
Zj4gMGIgNjYgOTAgOTAgOTAgOTAgOTAgOTAgOTAgOTAgOTAgOTAgOTAgOTAgOTAgOTAgOTAgOTAg
OTAgNjYgMGYKPiBbwqAgMTY5LjQ4OTI5Ml0gUlNQOiAwMDE4OmZmNTViM2NiYTE2N2ZhODggRUZM
QUdTOiAwMDAxMDAwMgo+IFvCoCAxNjkuNDk0NTgxXSBSQVg6IDAwMDAwMDAwMDAwMDAwMTcgUkJY
OiBmZjU1YjNjYmExNjdmYWE4IFJDWDogMDAwMDAwMDBmZmZmN2ZmZgo+IFvCoCAxNjkuNTAxNzY1
XSBSRFg6IDAwMDAwMDAwMDAwMDAwMDAgUlNJOiAwMDAwMDAwMDAwMDAwMDAzIFJESTogMDAwMDAw
MDAwMDAwMDAwMQo+IFvCoCAxNjkuNTA4OTQ5XSBSQlA6IDAwMDAwMDAwMDAwMDAwMDMgUjA4OiAw
MDAwMDAwMDAwMDAwMDAwIFIwOTogZmZmZmZmZmZhNTllMmIwOAo+IFvCoCAxNjkuNTE2MTMyXSBS
MTA6IGZmZmZmZmZmYTU5MjJhYzggUjExOiAwMDAwMDAwMDAwMDAwMDAzIFIxMjogMDAwMDAwMDAw
MDAwMDAwMAo+IFvCoCAxNjkuNTIzMzE2XSBSMTM6IDAwMDAwMDAwMDAwMDAwMDAgUjE0OiAwMDAw
MDAwMDAwMDAwMDAwIFIxNTogMDAwMDAwMDAwMDAwMDAwMAo+IFvCoCAxNjkuNTMwNTE0XSBGUzrC
oCAwMDAwN2Y1ZjlhMTIyMTQwKDAwMDApIEdTOmZmMzkxNzVjMmRlMDAwMDAoMDAwMCkga25sR1M6
MDAwMDAwMDAwMDAwMDAwMAo+IFvCoCAxNjkuNTM4NjU5XSBDUzrCoCAwMDEwIERTOiAwMDAwIEVT
OiAwMDAwIENSMDogMDAwMDAwMDA4MDA1MDAzMwo+IFvCoCAxNjkuNTQ0NDU0XSBDUjI6IDAwMDA1
NTkzODZkYzUzMjAgQ1IzOiAwMDAwMDAwMTBmYmUyMDAwIENSNDogMDAwMDAwMDAwMGY3MWVmMAo+
IFvCoCAxNjkuNTUxNjUxXSBEUjA6IDAwMDAwMDAwMDAwMDAwMDAgRFIxOiAwMDAwMDAwMDAwMDAw
MDAwIERSMjogMDAwMDAwMDAwMDAwMDAwMAo+IFvCoCAxNjkuNTU4ODM1XSBEUjM6IDAwMDAwMDAw
MDAwMDAwMDAgRFI2OiAwMDAwMDAwMGZmZmUwN2YwIERSNzogMDAwMDAwMDAwMDAwMDQwMAo+IFvC
oCAxNjkuNTY2MDE5XSBQS1JVOiA1NTU1NTU1NAo+IFvCoCAxNjkuNTY4Nzg0XSBDYWxsIFRyYWNl
Ogo+IFvCoCAxNjkuNTcxMjk1XcKgIDxUQVNLPgo+IFvCoCAxNjkuNTczNDU4XcKgID8gc2hvd190
cmFjZV9sb2dfbHZsKzB4MWIwLzB4MmYwCj4gW8KgIDE2OS41Nzc4ODBdwqAgPyBzaG93X3RyYWNl
X2xvZ19sdmwrMHgxYjAvMHgyZjAKPiBbwqAgMTY5LjU4MjMwMV3CoCA/IGFzbV9leGNfY29udHJv
bF9wcm90ZWN0aW9uKzB4MjYvMHgzMAo+IFvCoCAxNjkuNTg3MjQ0XcKgID8gZXhjX2NvbnRyb2xf
cHJvdGVjdGlvbisweDE4Yy8weDE5MAo+IFvCoCAxNjkuNTkyMDExXcKgID8gX19kaWVfYm9keS5j
b2xkKzB4OC8weDEyCj4gW8KgIDE2OS41OTU5MTBdwqAgPyBkaWUrMHgyZS8weDUwCj4gW8KgIDE2
OS41OTg4NjNdwqAgPyBkb190cmFwKzB4Y2EvMHgxMTAKPiBbwqAgMTY5LjYwMjI0M13CoCA/IGRv
X2Vycm9yX3RyYXArMHg2NS8weDgwCj4gW8KgIDE2OS42MDYwNDldwqAgPyBleGNfY29udHJvbF9w
cm90ZWN0aW9uKzB4MThjLzB4MTkwCj4gW8KgIDE2OS42MTA4MTZdwqAgPyBleGNfaW52YWxpZF9v
cCsweDUwLzB4NzAKPiBbwqAgMTY5LjYxNDcxNV3CoCA/IGV4Y19jb250cm9sX3Byb3RlY3Rpb24r
MHgxOGMvMHgxOTAKPiBbwqAgMTY5LjYxOTQ4Ml3CoCA/IGFzbV9leGNfaW52YWxpZF9vcCsweDFh
LzB4MjAKPiBbwqAgMTY5LjYyMzcyOF3CoCA/IGV4Y19jb250cm9sX3Byb3RlY3Rpb24rMHgxOGMv
MHgxOTAKPiBbwqAgMTY5LjYyODQ5Nl3CoCA/IGV4Y19jb250cm9sX3Byb3RlY3Rpb24rMHgxNGYv
MHgxOTAKPiBbwqAgMTY5LjYzMzI2M13CoCBhc21fZXhjX2NvbnRyb2xfcHJvdGVjdGlvbisweDI2
LzB4MzAKPiBbwqAgMTY5LjYzODAzMF0gUklQOiAwMDEwOjB4ODA0MWQwCj4gW8KgIDE2OS42NDEx
NDJdIENvZGU6IFVuYWJsZSB0byBhY2Nlc3Mgb3Bjb2RlIGJ5dGVzIGF0IDB4ODA0MWE2Lgo+IFvC
oCAxNjkuNjQ2ODU3XSBSU1A6IDAwMTg6ZmY1NWIzY2JhMTY3ZmI1MCBFRkxBR1M6IDAwMDEwMDA3
Cj4gW8KgIDE2OS42NTIxNDRdIFJBWDogMDAwMDAwMDAwMDgwNDFkMCBSQlg6IDAwMDAwMDAwMDAw
MDAwMDAgUkNYOiAwMDAwMDAwMDAwMDAwMDA1Cj4gW8KgIDE2OS42NTkzNDFdIFJEWDogMDBjNmU4
YTdjMDAwMDAwMCBSU0k6IDAwMDAwMDAwMDAwMDAwMDEgUkRJOiBmZmZmZmZmZmZmMWZmMDAwCj4g
W8KgIDE2OS42NjY1MjVdIFJCUDogMDAwMDAwMDAwMDAwMDAwNSBSMDg6IDAwMDAwMDAwMDAwMDAw
MDAgUjA5OiAwMDAwMDAwMDAwMDBmZmZmCj4gW8KgIDE2OS42NzM3MDldIFIxMDogMDAwMDAwMDAw
MDAwMDAwMCBSMTE6IGZmZmZmZmZmZmZmZjAwMDAgUjEyOiAwMDAwMDAwMDAwMDAyMDAxCj4gW8Kg
IDE2OS42ODA5MDZdIFIxMzogZmZmZmZmZmZhNWFlMDJjOCBSMTQ6IDAwMDAwMDAwZmZmZmZmZmYg
UjE1OiAwMDAwMDAwMDAwMDAwMDAwCj4gW8KgIDE2OS42ODgwOTFdwqAgPyB0Ym9vdF9zaHV0ZG93
bisweDViLzB4MTQwCj4gW8KgIDE2OS42OTIwODRdwqAgPyB0Ym9vdF9zbGVlcCsweDEyYy8weDE0
MAo+IFvCoCAxNjkuNjk1ODkwXcKgID8gYWNwaV9vc19lbnRlcl9zbGVlcCsweDJiLzB4NjAKPiBb
wqAgMTY5LjcwMDIyMV3CoCA/IGFjcGlfaHdfbGVnYWN5X3NsZWVwKzB4MTQwLzB4MWMwCj4gW8Kg
IDE2OS43MDQ4MTZdwqAgPyBhY3BpX3Bvd2VyX29mZisweDE2LzB4NDAKPiBbwqAgMTY5LjcwODcx
NV3CoCA/IHN5c19vZmZfbm90aWZ5KzB4NDgvMHg3MAo+IFvCoCAxNjkuNzEyNjE1XcKgID8gbm90
aWZpZXJfY2FsbF9jaGFpbisweDVhLzB4ZDAKPiBbwqAgMTY5LjcxNjk0M13CoCA/IGF0b21pY19u
b3RpZmllcl9jYWxsX2NoYWluKzB4MzIvMHg1MAo+IFvCoCAxNjkuNzIxODg1XcKgID8gZG9fa2Vy
bmVsX3Bvd2VyX29mZisweDNlLzB4NTAKPiBbwqAgMTY5LjcyNjIxM13CoCA/IG5hdGl2ZV9tYWNo
aW5lX3Bvd2VyX29mZisweDIxLzB4NDAKPiBbwqAgMTY5LjczMDk4M13CoCA/IF9fZG9fc3lzX3Jl
Ym9vdCsweDFkMi8weDI0MAo+IFvCoCAxNjkuNzM1MTUxXcKgID8gZG9fc3lzY2FsbF82NCsweDdk
LzB4MTYwCj4gW8KgIDE2OS43MzkwNTNdwqAgPyBzeXNjYWxsX2V4aXRfd29yaysweGYzLzB4MTIw
Cj4gW8KgIDE2OS43NDMzMDJdwqAgPyBzeXNjYWxsX2V4aXRfdG9fdXNlcl9tb2RlKzB4MzIvMHgx
OTAKPiBbwqAgMTY5Ljc0ODI0M13CoCA/IGRvX3N5c2NhbGxfNjQrMHg4OS8weDE2MAo+IFvCoCAx
NjkuNzUyMTQzXcKgID8gX19jb3VudF9tZW1jZ19ldmVudHMrMHhkZi8weDE3MAo+IFvCoCAxNjku
NzU2NjQ1XcKgID8gaGFuZGxlX21tX2ZhdWx0KzB4MjU2LzB4MzcwCj4gW8KgIDE2OS43NjA4MTNd
wqAgPyBkb191c2VyX2FkZHJfZmF1bHQrMHgzNDcvMHg2NDAKPiBbwqAgMTY5Ljc2NTIzNV3CoCA/
IGV4Y19wYWdlX2ZhdWx0KzB4NzMvMHgxNjAKPiBbwqAgMTY5Ljc2OTIyOF3CoCA/IGVudHJ5X1NZ
U0NBTExfNjRfYWZ0ZXJfaHdmcmFtZSsweDc2LzB4N2UKPiAKCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KdGJvb3QtZGV2ZWwgbWFpbGluZyBsaXN0CnRi
b290LWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdl
Lm5ldC9saXN0cy9saXN0aW5mby90Ym9vdC1kZXZlbAo=
