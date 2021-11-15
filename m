Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E7C5E450743
	for <lists+tboot-devel@lfdr.de>; Mon, 15 Nov 2021 15:40:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1mmd9M-0003Yp-Ll; Mon, 15 Nov 2021 14:40:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <lukasz@hawrylko.pl>) id 1mmcVA-0006bd-1o
 for tboot-devel@lists.sourceforge.net; Mon, 15 Nov 2021 13:58:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mdnl6yBCvhA7+vSTJarf0rI8tN1jOmFWE3UZCIQL764=; b=OGaZc3nr7gltFSZqQU9p7d1v2K
 mYw0OmLgLT5fdrvVmySpGJeqpCVbQhPPxMWYptHcDnWpT3FKzNnl216HrqADGEeRk/Nkf7VeplK+y
 XMALWYJo/ncrh/8lGm5fYQfTpkMyKXCSZrc2tZsuXJtG1V4x6zpKxp8BbwmsTHL0bbzY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:Date:To:From:Subject:
 Message-ID:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=mdnl6yBCvhA7+vSTJarf0rI8tN1jOmFWE3UZCIQL764=; b=k
 +IfReKtktBBaUO6X7r2GBeyXEwpIuZ03ykYp7Odjh35TN851aAliyur3AASc5VwzVh/cs4tFpccI6
 XUMqLhPTrwGKIKfdvQeA3eyEpeavfrlieTDrMabmQ6ANiP/TW3L+aS/zymFDHUAGuuKGR+XcshcLk
 q21G6UnOS4jUpmnU=;
Received: from hawrylko.pl ([54.37.138.145])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mmcV5-0003wP-9y
 for tboot-devel@lists.sourceforge.net; Mon, 15 Nov 2021 13:58:29 +0000
Received: from lh-lnx.vector.com.pl (unknown [193.109.59.18])
 by hawrylko.pl (Postfix) with ESMTPSA id AF75740291
 for <tboot-devel@lists.sourceforge.net>; Mon, 15 Nov 2021 14:39:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=hawrylko.pl;
 s=201812; t=1636983580;
 bh=mdnl6yBCvhA7+vSTJarf0rI8tN1jOmFWE3UZCIQL764=;
 h=Subject:From:To:Date:From;
 b=dqjkkC4rDUbHUxlLEmSiP5T9IUGpixqa2atkvsid7lc41dLTOMh+szbDbn+t9cCg0
 rx8yQUwR9Qm60GmlbdIH/2hvmq5a4WQhCW7sfDHx2wq1470odZefEiYi4zXPcNScTO
 Q855bBr6a+XEDDhVXyqrLyKZ6w5wknWVcpbKFoYrsFI3VgZ5IFTj/+oPlg6JK0s5cE
 jrwv49UELJ+LUEUJREK4UIQ/VCjcM8FDTmSGGrU84qWFkEjUB7n7uy/fnST7ZVP+bA
 2rcSJ/+l8kcqJbvw1bqBkbcc8oUyByrXnLhD9CCJ4/H3KvVkmR7dnWDfXgLb3A4Iv9
 xxc9/kWfWXFbQ==
Message-ID: <ad0fb701d8636b9b0e5b9a767d0fc4c533cda68e.camel@hawrylko.pl>
From: =?UTF-8?Q?=C5=81ukasz_Hawry=C5=82ko?= <lukasz@hawrylko.pl>
To: tboot-devel@lists.sourceforge.net
Date: Mon, 15 Nov 2021 14:39:35 +0100
User-Agent: Evolution 3.42.0-2 
MIME-Version: 1.0
X-Helo-Check: bad, Forged Random Domain (hawrylko.pl)
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Hello I want to invite you to Linux Secure Launch -
 TrenchBoot
 Summit that will take place at November 16th, starting from 4PM UTC. Summit
 will be focused on DRTM and SRTM technologies that can be used with Linux,
 including TrenchBoot - a new initiative that adds platform independent support
 for DRTM to the Linux based systems. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1mmcV5-0003wP-9y
X-Mailman-Approved-At: Mon, 15 Nov 2021 14:39:57 +0000
Subject: [tboot-devel] [Announcement] Linux Secure Launch - TrenchBoot Summit
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

I want to invite you to Linux Secure Launch - TrenchBoot Summit that
will take place at November 16th, starting from 4PM UTC.

Summit will be focused on DRTM and SRTM technologies that can be used
with Linux, including TrenchBoot - a new initiative that adds platform
independent support for DRTM to the Linux based systems.

For more details and presentation schedule please check:
https://trenchboot.org/secure-launch-summit/

Thanks,
Lukasz


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
