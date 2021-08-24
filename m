Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 951203F5B32
	for <lists+tboot-devel@lfdr.de>; Tue, 24 Aug 2021 11:44:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1mISyH-00038R-Ee; Tue, 24 Aug 2021 09:43:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <timo.lindfors@iki.fi>) id 1mISyF-00038K-8B
 for tboot-devel@lists.sourceforge.net; Tue, 24 Aug 2021 09:43:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Tms2DH5Ddl55TUlpYJMaoxRNSrKlMPTZdedqbnVqwlg=; b=QlME83Fo9rwd6ozgSSWmC3JYOT
 5+3mxTFLvj/yZlaAGa7h9Z9D6jDezoCQYGqmDUg/0kcF+gSUoJz050xhpqMrMn0hCHnRFuvCLdAhn
 lL6IbUIbluXOJ+V5Wk794Vho1v7bMb8x3FxxUDIG98VzlN5zjj2xJLIMTsOUHSORkK70=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Tms2DH5Ddl55TUlpYJMaoxRNSrKlMPTZdedqbnVqwlg=; b=i
 Xgd0yDwClRqW6K5jfzMRczRmOyPwJuQsdHr8r03LB3cL/p0oAv2hMVASr07Yj7MZksFJM3u3nyQE7
 Xcgye6puzWCp9gxtKYWr1BUSP5w/eCv6M+Uk9Ri/z+vMnhLWwsltK6ausqaKhRfxtXPt6j57bj6Qk
 LBD4ES/sk2YEUNTk=;
Received: from lahtoruutu.iki.fi ([185.185.170.37])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mISyA-00069T-Jv
 for tboot-devel@lists.sourceforge.net; Tue, 24 Aug 2021 09:43:51 +0000
Received: from mail.home (89-27-97-237.bb.dnainternet.fi [89.27.97.237])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by lahtoruutu.iki.fi (Postfix) with ESMTPSA id 9B3361B00212
 for <tboot-devel@lists.sourceforge.net>; Tue, 24 Aug 2021 12:43:38 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=lahtoruutu; 
 t=1629798218;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=Tms2DH5Ddl55TUlpYJMaoxRNSrKlMPTZdedqbnVqwlg=;
 b=PJu79Ph6SsUaktgtJL1tofS0rRK8uOpmnA0z1Me1OF1MnzWChA+f+yFnmKcPanGYHs/Fhk
 0B4PQVmSBcZGAHwMZ7hQdRDpcffj5IMGEI66WosB+vnCWB7ubyT+Y1NejbuFY6kAGE+M52
 r3ZlCJJpbsSeXztb6vCbZavGl+L5MwC5fbwIZAkDreCQuk0rkr3Uh2VrqeByhlUDiplfKo
 pRR0PhIy0r4OSjFSv3X7VGKMsdUXP09YMZRtMpDyC0rNmnT6oWmJlCJbAbZut2PhxH5YVw
 DdDb4J9yRTuRSDAZ6YutPqznifDUv6N0zpFUN9VTO60Bawh1mz2MTYgBKkHFnQ==
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>) id 1mIR39-0001Ve-Po
 for tboot-devel@lists.sourceforge.net; Tue, 24 Aug 2021 10:40:47 +0300
Date: Tue, 24 Aug 2021 10:40:47 +0300 (EEST)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: tboot-devel@lists.sourceforge.net
Message-ID: <alpine.DEB.2.20.2108241037560.5749@mail.home>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=timo.lindfors smtp.mailfrom=timo.lindfors@iki.fi
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=lahtoruutu; t=1629798218;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=Tms2DH5Ddl55TUlpYJMaoxRNSrKlMPTZdedqbnVqwlg=;
 b=sJCMFEVDsuP47y22nueAtCYhwBiX+50V1RH+sj9gzSFAkLAaoJ3zcd4LlHXi5uMTfU/2MB
 VtdHJsBocM36WFZu49rVFd/8ohMW43Kpdh4XrTYCBPk/balDrlGkMm86+d7kDVLZ577w7M
 E6Q1AHQeO2ztellGIZfxKojgAjxZshE0Qr5HQnJ2Bm6uUUg60p1KneH1/CxiyvMKxTopVS
 jKDUj/PjQbYnP3ZHsSxTTEvw1R2B5Ux2tqLDU1vEYISdDIyFlAAXC05UTdlIR3AGnP1p43
 K+RhoADOdrh89ghsbC6WF4X/PQ5Pj+dbjAyaaHgzIeMVfZAh+TbhTXjknM0Z0g==
ARC-Seal: i=1; s=lahtoruutu; d=iki.fi; t=1629798218; a=rsa-sha256; cv=none;
 b=on04na1ItDZByNCK7rO80ZDt77dA9cm1lWxG1apiZAFpBJiyYyqEktnzqYEKtrY2aZ9IZn
 XdCVNQ/RwAAdejf/aVGv3qYK/Lw3KFWoO+ut5LjNe3PMOVfaG9TuANcPyj2NFFy7EaPoWx
 6ergA5ZPoVsca91RCA5rBuLVAxjNWTx4Tngwx3LzkYLkEs/rTcTl66aHCHhoD0G5IIPAA/
 kaJr5fuG7fhUVzLBElnFa+GPn2MqKjfnfsnB5RrI0qyUhaHvY47Rc/UmLgFbMVWM1ISnwc
 PzhjcfaeNRWzwDmpEtbYHF3ll1x+V2rumNNk+E3yIcMlsb6QcV6Jg9pR1FyREA==
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
X-Headers-End: 1mISyA-00069T-Jv
Subject: [tboot-devel] increase maximum supported framebuffer size?
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

would it be possible to increase the maximum supported framebuffer size 
or is memory usage an issue? I don't get any output using the following:

Framebuffer info:
     address: 0xc0000000
     pitch: 10240
     width: 2560
     height: 1440
     bpp: 32
     type: 1
Not supported framebuffer size/bpp

This is an HP Elitedesk 800 G2 in UEFI-only mode.

-Timo



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
