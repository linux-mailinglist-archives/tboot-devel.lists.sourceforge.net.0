Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C6BFC68A882
	for <lists+tboot-devel@lfdr.de>; Sat,  4 Feb 2023 07:06:22 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1pOBgg-0008Jg-GB;
	Sat, 04 Feb 2023 06:06:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <greg@wind.enjellic.com>) id 1pOBgf-0008JZ-3t
 for tboot-devel@lists.sourceforge.net;
 Sat, 04 Feb 2023 06:06:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Mime-Version:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cklnb2rnIRnnZjb+PS1qLK15t6RemG6JzezfbzihOYo=; b=HCiyW4S6Gq5re/jylv63lhZCQl
 h2AGXpY2yHzNsTPMHdHvfFZN4WW/a0yd6+vJbnb/d+D9chwSCITnqqSd2XO+iTt9VwvCc92e9EBWC
 XatLWdVeyDwPhKxe5czM3gBoYP/VdhCKVeHLVWkHQkrcGaZZPvmvQpV9SeP6psQlzMxQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Mime-Version:Reply-To:Message-ID:Subject:Cc:To:From:Date:
 Sender:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=cklnb2rnIRnnZjb+PS1qLK15t6RemG6JzezfbzihOYo=; b=B
 PjxXY6iyBFYS+JmCxkB2NaLWPsjdSrKH5KqrfgKP3nf3lbc5sapFSWxPeBBlkkkK0HFWSmCjTu569
 UqqG5kBylFfiIn3EY43Tg0kT0b1FCDPpeES6PdgKhjKz9cZ7/jaS6MkQeMoba/+rosXehxf2n9fKY
 lAZlgRLhYk44JGd0=;
Received: from wind.enjellic.com ([76.10.64.91])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1pOBgY-00AoMZ-Gv for tboot-devel@lists.sourceforge.net;
 Sat, 04 Feb 2023 06:06:06 +0000
Received: from wind.enjellic.com (localhost [127.0.0.1])
 by wind.enjellic.com (8.15.2/8.15.2) with ESMTP id 3145cmjc010476;
 Fri, 3 Feb 2023 23:38:48 -0600
Received: (from greg@localhost)
 by wind.enjellic.com (8.15.2/8.15.2/Submit) id 3145clRD010475;
 Fri, 3 Feb 2023 23:38:47 -0600
Date: Fri, 3 Feb 2023 23:38:46 -0600
From: "Dr. Greg" <greg@enjellic.com>
To: linux-kernel@vger.kernel.org, linux-security-module@vger.kernel.org,
 xen-devel@lists.xen.org, linux-sgx@vger.kernel.org,
 tboot-devel@lists.sourceforge.net
Message-ID: <20230204053846.GA10404@wind.enjellic.com>
Mime-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.4i
X-Greylist: Sender passed SPF test, not delayed by milter-greylist-4.2.3
 (wind.enjellic.com [127.0.0.1]); Fri, 03 Feb 2023 23:38:49 -0600 (CST)
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Good evening, I hope the week has gone well for everyone.
 On behalf of the Quixote team: Izzy the Golden Retriever, Maria, John and
 myself; I am pleased to announce the initial release of the Quixote/TSEM Trust
 Orchestration System. We believe it uniquely po [...] 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1pOBgY-00AoMZ-Gv
Subject: [tboot-devel] Quixote/TSEM: A new security architecture and
 eco-system for Linux.
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
Reply-To: "Dr. Greg" <greg@enjellic.com>
Cc: casey@schaufler-ca.com, corbet@lwn.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tboot-devel-bounces@lists.sourceforge.net

Good evening, I hope the week has gone well for everyone.

On behalf of the Quixote team: Izzy the Golden Retriever, Maria, John
and myself; I am pleased to announce the initial release of the
Quixote/TSEM Trust Orchestration System.  We believe it uniquely
positions Linux to demonstrate a new approach to security and security
co-processor architectures.

Quixote/TSEM is based on the notion, that like all other physical
phenomenon, the security state of a platform or workload can be
mathematically modeled.  The objective is to provide for Linux
security what Docker did for Linux namespace technology.

There are two major components to this architecture.

TSEM is the Trusted Security Event Modeling system.  It is a new Linux
Security Module implementation, that at a conceptual level, is a
blending of integrity measurement and mandatory access controls.  It
treats the LSM hooks as the basis set for a functional description of
the security state of a system.

Quixote is the userspace software stack that makes the TSEM LSM
useful.  It implements the concept of a Trust Orchestration System
(TOS).  A trust orchestration environment is designed to keep a
platform or workload in a known trust state.  It thus implements the
notion of prospective trust rather than the retrospective trust model
available with TPM based architectures.

A patch series implementing the TSEM LSM has been submitted to the
linux-security-module list for review and inclusion in the upstream
kernel.

The source code for the Quixote TOS and pre-compiled binaries for the
userspace tooling can be found at the following URL:

ftp://ftp.enjellic.com/pub/Quixote

The source release includes a selection of TMA's that include Xen, SGX
and micro-controller implementations.

The kernel patches include a documentation file, that we believe,
thoroughly discusses the rationale and implementation of the new
architecture.  To avoid further indemnifying my reputation for
loquaciousness in e-mail, I will defer interested parties to that
document for further discussion.  The document is also included in the
Quixote source code release for those who choose to download that.

In addition to initiating a discussion on a different approach to
security, we hope that this release keeps Casey Schaufler from turning
more blue than he already is.  Given that I had mentioned to him two
months ago that a new LSM would become available, "in a couple of
weeks", that may influence conversations on changes to the Linux LSM
architecture that are being discussed.  Such is the state of software
development.... :-)

I would be more than happy to field any additional questions that may
be forthcoming.

Best wishes for a pleasant weekend.

As always,
Dr. Greg

The Quixote Project - Flailing at the Travails of Cybersecurity


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
