Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 657371F19CD
	for <lists+tboot-devel@lfdr.de>; Mon,  8 Jun 2020 15:21:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jiHi3-0005im-Jz; Mon, 08 Jun 2020 13:21:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1jiHi2-0005ia-Ke
 for tboot-devel@lists.sourceforge.net; Mon, 08 Jun 2020 13:21:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/eD/qBB2RaIWtBwH6+z9rk5HfdFfjmrkiY6tDoaQps4=; b=gtWzXCh4cQK36Wm6wXMTLGNrgI
 zsoDRjHaEriLfJTQ1GIF25zR0vtSFjAiAnkKXtLLfTlmprGzyS+yyTpqmYUaUcTeS1ZGlw2LYqs2k
 tEny7fqqeg+PzmEmb5O8NDKE4UQk9kBCG4k4QLSdGi8tSc5IjxGTmm/6RAs4A9/j+nuA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/eD/qBB2RaIWtBwH6+z9rk5HfdFfjmrkiY6tDoaQps4=; b=hTzMiO0CCF/yOoQNpyIABuDmX+
 QdXCHc1kyEjFU6k4TBc5S4sp7TLAgpBPTSct5pvVy4jvSi60tDS8EJo0+u3XmLYA4FESBwbAiuNvU
 TvM7RLmnrbRXzhazMfCYZvPhBMrDgZ7HityItoGgdL/aTkZdta+EpUBcOOzGaSgPIrIo=;
Received: from mga07.intel.com ([134.134.136.100])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jiHi0-00DULn-K8
 for tboot-devel@lists.sourceforge.net; Mon, 08 Jun 2020 13:21:02 +0000
IronPort-SDR: fQ0RrkBb6AY06VGjsCps1gTFraDFZdzBJOCnT7iqFIeQAHRnDa3GNe32+4aFF8+HwiJsKXjE97
 UQrDMZRrYvlQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2020 06:20:54 -0700
IronPort-SDR: DUxhDBiijD9TGaDABsdKAovQi9gdMrb9WaEh09A9LwYyg9RbJzJJVNeGf4/lDk5xEROlEdZWga
 5/08AwibzV4Q==
X-IronPort-AV: E=Sophos;i="5.73,487,1583222400"; d="scan'208";a="274221073"
Received: from lhawrylk-desk.ger.corp.intel.com ([10.213.1.241])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2020 06:20:53 -0700
Message-ID: <134697e3ad70084c54efeddd094b96f261b0d31c.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: Timo Lindfors <timo.lindfors@iki.fi>, tboot-devel@lists.sourceforge.net
Date: Mon, 08 Jun 2020 15:20:51 +0200
In-Reply-To: <alpine.DEB.2.20.2006062254580.29748@mail.home>
References: <alpine.DEB.2.20.2006062254580.29748@mail.home>
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1jiHi0-00DULn-K8
Subject: Re: [tboot-devel] extra bytes printed after SHA1 hash?
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

On Sat, 2020-06-06 at 23:02 +0300, Timo Lindfors wrote:
> Hi,
> 
> when I boot current mercurial tip with TPM 1.2 I get the following output:
> 
> TBOOT: verifying policy 
> TBOOT: verifying module "root=UUID=bc701bae-ee9c-4151-a85b-0f5a68212975 ro quiet net.ifnames=0 intel_iommu=on"...
> TBOOT:   OK : 26 0d 8e 28 3d 24 8b 45 74 92 02 76 50 f4 28 11 2b 6c d5 03 00 00 00 00 00 00 00 00 00 00 d8 9b
> TBOOT: verifying module ""...
> TBOOT:   OK : ed 04 ea fe e3 e4 30 63 ae c2 ba 41 cc 35 de aa f0 2a e7 18 00 00 00 00 00 00 00 00 00 00 d8 9b
> TBOOT: all modules are verified
> 
> Notice how both hashes end with the same byte string "00 00 00 00 00 00 00 
> 00 00 00 d8 9b". Is the code printing 32 bytes of memory (length of a 
> SHA256 hash) but the memory actually contains a SHA1 hash?
> 
> -Timo
> 
> 

Hi Timo

TBOOT is using hardcoded default policy when TPM is not provisioned.
That policy enforces SHA256 even if TPM1.2 is detected. That leads to
undesirable behaviour.

To fix that issue I created another default policy that uses SHA1 and is
applied when TPM1.2 is present. Patch is already published.

Thanks,
Lukasz



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
