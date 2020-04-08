Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 90B2E1A29F9
	for <lists+tboot-devel@lfdr.de>; Wed,  8 Apr 2020 21:55:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jMGnJ-0003c8-De; Wed, 08 Apr 2020 19:55:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lindi@kapsi.fi>) id 1jMGnH-0003bt-BX
 for tboot-devel@lists.sourceforge.net; Wed, 08 Apr 2020 19:55:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0sTFGDh8RJAkHfAxksumYCiZugSZVjaH9jj5RALbvnA=; b=ZWiuSfYE8KojzAIjCynWN38giL
 X2jW4x5uUMQnQTc5A7W/ftgOLZyPC6s3VcmiERwTB6I8CvhGYVtLdwo08uDYHIpTLvX+KqjE5bold
 kUcJx1Xrmitwr17umxA7zhK8Lwmr2bkUQEUOsZBybs1Uc7w9Fb9xwVpYaY5A/adGcL00=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0sTFGDh8RJAkHfAxksumYCiZugSZVjaH9jj5RALbvnA=; b=SzO9M21cIPmnsHtZOfjDzN9jTR
 yt4mVHMfqULKHPxXeeGUBMAZtDJ7iILWWURRxyX01ftPdFNpHJU5fxhb327Ecf+XgV+5VKyve6LJn
 sCDLDRjoRNRMD+Lu/hz4iSe7NYjWTZ8RK2GqYQgjbBlB8Okkl4OVUaE5NUbNYbBDWoPg=;
Received: from mail.kapsi.fi ([91.232.154.25])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jMGnB-00CLVP-AW
 for tboot-devel@lists.sourceforge.net; Wed, 08 Apr 2020 19:55:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=kapsi.fi;
 s=20161220; h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:
 Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0sTFGDh8RJAkHfAxksumYCiZugSZVjaH9jj5RALbvnA=; b=tNKEBgzc7hH3PBAMP0fwJC9OjH
 BsAohUhjJOAXlGfsDo9xTLN5GYXpVeki0xhb1GGSwa80kawj4ug5frCxoO5ZUrBHISVI5DTuSLROd
 ZOxTzz/DBbfMe2W/EMXjWXsD1wbU/vWLGbTUfccQWvHZAr/aumzk4zCBUk3ObO8H72rKGTEbmB/7k
 Js7MKdAHK45GUkLvcQsLu74elJGE6Vlkn6/WxYXMg78x6BdjzwKamFg+5gB5JQjg/JaRFJ5AQ/yX+
 y67jo680vY02Rzwxq/7WFmQ9ubCK8ERJjyv55TZ3jIeFgrflv5TV6m7xLgi40mNiytgNOIpjl8Zqy
 G8cf40OA==;
Received: from 82-181-208-90.bb.dnainternet.fi ([82.181.208.90] helo=mail.home)
 by mail.kapsi.fi with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <timo.lindfors@iki.fi>)
 id 1jMGn1-000249-Rz
 for tboot-devel@lists.sourceforge.net; Wed, 08 Apr 2020 22:55:11 +0300
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>) id 1jMGmx-0006kM-Au
 for tboot-devel@lists.sourceforge.net; Wed, 08 Apr 2020 22:55:07 +0300
Date: Wed, 8 Apr 2020 22:55:07 +0300 (EEST)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: tboot-devel@lists.sourceforge.net
In-Reply-To: <c5561325a53303ad556dadf49ba7269295ac30fc.camel@linux.intel.com>
Message-ID: <alpine.DEB.2.20.2004082251560.25918@mail.home>
References: <alpine.DEB.2.20.2003312317470.19721@mail.home>
 <dc275925ce5f44633594ec3fd6732b13f3abeb4c.camel@linux.intel.com>
 <alpine.DEB.2.20.2004021722080.21308@mail.home>
 <d5d36808a38af260d0e8390aaaf5dc6724cf787f.camel@linux.intel.com> 
 <alpine.DEB.2.20.2004081710220.25471@mail.home>
 <c5561325a53303ad556dadf49ba7269295ac30fc.camel@linux.intel.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 82.181.208.90
X-SA-Exim-Mail-From: timo.lindfors@iki.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: iki.fi]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jMGnB-00CLVP-AW
Subject: Re: [tboot-devel] tboot not picking the right ACM module on Dell
 Latitude E5470
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

On Wed, 8 Apr 2020, Lukasz Hawrylko wrote:
> If you can connect serial port and dump serial logs too that will be
> awesome. Dell's docking station has RS232 connector and TBOOT's logs are
> printed there (tested on my laptop).

A boot log captured from the monitor using a camera is now available at

https://lindi.iki.fi/lindi/tboot/6th_gen_i5_i7_SINIT_71.BIN.tboot.log.png

-Timo



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
