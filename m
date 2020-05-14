Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 482E81D3121
	for <lists+tboot-devel@lfdr.de>; Thu, 14 May 2020 15:20:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jZDn1-0004ND-2J; Thu, 14 May 2020 13:20:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1jZDmy-0004Mi-UV
 for tboot-devel@lists.sourceforge.net; Thu, 14 May 2020 13:20:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4PxdW2x9GgVraxUbbnGjGt1sUPUj28E1/TfKRRXR02U=; b=BzzN+uPBB0s22FFt6TEuzuj7lb
 IgJItzcvcxCF9cVkDDxPfvV8Vym+1U15f5ZORmjhm8b9C0P4kcs1GLOBf6uHMppyCWyqnNxgkxcqu
 E3Py5HV3X6USev6YJ3w8pO/XiSbYhoIRLkabcysa3BQ4OEohdzK1adv0N9ciGjbtKEys=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4PxdW2x9GgVraxUbbnGjGt1sUPUj28E1/TfKRRXR02U=; b=m0rUW6JTaN6zC2qs3/vYlXnrHk
 zhQSMGuSIsGTwFWEwHpcl3sbP61qxQbeY8HUDb9fKf6hIUSXRJkEHg4tKYn4TP5X/lgslYMxOT6dA
 A7VPRI2QJt9GA4dpHEfvD/4eEim8TugnbRFtkZ0eWhpmwGkvaOBzIdddZJPnuuHWilDc=;
Received: from mga06.intel.com ([134.134.136.31])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jZDmx-009yHK-NS
 for tboot-devel@lists.sourceforge.net; Thu, 14 May 2020 13:20:40 +0000
IronPort-SDR: KaBQM4GuRfPPA6ExjAzQFav9NVwEnPg/nm1fHvTjj+GTYyZJgY2hDXWt4DpPA/Xevnf8LR3hbo
 IfM+YklJetQA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2020 06:20:34 -0700
IronPort-SDR: PJOBeFP+V7soO1gNB0jzU2Xub9TSJddTOSVuZAGcsRjuSqSUicctItkCTl6ee/NR/PgQ7PcqpM
 BcZ2eS28RJJg==
X-IronPort-AV: E=Sophos;i="5.73,391,1583222400"; d="scan'208";a="287415126"
Received: from lhawrylk-desk.ger.corp.intel.com ([10.213.19.91])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2020 06:20:33 -0700
Message-ID: <109c0b38a6b6d82452ff4acc4ef8b10a6fd2b3eb.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: Timo Lindfors <timo.lindfors@iki.fi>, tboot-devel@lists.sourceforge.net
Date: Thu, 14 May 2020 15:20:30 +0200
In-Reply-To: <alpine.DEB.2.20.2005102344150.5921@mail.home>
References: <alpine.DEB.2.20.2005102344150.5921@mail.home>
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1jZDmx-009yHK-NS
Subject: Re: [tboot-devel] rename parse_err?
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

On Sun, 2020-05-10 at 23:55 +0300, Timo Lindfors wrote:
> Hi,
> 
> tboot installs a binary called "parse_err". I realize tboot has been doing 
> this for a long time but have you considered renaming the binary to 
> something less generic? Maybe txt_parse_err?
> 
> -Timo
> 

Agree, this should be changed. I have also renamed acminfo to txt-
acminfo, now all these tools has 'txt-' prefix.

Thanks,
Lukasz



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
