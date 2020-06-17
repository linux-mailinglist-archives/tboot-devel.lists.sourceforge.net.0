Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0730E1FCDD1
	for <lists+tboot-devel@lfdr.de>; Wed, 17 Jun 2020 14:54:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jlXaZ-0006mj-Qy; Wed, 17 Jun 2020 12:54:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcamuso@redhat.com>) id 1jlXaW-0006mD-AH
 for tboot-devel@lists.sourceforge.net; Wed, 17 Jun 2020 12:54:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Tlf7VV3O9KurwjTbhO2aE++PInovQcqYTsx/0sI2Gt0=; b=eOpfj4LJP8j+eIUuRl9tSN5gk1
 WBZXoVUQKhDXsiKA1CjD/ZqItiV22cJgaBOOnesLP5R709MKGU+buLj5aRSm8M1ONuos9nkJhfWqH
 +eHgDt+hQIiS/wuRvRe6WAkuscjDuVG2QVi4ukPME1XkfpjAnqjSlpIO7hAA75tf4qQw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Tlf7VV3O9KurwjTbhO2aE++PInovQcqYTsx/0sI2Gt0=; b=DgqhdBR1/vYWZSuJWOn8dwQJnZ
 8uX12nUkXV2SyjzcQl0oEg4ZHRSVf26x7/kjy394LtvtvaVOHk2aHN39JvkurU6Ssr5Qm8/N0NFel
 3m+iWl9KFN3YqTDID5qFsddEtLJ7rcefIWtFcL5/0JGXRl3QFZkYfsy8lQ8uzbupX0Ds=;
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jlXaT-006sCa-KK
 for tboot-devel@lists.sourceforge.net; Wed, 17 Jun 2020 12:54:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1592398468;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type;
 bh=Tlf7VV3O9KurwjTbhO2aE++PInovQcqYTsx/0sI2Gt0=;
 b=Q2+o2hfluzfCeewtLQGhrES/6GwyJRw7DEv6EIPk0KV1sGDycr7WpK1EyBADREVuPJffyS
 acEG3X0BY7c5csxMLswBon+V7VbCZ3ypffH/fas3kAZnKMBk8RU+FuvW+esCnSN2mQiMYe
 zSsZdsniLC55r3IPjPH06kRFlNx9CWg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-422-vFeJoRUeO2iKh4lAuO8H_A-1; Wed, 17 Jun 2020 08:54:19 -0400
X-MC-Unique: vFeJoRUeO2iKh4lAuO8H_A-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BF05180F5FB;
 Wed, 17 Jun 2020 12:54:18 +0000 (UTC)
Received: from dell-per430-02.klab.eng.bos.redhat.com
 (dell-per430-02.klab.eng.bos.redhat.com [10.16.160.13])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 67D9D7CAA8;
 Wed, 17 Jun 2020 12:54:18 +0000 (UTC)
From: Tony Camuso <tcamuso@redhat.com>
To: tboot-devel@lists.sourceforge.net
Date: Wed, 17 Jun 2020 08:54:17 -0400
Message-Id: <20200617125417.20570-1-tcamuso@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [205.139.110.120 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [205.139.110.120 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: config.mk]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1jlXaT-006sCa-KK
Subject: [tboot-devel] tboot fails to build on GCC7+
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
Cc: tcamuso@redhat.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tboot-devel-bounces@lists.sourceforge.net

Sorry for the noise, if this has already been reported or corrected.

tboot is built with the -Wextra Cflag, which is an alias for a
collection of warning flags. tboot's make interprets warnings as errors.

From GCC 7 forward, the -Wextra Cflag includes -Wimplicit-fallthrough.

The GCC 7+ switch statement requires a break statement after each case.
Without a break statement after a case, then an "implicit fallthrough"
condition exists, where the matched case is executed, and the following
case is also executed. If none of the fallthrough cases has a statement,
and if the last statement in the fallthrough cascade is a break, all is
forgiven, and the GCC 7+ compiler will move on.

Otherwise, GCC 7+ with -Wextra will issue the following error when
-Werror is set, as it is in the tboot make.

error: this statement may fall through [-Werror=implicit-fallthrough=]

That means case statements with implicit fallthroughs will be flagged
as compile errors and crater the build. There exists a number of
compiler specific ways to tell the compiler that the fallthrough is
there by design, but the simplest way to avert this problem is to add
the -Wno-implicit-fallthrough flag to the CFLAGS_WARN variable in tboot's
Config.mk file.

Signed-off-by: Tony Camuso <tcamuso@redhat.com>
---
 Config.mk | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Config.mk b/Config.mk
index e730511..4382336 100644
--- a/Config.mk
+++ b/Config.mk
@@ -41,7 +41,7 @@ cc-option = $(shell if test -z "`$(1) $(2) -S -o /dev/null -xc \
 
 CFLAGS_WARN       = -Wall -Wformat-security -Werror -Wstrict-prototypes \
 	            -Wextra -Winit-self -Wswitch-default -Wunused-parameter \
-	            -Wwrite-strings \
+	            -Wwrite-strings -Wno-implicit-fallthrough \
 	            $(call cc-option,$(CC),-Wlogical-op,) \
 	            -Wno-missing-field-initializers
 
-- 
2.18.1



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
