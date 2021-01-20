Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EB00F2FCD0E
	for <lists+tboot-devel@lfdr.de>; Wed, 20 Jan 2021 10:01:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1l29Mx-0002Fo-Cv; Wed, 20 Jan 2021 09:01:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1l29Mv-0002FZ-VF
 for tboot-devel@lists.sourceforge.net; Wed, 20 Jan 2021 09:01:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KucXFLZcpJwnPRiEpoHgDWYkWdMjrCgrCnWsK6truEc=; b=jWcBX/VBizO66dROWPpAFRh8DQ
 yaMx6gR+2KqWO3BfTHGYmFufQgKDuMEpVqhSUgKo5CdGJY8/7GRxmfj/FJHSpaBPdrpv5J5trgXPQ
 I38GlbOjfdxsw0joHXDQWhikw7yd4pWzgHP87a/gptVvDL1M16PKcPkmue+z8S1/EOdo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KucXFLZcpJwnPRiEpoHgDWYkWdMjrCgrCnWsK6truEc=; b=Ryxtc1tYhjVFKRycSuhE/DiUS2
 wUJPlTeWABcMd//CFGVRiaKppbCDIuAZfEvKSnvABhPJ8X5FG/36EI7SuIwQS6X7tmLAgD542RY0U
 fFF2qp4lumoZ2As/DS3peu1OhZsydSMePXqh3UNO+ldfJsxDdxgAlFOLBStAJZ0IRw6k=;
Received: from mga04.intel.com ([192.55.52.120])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l29Mm-00A6G4-Qj
 for tboot-devel@lists.sourceforge.net; Wed, 20 Jan 2021 09:01:37 +0000
IronPort-SDR: l+YHYfoSecDNQjG8J32ISSXW/IDHAHX+RxQPdGUPz87iI6CcFaxCK8sCO7GDKwJsT0qm9EYfeQ
 Xs4cGdaV29QQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9869"; a="176498454"
X-IronPort-AV: E=Sophos;i="5.79,360,1602572400"; d="scan'208";a="176498454"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2021 00:45:46 -0800
IronPort-SDR: JWT9hvoqzZJ8LcSblMxXwGJMrSBJmjZ7DG12VClOf80VK62SY2nm2wkdjUhVGsYukYiOmCNcOt
 O7cda9VIBHEA==
X-IronPort-AV: E=Sophos;i="5.79,360,1602572400"; d="scan'208";a="384683641"
Received: from lhawrylk-desk.ger.corp.intel.com ([10.213.21.190])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2021 00:45:44 -0800
Message-ID: <cbf1470042ad84bfe2d77a3b6d3ded3b8d91602b.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: Jason Andryuk <jandryuk@gmail.com>, tboot-devel@lists.sourceforge.net
Date: Wed, 20 Jan 2021 09:45:41 +0100
In-Reply-To: <CAKf6xpsFTbNnUPURfkdQdbeHzTutVPRrS=UPhp5__y+zwYpOHg@mail.gmail.com>
References: <CAKf6xpskX4rBd9eAiDa60uZKQnXD-QP5EWMKnMfr4Y8T0D0j7A@mail.gmail.com>
 <CAKf6xpsFTbNnUPURfkdQdbeHzTutVPRrS=UPhp5__y+zwYpOHg@mail.gmail.com>
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [192.55.52.120 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1l29Mm-00A6G4-Qj
Subject: Re: [tboot-devel] 10th Gen ACM
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

Hi Jason

On Sat, 2021-01-16 at 09:02 -0500, Jason Andryuk wrote:
> On Mon, Jan 4, 2021 at 2:57 PM Jason Andryuk <
> jandryuk@gmail.com
> > wrote:
> > Hi,
> > 
> > Are SINIT ACMs available for 10th Gen processors, specifically 10th Gen 10810U?
> > 
> > The intel page 
> > https://software.intel.com/content/www/us/en/develop/articles/intel-trusted-execution-technology.html
> > 
> > has 8th_9th_gen_i5_i7-SINIT_81.zip as the latest file - but the file
> > inside is named 7th_8th_gen_i5_i7-SINIT_81.bin.
> 
> This acm does not match the 10810U.  From acminfo, I think the chipset
> matches (0xb008), but the processor 0xa0660 is not in the processor id
> entries.   0x906e0 is the latest in the ACM with 0x406e0, 0x506e0, and
> 0x806e0 as well.
> 
> However, tboot finds a BIOS-loaded SINIT and uses that (which matches
> processors 0x806e0, 0x906e0, and 0xa0660).
> 
> I am still interested in finding a download link for newer SINIT ACMs,
> if anyone has one. :)
> 

Please try this link: https://cdrdv2.intel.com/v1/dl/getContent/630744

Thanks,
Lukasz



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
