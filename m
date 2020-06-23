Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ADD72056DD
	for <lists+tboot-devel@lfdr.de>; Tue, 23 Jun 2020 18:14:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jnlZH-000780-1k; Tue, 23 Jun 2020 16:14:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcamuso@redhat.com>) id 1jnlZF-00077o-RN
 for tboot-devel@lists.sourceforge.net; Tue, 23 Jun 2020 16:14:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=I3KEUdFvYzSMJpUzStD6gCYvTeVUGpEpbBFD8zY6p+s=; b=EI8fnR4jhE02xCqu4rUrzEBue5
 4k8gPmaonxtFKArvwbu83TSBB4jrFRfPVsuBIpPbrs0K0+gObJRKyFh4HPtYrjp2F450xclOJFvrf
 huwtLtXY9dRvxHZcaOR44aoR+6NQ4Ww4QJITR1E3ewgNBlpqzJiCbR/xgnsUcO0JH9Rk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=I3KEUdFvYzSMJpUzStD6gCYvTeVUGpEpbBFD8zY6p+s=; b=KbdYkrOoQEalkxCmmrRYdj+4qE
 jWanyQnNnTNeOXFQjP3Nw7nV9H55qcAw11Hfl5JhbQgGvBrc0gQ4j3PJIQVt+l4Q+QTOZDcvG5QpI
 u9bBrIbxb3i7L+wm+msR/Aw+fsw16Q3wmchVHW/afFAWMO1ynITr0TvDbCQ7ekadv93o=;
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jnlZB-00D9Iu-NE
 for tboot-devel@lists.sourceforge.net; Tue, 23 Jun 2020 16:14:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1592928867;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=I3KEUdFvYzSMJpUzStD6gCYvTeVUGpEpbBFD8zY6p+s=;
 b=C3Crt2cxSBkEl2hHjyYrgivMiWVuSP20iNQ2pmAnsWQyrPwAcW0uQyD+g7UNbpsEFrFQ4L
 77R+p0a3bP/TJnYOsNhB2Kjw+J/6r1ul8JUqnyGHv3JlB9HL7S78xq14na4TyX5yAYQCOO
 kcokworqYIjdu0bhoYjmgKjflOv1vek=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-377-7vFGoLliOaeTwzmYHFmA2Q-1; Tue, 23 Jun 2020 12:14:17 -0400
X-MC-Unique: 7vFGoLliOaeTwzmYHFmA2Q-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DB7BF1B18BC1;
 Tue, 23 Jun 2020 16:14:16 +0000 (UTC)
Received: from [10.3.113.179] (ovpn-113-179.phx2.redhat.com [10.3.113.179])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7D3335BAEC;
 Tue, 23 Jun 2020 16:14:16 +0000 (UTC)
To: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>,
 tboot-devel@lists.sourceforge.net
References: <20200617125417.20570-1-tcamuso@redhat.com>
 <c35bdbb3627dd8cf589d99ae1221bc0aaafd0a59.camel@linux.intel.com>
From: tony camuso <tcamuso@redhat.com>
Message-ID: <ed77d338-5719-372d-921c-59b256018a1a@redhat.com>
Date: Tue, 23 Jun 2020 12:14:15 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <c35bdbb3627dd8cf589d99ae1221bc0aaafd0a59.camel@linux.intel.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.120 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1jnlZB-00D9Iu-NE
Subject: Re: [tboot-devel] tboot fails to build on GCC7+
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

On 6/18/20 9:33 AM, Lukasz Hawrylko wrote:
> On Wed, 2020-06-17 at 08:54 -0400, Tony Camuso wrote:
>> Sorry for the noise, if this has already been reported or corrected.
>>
>> tboot is built with the -Wextra Cflag, which is an alias for a
>> collection of warning flags. tboot's make interprets warnings as errors.
>>
>>  From GCC 7 forward, the -Wextra Cflag includes -Wimplicit-fallthrough.
>>
>> The GCC 7+ switch statement requires a break statement after each case.
>> Without a break statement after a case, then an "implicit fallthrough"
>> condition exists, where the matched case is executed, and the following
>> case is also executed. If none of the fallthrough cases has a statement,
>> and if the last statement in the fallthrough cascade is a break, all is
>> forgiven, and the GCC 7+ compiler will move on.
>>
>> Otherwise, GCC 7+ with -Wextra will issue the following error when
>> -Werror is set, as it is in the tboot make.
>>
>> error: this statement may fall through [-Werror=implicit-fallthrough=]
>>
>> That means case statements with implicit fallthroughs will be flagged
>> as compile errors and crater the build. There exists a number of
>> compiler specific ways to tell the compiler that the fallthrough is
>> there by design, but the simplest way to avert this problem is to add
>> the -Wno-implicit-fallthrough flag to the CFLAGS_WARN variable in tboot's
>> Config.mk file.
>>
> 
> Hi Tony
> 
> Thank you for your patch. This is already fixed in a6180f9e9e86. In
> general we want to have -Wimplicit-fallthrough enabled, however there
> was a bug where different CFLAGS value was passed to safestringlib
> Makefile depends on building environment. Sometimes safestringlib was
> build with -Werror -Wextra, sometimes not. [1]
> 
> Could you please check if with that commit you can build TBOOT without
> errors?
> 
> [1] https://sourceforge.net/p/tboot/mailman/message/37005286/
> 
> Thanks,
> Lukasz
> 

Thanks, Lukasz! That patch fixes the build problem I was having.



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
