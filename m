Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A05DD1BFC11
	for <lists+tboot-devel@lfdr.de>; Thu, 30 Apr 2020 16:03:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jU9mu-00075K-RD; Thu, 30 Apr 2020 14:03:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lukasz.hawrylko@linux.intel.com>) id 1jU9mt-00074x-Jr
 for tboot-devel@lists.sourceforge.net; Thu, 30 Apr 2020 14:03:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tN7aZDN/i2xT6nf0sqLZwqIo1c5VfvnXEnIK1KFQP2M=; b=S01aQ2HNy8fFBAPTa0n1Q0CNzw
 9ZDi5h27xwxzSKO/hkBXZTsqsdKj0v1aRve2l+OXcLRs0Draqif/oO02o3HLpq4UDqyNIiRAvjl3p
 GIy63Yi9IPlKHx1fzy1O31mMxg0T3VFCF8MuvPFX1bgdTS3zaY+W7bBwXvs5jqtCMgtU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:Date:To:From:Subject:
 Message-ID:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=tN7aZDN/i2xT6nf0sqLZwqIo1c5VfvnXEnIK1KFQP2M=; b=Y
 t2na8BIdRbA9XcO1lN2FIMTBbnWZ4xAVZjG8Yso1kJqkoD52tOAEq8QL4VWk7P8ryL1jht9+nqG1o
 PRJAv8PvJ28NAYjPRgq2DnjwG/uipVVz4084ge8L2lMUkpyw6jGvZh/NCecMk7LOXXbVoK0oHRhvj
 sGdGc6hZYaGC1tYY=;
Received: from mga01.intel.com ([192.55.52.88])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jU9mq-003O1p-17
 for tboot-devel@lists.sourceforge.net; Thu, 30 Apr 2020 14:03:39 +0000
IronPort-SDR: LH/aIc/m823IBiEuRh6FCRuAF0XJ4PkSXw01QVdAOvkYeciM3dS6y98tlcVUPgpz2wdUNF/pi+
 SYfTG4XPYhcw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2020 07:03:28 -0700
IronPort-SDR: ndg0oyXSPHk06GySL8a8Tz0FPT0RgYspvWaCQPzdsRXyhWt2JtCVSITSiFBNuX4yMmiLCxboXu
 dxuOrQ45VPQg==
X-IronPort-AV: E=Sophos;i="5.73,336,1583222400"; d="scan'208";a="459586441"
Received: from lhawrylk-desk.ger.corp.intel.com ([10.213.21.49])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2020 07:03:28 -0700
Message-ID: <22793a47b9a628ce2e8a05f6082e89555a3b9496.camel@linux.intel.com>
From: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
To: tboot-devel@lists.sourceforge.net
Date: Thu, 30 Apr 2020 16:03:25 +0200
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.55.52.88 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1jU9mq-003O1p-17
Subject: [tboot-devel] TBOOT 2.x - new version family branch
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

Hello

I have added new branch to TBOOT repository. This branch starts new
TBOOT version family - 2.x that in the future will replace current 1.9.
Right now both mainline versions are supported, however 1.9 is focused
on stability and bugfixing, and new features will go to 2.x versions.

At this moment there are two features that are included in 2.x.

TBOOT binary signing.
As a result of building process, now there are two files generated:
tboot.gz and tboot.mb2. First one is a standard gziped ELF file, second
one is a PE binary with multiboot2 header. It can be signed with UEFI
Secure Boot signing tools, like sbsign. The signature can be verified by
GRUB2 when booted with UEFI Secure Boot and shim loader. That feature
allows to expand Secure Boot verification chain up to TBOOT. tboot.mb2
still requires multiboot2 protocol and should be loaded in the same way
as tboot.gz - by multiboot2 command in grub.cfg. Apart of that
possibility to add signature, both tboot.gz and tboot.mb2 behave the
same.

Poly1305 replaces VMAC.
TBOOT uses MAC algorithm to keep data integrity during S3 cycle. VMAC
algorithm, that was in TBOOT till now, was the best choice at the time
when TBOOT was created in therms of security vs. performance. Now it's
time to replace it with a modern option and I have decided to choose
Poly1305. I did performance testing and it reaches the same throughput
as VMAC with better security.

Thanks,
Lukasz



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
