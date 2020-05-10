Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CE801CCB49
	for <lists+tboot-devel@lfdr.de>; Sun, 10 May 2020 15:09:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jXlhV-0002yw-Jg; Sun, 10 May 2020 13:09:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <timo.lindfors@iki.fi>) id 1jXlhT-0002yf-JM
 for tboot-devel@lists.sourceforge.net; Sun, 10 May 2020 13:08:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UeLjVUkZEtZOSz828PogtMql1V/8m0pLhj6jihdTcvM=; b=aq6aDTbXwfcrGJNB+yw4vN1p5s
 A+vEsylBazl1B7E8QxDGcERDWwCINVnoGFleuj7NgtTW1W5rsJI+lrn/BbE5Jp8drd9Nm2eXpv1YC
 I+lowhzOTgR3+TnIFsZxYPcLiEyxz16QrMe7j5avWB+r+BvnWB3a+hK1NEY1L1RnHuxI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=UeLjVUkZEtZOSz828PogtMql1V/8m0pLhj6jihdTcvM=; b=T
 iD6Wp19DsZIpWD50TAgPewvHdziPFpj3/pT9P/HRLn66Bfa992GtMtNV8RGD56SPyDCpA2oRrfuzp
 6VId8ek+wwTigUBddLJPuUGUx1OCD0GZ0Uy8VOmikESkQXBsfCab9/9vzKUcE/ntDxwx7BUw9xrXt
 Ayodp9LIwKq6qg5I=;
Received: from meesny.iki.fi ([195.140.195.201])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jXlhQ-00Gzne-Fv
 for tboot-devel@lists.sourceforge.net; Sun, 10 May 2020 13:08:59 +0000
Received: from mail.home (82-181-208-90.bb.dnainternet.fi [82.181.208.90])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by meesny.iki.fi (Postfix) with ESMTPSA id B590320190
 for <tboot-devel@lists.sourceforge.net>; Sun, 10 May 2020 16:08:43 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
 t=1589116123;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=UeLjVUkZEtZOSz828PogtMql1V/8m0pLhj6jihdTcvM=;
 b=gRUatkeGYTY/Md/5WDSMzXe53FmSjA6757PVehNj2CKMddUcA9UJzoMCm11ljNcjIn2WE+
 BtId0/sxRii69pXhPD/ZN4/dIhs9++7jNOKRNwiErDqq5k8IFH+UqiVRGcJII/jrLt9tKu
 jPRBCA1yrsCim0+KwGAHKFsqWynYoDA=
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>) id 1jXlh7-0001Sx-AT
 for tboot-devel@lists.sourceforge.net; Sun, 10 May 2020 16:08:37 +0300
Date: Sun, 10 May 2020 16:08:37 +0300 (EEST)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: tboot-devel@lists.sourceforge.net
Message-ID: <alpine.DEB.2.20.2005101558550.5531@mail.home>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=meesny; t=1589116123;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=UeLjVUkZEtZOSz828PogtMql1V/8m0pLhj6jihdTcvM=;
 b=LCUpC/IjR08GSoMbO+XEO4QsNHj8eYuCtPyfxObHkbzTNonJPp3gOODoxWvBK/VfOHU35T
 jpH7VbxxTidkn7+MdFlkFqa8LJIsPgEcy6DDzNVYBPec5542+F0umBcVXY/CIhsTevXiLn
 QQ+0eqh/L7aJuIaDAFk46Q5gSEICOJ4=
ARC-Seal: i=1; s=meesny; d=iki.fi; t=1589116123; a=rsa-sha256; cv=none;
 b=Fmn++KxpcBHFBAKa1vZSrd2Tf0JnMETcJ+Hy9tfAff+AqvWVpi82vmp4pSudRjH3Z9NhQt
 dHbojoKY54PjEj6MTm9GT/MnKc0kT6R2KvYAulR75jtwotdLltm0sZlfkUtDh5u6HImAH2
 JMImsAfXedhpotyJPo3nvka1UN0YqjU=
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
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jXlhQ-00Gzne-Fv
Subject: [tboot-devel] PATCH: man pages installed for tools that are not
 installed
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

currently tboot installs man pages for the following commands that are not 
installed:

lcp_crtpconf lcp_crtpol lcp_crtpol2 lcp_crtpolelt lcp_crtpollist 
lcp_mlehash

These tools were removed in

commit 225ff1be2e43611d3055b2f02aaa418e47fab0ed
Author: Gang Wei <gang.wei@intel.com>
Date:   Fri Nov 30 08:53:10 2018 +0800

     lcptools: remove tools supporting platforms before 2008

     Signed-off-by: Gang Wei <gang.wei@intel.com>

You can pull a fix from the fix/remove-obsolete-man-pages-1 branch at

http://lindi.iki.fi/lindi/hg/tboot/


-Timo



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
