Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B5F163466D7
	for <lists+tboot-devel@lfdr.de>; Tue, 23 Mar 2021 18:55:34 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1lOlFZ-0007Iz-EW; Tue, 23 Mar 2021 17:55:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1lOlFV-0007IH-5V
 for tboot-devel@lists.sourceforge.net; Tue, 23 Mar 2021 17:55:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Xjam+ZOu7V9kegIDaLwLiLY2faDgz8mM5r3PqsuIGRE=; b=laGxRfuAF3V6uZSTwMNrRo488F
 LSbWua87cuU5PMoUADzy+4VBrWSkez6q/IzFgga8MEeCPOCm50qulhHm/cV+gf3ch7hyOu3IbMlXX
 7fU0sP8ha4RdPmH8r2EwZnWKqtdxHy+qd8qppVeahv9wwvxM1jvXubxLrnOS7udNdN7M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:Date:To:From:Subject:
 Message-ID:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Xjam+ZOu7V9kegIDaLwLiLY2faDgz8mM5r3PqsuIGRE=; b=B
 lWPDnnf7jG854N/kyceauHl273ZbbIi1/p6239o+62cggz2J9MTzcW2YIRWaef8nQ3OOVsJzEpKn1
 8NSKGkzdr8MoWQwRtfg6YsfSaUI4cLJaMfyBWVygjOfAc0EJHXYuQJ6rDXr/pD52bc87JHsTfD0KU
 FPQpxFc+B1at/ymY=;
Received: from mga04.intel.com ([192.55.52.120])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lOlFI-0005eG-4z
 for tboot-devel@lists.sourceforge.net; Tue, 23 Mar 2021 17:55:25 +0000
IronPort-SDR: Ve5LlT61Rea5Xle9IPcWtNyNk1g6ql5252/oaFnXkYOJIQER90wBkoiD0Fy2aloXTwZnDNLEOP
 C4QjzC2prbaw==
X-IronPort-AV: E=McAfee;i="6000,8403,9932"; a="188214552"
X-IronPort-AV: E=Sophos;i="5.81,272,1610438400"; d="scan'208";a="188214552"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2021 10:55:06 -0700
IronPort-SDR: +rn1I3OCAdBkKglZxmThIphC0d1RFWvd5Me431QKPm5BQKAZM/JrhZlV+Tz3bVR8ycCaGD6/9Q
 h2Kl/SJg7udw==
X-IronPort-AV: E=Sophos;i="5.81,272,1610438400"; d="scan'208";a="415098711"
Received: from ksadowsk-mobl.ger.corp.intel.com ([10.213.20.231])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2021 10:55:04 -0700
Message-ID: <5144e0347fe260b74f74c5568ed68fdd5eb2c8f6.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Date: Tue, 23 Mar 2021 18:55:01 +0100
User-Agent: Evolution 3.38.3 (3.38.3-1.fc33) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: trenchboot.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1lOlFI-0005eG-4z
Subject: [tboot-devel] Announcement - TrenchBoot Developers Forum
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

I would like to announce that TrenchBoot Developers Forum will take
place on March 24th at 16:00 GMT

For more details and agenda please refer to
https://trenchboot.org/tdf-schedule.html

Lukasz



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
