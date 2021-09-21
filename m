Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 33014413547
	for <lists+tboot-devel@lfdr.de>; Tue, 21 Sep 2021 16:25:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1mSghc-0005B8-N8; Tue, 21 Sep 2021 14:24:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1mSgha-0005B1-Sg
 for tboot-devel@lists.sourceforge.net; Tue, 21 Sep 2021 14:24:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DzBA8x54rnP4vR2Qj0MYAoB43FBvq6B8nwzx8anWyw4=; b=jlCDACUC8abWPiJa/IJRqBJrpP
 EtWDpySEKgRDqKvWlOswLzDnfEK26Jzy5bUJZcm/nV0frRLtzlhYFsm8BH6xUksfItK/cz8KqyJu/
 5o6R2QCm2WGugkQd3vKpSHAIkVCE/IVf5QYbCB6V3DgtyNnOSEfIFARe6nXHp1c4qIoU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DzBA8x54rnP4vR2Qj0MYAoB43FBvq6B8nwzx8anWyw4=; b=NfecaQdMTqbLRDA8NH9ZHdJxf8
 8uE14YsfijMQUSIhA92aa6F+qD1Nmr4C9yATEOmgLIdVh3wEkVinaSmCQ8+WjdQu0npr3qzvSN08T
 cCTd/gkzmnnRp27zyYQ961Mvhc1qhdPjhVv5shC45ZNvFzAXF04AoaSfqp5H/gQRl+SA=;
Received: from mga17.intel.com ([192.55.52.151])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mSgha-000ZhH-5T
 for tboot-devel@lists.sourceforge.net; Tue, 21 Sep 2021 14:24:54 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10113"; a="203523868"
X-IronPort-AV: E=Sophos;i="5.85,311,1624345200"; d="scan'208";a="203523868"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2021 07:20:53 -0700
X-IronPort-AV: E=Sophos;i="5.85,311,1624345200"; d="scan'208";a="549509595"
Received: from schmidyv-mobl2.ger.corp.intel.com ([10.252.33.181])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2021 07:20:51 -0700
Message-ID: <e069c86ccfbb0b0068c2244fe6835d1324f52e9b.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: Loris Wilbert <loris.wilbert@outlook.fr>, 
 "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Date: Tue, 21 Sep 2021 16:20:30 +0200
In-Reply-To: <PA4P191MB1664AB08B4D7E7B035C25D309FA19@PA4P191MB1664.EURP191.PROD.OUTLOOK.COM>
References: <PA4P191MB1664AB08B4D7E7B035C25D309FA19@PA4P191MB1664.EURP191.PROD.OUTLOOK.COM>
User-Agent: Evolution 3.38.3 (3.38.3-1.fc33) 
MIME-Version: 1.0
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Loris On Tue, 2021-09-21 at 08:53 +0000, Loris Wilbert
   wrote: > Hello,  > > I'm having a problem about warm reboot and I don't have
    this issue > with a cold reboot. > > TBOOT: TPM: write cmd timeout > TBOO
    [...] 
 
 Content analysis details:   (-2.3 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
                             medium trust
                             [192.55.52.151 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-Headers-End: 1mSgha-000ZhH-5T
Subject: Re: [tboot-devel] Issue with warm reboot
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

SGkgTG9yaXMKCk9uIFR1ZSwgMjAyMS0wOS0yMSBhdCAwODo1MyArMDAwMCwgTG9yaXMgV2lsYmVy
dCB3cm90ZToKPiBIZWxsbyzCoAo+IAo+IEknbSBoYXZpbmcgYSBwcm9ibGVtIGFib3V0IHdhcm0g
cmVib290IGFuZCBJIGRvbid0IGhhdmUgdGhpcyBpc3N1ZQo+IHdpdGggYSBjb2xkIHJlYm9vdC4K
PiAKPiBUQk9PVDogVFBNOiB3cml0ZSBjbWQgdGltZW91dAo+IFRCT09UOiBUUE06IENyZWF0ZSBy
ZXR1cm4gdmFsdWUgPSAwMDAwMDEwMQo+IFRCT09UOiBmYWlsZWQgdG8gc2VhbCBkYXRhCj4gCj4g
SGFzIGFueW9uZSBleHBlcmllbmNlZCB0aGUgc2FtZSBlcnJvciA/CgpDb3VsZCB5b3UgcGxlYXNl
IGluY2x1ZGUgZnVsbCBUQk9PVCBsb2c/CgpUaGFua3MsCkx1a2FzegoKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwp0Ym9vdC1kZXZlbCBtYWlsaW5nIGxp
c3QKdGJvb3QtZGV2ZWxAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNl
Zm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Rib290LWRldmVsCg==
