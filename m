Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 433611EAA2E
	for <lists+tboot-devel@lfdr.de>; Mon,  1 Jun 2020 20:09:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jforq-0007rx-0m; Mon, 01 Jun 2020 18:08:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <timo.lindfors@iki.fi>) id 1jforo-0007rg-LI
 for tboot-devel@lists.sourceforge.net; Mon, 01 Jun 2020 18:08:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5cIsYWbvwtLeyxk9Nj37+RWxdl4IPLFl6FPMIRym+9o=; b=eEYm/3Ysfry2MvNqwh0a0clrUE
 MPXFFGYAaVa0FomQ11kKGujo75kcgsZpjgCjo3PJ/rVVXgZr4I0ly1U4jqUUw1EQtVt9SW1maqrAp
 tDdZ++mP9sZEnvngIPkAmLVFEEIwd3PgXYKEJK85EdaR60WaAmd0ROvm57H5Ps8Qlfxg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5cIsYWbvwtLeyxk9Nj37+RWxdl4IPLFl6FPMIRym+9o=; b=QGPr/DG3PSCgkfWjlH4J0nLtpK
 27x3iQjSguDxeCQTLApEQV/rLB+k//voIz0OQSTwQIwYf8wQyq6x+qgjQFXVfG28TKlAQvSMBIr8h
 Ukf/x20krj1fkp7/8fYX9pRlqV1avnH+vIdCc7UKIfFhlM9VPvlciymem2Ga5inSqtzQ=;
Received: from lahtoruutu.iki.fi ([185.185.170.37])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jforl-000OJS-QL
 for tboot-devel@lists.sourceforge.net; Mon, 01 Jun 2020 18:08:56 +0000
Received: from mail.home (89-27-97-237.bb.dnainternet.fi [89.27.97.237])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by lahtoruutu.iki.fi (Postfix) with ESMTPSA id 63C7F1B00082;
 Mon,  1 Jun 2020 21:08:37 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=lahtoruutu; 
 t=1591034917;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=5cIsYWbvwtLeyxk9Nj37+RWxdl4IPLFl6FPMIRym+9o=;
 b=kR3/NLsAmC6i9PC3xC6c16vVV2VmJUrPaGRNTUPKlaABPTGN+uBHP/6G+71gYsHdqg1mf1
 cMllrrqkcpAuslD55vys0kSC/EIxhPGyO7AjSUeG6PXmDVyCQrGxPs+nlZRSDOan+3RLE0
 rRtW0GYkrjjXNJJQlSXs6DJb6O7ohz8PPnqOB8KsEbdRF0k3Pj9xOwJNV75Q6OJXbhBXOG
 aPFJMwDDf+j5hYcHlnmykNEEfPR3tf6MFbMAbh6YZgTanN+y6QV0pm1dOY1fChD0puInnm
 6U2tDIyapgtxkSug9bYY3ljCWJAgYs5hubu3QHDa3qMvvl3f6hs9FqQfae/56w==
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>)
 id 1jforN-0006XS-Az; Mon, 01 Jun 2020 21:08:29 +0300
Date: Mon, 1 Jun 2020 21:08:29 +0300 (EEST)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
In-Reply-To: <8e119cc80a96c5f714a4f52696c65fec1dd35ef6.camel@linux.intel.com>
Message-ID: <alpine.DEB.2.20.2006012052160.25060@mail.home>
References: <alpine.DEB.2.20.2005081919250.3828@mail.home>
 <3da41313c3b91f154f53f9c2c9645ade6399cff9.camel@linux.intel.com>
 <alpine.DEB.2.20.2005121234280.7218@mail.home>
 <alpine.DEB.2.20.2005231924220.17882@mail.home>
 <alpine.DEB.2.20.2005241914180.17882@mail.home>
 <2b9029d61fed0ca5f4d60a14a90fb01c98f6f007.camel@linux.intel.com>
 <alpine.DEB.2.20.2005251307150.19253@mail.home>
 <alpine.DEB.2.20.2005280214320.21222@mail.home>
 <952021e68c90965520a2b1a1cf11245ab49dd31b.camel@linux.intel.com>
 <alpine.DEB.2.20.2005282120080.22086@mail.home>
 <alpine.DEB.2.20.2005291234440.22603@mail.home>
 <fccd42128daa0ff86d2e6970f7e3217ae8f1a01e.camel@linux.intel.com>
 <alpine.DEB.2.20.2006010050560.24353@mail.home>
 <alpine.DEB.2.20.2006010126220.24394@mail.home>
 <8e119cc80a96c5f714a4f52696c65fec1dd35ef6.camel@linux.intel.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=lahtoruutu; t=1591034917;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=5cIsYWbvwtLeyxk9Nj37+RWxdl4IPLFl6FPMIRym+9o=;
 b=OO7u4nh25sq15jVVFXSp+ug6ZWKqHYEQ+VFveDa26jUhCFtJ7HIuqtYcLpuapiMT2t+C8P
 QhdIQlL72XB1XmgWV+Rlhow0YxAx/oAQnukcLTrki2qWAMi3L/zSGRKmEtTYizEji1AfzN
 NJLeVzTCbZo9eFyo3yeyKxyxKMo318XHHK44213wuE0XxGZWwAC+qw9iU6JwSC9+Bcx1SX
 ZDVYO+Q5fwFxjbOocviuasfrS8IOep4CAec/wYmgt+BqEW9pvlIZP4U9ROP4GXQdIv85No
 mMl5SqdmpX0qNqwXcFrd5Nzxaa/o2jnCfpREjQAklT0S8c9LCprvNkTnGV0G1Q==
ARC-Seal: i=1; s=lahtoruutu; d=iki.fi; t=1591034917; a=rsa-sha256; cv=none;
 b=fcRyQcZAXTJ+mpQ8u5sF8lf3pquG307bfYKaWQgOlrMDPDh67BGC93mZ6CvP7TYLwCtd+l
 HxRYYAk4xacDMKMIfzcHwXyq0eCg0d2B8wkiiiLzAA4Y7B+LGIXZPf9r2R+gyjibjbBBWS
 hcjKc5/cQ/MknFBoy282jtKpOiq7OemA1q/2N06YbldNIGcAhqU7cgUy6LzqXB5SIHsU/M
 RiAs5BdtToZIwFbgOeX2rw2Rr3PK+hjYCsLIKoX70y1hdPEzGpv/cWxFJ4jcNzZSfI4w3b
 gXpy8qJYR0dj71dCBLrOWCvIrO+gyUz1gFXzFQj4e7vSw74zaNVAsvxIiFTw4w==
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=timo.lindfors smtp.mailfrom=timo.lindfors@iki.fi
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jforl-000OJS-QL
Subject: Re: [tboot-devel] tboot 1.9.12 build failure if CFLAGS is set in
 environment
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tboot-devel-bounces@lists.sourceforge.net

Hi,

On Mon, 1 Jun 2020, Lukasz Hawrylko wrote:
>> On warm boot this prints just
>>
>> TBOOT: start=0x0x10008 tag_type=17 start->type=3031684 start->size=-2147418113
>> TBOOT: start=0x0x80020008 tag_type=17 start->type=0 start->size=0
>>
>
> That looks like memory corruption... Does it work when you remove all
> SINITs except the good one?

Hmm, So do both cold boot and warm boot prints look like memory corruption 
or just the cold boot where it gets stuck?

Listing only GM45_GS45_PM45_SINIT_51.BIN in grub.cfg still results in 
tboot getting stuck.

> Could you please apply following patch and send me a log?

tboot prints

"TBOOT: this routine only prints out multiboot 2"

and never enters the else block where the printk()s are...

> One more test - please remove 'memory' option in 'logging' parameter
> from TBOOT command line in grub.cfg and check if that helps.

This does not seem to change the behavior either.

-Timo


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
