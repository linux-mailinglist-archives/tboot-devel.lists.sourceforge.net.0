Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 81AE11CBA42
	for <lists+tboot-devel@lfdr.de>; Fri,  8 May 2020 23:56:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jXAyQ-0007VN-T8; Fri, 08 May 2020 21:56:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <timo.lindfors@iki.fi>) id 1jXAyN-0007Ue-R0
 for tboot-devel@lists.sourceforge.net; Fri, 08 May 2020 21:56:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JPBw9ma/aql+o8TEf3ab+5K2WQSR4k6LpuIbDbLQF38=; b=JZCP5rgGFCz2Ez1U6RSB0+tXnt
 H2ZpcTjQ/3nrKms/1Ubf0escg0BfKJHRoWkUaen41ehiSQQspAp6lcXl9VAoB5Eoqu7DR0rt1Jafm
 tMiUiQVjrCLmcTHHateHjwYdw8Ub2l3dWaVshAtygFSWoGeOxOdc5bPC8TPpYcfIdVMc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=JPBw9ma/aql+o8TEf3ab+5K2WQSR4k6LpuIbDbLQF38=; b=n
 OBHUG+xD6sNUj9VAFLcXN4fLaj+RYxnvmLF9Y01CeDC91S12CQiEUV7FWNebKTeuo0huY2jPKp8nr
 VfP7sD/FkxYAoykVhSOdPGGV9P/SPjgASm3fzaqKNu2jHQIuCHo6uNi13D0b161Uswd2M0kipMEVC
 IiyclvUjJZhu7YVs=;
Received: from lahtoruutu.iki.fi ([212.16.98.55])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jXAyH-002snJ-P7
 for tboot-devel@lists.sourceforge.net; Fri, 08 May 2020 21:55:59 +0000
Received: from mail.home (82-181-208-90.bb.dnainternet.fi [82.181.208.90])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by lahtoruutu.iki.fi (Postfix) with ESMTPSA id 247751B0042E
 for <tboot-devel@lists.sourceforge.net>; Sat,  9 May 2020 00:55:36 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=lahtoruutu; 
 t=1588974936;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=JPBw9ma/aql+o8TEf3ab+5K2WQSR4k6LpuIbDbLQF38=;
 b=po0sb9SWzJbEt8RKxKuUML/2m0ZTwgBI2bSP1hFjWgQndhJXsRnIw6c+FC5aPOkHfWNarF
 BHZK80Hp05+d8bZitUoLPNGcwrzJW2v7RS2Pe2h5PwO7jBSIiKTGR8BxMBiBaDebjtj2sB
 WUVF3QA4YRL71Bj7cRJrVAnXEn7/9HjMY5s5TNnOv9QV1iq4WuPekrHnNQ3dBd/ZO1Banh
 K4/6Oj/qnwuyWvDlBXo48gG7z6c27PWcRBwvV5vEDQDFJVxZ01zqhR7RsNIPWTg2o4/3a4
 WCuH4x4KlYYw8nwgAlN3tFm2ri10PqUphXmqe8LgwqP+SXPdQmOPGpgq0TOxeQ==
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>) id 1jXAxt-00016H-ST
 for tboot-devel@lists.sourceforge.net; Sat, 09 May 2020 00:55:29 +0300
Date: Sat, 9 May 2020 00:55:29 +0300 (EEST)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: tboot-devel@lists.sourceforge.net
Message-ID: <alpine.DEB.2.20.2005081919250.3828@mail.home>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=lahtoruutu; t=1588974936;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=JPBw9ma/aql+o8TEf3ab+5K2WQSR4k6LpuIbDbLQF38=;
 b=fKC+JOZB6xuy1hYjp9YAhonNQ4Dtg2FdEhimRMGyNQuWxXXrImGhAQHD1/9UPJnUia+riw
 Z/gcGauuXrpePhW81VC5PnmjHzm+33XG2MzKJtfXvW6ftXrpF32gTqKqQFo6XSmJI1UErw
 9UruATM7mAjdbjOe/fxfKkMwhOKzJdG2sehAc7e0+5ClJIloT6JJcfVYfmbjQWuD5XM8NZ
 ltg5OkJXCFNGCGw+daaZ+bxKg74NfIKvKbcAEitArThep+jTFiW0EonVREUCZKaKKnRld9
 a75FcNqryjFxIID4HyYgBAuCG6JiAxvEK4ur2TftPOjD0GzT1qXLXRf1gFSgDw==
ARC-Seal: i=1; s=lahtoruutu; d=iki.fi; t=1588974936; a=rsa-sha256; cv=none;
 b=c275g9iLwx3HMHTOfwYi/417tvqQCKO+3L+LyinDr6XR8u4UjwDEsoysJV8GNproMEHMoR
 GQ2UD1pFhZGjEvwDe3e8EyEuUfyqsOePaPVT1lP47OPX9Y5l69/QSekNYRpTXNyX2QXc32
 5cZwV+jnROnDx5nct8ClZYJ69+fHj+10pVX6oqYZbQ80MKoby4Qc3mLzt5Z6wRCch8eXsO
 GhZFGyoURRgjPCcw1ECrulHoFdrzU6H3TjDngynUlANi5pZuR6mqfI1pAiUusGhkdYr0FJ
 3gjAxl9GnVj95bPBFm1cfxOzJNH3oCD2iPCdSi5FMsSIG5j5rGxyewSbrGoz2g==
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
X-Headers-End: 1jXAyH-002snJ-P7
Subject: [tboot-devel] tboot 1.9.12 build failure if CFLAGS is set in
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tboot-devel-bounces@lists.sourceforge.net

Hi,

I get the following build failure on debian unstable with GCC 9.3.0:

tar xf tboot-1.9.12.tar.gz
cd tboot-1.9.12/
env CFLAGS="-g" make
...
cc -z noexecstack -z relo -z now -c -o obj/mem_primitives_lib.o 
safeclib/mem_primitives_lib.c -g -Wall -Wformat-security -Werror 
-Wstrict-prototypes -Wextra -Winit-self -Wswitch-default 
-Wunused-parameter -Wwrite-strings -Wlogical-op 
-Wno-missing-field-initializers -Wno-address-of-packed-member 
-fno-strict-aliasing -std=gnu99 -Wno-array-bounds -O2 -U_FORTIFY_SOURCE 
-D_FORTIFY_SOURCE=2 -m64 -I/home/lindi/tboot-1.9.12/safestringlib/include 
-Wall -Wformat-security -Werror -Wstrict-prototypes -Wextra -Winit-self 
-Wswitch-default -Wunused-parameter -Wwrite-strings -Wlogical-op 
-Wno-missing-field-initializers -Wno-address-of-packed-member 
-fno-strict-aliasing -std=gnu99 -Wno-array-bounds -O2 -U_FORTIFY_SOURCE 
-D_FORTIFY_SOURCE=2 -m64 -I/home/lindi/tboot-1.9.12/safestringlib/include 
-Iinclude -fstack-protector-strong -fPIE -fPIC -O2 -D_FORTIFY_SOURCE=2 
-Wformat -Wformat-security -DSTDC_HEADERS
safeclib/mem_primitives_lib.c: In function \u2018mem_prim_set\u2019:
safeclib/mem_primitives_lib.c:111:25: error: this statement may fall 
through [-Werror=implicit-fallthrough=]
   111 |         case 15:  *lp++ = value32;
       |                   ~~~~~~^~~~~~~~~
safeclib/mem_primitives_lib.c:112:9: note: here
   112 |         case 14:  *lp++ = value32;
       |         ^~~~


It seems that Config.mk adds -Werror and -Wextra that cause this to 
happen. Why doesn't this happen when CFLAGS is not set as an
environment variable? Apparently because

CFLAGS += $(CFLAGS_WARN) -fno-strict-aliasing -std=gnu99

behaves differently with recursive makefiles if CFLAGS is in the 
environment:

"By default, only variables that came from the environment or the command 
line are passed to recursive invocations."

  https://www.gnu.org/software/make/manual/html_node/Environment.html

Is the intent here that CFLAGS_WARN should be used for the whole build? If 
yes, then we need to add "export CFLAGS" to ensure that it is passed to 
other makefiles and also fix that build failure.

If not, we need to add "unexport CFLAGS" and don't necessary need to fix 
the switch-case statement.


-Timo


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
