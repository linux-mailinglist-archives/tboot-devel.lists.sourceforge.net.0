Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 82A5C1489F6
	for <lists+tboot-devel@lfdr.de>; Fri, 24 Jan 2020 15:39:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1iv07N-00089D-V0; Fri, 24 Jan 2020 14:39:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <omgalvan.86@gmail.com>) id 1iv07M-000896-PH
 for tboot-devel@lists.sourceforge.net; Fri, 24 Jan 2020 14:39:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=amu4aTOAv+tBXQTmVEPBgv4fnLdALPdX81ZLRzgp0Zw=; b=WL0dqMb0wDuVupiLE/C8BetLfz
 PFwtWo478650xdig30nHCJY3pzzcZhZZO4NgTAN/LfoY62j1V3BihMT5ix7wtn6XF/W+pz4mdf8ml
 3nUD0SI42S2IqK0/p+GmULuUTbRaRxEulkG6Gy/PCDnkfnObJfNwBfSJfgNfalfF6CVA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=amu4aTOAv+tBXQTmVEPBgv4fnLdALPdX81ZLRzgp0Zw=; b=G+rpblI0DKWwEWn0EtMybksrI5
 l/sWZuWnzJ8j1VxrkJDCWijl5BoOK78iSgIHMom5RHcLoX78WgpxsUNTftr0CmHfJyuw2G76ES6Oi
 UDnTIM8h6SsEXG/vM9AT3mtq1WT/38pPXq1Mp94k0cqBBSXe7j4EitD3JZVZFkcKOPIc=;
Received: from mail-ot1-f47.google.com ([209.85.210.47])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iv07K-003wXi-AO
 for tboot-devel@lists.sourceforge.net; Fri, 24 Jan 2020 14:39:28 +0000
Received: by mail-ot1-f47.google.com with SMTP id d3so1490030otp.4
 for <tboot-devel@lists.sourceforge.net>; Fri, 24 Jan 2020 06:39:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=amu4aTOAv+tBXQTmVEPBgv4fnLdALPdX81ZLRzgp0Zw=;
 b=M62ZhM3MBOr3bgCf6GHufQqFwatFr3t0/hnKVidNgaO2LYIGS8Twoz5M1WK2+0XIbj
 Rkvua0/gUCo7rVfcgsFbXD4YdW+9HVmmK+AHWniFAotdr0gYQioSjiv576yErlrAJ3E7
 ninza4AW3GAc+lCtSpyK31cXvc0HQmjVfU1TUa2P729JKhAu1ENm7hK54w8gCbfQCCgu
 0znE4XC6LP5odD+IsmUkb4w2bBBmI2sj0iihpjwEihFWJn15Wl3NhslL9/4nw/pJFkZ8
 l1k4Os/yg4eFm1rZOvozaAR48udOi9q3A5m3ksvJLNfoKiwt0NjnXhOkN5Bjbe9DP/a6
 aEeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=amu4aTOAv+tBXQTmVEPBgv4fnLdALPdX81ZLRzgp0Zw=;
 b=aRClfPBeQxjPdp7h9tsU1uct6EasNLzw/xwEpb7K36LkRaIMsR/kVtc+K0YtO32ZxI
 3hpB7o/SleBCR1XNvFzw1FoW/tj0t4AVAU24y+lHwM6L2bi2tTizvAxvei1EGl+DnVr8
 X8UDshIkd22aw77r2wynH5V/JZ6AEp4v0ZKomE43h0P8C7nO9GASmLUdDTpDnbnziK6b
 V1i3Ff2wq/OhET1yH0wh1UkizJLaYxoMxcU6PzGbRhSXWopk2ugePuOskWNmrEqELQhi
 gVyeZNFaDJHoRbzR3Na8qs5bdh4R1r8T8wcoia+B4GUOmVCx1/XDVKa+B34/dUy9pviy
 dXQg==
X-Gm-Message-State: APjAAAUKnmLBDfdM/qZ96WCoeNLZCM7DNPZaQRXyhxOnDGKelUG+G8HC
 RIiFkBHmn0hZ5iBNtUDkWIN6iKUEhRXRIatdkWo=
X-Google-Smtp-Source: APXvYqwH2DE4lHS6rTLEXThLSKV6Q3+uunaxtr3mYJr7BO8cR0NXTyICfE7nutuFd7S5Q5YynmhnL5udVPkYELszACA=
X-Received: by 2002:a9d:7552:: with SMTP id b18mr2816999otl.20.1579876760320; 
 Fri, 24 Jan 2020 06:39:20 -0800 (PST)
MIME-Version: 1.0
References: <CAN19L9G6aATCT2gP_P_spwmK-pv+FBi30pLe0CXRyfFtNBXORw@mail.gmail.com>
 <e79098d128ee35f7c370ab7cb100e6c80d3546ed.camel@linux.intel.com>
In-Reply-To: <e79098d128ee35f7c370ab7cb100e6c80d3546ed.camel@linux.intel.com>
From: Martin Galvan <omgalvan.86@gmail.com>
Date: Fri, 24 Jan 2020 11:39:09 -0300
Message-ID: <CAN19L9HLhhsXRU-1h5HT33y-nQOsS+NyBN2PzqYZNAd-cZsp_Q@mail.gmail.com>
To: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (omgalvan.86[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.47 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.47 listed in wl.mailspike.net]
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
X-Headers-End: 1iv07K-003wXi-AO
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: tboot-devel-bounces@lists.sourceforge.net

RWwgdmllLiwgMjQgZW5lLiAyMDIwIGEgbGFzIDExOjM0LCBMdWthc3ogSGF3cnlsa28KKDxsdWth
c3ouaGF3cnlsa29AbGludXguaW50ZWwuY29tPikgZXNjcmliacOzOgo+IEkgc2VlIHRoYXQgeW91
ciBTSU5JVC5CQVNFIGFuZCBIRUFQLkJBU0UgcmVnaXN0ZXJzIGhhdmUgYWxsIHplcm9zLCBkaWQK
PiB5b3UgZW5hYmxlIFRYVCBpbiBCSU9TPyBJIGd1ZXNzIHRoYXQgdHh0LXN0YXQgbWF5IG5vdCBj
aGVjayBpZiBUWFQgaXMKPiBlbmFibGVkIGJlZm9yZSByZWFkaW5nIFRYVCByZWxhdGVkIHJlZ2lz
dGVycywgdGhhdCdzIHdoeSB5b3UgY2FuIGhhdmUKPiBzdHJhbmdlLCByYW5kb20gdmFsdWVzLgoK
WWVzLCBJIHJlYWxpemVkIHRoaXMgOikgSSBkb24ndCBoYXZlIFRYVCBlbmFibGVkIG9uIEJJT1Mg
KGluIGZhY3QsCmNoZWNraW5nIGFnYWluIHRoaXMgaXNuJ3QgZXZlbiBhIHZQcm8gc3lzdGVtKSwg
c28gbWF5YmUgdGhlIHZhbHVlcyBhcmUKanVzdCBnYXJiYWdlLiBTdGlsbCwgSSBmaW5kIGl0IGlu
dGVyZXN0aW5nIHRoYXQgdGhlIFBDSCBWSUQgaXMKY29ycmVjdC4gSSdkIGV4cGVjdCBhbGwgdmFs
dWVzIHRvIGJlIGJvZ3VzIGhlcmUsIHNpbmNlIHRoZXkncmUgYmVpbmcKcmVhZCBmcm9tIHRoZSBU
WFQgcmVnaXN0ZXJzLgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCnRib290LWRldmVsIG1haWxpbmcgbGlzdAp0Ym9vdC1kZXZlbEBsaXN0cy5zb3VyY2Vm
b3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdGJv
b3QtZGV2ZWwK
