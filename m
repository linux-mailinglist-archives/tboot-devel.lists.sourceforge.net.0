Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 55E6949DB51
	for <lists+tboot-devel@lfdr.de>; Thu, 27 Jan 2022 08:19:26 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1nCz3n-0000Kr-VF; Thu, 27 Jan 2022 07:19:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jun.miao@intel.com>) id 1nCz3m-0000Kl-LU
 for tboot-devel@lists.sourceforge.net; Thu, 27 Jan 2022 07:19:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=crKLe1RT3Jkvg2DeVX55Wcssj8UuVC4Ku8XC4p4XfTM=; b=abc67WLKQb3xKU2zMoyHQnICn4
 LDE9QtGall8MJ+lce5jDFj1F3Pj/uNa/LtmxU+ydkqo5d3LchNKLmYAF37h66LWJY/Wnk+GaEhpMx
 SqMseGo9zz01ZXuoxMEZxlUEKl+qc0eDj4tll63XB1Y370gLEfbEhsD7zCLhLbfk9Iqs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=crKLe1RT3Jkvg2DeVX55Wcssj8UuVC4Ku8XC4p4XfTM=; b=j
 OX7kfG5uryGyC1PqWpFkHEqqmOpm6CH7Tm+oyxKMJJkWwn4ljMRE4iT1QETDvRoDaiVu3AY0Iu2mb
 IHbZ7n6rCSIx04Ce3BSntFQ0s7J7H59QBbFcGpr4zshOoY4nmD6k0kvSvUOSTkcYuaRANkHvmz6Oh
 X0YegCbQIwgKfgXk=;
Received: from mga11.intel.com ([192.55.52.93])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1nCz3h-00FmLT-0T
 for tboot-devel@lists.sourceforge.net; Thu, 27 Jan 2022 07:19:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643267944; x=1674803944;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=M2GUfcyFnbiJtnyMKmBAV5J3iRMuPfgn0CgUiUEDbPk=;
 b=mXbqVYTNKl9MlD6REFTlTZ2P9ZJiMs8LinFKjCJeS8WK3TYLtA4Nfv8J
 bGezpm4wQaXABwQII/aKN29G7nrc/0hBc20S6Bj2OLjynvBwMr/W054Qp
 dkoShTdHsS8i6ZxgzDgMqBRS2F2yz2mFsP3fyVUE/EYZoAoWECCsNd/hl
 Z7bwub5Cl6PFJwgWAhhNYk8APnUL3gWi+YEz8nSIGTP3LmHQ43o4no9d1
 Yh5O5bTDPWiV1+OWhpyWK9LUgxyTljmG0Ic2NSFaS+2FL8CkhycGYKeZs
 K7+0JzVVO5XjwDFg/XQaMg0p44Nj+VIwWq6TCwcdJ4mf4k/kv40MfSnpD Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="244371634"
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="244371634"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 23:18:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="533018563"
Received: from ubuntu.bj.intel.com ([10.238.155.108])
 by fmsmga007.fm.intel.com with ESMTP; 26 Jan 2022 23:18:58 -0800
From: Jun Miao <jun.miao@intel.com>
To: pawel.randzio@intel.com
Date: Thu, 27 Jan 2022 15:18:58 +0800
Message-Id: <20220127071859.56584-1-jun.miao@intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Summary: gcc update caused build error: writing 1 byte into
    a region of size 0 [-Werror=stringop-overflow] Hi, Pawel Could you help me
    review this patch to fix this build error in fedora 36? Branch：tboot-1.10.3.tar.gpg
    
 
 Content analysis details:   (-5.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [192.55.52.93 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
                             high trust
                             [192.55.52.93 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nCz3h-00FmLT-0T
Subject: [tboot-devel] [Pull Request] tboot/Config.mk: Add a CFLAGS
 "-Wo-stringop-overflow" to void build error
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
Content-Type: multipart/mixed; boundary="===============0790002527766901047=="
Errors-To: tboot-devel-bounces@lists.sourceforge.net

--===============0790002527766901047==
Content-Type: text/plain; charset=yes
Content-Transfer-Encoding: 8bit

Summary: gcc update caused build error: 
	 writing 1 byte into a region of size 0 [-Werror=stringop-overflow]


Hi, Pawel

	Could you help me review this patch to fix this build error in fedora 36?
	Branch：tboot-1.10.3.tar.gpg

Thanks 
Jun.Miao


--===============0790002527766901047==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============0790002527766901047==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel

--===============0790002527766901047==--
