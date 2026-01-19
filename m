Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 818A8D3B6CD
	for <lists+tboot-devel@lfdr.de>; Mon, 19 Jan 2026 20:08:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:From:Date:Message-Id:MIME-Version:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=IA4Ql1AwmNj4Y2yZSkPKNjqfJLNC7tVgdo4TTTCZYcI=; b=hroXOge1+vLkbt32Q4Jk9aMmtn
	RPRW4lBwYx30x7vRyJhmeC0iUeBe2xz4QUAvy474Lg7F7564JSD8F5sbatM6xwlZMLZNd7gdP5Avn
	f9ieO5YvxsllaokwWDLm2JajSEmzTjkQzUBsKMzIsoQd8TH18KV+nSNQFISVsRZCyDw0=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1vhubk-0003QE-OE;
	Mon, 19 Jan 2026 19:08:12 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <michal.camacho.romero@linux.intel.com>)
 id 1vhubj-0003Q7-3N for tboot-devel@lists.sourceforge.net;
 Mon, 19 Jan 2026 19:08:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:From:Date:Message-Id:Subject:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=; b=ably7g7hjnvm5ePYn2DvqXiW/6
 2U/ZNk/87dbBByHqgGqgGVWDPwKg6fUuJNlL/mm8sA+IW8Q9D/KPHwYkx/CVCxw+w3a2pmm5iMs99
 wpZHkfxJvKcLiVYSgXa53GIQG8W8NVqcKLjXagFAnxS2DnY5m7K5ovmFqGMxHP8QQmrE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:From:Date:Message-Id:Subject:Content-Transfer-Encoding:Content-Type
 :MIME-Version:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=; b=Q
 8fwhZhX0oCPn1pSeZt/gTv4d8Ob7sK4+UUTS0HHGf2ktcpQ46z1PbNmo6bgBhbfkepxIIODVFhZ+w
 CGn7OGvzlx/Tg49UueetwzmAU7pXZzkl1ZVujnoqCXL/BzsB8Y0aSIYJGKSH1o++hKv/8znKFb0Ju
 eXjPihVOaJ4rkba8=;
Received: from mgamail.intel.com ([198.175.65.10])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vhubi-0007JM-LX for tboot-devel@lists.sourceforge.net;
 Mon, 19 Jan 2026 19:08:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768849691; x=1800385691;
 h=mime-version:content-transfer-encoding:subject:
 message-id:date:from:to:cc;
 bh=frcCV1k9oG9oKj3dpUqdJg1PxRT2RSN/XKdLCPjaYaY=;
 b=lSn0YIBpvLOQMTbrL1mI270TFlUgr37Rxrvs3gMShLIxHdX3VOwkiakx
 Dz7v7cw1QGVTsAVg91YPTtQJczFhTcjq7yH4wOTegXVdyy9kl6/oNrqzZ
 yCtBd0AKfAdBba0pdTMbMfr0vWY4FMgBDhpR1IZXRYtLcUimGs3cDDbrE
 ZxANz7tSkmf/VIqt+tfu6oeuqXcEA/hSM83LeYqMSU/RCtrV2VDnh7sHe
 eBDWUuFwk1W6eB/yObCqhwVzu6ffH/7HI7YL6zC6JDI2gpticZeWyuYWm
 C87sh76Dx7oIKpQxNQahaYBHKNASfxQ8p51mZRLVX+ztAo2x+p67EKrxW Q==;
X-CSE-ConnectionGUID: ud/8S3koSq+1haQo5zZ3ZA==
X-CSE-MsgGUID: 1T8RB9etRg+wNnCOlBs5bg==
X-IronPort-AV: E=McAfee;i="6800,10657,11676"; a="87479292"
X-IronPort-AV: E=Sophos;i="6.21,238,1763452800"; d="scan'208";a="87479292"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2026 11:08:00 -0800
X-CSE-ConnectionGUID: W50d9qDSTgGfwakv7mLQCA==
X-CSE-MsgGUID: Az/hnjWCRmyUtK9qbRLpfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,238,1763452800"; d="scan'208";a="206284113"
Received: from gklab-219-098.igk.intel.com (HELO [127.0.1.1]) ([10.211.219.98])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2026 11:07:58 -0800
MIME-Version: 1.0
Message-Id: <patchbomb.1768849653@gklab-219-098>
User-Agent: Mercurial-patchbomb/6.7.2
Date: Mon, 19 Jan 2026 20:07:33 +0100
From: michal.camacho.romero@linux.intel.com
To: tboot-devel@lists.sourceforge.net
X-Spam-Score: 2.3 (++)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details. Content preview:  
 Content analysis details:   (2.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.3 EMPTY_MESSAGE          Message appears to have no textual parts
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vhubi-0007JM-LX
Subject: [tboot-devel] [PATCH 0 of 3] Define additional force_pmrs TBOOT
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
