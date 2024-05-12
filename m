Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E302D8C3725
	for <lists+tboot-devel@lfdr.de>; Sun, 12 May 2024 17:43:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1s6BM3-0001wm-4T;
	Sun, 12 May 2024 15:43:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jandryuk@gmail.com>) id 1s6BM2-0001wf-8u
 for tboot-devel@lists.sourceforge.net;
 Sun, 12 May 2024 15:43:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZBW2M/MA4dTsrbvcS9PhoxjodxTtp0tTbjMn0sorXRM=; b=QUYsJXwjhWWJ3Y6nrJnGawAd2a
 RTxukh1Cug7BDaMTkLBse6Vqvo63y0S2iU3Ao+m2E/NoaCIgTrs6utiIzNXezRvsFlIN26R4fyUfP
 GwZAz6BczimrQb6z9zHeWR6B0SvIfBe1Trfo2X/pwdcr5/v0NBRA9xIxApcKyUz2JIPc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ZBW2M/MA4dTsrbvcS9PhoxjodxTtp0tTbjMn0sorXRM=; b=d
 lDz4jARoeBxql8gYv0d48qeIlm4zNb6yI1e9wcZPpyb4aLmDk2FXlUcQSmeQFuAxYYkMT2evgnim+
 +us7GCZ+uRNTh02TtQEdkMsUiaUYOnZJA5+8rz6a49LiMm/iqDO34DN39K+Z5gIy/gZ4CAXjILNft
 RVNTzUhqxYsXX6w4=;
Received: from mail-ej1-f47.google.com ([209.85.218.47])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1s6BM1-0006lU-SI for tboot-devel@lists.sourceforge.net;
 Sun, 12 May 2024 15:43:13 +0000
Received: by mail-ej1-f47.google.com with SMTP id
 a640c23a62f3a-a59a0e4b773so869314666b.2
 for <tboot-devel@lists.sourceforge.net>; Sun, 12 May 2024 08:43:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1715528586; x=1716133386; darn=lists.sourceforge.net;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=ZBW2M/MA4dTsrbvcS9PhoxjodxTtp0tTbjMn0sorXRM=;
 b=bVj4CU0SOONVqlFm8I8r68CoqbSRDFdP6CjON/3Luq+YfY9yPI0H2+Sdf3EO9CgY+C
 zM+3xScHWaeo1NYTdBnhCBFLkuyYbiaRKduIhKNoT5HTS1N69ZVhNTq9g6gHg+F1sGqv
 AJosQSNq7C+MwkCSIRXHZRy2cYqRZB5Ma+YSjYh93FKf6ei2XGcZ6Fly5iq1plIYuyhO
 uylo/kkWq93bcO8tPw0cpzBh3CsmMTb4LVZ7TWECSvbRiMHFfzYE70KrV9Y2uZK4uTsb
 HEKOOHqbhdN0D9LsvdRryn4Jf2+1wBgB0t7W3tFCGqZoS7m1mQn17GN9c3WceQqqPjoT
 iLJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1715528586; x=1716133386;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=ZBW2M/MA4dTsrbvcS9PhoxjodxTtp0tTbjMn0sorXRM=;
 b=JiQG5l5yhbutc2Caz+dfmoEbzp+guWwdvfJ/Upnyyed46jdps1kpt3IWAqol1vmd/y
 m1GpfUTR+m/czD3THnyZydMOaoF2QuROmK41jh8uRbO7inPwkxIz/+pGgD0LWNIr7nAi
 wOjQLf43v1Ke9N0A/TltrPXCfG14EqBb/xxtyAdC75U5m0WIcxocbSqgQXI78zSwucA7
 409GtnV3K64U/44UuPwnhBAA7pX4qohzrDt+1e4L+6fDEvhcTGN7VyElbQMUpabhIMM9
 ULS/F9qcbTPeqJjyjc+uwOVsBLxbRJvbuCU6l01ctTwUU5vldCEBGWMoXp5eA/e8u1lA
 FaOQ==
X-Gm-Message-State: AOJu0YzVjGRZQN++nYT+841HnZBIxmEvttUZ62KQXTsgmdP+rWdwizMn
 pzxHProQmRA7VRbs2LocJ4k4uanKxIIDqSy5ZUAFecAKiImkvI+zbVTOGXRnfzYtjI8fXUTJnt6
 7zyX3l/39KD5Wk5D2lBpxXeT8wVLjz1Nu
X-Google-Smtp-Source: AGHT+IGn3BW36nE7DKpCkvL2Frdb63xMNnFnEeobfgoz9/zSydks/4fEUliFsL7yyL3L6pGkD85VnJVw5iBApImQxo0=
X-Received: by 2002:a50:d684:0:b0:572:a13c:30ca with SMTP id
 4fb4d7f45d1cf-5734d5de823mr5268741a12.20.1715528585920; Sun, 12 May 2024
 08:43:05 -0700 (PDT)
MIME-Version: 1.0
From: Jason Andryuk <jandryuk@gmail.com>
Date: Sun, 12 May 2024 11:42:54 -0400
Message-ID: <CAKf6xpvLSkouvF98c3pWd_pD7vi9vrHAsVx--9ndBh8vNTMhhA@mail.gmail.com>
To: tboot-devel@lists.sourceforge.net, openxt <openxt@googlegroups.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, I wrote this script a while ago. Maybe it'll be useful
 to someone: https://github.com/jandryuk/tpm-event-log It parses TPM event
 logs, like the sysfs binary_bios_measurements file from Linux or the tboot
 TXT tpm20_binary_evtlog_tcg exposed by OpenXT. (You might need to cat sysfs
 entries into regular files fi [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: tpm-event-log.py]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.218.47 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jandryuk[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.218.47 listed in wl.mailspike.net]
X-Headers-End: 1s6BM1-0006lU-SI
Subject: [tboot-devel] tpm-event-log.py parsing script
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

Hi,

I wrote this script a while ago.  Maybe it'll be useful to someone:
https://github.com/jandryuk/tpm-event-log

It parses TPM event logs, like the sysfs binary_bios_measurements file
from Linux or the tboot TXT tpm20_binary_evtlog_tcg exposed by OpenXT.
(You might need to cat sysfs entries into regular files first).

It handles TPM 1.2 and 2.0 and predates tpm2_eventlog.  The benefit
over tpm2_eventlog is that it provides details about some events in
the log.  Specifically, it'll parse and print UEFI boot paths, so you
know what the system was trying to boot.  It'll also print out grub
commands.  tboot itself doesn't provide meaningful details about its
events.

Printing is not exhaustive.  Mainly, it prints details about things I
needed more info about.  That is to say, it handles things I've seen
in actual logs, so there may be gaps.  It assumes a well formatted
log.

Anyway, maybe someone will find it interesting.

Regards,
Jason


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
