Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A0A6548472
	for <lists+tboot-devel@lfdr.de>; Mon, 13 Jun 2022 12:16:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1o0h76-00009j-UO; Mon, 13 Jun 2022 10:16:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <timo.lindfors@iki.fi>) id 1o0h75-00009d-7Y
 for tboot-devel@lists.sourceforge.net; Mon, 13 Jun 2022 10:16:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Pby//YWhjcLwqbxjmuHGbDTrhwvW4vTEumk+Y9qQGPI=; b=UzLFkVTzO+lXbNWzjuW+S/E6Cb
 xwUOTk4vVlFmQLFZNdvAlRC5NgRODbWchC4CUQQ83xHmUdnieazalRPSmXVQVAoK5vRC9Ky8iMSOt
 2GNMpxzqmRJgv35zuEaDUvQuxHP5w6kYnh9dACkcb0qkQkWGL7wp7A4s6FFO9RdIFb8o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Pby//YWhjcLwqbxjmuHGbDTrhwvW4vTEumk+Y9qQGPI=; b=evxSVivnMCi3HDO5Q/KAH6q/h4
 AodaA5SlsHVHHEkCNImqLZDcfHCmAuVSCX5hFGqc7CIzY8Bj2tiAWTpgpbSvwsPKpzbE3lHCwLhYF
 QIMEFW4lzwDQbLcaH2XQS4qJbUE4t3pGrPniozwV7qnKZSQg2fD45rw0H7RkH/Pnfr2s=;
Received: from meesny.iki.fi ([195.140.195.201])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o0h6z-00Hast-Vf
 for tboot-devel@lists.sourceforge.net; Mon, 13 Jun 2022 10:16:01 +0000
Received: from mail.home (82-181-195-69.bb.dnainternet.fi [82.181.195.69])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by meesny.iki.fi (Postfix) with ESMTPSA id 11F8B20045;
 Mon, 13 Jun 2022 13:15:50 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
 t=1655115350;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Pby//YWhjcLwqbxjmuHGbDTrhwvW4vTEumk+Y9qQGPI=;
 b=CsQiTHMIWrvCLwarmtJ0GF3LPf3nZCSzVU+6MvY+qri5hjIivsot9wAwIszYtqXyTyRPcu
 fWwyuBcDqmKpaNi1Fenou8a9qiONPTpKimL2WWCF72s9NoHdd/eItsVsdbDSQO7ugLOH3o
 3Gmlq9cftuJygKZBVzf7N/TbFazu/RU=
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>)
 id 1o0fBW-0008RT-Rw; Mon, 13 Jun 2022 11:12:30 +0300
Date: Mon, 13 Jun 2022 11:12:30 +0300 (EEST)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: Jason Andryuk <jandryuk@gmail.com>
In-Reply-To: <CAKf6xps_kDLNr1nxKFLxLSa673xAj8V8p1u6XC1vOAQmOoutRg@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.2206131105090.32431@mail.home>
References: <CAKf6xpu=3sWzdjaPpT8AM52gHotAvZVv1aB3QtXGxBmDaU+yeg@mail.gmail.com>
 <CY4PR1101MB207079134D515F45667C719FEB1A9@CY4PR1101MB2070.namprd11.prod.outlook.com>
 <CAKf6xpsgyKdzU8nnPoTHoE+zxgkJX4wpCE5tFhzdC+LOG83Uzg@mail.gmail.com>
 <CY4PR1101MB20700DA2CD945A201DE4F1BBEBF79@CY4PR1101MB2070.namprd11.prod.outlook.com>
 <DC64916B-D25B-4310-BBC5-070BAEFA497B@intel.com>
 <BYAPR11MB283862EBA030B7498BCEFC23D4F89@BYAPR11MB2838.namprd11.prod.outlook.com>
 <CAKf6xps_kDLNr1nxKFLxLSa673xAj8V8p1u6XC1vOAQmOoutRg@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=meesny; t=1655115350;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Pby//YWhjcLwqbxjmuHGbDTrhwvW4vTEumk+Y9qQGPI=;
 b=rk10csSEzSBXdBYcOwFLyizP4GTzhZP6tVcrhVwuidXrwuKmgSzryOO+q4lZSdWe0KRJZV
 H58vaveCBKzkvny4BRyTDr3mTaJRXES7BhjfC1Z9osG1gScZZvShv2K0+AmASW516locDe
 jI1EAyk2TTJJ92SBLA4MHNH1dBBP2fo=
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=timo.lindfors smtp.mailfrom=timo.lindfors@iki.fi
ARC-Seal: i=1; s=meesny; d=iki.fi; t=1655115350; a=rsa-sha256; cv=none;
 b=OIEfBgq064lzTVbK7nRkwL8Io1gXR52ARFhNe/3K1mN2Nc03CY8oIPqTPBQqzeF1ZO3Er0
 5UvpX7p7/Iu2G41jOqbirJ6tmqKbQdUvmioxloqYXPH8zTnLCSWL/WpENinBO8Bn1FgwkF
 we9v/VxT+fIBkF40Gj0Lr8qi+xiuY0E=
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Mon, 25 Apr 2022,
 Jason Andryuk wrote: >> >>
 https://cdrdv2.intel.com/v1/dl/getContent/630744?explicitVersion=true
 >> >> Jeevan Bhungal > > Great! Yeah, the internal link does not work, but
 the dir [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1o0h6z-00Hast-Vf
Subject: Re: [tboot-devel] 11th Gen SINIT ACM
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
Cc: "Gupta, Rahul Kumar" <rahul.kumar.gupta@intel.com>, "Fedko,
 Artem" <artem.fedko@intel.com>, "Parmeter, Ben" <ben.parmeter@intel.com>,
 "Bhungal, Jeevan S" <jeevan.s.bhungal@intel.com>,
 "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>,
 "Crain, Keegan" <keegan.crain@intel.com>, "Sehra,
 Supreeti" <supreeti.sehra@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tboot-devel-bounces@lists.sourceforge.net

Hi,

On Mon, 25 Apr 2022, Jason Andryuk wrote:
>>
>> https://cdrdv2.intel.com/v1/dl/getContent/630744?explicitVersion=true
>>
>> Jeevan Bhungal
>
> Great!  Yeah, the internal link does not work, but the direct link
> does.  Thank you, Jeevan.

The direct link works but does not seem to contain any license 
information, just a PDF that says

    "No license (express or implied, by estoppel or otherwise) to any
     intellectual property rights is granted by this document."

I'd like to include these in the Debian non-free package intel-acm. This 
package currently holds ACM modules published at

https://www.intel.com/content/www/us/en/developer/articles/tool/intel-trusted-execution-technology.html

under the following license:

"""
Copyright (c) 2007 - 2011, Intel(R) Corporation.
All rights reserved.
Redistribution
Redistribution and use in binary form, without modification, are permitted
provided that the following conditions are met:

Redistributions must reproduce the above copyright notice and the 
following disclaimer in the documentation and/or other materials provided 
with the distribution.
Neither the name of Intel Corporation nor the names of its suppliers may 
be used to endorse or promote products derived from this software without 
specific prior written permission.
No reverse engineering, decompilation, or disassembly of this software is 
permitted.

Limited patent license
Intel Corporation grants a world-wide, royalty-free, non-exclusive license 
under patents it now or hereafter owns or controls to make, have made, 
use, import, offer to sell and sell ("Utilize") this software, but solely 
to the extent that any such patent is necessary to Utilize the software 
alone. The patent license shall not apply to any combinations which 
include this software. No hardware per se is licensed hereunder.
DISCLAIMER
THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS 
IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, 
THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR 
PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR 
CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, 
EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, 
PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR 
PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF 
LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING 
NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS 
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

"""

Is Intel licensing these new files also under the same license or has the 
license changed?


-Timo


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
