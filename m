Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E52F49DB50
	for <lists+tboot-devel@lfdr.de>; Thu, 27 Jan 2022 08:19:22 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1nCz3q-0004J5-Qz; Thu, 27 Jan 2022 07:19:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jun.miao@intel.com>) id 1nCz3n-0004Ix-LT
 for tboot-devel@lists.sourceforge.net; Thu, 27 Jan 2022 07:19:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wHakwo2cesWiE5RnAXBmoQs08j8QUn6r2fR8bvolBhU=; b=JL+mTlfKpn2EN7f5rgin7gs9df
 60t7Mp4TvT3aCIKY0TWEYLmcehN92YeNKVbR0vhoD3Fwqy1z23tiJHRjIJ5Jh+wecbwtFsDw9/6JZ
 uO0sV2B7HV/RBmaG1Hph+xoIYPJ0vgLvK8FDGR16dFpH/DxZVcUUBgKVl/7IruVGWgq8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wHakwo2cesWiE5RnAXBmoQs08j8QUn6r2fR8bvolBhU=; b=XSk3E+zp1tL5nVOlXrPoW50qN2
 enp5EQDqCmUc85Y/oNGDsg5HRv7eoLvK/Kcd/b8E+A2EZlZL3RCj/fH1vO5P6TeYjfzIj1jpYfhyW
 a3qrkSwGa6UCNPoq9tluvGRO2N36wnV4dqLAsuMZHnRqq7vP6mbc0XgtCSaLKQmdj0zA=;
Received: from mga11.intel.com ([192.55.52.93])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1nCz3l-00FmLT-Gf
 for tboot-devel@lists.sourceforge.net; Thu, 27 Jan 2022 07:19:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643267949; x=1674803949;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QI/XprlmeTxPyUHv/pgIezNuOYBATtdT6BYMtHwBccU=;
 b=EdUzxOCkLHlbw1TI66YF0/ZxTw9YFJFQ/4KPYxMeVJ2sEmMvfGmlXNNb
 dtHzRR4e3goMTzeROpJEiKPG9PjrcyJc7R05LA4TkId8SzcN0N9qvfFrt
 fIyazyCQMcLkHtYpzQ3FzDoD+3Z/HY6/sCXaTa+krESu5o6B47UVFI2CE
 //8BXfiCUbNWnLR5am1kaZORzhgJNOcWepg3KilAaMrcP8BNyx46B3fte
 J1cpnq1g/m55OKzQtyql8yT/uzSJeCpSv5QAfdIxFtRv2MvH0zYYOgrkE
 zqbi+1yKDUcRLWHqhlHWtWc44gF5pRmT8SMI4oHAm6MEvR8DzpYVYRfKe g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="244371647"
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="244371647"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 23:19:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="533018582"
Received: from ubuntu.bj.intel.com ([10.238.155.108])
 by fmsmga007.fm.intel.com with ESMTP; 26 Jan 2022 23:19:01 -0800
From: Jun Miao <jun.miao@intel.com>
To: pawel.randzio@intel.com
Date: Thu, 27 Jan 2022 15:18:59 +0800
Message-Id: <20220127071859.56584-2-jun.miao@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220127071859.56584-1-jun.miao@intel.com>
References: <20220127071859.56584-1-jun.miao@intel.com>
MIME-Version: 1.0
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: "Jun.Miao" <jun.miao@intel.com> Add a CFLAGS
 "-Wo-stringop-overflow"
 to void build error in the fedora:36 by the gcc -O2 optimization, which`s
 version: gcc (GCC) 12.0.1 20220118 (Red Hat 12.0.1-0). 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [192.55.52.93 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nCz3l-00FmLT-Gf
Subject: [tboot-devel] [PATCH] GCC update caused build error: writing 1 byte
 into a region of size 0 [-Werror=stringop-overflow]
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

RnJvbTogIkp1bi5NaWFvIiA8anVuLm1pYW9AaW50ZWwuY29tPgoKQWRkIGEgQ0ZMQUdTICItV28t
c3RyaW5nb3Atb3ZlcmZsb3ciIHRvIHZvaWQgYnVpbGQgZXJyb3IgaW4gdGhlIGZlZG9yYTozNiBi
eSB0aGUKZ2NjIC1PMiBvcHRpbWl6YXRpb24sIHdoaWNoYHMgdmVyc2lvbjogZ2NjIChHQ0MpIDEy
LjAuMSAyMDIyMDExOCAoUmVkIEhhdCAxMi4wLjEtMCkuCgpidWlsZCBlcnJvciBsb2c6CmNvbW1v
bi9tZW1sb2cuYzogSW4gZnVuY3Rpb24g4oCYbWVtbG9nX2luaXTigJk6CmNvbW1vbi9tZW1sb2cu
Yzo1MzoyMDogZXJyb3I6IHdyaXRpbmcgMSBieXRlIGludG8gYSByZWdpb24gb2Ygc2l6ZSAwIFst
V2Vycm9yPXN0cmluZ29wLW92ZXJmbG93PV0KICAgNTMgfCAgICAgICAgZ19sb2ctPnV1aWQgPSAo
dXVpZF90KVRCT09UX0xPR19VVUlEOwpjb21tb24vbWVtbG9nLmM6NTM6MjA6IGVycm9yOiB3cml0
aW5nIDEgYnl0ZSBpbnRvIGEgcmVnaW9uIG9mIHNpemUgMCBbLVdlcnJvcj1zdHJpbmdvcC1vdmVy
Zmxvdz1dCmNvbW1vbi9tZW1sb2cuYzo1MzoyMDogZXJyb3I6IHdyaXRpbmcgMSBieXRlIGludG8g
YSByZWdpb24gb2Ygc2l6ZSAwIFstV2Vycm9yPXN0cmluZ29wLW92ZXJmbG93PV0KY29tbW9uL21l
bWxvZy5jOjUzOjIwOiBlcnJvcjogd3JpdGluZyAxIGJ5dGUgaW50byBhIHJlZ2lvbiBvZiBzaXpl
IDAgWy1XZXJyb3I9c3RyaW5nb3Atb3ZlcmZsb3c9XQpjb21tb24vbWVtbG9nLmM6NTM6MjA6IGVy
cm9yOiB3cml0aW5nIDEgYnl0ZSBpbnRvIGEgcmVnaW9uIG9mIHNpemUgMCBbLVdlcnJvcj1zdHJp
bmdvcC1vdmVyZmxvdz1dCmNvbW1vbi9tZW1sb2cuYzo1MzoyMDogZXJyb3I6IHdyaXRpbmcgMSBi
eXRlIGludG8gYSByZWdpb24gb2Ygc2l6ZSAwIFstV2Vycm9yPXN0cmluZ29wLW92ZXJmbG93PV0K
Y29tbW9uL21lbWxvZy5jOjY4OjI2OiBlcnJvcjogd3JpdGluZyAxIGJ5dGUgaW50byBhIHJlZ2lv
biBvZiBzaXplIDAgWy1XZXJyb3I9c3RyaW5nb3Atb3ZlcmZsb3c9XQogICA2OCB8ICAgICAgICAg
Z19sb2ctPnppcF9jb3VudCA9IDA7CiAgICAgIHwgICAgICAgICB+fn5+fn5+fn5+fn5+fn5+fl5+
fgoKU2lnbmVkLW9mZi1ieTogSnVuLk1pYW8gPGp1bi5taWFvQGludGVsLmNvbT4KLS0tCiBDb25m
aWcubWsgfCAxICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBh
L0NvbmZpZy5tayBiL0NvbmZpZy5tawppbmRleCBlZDBhZWYwLi5iOTM0MmJjIDEwMDY0NAotLS0g
YS9Db25maWcubWsKKysrIGIvQ29uZmlnLm1rCkBAIC0yMCw2ICsyMCw3IEBAIGluY2x1ZGUgJChS
T09URElSKS9Db25maWcubWsKIENGTEFHUwkJOj0gJChzaGVsbCBlY2hvICQoQ0ZMQUdTKSB8IHNl
ZCAtZSBzLy1tNjQvLW0zMi8pCiBDRkxBR1MJCSs9IC1tYXJjaD1pNjg2CiBDRkxBR1MJCSs9IC1u
b3N0ZGluYworQ0ZMQUdTICAgICAgICAgKz0gLVduby1zdHJpbmdvcC1vdmVyZmxvdwogQ0ZMQUdT
CQkrPSAtZm5vLWJ1aWx0aW4gLWZuby1jb21tb24gLWZuby1zdHJpY3QtYWxpYXNpbmcKIENGTEFH
UwkJKz0gLWZvbWl0LWZyYW1lLXBvaW50ZXIKIENGTEFHUwkJKz0gLXBpcGUKLS0gCjIuMzUuMC5y
YzIKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KdGJv
b3QtZGV2ZWwgbWFpbGluZyBsaXN0CnRib290LWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApo
dHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby90Ym9vdC1kZXZlbAo=
