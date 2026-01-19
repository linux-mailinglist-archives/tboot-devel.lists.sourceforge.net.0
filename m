Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 89D05D3B6E0
	for <lists+tboot-devel@lfdr.de>; Mon, 19 Jan 2026 20:10:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:From:Date:Message-Id:MIME-Version:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=IA4Ql1AwmNj4Y2yZSkPKNjqfJLNC7tVgdo4TTTCZYcI=; b=hC+o1DhxYQI5WbZoyh5kn6rpsn
	Jyb0SD1+DJUT80uXM0f6ZLghOonmiCtsBEgi5XDvKOCTNK0IjgvUys+30lI94gnfHWPLSCU2h/WD2
	hWmo/onleqaGftHFd+1l3MTY9k2BaFTUsLn603ffnO8ZU6tQvmvS95mEKd5u2wFQHR8Q=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1vhueC-00022o-6b;
	Mon, 19 Jan 2026 19:10:44 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <michal.camacho.romero@linux.intel.com>)
 id 1vhueB-00022i-KU for tboot-devel@lists.sourceforge.net;
 Mon, 19 Jan 2026 19:10:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:From:Date:Message-Id:Subject:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=; b=ZL4Iv3FXobnUaQN58fPJj35xyA
 ET8NRtEf7fcQfxcN67ogh1ODKeGns8BKPI2djvWIPM2oLeH9/Fw0eP1A3Pi7QW0U8z1AR7FwxQ6SU
 M+4URDBDj/YMJM7Q19D62qRJ6KGwjJCC0HGUrSbRYdugX2f7OfcNSElKWa+1liDxqRns=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:From:Date:Message-Id:Subject:Content-Transfer-Encoding:Content-Type
 :MIME-Version:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=; b=M
 4tPVygmv7kYuHVlMNhU9oOrNRNcB6E6JMVbZ1aqiI1L0w+l7+oCtIOOCUILafeUI0d20nP5cck/bM
 PsyO0co+FLEX0TTVBldl/plHhyaXznnIsHXEg9qxAZsd2lS/Arh/HDmW6ug9H5AVQxdfS/u9A94Oa
 wZT1i5O0F2eB6zds=;
Received: from mgamail.intel.com ([198.175.65.20])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vhueB-0007Ut-9d for tboot-devel@lists.sourceforge.net;
 Mon, 19 Jan 2026 19:10:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768849844; x=1800385844;
 h=mime-version:content-transfer-encoding:subject:
 message-id:date:from:to:cc;
 bh=frcCV1k9oG9oKj3dpUqdJg1PxRT2RSN/XKdLCPjaYaY=;
 b=OQ6UpIa+DxQQqdR8BYJVEGk22RxhsyfoY4z+GcHkeWEBowbRk3N8ct0t
 2CN2reyISNa9w5iUP3SN0CGtje3ExmP+yAfxJkxwKI2/nT2MzFZquPKAZ
 CQwxgLevppTR54O3VCsZl2SUEq1mejCYU3aFoXmnFqGCUsLNYKfTiqLYA
 FbM/Xhb+tJbeQmi45XlDqeCd8gJMxJtgcibINvCiOKT9LJPx/fHbySzyT
 Vw2pUtSZ9O8lXPdyTrR9kCQRipBRWU7HdlG5HfQt4TC80XSERgPzTFj98
 TwmPkB0icqMVyY/ZGYIqA2S/ZjhERHsF2htHwDGtnsObD3Ay1SAelCqvj w==;
X-CSE-ConnectionGUID: P160WzePTseFYyknM7Ij1Q==
X-CSE-MsgGUID: TRyGWGh4SRu+PgQValmr6A==
X-IronPort-AV: E=McAfee;i="6800,10657,11676"; a="69794400"
X-IronPort-AV: E=Sophos;i="6.21,238,1763452800"; d="scan'208";a="69794400"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2026 11:10:38 -0800
X-CSE-ConnectionGUID: nG8YXcJJSqa1QjJwAhu4tg==
X-CSE-MsgGUID: fYSkwzwZQXyVpG6Ob7y3gA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,238,1763452800"; d="scan'208";a="210065399"
Received: from gklab-219-098.igk.intel.com (HELO [127.0.1.1]) ([10.211.219.98])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2026 11:10:37 -0800
MIME-Version: 1.0
Message-Id: <patchbomb.1768849808@gklab-219-098>
User-Agent: Mercurial-patchbomb/6.7.2
Date: Mon, 19 Jan 2026 20:10:08 +0100
From: michal.camacho.romero@linux.intel.com
To: tboot-devel@lists.sourceforge.net
X-Spam-Score: 2.3 (++)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details. Content preview:  
 Content analysis details:   (2.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.3 EMPTY_MESSAGE          Message appears to have no textual parts
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vhueB-0007Ut-9d
Subject: [tboot-devel] [PATCH 0 of 4] Define additional force_pmrs TBOOT
 cmdline option,
 which forces to use PMRs instead of TPRs as memory protection mechanism
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
Cc: adamx.pawlicki@intel.com, mateusz.mowka@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tboot-devel-bounces@lists.sourceforge.net




_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
