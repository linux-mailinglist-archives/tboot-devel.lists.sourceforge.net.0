Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C1F19D14605
	for <lists+tboot-devel@lfdr.de>; Mon, 12 Jan 2026 18:32:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:References:To:MIME-Version:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MsW0CuCk/hRKyC+JrvQl/RCRnh7oDen4B0Rn/zMNJl0=; b=cgFwFdeSN3ks2Gvhtd2uqrmoe1
	oJGdw/jjMxyWhOnz8SZlA9r27geua44R9AcYwSJJ5bBdKSp8OjOdP74BID75x3/wsorYF9hER9rDc
	wXVYSt9O0qIzcZgzAh8mnvkfMRgkqt6oTggu4234DAnBvc2nvpc6G8MQJXLshgGjVT9I=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1vfLli-0003Mx-Bi;
	Mon, 12 Jan 2026 17:31:54 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcamuso@redhat.com>) id 1vfLlg-0003Mp-N8
 for tboot-devel@lists.sourceforge.net;
 Mon, 12 Jan 2026 17:31:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Cc:To:From:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tOwk8VMztEIkNafL45QZZwD7L3p3oXT7KAteupa3pZo=; b=OcB9lGDlcR+bDmZ0fiiqn6tXxe
 6uRCxNPKrH0607as5RoP/Kvz0FqDn9I7L31V2+vVN6n15RqCt2rsHzoVQ8NUWyoyn7du4xis2GIMk
 LEaVmQhdWpsEj5PcPJnYYfxEPA1mSeUic/+G5Y3M1nMQgDSoRM73WwIsX+1mAO38DzxE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Cc:To:From:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tOwk8VMztEIkNafL45QZZwD7L3p3oXT7KAteupa3pZo=; b=DL1nSa1BgnyjjM+1N0/+C7Sbqh
 5b8WP4DoL1nDP4Ex3c1AFf2CVsjXUfkQoX/uGBXdH9QUo/E7R0syeN4HwN60Qh73H8vPag1gh3Fmo
 mi0AKRxMXGQSze3oj1UUpNZFBJQNRgGyXsHAJJW+B/wETbSw2Nj1XZzlhITll+oXLL7k=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vfLlf-0007qG-UW for tboot-devel@lists.sourceforge.net;
 Mon, 12 Jan 2026 17:31:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1768239100;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=tOwk8VMztEIkNafL45QZZwD7L3p3oXT7KAteupa3pZo=;
 b=MlYqhN6/AKilg/RZ/YHcCu8y5xantSg0WO0xOl2/kCpV4wIiuITVFP7sjAx/JpPKsORpzB
 QjyVpVzXKb8pLCL+RAq46FUpLJ0KC564xKslC4oCQGfckpkgOIQARDnUQ2aeMs70FV9F4Y
 A+Tfz8RRrvufqK7JHycDmKbRUkPcwEg=
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com
 [209.85.221.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-365-cGwF5GRbPR6tpO-1f5rXbA-1; Mon, 12 Jan 2026 12:31:38 -0500
X-MC-Unique: cGwF5GRbPR6tpO-1f5rXbA-1
X-Mimecast-MFC-AGG-ID: cGwF5GRbPR6tpO-1f5rXbA_1768239098
Received: by mail-vk1-f197.google.com with SMTP id
 71dfb90a1353d-5636274b2feso8361316e0c.1
 for <tboot-devel@lists.sourceforge.net>; Mon, 12 Jan 2026 09:31:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768239098; x=1768843898;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:from:subject:user-agent:mime-version:date:message-id:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=tOwk8VMztEIkNafL45QZZwD7L3p3oXT7KAteupa3pZo=;
 b=hOWmAhmdUIX0O/966ESFaTVJxhdSk223PWfra52cS3zxri7cX15SVshZN1kPqz+GC9
 xGwmm1mYfzQEYSl+HQNPMcFq+743ZvpJUinGh7oRYmQdoX8A/wlSeH/8HFRB2ihZHkyG
 Y1NWlGsxfo01XhctDfUBthmfcRoB6Bcgd5oey2PjMTemaCBzTb64CL/eYMQ6a9S8JDei
 vuw/eRXviP9SBwLA2FgRw2tAFYYLxyi6L79gQ9MaAUBrusLsDv0fJJQEuDWc6PGXqEyJ
 cpDNs6NUEvAj7toGmggTMpAE9f8U0hWcKS74jGOqV/MOFph7eAg8wI4IwunM9pafIu82
 YyPg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVU+no2NtyfmF5BtQTPkLG8N6Kel1X7hm/Illrh8ExHPCYEVfd6jnWiXTX4e9dMiJDxFyTQEjMbieZjaQ==@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yzn488XKQ6299yuS30zevl4gT5mQ/E3xOaUythpzAHcuG8lZ+Ha
 B/6eF4T9DomFMAsQ7oSP3fAgk3t3TVahSDqCvVIonIqGfLhO1zq8Nz5jyl52Y1QoWnuH6efEr0H
 kKULeZMvclJN12URasIEImIZEe8qJ9WMT/dbGYLCAFEluKAXhlt6c+p/OVEO65gN00L+CB6BJ
X-Gm-Gg: AY/fxX6JRlVjlTQ47M0c/XJDVbpod2Ics5PITPBx2LzofEu7fuARXD68vo9XmP6qXvR
 tlSI2XYYf4ubeC46PtUpQxVA7ZWiBQA8PvOeHmVqIqnT/aVnztuke5l4TtL3+eTMbauYV+qkuos
 pnhmH+wkoIVvpwcVzpPRH0V6pdB96XMG7Z0P9nkGniAzzAzAe984Ix1TLyEecR/ySHcBEsBvJv3
 20tzIPCFfIJ5qMFasMVkbYShaK81kcvTLJIKyhlVgRPGiCQ9cJ6ag8r9VLH5vK5idm+T3Ce5gIR
 2H9GYyrxwY6NJSMRbY0bmnoSyZdEoAv64EttXJ3u9P4ZPxz4YE8AK8XmHjp7N1Z391RldfDv8Xo
 rYtDb2qEIII8=
X-Received: by 2002:a05:6122:6b07:b0:563:60ce:9d53 with SMTP id
 71dfb90a1353d-56360cea08bmr5093916e0c.9.1768239097296; 
 Mon, 12 Jan 2026 09:31:37 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEWfozEG2RCdr776/dd7/OqD3BQPe90AOS190CjujXwz1xvy2qiNzp1kouWtBVenK9Hwzrjtg==
X-Received: by 2002:a05:6122:6b07:b0:563:60ce:9d53 with SMTP id
 71dfb90a1353d-56360cea08bmr5093896e0c.9.1768239096750; 
 Mon, 12 Jan 2026 09:31:36 -0800 (PST)
Received: from [10.6.10.143] ([66.187.232.140])
 by smtp.gmail.com with ESMTPSA id
 71dfb90a1353d-5636134be9fsm11677998e0c.16.2026.01.12.09.31.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 12 Jan 2026 09:31:35 -0800 (PST)
Message-ID: <6323166f-e7f8-4a42-b8b1-a67ddb4c3ec7@redhat.com>
Date: Mon, 12 Jan 2026 12:31:30 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Bagas Sanjaya <bagasdotme@gmail.com>, ning.sun@intel.com,
 tboot-devel@lists.sourceforge.net
References: <20251017073619.547993-1-michal.camacho.romero@linux.intel.com>
 <aST5ruhnbILZnoUO@archie.me>
 <acdc2b7f-8d2f-47b7-8324-01c060e8aa68@redhat.com>
 <358c63d6-5a25-462d-af04-1703bb7840e8@redhat.com>
In-Reply-To: <358c63d6-5a25-462d-af04-1703bb7840e8@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: Jz8wrzl_q4lF_Gh8Hf8ZYZwDojcaMs6e8N7tLXSFil0_1768239098
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 12/11/25 8:46 AM, Tony Camuso wrote: > > On 12/10/2025
 1:10 PM, Tony Camuso wrote: >> On 11/24/2025 7:34 PM, Bagas Sanjaya wrote:
 >>> On Thu, Nov 13, 2025 at 09:37:14AM -0500, Tony Camuso wrote: >> [...]
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vfLlf-0007qG-UW
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

CgpPbiAxMi8xMS8yNSA4OjQ2IEFNLCBUb255IENhbXVzbyB3cm90ZToKPiAKPiBPbiAxMi8xMC8y
MDI1IDE6MTAgUE0sIFRvbnkgQ2FtdXNvIHdyb3RlOgo+PiBPbiAxMS8yNC8yMDI1IDc6MzQgUE0s
IEJhZ2FzIFNhbmpheWEgd3JvdGU6Cj4+PiBPbiBUaHUsIE5vdiAxMywgMjAyNSBhdCAwOTozNzox
NEFNIC0wNTAwLCBUb255IENhbXVzbyB3cm90ZToKPj4+PiBUaGUgdGJvb3QtPnNodXRkb3duX2Vu
dHJ5IGlzIGVmZmVjdGl2ZWx5IGJpb3MgY29kZSBhbmQgQ0VUIG5lZWRzIHRvIGJlCj4+Pj4gZGlz
YWJsZWQgYmVmb3JlIGNhbGxpbmcgaXQuCj4+Pj4KPj4+PiBJdCByZXNvbHZlcyBUQk9PVCBzaHV0
ZG93biBmYWlsdXJlIGJ1ZywgcmVwb3J0ZWQgb24gdGhlIFNMRVMgKFNVU0UgCj4+Pj4gTGludXgK
Pj4+PiBFbnRlcnByaXNlIFNlcnZlcikgMTYuMCBPUy4gT1MgcG93ZXIgb2ZmLCBjYWxsZWQgYnkg
dGhlICJpbml0IDAiIAo+Pj4+IGNvbW1hbmQsCj4+Pj4gd2FzIGZhaWxpbmcsIGR1ZSB0byBhY3Rp
dmF0ZWQgSW50ZWwgQ29udHJvbC1GbG93IEVuZm9yY2VtZW50IFRlY2hub2xvZ3kKPj4+PiAoQ0VU
KS4KPj4+PiBEaXNhYmxpbmcgQ0VUIGhhcyBhbGxvd2VkIHRvIGV4ZWN1dGUgT1MgYW5kIFRCT09U
IHNodXRkb3duIHByb3Blcmx5Lgo+Pj4KPj4+IEFyZSBgYHN5c3RlbWN0bCBwb3dlcm9mZmBgIGFu
ZCBgYHNodXRkb3duIC1QYGAgYXJlIGFsc28gYWZmZWN0ZWQ/Cj4+Pgo+Pj4gQ29uZnVzZWQuLi4K
Pj4+Cj4+Cj4+IFllcywgYWxsIHNodXRkb3duIG1ldGhvZHMgb24ga2VybmVscyBsYXVuY2hlZCB3
aXRoIHRib290LCBvbiBzeXN0ZW1zIHRoYXQKPj4gZXhwb3NlIHRoZSBDUFUgaWJ0IGZsYWcgdG8g
a2VybmVscyB2Ni4xMisgd2lsbCBjYXVzZSB0aGUgc3RhY2sgdHJhY2UgCj4+IGFwcGVuZGVkCj4+
IGJlbG93Lgo+Pgo+PiBUaGUgc3RhY2sgdHJhY2UgZGVtb25zdHJhdGVzIHRoYXQgQ0VUIGVuZm9y
Y2VtZW50IGNvbGxpZGVzIHdpdGggbGVnYWN5Cj4+IEJJT1Mgc2h1dGRvd24gY29kZSB0aGF0IGxh
Y2tzIEVOREJSIG1hcmtlcnMuIFRoZSBrZXJuZWwgQlVHIGF0Cj4+IGNldC5jOjEwMiBpcyBhIGRp
cmVjdCByZXN1bHQgb2YgQ0VUIGJlaW5nIGFjdGl2ZSB3aGVuIGp1bXBpbmcgaW50bwo+PiB0Ym9v
dC0+c2h1dGRvd25fZW50cnkuCj4+Cj4+IExlZ2FjeSBCSU9TL3Rib290IGNvZGUgd2l0aG91dCBF
TkRCUiBub3cgdHJhcHMsIHJlcXVpcmluZyBDRVQgdG8gYmUgCj4+IGRpc2FibGVkCj4+IGFyb3Vu
ZCB0aGF0IGNhbGwuCj4+Cj4+IFRoZSBwYXRjaDoKPj4gwqDCoMKgwqAgUHJldmVudHMgQ0VUIGZy
b20gZmFsc2VseSB0cmFwcGluZyBvbiBub24tQ0VUIEJJT1MgY29kZS4KPiAKPiBOZWVkIHRvIGNs
YXJpZnkgZnVydGhlcjoKPiAKPiBUaGUgcGF0Y2ggcHJldmVudHMgQ0VUIGZyb20gdHJhcHBpbmcg
d2hlbiB0Ym9vdCBpbnZva2VzIHRoZSBCSU9TLXByb3ZpZGVkCj4gc2h1dGRvd25fZW50cnkgcm91
dGluZSwgd2hpY2ggbGFja3MgRU5EQlIgaW5zdHJ1Y3Rpb25zLgo+IAo+IHRib290IHNpZGU6Cj4g
IMKgIEluIHRib290X3NodXRkb3duKCksIHRoZSBrZXJuZWwgc3dpdGNoZXMgdG8gdGhlIHRib290
IHBhZ2UgdGFibGVzIGFuZAo+ICDCoCB0aGVuIGNhbGxzOgo+ICDCoMKgwqDCoHNodXRkb3duID0g
KHZvaWQoKikodm9pZCkpKHVuc2lnbmVkIGxvbmcpdGJvb3QtPnNodXRkb3duX2VudHJ5Owo+ICDC
oMKgwqDCoHNodXRkb3duKCk7Cj4gCj4gIMKgIFRoYXQgc2h1dGRvd25fZW50cnkgcG9pbnRlciBj
b21lcyBmcm9tIHRoZSB0Ym9vdCBzdHJ1Y3R1cmUsIHBvcHVsYXRlZAo+ICDCoCBhdCBib290Lgo+
ICDCoMKgwqAgSW4gdGhlIHRib290IHByb2plY3QgZGlyZWN0b3J5LCBzZWUgaW5jbHVkZS90Ym9v
dC5oCj4gIMKgwqDCoCBJbiB0aGUga2VybmVsLCBzZWUgaW5jbHVkZS9saW51eC90Ym9vdC5oCj4g
Cj4gQklPUyBzaWRlOgo+ICDCoCBUaGUgYWN0dWFsIHJvdXRpbmUgYmVoaW5kIHNodXRkb3duX2Vu
dHJ5IGlzIGltcGxlbWVudGVkIGluIEJJT1MvIAo+IGZpcm13YXJlLgo+ICDCoCBJdOKAmXMgbm90
IGNvbXBpbGVkIHdpdGggQ0VUL0lCVCBzdXBwb3J0LCBzbyBpdCBsYWNrcyB0aGUgcmVxdWlyZWQg
RU5EQlI2NAo+ICDCoCBpbnN0cnVjdGlvbiBhdCBpdHMgZW50cnkgcG9pbnQKPiAKPiAgwqAgV2hl
biBDRVQgaXMgc3RpbGwgZW5hYmxlZCwgdGhlIENQVSBlbmZvcmNlcyBJQlQuIEp1bXBpbmcgaW50
byB0aGF0IEJJT1MKPiAgwqAgcm91dGluZSB3aXRob3V0IEVOREJSIHRyaWdnZXJzIGEgI0NQIChj
b250cm9sIHByb3RlY3Rpb24gZXhjZXB0aW9uKSwKPiAgwqAgd2hpY2ggaXMgd2hhdCB0aGUgc3Rh
Y2sgdHJhY2Ugc2hvd3MuCj4gCj4gIMKgIFNvIGl0IGlzIHRoZSBCSU9TIHNodXRkb3duX2VudHJ5
IGZ1bmN0aW9uIGl0c2VsZiB0aGF0IGNhdXNlcyB0aGUgdHJhcCwKPiAgwqAgYnV0IG9ubHkgYmVj
YXVzZSB0Ym9vdCBpcyBoYW5kaW5nIGNvbnRyb2wgdG8gaXQgd2hpbGUgQ0VUIGlzIGFjdGl2ZS4K
PiAKPiBXaGF0IGhhcHBlbnM6Cj4gIMKgIEZyb20gdGhlIHN0YWNrIHRyYWNlCj4gIMKgwqDCoCBN
aXNzaW5nIEVOREJSOiAweDgwNDFkMAo+ICDCoMKgwqAga2VybmVsIEJVRyBhdCBhcmNoL3g4Ni9r
ZXJuZWwvY2V0LmM6MTAyIQo+ICDCoMKgwqAgUklQOiAwMDEwOjB4ODA0MWQwCj4gIMKgIFRoaXMg
c2hvd3MgdGhlIENQVSB0cmFwcGluZyBvbiBlbnRyeSBpbnRvIHRoZSBzaHV0ZG93biByb3V0aW5l
IGF0IAo+IGFkZHJlc3MKPiAgwqAgMHg4MDQxZDAsIHdoaWNoIGlzIHRoZSBwb2ludGVyIHN0b3Jl
ZCBpbiB0Ym9vdC0+c2h1dGRvd25fZW50cnkKPiAKPiAgwqAgVGhlIHNodXRkb3duX2VudHJ5IGZp
ZWxkIGlzIGV4cGxpY2l0bHkgZG9jdW1lbnRlZCBhcyB0aGUgcGh5c2ljYWwgCj4gYWRkcmVzcwo+
ICDCoCBvZiB0aGUgQklPUyBzaHV0ZG93biByb3V0aW5lLiBUaGlzIHN0cnVjdHVyZSBpcyBwb3B1
bGF0ZWQgYnkgdGJvb3QgYXQgCj4gYm9vdC4KPiAKPj4KPj4gwqDCoMKgwqAgTWFpbnRhaW5zIHN5
c3RlbSBzdGFiaWxpdHkgZHVyaW5nIHNodXRkb3duLgo+Pgo+PiDCoMKgwqDCoCBQcmVzZXJ2ZXMg
Q0VUIHByb3RlY3Rpb24gZWxzZXdoZXJlLCBvbmx5IGRpc2FibGluZyBpdCBmb3IgdGhlCj4+IMKg
wqDCoMKgIG5hcnJvdyB3aW5kb3cgd2hlcmUgbGVnYWN5IGZpcm13YXJlIG11c3QgcnVuLgo+Pgo+
Pgo+PiBbwqAgMTY5LjQyMDA3OF0gcmVib290OiBQb3dlciBkb3duCj4+IFvCoCAxNjkuNDI3NTE2
XSBNaXNzaW5nIEVOREJSOiAweDgwNDFkMAo+PiBbwqAgMTY5LjQzMTEyOF0gLS0tLS0tLS0tLS0t
WyBjdXQgaGVyZSBdLS0tLS0tLS0tLS0tCj4+IFvCoCAxNjkuNDM1ODA1XSBrZXJuZWwgQlVHIGF0
IGFyY2gveDg2L2tlcm5lbC9jZXQuYzoxMDIhCj4+IFvCoCAxNjkuNDQwODQwXSBPb3BzOiBpbnZh
bGlkIG9wY29kZTogMDAwMCBbIzFdIFNNUCBOT1BUSQo+PiBbwqAgMTY5LjQ0NTk2Nl0gQ1BVOiAw
IFVJRDogMCBQSUQ6IDMzNTQgQ29tbTogcG93ZXJvZmYgS2R1bXA6IGxvYWRlZCAKPj4gTm90IHRh
aW50ZWQgNi4xMi4wLTEyNC44LjEuZWwxMF8xLng4Nl82NCAjMSBQUkVFTVBUKHZvbHVudGFyeSkK
Pj4gW8KgIDE2OS40NTc1ODBdIEhhcmR3YXJlIG5hbWU6IERlbGwgSW5jLiBQb3dlckVkZ2UgUjU3
MC8wM1RKUjMsIEJJT1MgCj4+IDEuMi4xIDAxLzIzLzIwMjUKPj4gW8KgIDE2OS40NjUxMTNdIFJJ
UDogMDAxMDpleGNfY29udHJvbF9wcm90ZWN0aW9uKzB4MThjLzB4MTkwCj4+IFvCoCAxNjkuNDcw
NDkwXSBDb2RlOiAxYyBmZiA0NSAzMSBjOSA0OSA4OSBkOCBiOSAwOSAwMCAwMCAwMCA0OCA4YiA5
MyAKPj4gODAgMDAgMDAgMDAgYmUgNjMgMDAgMDAgMDAgNDggYzcgYzcgYTQgODUgZTUgYTQgZTgg
NzkgOTIgMzAgZmYgZTkgMDIgCj4+IGZmIGZmIGZmIDwwZj4gMGIgNjYgOTAgOTAgOTAgOTAgOTAg
OTAgOTAgOTAgOTAgOTAgOTAgOTAgOTAgOTAgOTAgOTAgOTAgCj4+IDY2IDBmCj4+IFvCoCAxNjku
NDg5MjkyXSBSU1A6IDAwMTg6ZmY1NWIzY2JhMTY3ZmE4OCBFRkxBR1M6IDAwMDEwMDAyCj4+IFvC
oCAxNjkuNDk0NTgxXSBSQVg6IDAwMDAwMDAwMDAwMDAwMTcgUkJYOiBmZjU1YjNjYmExNjdmYWE4
IFJDWDogCj4+IDAwMDAwMDAwZmZmZjdmZmYKPj4gW8KgIDE2OS41MDE3NjVdIFJEWDogMDAwMDAw
MDAwMDAwMDAwMCBSU0k6IDAwMDAwMDAwMDAwMDAwMDMgUkRJOiAKPj4gMDAwMDAwMDAwMDAwMDAw
MQo+PiBbwqAgMTY5LjUwODk0OV0gUkJQOiAwMDAwMDAwMDAwMDAwMDAzIFIwODogMDAwMDAwMDAw
MDAwMDAwMCBSMDk6IAo+PiBmZmZmZmZmZmE1OWUyYjA4Cj4+IFvCoCAxNjkuNTE2MTMyXSBSMTA6
IGZmZmZmZmZmYTU5MjJhYzggUjExOiAwMDAwMDAwMDAwMDAwMDAzIFIxMjogCj4+IDAwMDAwMDAw
MDAwMDAwMDAKPj4gW8KgIDE2OS41MjMzMTZdIFIxMzogMDAwMDAwMDAwMDAwMDAwMCBSMTQ6IDAw
MDAwMDAwMDAwMDAwMDAgUjE1OiAKPj4gMDAwMDAwMDAwMDAwMDAwMAo+PiBbwqAgMTY5LjUzMDUx
NF0gRlM6wqAgMDAwMDdmNWY5YTEyMjE0MCgwMDAwKSBHUzpmZjM5MTc1YzJkZTAwMDAwKDAwMDAp
IAo+PiBrbmxHUzowMDAwMDAwMDAwMDAwMDAwCj4+IFvCoCAxNjkuNTM4NjU5XSBDUzrCoCAwMDEw
IERTOiAwMDAwIEVTOiAwMDAwIENSMDogMDAwMDAwMDA4MDA1MDAzMwo+PiBbwqAgMTY5LjU0NDQ1
NF0gQ1IyOiAwMDAwNTU5Mzg2ZGM1MzIwIENSMzogMDAwMDAwMDEwZmJlMjAwMCBDUjQ6IAo+PiAw
MDAwMDAwMDAwZjcxZWYwCj4+IFvCoCAxNjkuNTUxNjUxXSBEUjA6IDAwMDAwMDAwMDAwMDAwMDAg
RFIxOiAwMDAwMDAwMDAwMDAwMDAwIERSMjogCj4+IDAwMDAwMDAwMDAwMDAwMDAKPj4gW8KgIDE2
OS41NTg4MzVdIERSMzogMDAwMDAwMDAwMDAwMDAwMCBEUjY6IDAwMDAwMDAwZmZmZTA3ZjAgRFI3
OiAKPj4gMDAwMDAwMDAwMDAwMDQwMAo+PiBbwqAgMTY5LjU2NjAxOV0gUEtSVTogNTU1NTU1NTQK
Pj4gW8KgIDE2OS41Njg3ODRdIENhbGwgVHJhY2U6Cj4+IFvCoCAxNjkuNTcxMjk1XcKgIDxUQVNL
Pgo+PiBbwqAgMTY5LjU3MzQ1OF3CoCA/IHNob3dfdHJhY2VfbG9nX2x2bCsweDFiMC8weDJmMAo+
PiBbwqAgMTY5LjU3Nzg4MF3CoCA/IHNob3dfdHJhY2VfbG9nX2x2bCsweDFiMC8weDJmMAo+PiBb
wqAgMTY5LjU4MjMwMV3CoCA/IGFzbV9leGNfY29udHJvbF9wcm90ZWN0aW9uKzB4MjYvMHgzMAo+
PiBbwqAgMTY5LjU4NzI0NF3CoCA/IGV4Y19jb250cm9sX3Byb3RlY3Rpb24rMHgxOGMvMHgxOTAK
Pj4gW8KgIDE2OS41OTIwMTFdwqAgPyBfX2RpZV9ib2R5LmNvbGQrMHg4LzB4MTIKPj4gW8KgIDE2
OS41OTU5MTBdwqAgPyBkaWUrMHgyZS8weDUwCj4+IFvCoCAxNjkuNTk4ODYzXcKgID8gZG9fdHJh
cCsweGNhLzB4MTEwCj4+IFvCoCAxNjkuNjAyMjQzXcKgID8gZG9fZXJyb3JfdHJhcCsweDY1LzB4
ODAKPj4gW8KgIDE2OS42MDYwNDldwqAgPyBleGNfY29udHJvbF9wcm90ZWN0aW9uKzB4MThjLzB4
MTkwCj4+IFvCoCAxNjkuNjEwODE2XcKgID8gZXhjX2ludmFsaWRfb3ArMHg1MC8weDcwCj4+IFvC
oCAxNjkuNjE0NzE1XcKgID8gZXhjX2NvbnRyb2xfcHJvdGVjdGlvbisweDE4Yy8weDE5MAo+PiBb
wqAgMTY5LjYxOTQ4Ml3CoCA/IGFzbV9leGNfaW52YWxpZF9vcCsweDFhLzB4MjAKPj4gW8KgIDE2
OS42MjM3MjhdwqAgPyBleGNfY29udHJvbF9wcm90ZWN0aW9uKzB4MThjLzB4MTkwCj4+IFvCoCAx
NjkuNjI4NDk2XcKgID8gZXhjX2NvbnRyb2xfcHJvdGVjdGlvbisweDE0Zi8weDE5MAo+PiBbwqAg
MTY5LjYzMzI2M13CoCBhc21fZXhjX2NvbnRyb2xfcHJvdGVjdGlvbisweDI2LzB4MzAKPj4gW8Kg
IDE2OS42MzgwMzBdIFJJUDogMDAxMDoweDgwNDFkMAo+PiBbwqAgMTY5LjY0MTE0Ml0gQ29kZTog
VW5hYmxlIHRvIGFjY2VzcyBvcGNvZGUgYnl0ZXMgYXQgMHg4MDQxYTYuCj4+IFvCoCAxNjkuNjQ2
ODU3XSBSU1A6IDAwMTg6ZmY1NWIzY2JhMTY3ZmI1MCBFRkxBR1M6IDAwMDEwMDA3Cj4+IFvCoCAx
NjkuNjUyMTQ0XSBSQVg6IDAwMDAwMDAwMDA4MDQxZDAgUkJYOiAwMDAwMDAwMDAwMDAwMDAwIFJD
WDogCj4+IDAwMDAwMDAwMDAwMDAwMDUKPj4gW8KgIDE2OS42NTkzNDFdIFJEWDogMDBjNmU4YTdj
MDAwMDAwMCBSU0k6IDAwMDAwMDAwMDAwMDAwMDEgUkRJOiAKPj4gZmZmZmZmZmZmZjFmZjAwMAo+
PiBbwqAgMTY5LjY2NjUyNV0gUkJQOiAwMDAwMDAwMDAwMDAwMDA1IFIwODogMDAwMDAwMDAwMDAw
MDAwMCBSMDk6IAo+PiAwMDAwMDAwMDAwMDBmZmZmCj4+IFvCoCAxNjkuNjczNzA5XSBSMTA6IDAw
MDAwMDAwMDAwMDAwMDAgUjExOiBmZmZmZmZmZmZmZmYwMDAwIFIxMjogCj4+IDAwMDAwMDAwMDAw
MDIwMDEKPj4gW8KgIDE2OS42ODA5MDZdIFIxMzogZmZmZmZmZmZhNWFlMDJjOCBSMTQ6IDAwMDAw
MDAwZmZmZmZmZmYgUjE1OiAKPj4gMDAwMDAwMDAwMDAwMDAwMAo+PiBbwqAgMTY5LjY4ODA5MV3C
oCA/IHRib290X3NodXRkb3duKzB4NWIvMHgxNDAKPj4gW8KgIDE2OS42OTIwODRdwqAgPyB0Ym9v
dF9zbGVlcCsweDEyYy8weDE0MAo+PiBbwqAgMTY5LjY5NTg5MF3CoCA/IGFjcGlfb3NfZW50ZXJf
c2xlZXArMHgyYi8weDYwCj4+IFvCoCAxNjkuNzAwMjIxXcKgID8gYWNwaV9od19sZWdhY3lfc2xl
ZXArMHgxNDAvMHgxYzAKPj4gW8KgIDE2OS43MDQ4MTZdwqAgPyBhY3BpX3Bvd2VyX29mZisweDE2
LzB4NDAKPj4gW8KgIDE2OS43MDg3MTVdwqAgPyBzeXNfb2ZmX25vdGlmeSsweDQ4LzB4NzAKPj4g
W8KgIDE2OS43MTI2MTVdwqAgPyBub3RpZmllcl9jYWxsX2NoYWluKzB4NWEvMHhkMAo+PiBbwqAg
MTY5LjcxNjk0M13CoCA/IGF0b21pY19ub3RpZmllcl9jYWxsX2NoYWluKzB4MzIvMHg1MAo+PiBb
wqAgMTY5LjcyMTg4NV3CoCA/IGRvX2tlcm5lbF9wb3dlcl9vZmYrMHgzZS8weDUwCj4+IFvCoCAx
NjkuNzI2MjEzXcKgID8gbmF0aXZlX21hY2hpbmVfcG93ZXJfb2ZmKzB4MjEvMHg0MAo+PiBbwqAg
MTY5LjczMDk4M13CoCA/IF9fZG9fc3lzX3JlYm9vdCsweDFkMi8weDI0MAo+PiBbwqAgMTY5Ljcz
NTE1MV3CoCA/IGRvX3N5c2NhbGxfNjQrMHg3ZC8weDE2MAo+PiBbwqAgMTY5LjczOTA1M13CoCA/
IHN5c2NhbGxfZXhpdF93b3JrKzB4ZjMvMHgxMjAKPj4gW8KgIDE2OS43NDMzMDJdwqAgPyBzeXNj
YWxsX2V4aXRfdG9fdXNlcl9tb2RlKzB4MzIvMHgxOTAKPj4gW8KgIDE2OS43NDgyNDNdwqAgPyBk
b19zeXNjYWxsXzY0KzB4ODkvMHgxNjAKPj4gW8KgIDE2OS43NTIxNDNdwqAgPyBfX2NvdW50X21l
bWNnX2V2ZW50cysweGRmLzB4MTcwCj4+IFvCoCAxNjkuNzU2NjQ1XcKgID8gaGFuZGxlX21tX2Zh
dWx0KzB4MjU2LzB4MzcwCj4+IFvCoCAxNjkuNzYwODEzXcKgID8gZG9fdXNlcl9hZGRyX2ZhdWx0
KzB4MzQ3LzB4NjQwCj4+IFvCoCAxNjkuNzY1MjM1XcKgID8gZXhjX3BhZ2VfZmF1bHQrMHg3My8w
eDE2MAo+PiBbwqAgMTY5Ljc2OTIyOF3CoCA/IGVudHJ5X1NZU0NBTExfNjRfYWZ0ZXJfaHdmcmFt
ZSsweDc2LzB4N2UKPj4KPiAKCkhpLCBCYWdhcy4KCkkgd2FudGVkIHRvIGZvbGxvdyB1cCBvbiB0
aGUgdGJvb3QvQ0VUIHBhdGNoIEkgc2VudCBvbiAyMDI1LTEyLTExLiBZb3UgCmhhZCBhc2tlZCB3
aGV0aGVyIHRoZSBJQlQgZmFpbHVyZSBvY2N1cnJlZCBvbmx5IGluIGNlcnRhaW4gc2h1dGRvd24g
CnBhdGhzLiBJ4oCZdmUgc2luY2UgdGVzdGVkIGFsbCB0aGUgc2h1dGRvd24gYW5kIHJlYm9vdCBm
bG93cyBhdmFpbGFibGUgb24gCnRoaXMgc3lzdGVtLCBhbmQgdGhleSBhbGwgaGl0IHRoZSBzYW1l
IHRib290X3NodXRkb3duKCkg4oaSIHNodXRkb3duX2VudHJ5IApwYXRoIGFuZCB0cmlnZ2VyIGEg
I0NQIHdoZW4gQ0VUIGlzIGVuYWJsZWQuCgpUbyByZWNhcCB0aGUgZmluZGluZ3M6CgogICAgIHNo
dXRkb3duX2VudHJ5IHVsdGltYXRlbHkgcG9pbnRzIHRvIGEgQklPUy9maXJtd2FyZSByb3V0aW5l
LgoKICAgICBUaGF0IHJvdXRpbmUgaXNu4oCZdCBidWlsdCB3aXRoIENFVC9JQlQsIHNvIGl0IGxh
Y2tzIGFuIEVOREJSNjQgYXQKICAgICBpdHMgZW50cnkuCgogICAgIFdpdGggQ0VUIHN0aWxsIGFj
dGl2ZSwgSUJUIGVuZm9yY2VtZW50IGNhdXNlcyBhbiBpbW1lZGlhdGUgI0NQCiAgICAgd2hlbiBj
b250cm9sIGlzIHRyYW5zZmVycmVkLgoKICAgICBEaXNhYmxpbmcgQ0VUIGJlZm9yZSBjYWxsaW5n
IHNodXRkb3duX2VudHJ5IHJlc29sdmVzIHRoZSBpc3N1ZQogICAgIGFjcm9zcyBhbGwgdGVzdGVk
IHNodXRkb3duL3JlYm9vdCBwYXRocy4KCklmIHRoZXJl4oCZcyBhbnl0aGluZyB5b3XigJlkIGxp
a2UgY2xhcmlmaWVkIG9yIGFkanVzdGVkIGluIHRoZSBwYXRjaCBvciAKY2hhbmdlbG9nLCBJ4oCZ
bSBoYXBweSB0byB1cGRhdGUgaXQuIEp1c3Qgd2FudGVkIHRvIGNoZWNrIGluIG5vdyB0aGF0IAp3
ZeKAmXJlIHBhc3QgdGhlIGhvbGlkYXkgbHVsbC4KClRoYW5rcywKVG9ueSBDYW11c28gPHRjYW11
c29AcmVkaGF0LmNvbT4KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KdGJvb3QtZGV2ZWwgbWFpbGluZyBsaXN0CnRib290LWRldmVsQGxpc3RzLnNvdXJj
ZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby90
Ym9vdC1kZXZlbAo=
