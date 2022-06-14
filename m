Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4404254AACE
	for <lists+tboot-devel@lfdr.de>; Tue, 14 Jun 2022 09:41:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1o11B9-0005O2-MC; Tue, 14 Jun 2022 07:41:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <timo.lindfors@iki.fi>) id 1o11B7-0005Nt-Ke
 for tboot-devel@lists.sourceforge.net; Tue, 14 Jun 2022 07:41:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1nsubEcq8L8dPIYnNjzoNqIVwFTT+jvePWh/vyUqOWE=; b=Hnq65JgI/8Ir/YqamhNP/ldh62
 rcvN1ht3OVhr9mNikhCiNzukcWBc5AX9hUnZfCZFqNMK3QP4TSMhBGPLd7NB+0f6hdprdMZRZwaGI
 cQCGITVU0S8KY/K+pX9fV03EhgSHvn7uUZ306qFCy9/Oo/R7PxDvFotf4jOPT44wp/qU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1nsubEcq8L8dPIYnNjzoNqIVwFTT+jvePWh/vyUqOWE=; b=PpWkANxdGyQyXWq1pno1EMqJgo
 Ude0e2xrwSpAGS7QdKhniLML/dS5sp/M9CAq03EDnKb9WklEDhY8JDZ6j240rNty5JswekUznBj/X
 VxYhlR9Hhli0lQRZONnAXXd+HUwko/wgpGWBaOv8Sj1Mv67Etw9zR+znaL1VkpwoPhWM=;
Received: from [185.185.170.37] (helo=lahtoruutu.iki.fi)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o11Az-00078N-2O
 for tboot-devel@lists.sourceforge.net; Tue, 14 Jun 2022 07:41:34 +0000
Received: from mail.home (82-181-195-69.bb.dnainternet.fi [82.181.195.69])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by lahtoruutu.iki.fi (Postfix) with ESMTPSA id E1C491B0029D;
 Tue, 14 Jun 2022 10:41:09 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=lahtoruutu; 
 t=1655192470;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=1nsubEcq8L8dPIYnNjzoNqIVwFTT+jvePWh/vyUqOWE=;
 b=kmnnLGm0WUqWFL48CT5Qd5VxmZX5ubiuUWYQ8X1yBRoYrPKEhGJcouXVeoR0oTg9OAWSAG
 2lV8xD2ZuDlNL37x9dE7pxN2EA14L1cg/iSY1YWSCKR6pnIvQj+S8vo1uHOyt1sfz//BZY
 2WMAu/K9xshR0glV6yZbpvy8p4a6hhHVoxx1v8UnZULsDSg1WzselrdOAgmNh4gXLNZlsB
 xJwt9RXrNZe4OopEcy4r6uQqMutABtYwotU1TWOrR/mND1wJLMZ68ad5xaUdVvVdYdE/1g
 zhLfQsXTdVvtADFmyv//Bvf2Gojszrjc0PdEtlj8HG3CneG87nCL+3v8rOC/KA==
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>)
 id 1o0zFP-0000DY-DZ; Tue, 14 Jun 2022 08:37:51 +0300
Date: Tue, 14 Jun 2022 08:37:51 +0300 (EEST)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: "Bhungal, Jeevan S" <jeevan.s.bhungal@intel.com>
In-Reply-To: <BYAPR11MB2838993FA76C9A8EEB9E84BBD4AB9@BYAPR11MB2838.namprd11.prod.outlook.com>
Message-ID: <alpine.DEB.2.20.2206140835470.822@mail.home>
References: <CAKf6xpu=3sWzdjaPpT8AM52gHotAvZVv1aB3QtXGxBmDaU+yeg@mail.gmail.com>
 <CY4PR1101MB207079134D515F45667C719FEB1A9@CY4PR1101MB2070.namprd11.prod.outlook.com>
 <CAKf6xpsgyKdzU8nnPoTHoE+zxgkJX4wpCE5tFhzdC+LOG83Uzg@mail.gmail.com>
 <CY4PR1101MB20700DA2CD945A201DE4F1BBEBF79@CY4PR1101MB2070.namprd11.prod.outlook.com>
 <DC64916B-D25B-4310-BBC5-070BAEFA497B@intel.com>
 <BYAPR11MB283862EBA030B7498BCEFC23D4F89@BYAPR11MB2838.namprd11.prod.outlook.com>
 <CAKf6xps_kDLNr1nxKFLxLSa673xAj8V8p1u6XC1vOAQmOoutRg@mail.gmail.com>
 <alpine.DEB.2.20.2206131105090.32431@mail.home>
 <BYAPR11MB2838993FA76C9A8EEB9E84BBD4AB9@BYAPR11MB2838.namprd11.prod.outlook.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
ARC-Seal: i=1; s=lahtoruutu; d=iki.fi; t=1655192470; a=rsa-sha256; cv=none;
 b=qS/6xQgekX3iKp6ziyd/cXb5vLpQ1Kol1nLCYeUnrzEM3m6O7d0KSfuBHLJF9roysSyeac
 y0zN1NE7iFhtT6wm/avt2WyE/eZgAt9GoHTm9VhnOBNgoViLZcCMaNCFNGpHSXkfqpXND4
 WlwFPIxtFujCYsEG04RbHNzwIrc9u955boUlL+4Z/gb5rtBy0gTrZ05NcEMrHGalY6x9He
 BJsqNN1xppOkSArBoLOlHyGmlYwOPBE4A8YgDgE3raJmCaZ8BbvqZnRt6X3J/Kdx+C23HP
 QoJ9BIAFe0kROLy182Yno1TQ8x+lw1ZtkEDLn67NRNz3WRa9QeW/DKeRwBNA2Q==
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=timo.lindfors smtp.mailfrom=timo.lindfors@iki.fi
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=lahtoruutu; t=1655192470;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=1nsubEcq8L8dPIYnNjzoNqIVwFTT+jvePWh/vyUqOWE=;
 b=aQwTMDVgjdZ8Wd1VdOBi1IYmMasz/d0zf6agmkgtFyP/G2tIKiwb3h9YAkiyzqJudyVhTl
 RxXYLELuTZS/7ff4x6KuelxxmgK+U187pBJS/6/uZs748Q0YyRh8DQeTTt3fmPebT8/6OS
 Enw3wKcVbt6j9zS2dx48PmUFlZTEW0rAfDe2zorKp64pLW49a/B5uxDvwkBjBOgQPN6Spt
 XUSYv99l9idcwNsLwySm1Dm0jItd8A9d8HWo4ZLz08/6oDMTwnZ0qsx/QcAZ3iKazQKzgf
 KD2lKGsFu63saaDTPziZP23+Sp1EnKmZbKWUpt3i2ny/eMmOKaJLHAa9NDjtPQ==
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, that's good to hear, thanks for the quick reply. Would
 it be possible to include the license text in the zip file in the future?
 It is difficult to get this through review if the license is not includ [...]
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.185.170.37 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1o11Az-00078N-2O
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
 "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>,
 "Crain, Keegan" <keegan.crain@intel.com>, "Sehra,
 Supreeti" <supreeti.sehra@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tboot-devel-bounces@lists.sourceforge.net

Hi,

that's good to hear, thanks for the quick reply. Would it be possible to 
include the license text in the zip file in the future? It is difficult to 
get this through review if the license is not included. Also, how can I 
know when a new version is available? I don't have a login to the Intel 
site.

Alternatively, would it be possible to have the ACMs available in a more 
public website like 
https://www.intel.com/content/www/us/en/developer/articles/tool/intel-trusted-execution-technology.html 
that already requires users to read the license before downloading?


-Timo


On Mon, 13 Jun 2022, Bhungal, Jeevan S wrote:

> Hi Timo,
>
> It is the same license, so no change.
>
>
> Jeevan Bhungal
> Client Security Technologist  |  CCG-CPE-CCE
> CCE Security Champion
> D 916.377.1013  |  M 530.844.0930
> Intel Corporation  |  intel.com
>
> -----Original Message-----
> From: Timo Lindfors <timo.lindfors@iki.fi>
> Sent: Monday, June 13, 2022 1:13 AM
> To: Jason Andryuk <jandryuk@gmail.com>
> Cc: Bhungal, Jeevan S <jeevan.s.bhungal@intel.com>; Gupta, Rahul Kumar <rahul.kumar.gupta@intel.com>; Fedko, Artem <artem.fedko@intel.com>; Crain, Keegan <keegan.crain@intel.com>; Parmeter, Ben <ben.parmeter@intel.com>; tboot-devel@lists.sourceforge.net; Sehra, Supreeti <supreeti.sehra@intel.com>
> Subject: Re: [tboot-devel] 11th Gen SINIT ACM
>
> Hi,
>
> On Mon, 25 Apr 2022, Jason Andryuk wrote:
>>>
>>> https://cdrdv2.intel.com/v1/dl/getContent/630744?explicitVersion=true
>>>
>>> Jeevan Bhungal
>>
>> Great!  Yeah, the internal link does not work, but the direct link
>> does.  Thank you, Jeevan.
>
> The direct link works but does not seem to contain any license information, just a PDF that says
>
>    "No license (express or implied, by estoppel or otherwise) to any
>     intellectual property rights is granted by this document."
>
> I'd like to include these in the Debian non-free package intel-acm. This package currently holds ACM modules published at
>
> https://www.intel.com/content/www/us/en/developer/articles/tool/intel-trusted-execution-technology.html
>
> under the following license:
>
> """
> Copyright (c) 2007 - 2011, Intel(R) Corporation.
> All rights reserved.
> Redistribution
> Redistribution and use in binary form, without modification, are permitted provided that the following conditions are met:
>
> Redistributions must reproduce the above copyright notice and the following disclaimer in the documentation and/or other materials provided with the distribution.
> Neither the name of Intel Corporation nor the names of its suppliers may be used to endorse or promote products derived from this software without specific prior written permission.
> No reverse engineering, decompilation, or disassembly of this software is permitted.
>
> Limited patent license
> Intel Corporation grants a world-wide, royalty-free, non-exclusive license under patents it now or hereafter owns or controls to make, have made, use, import, offer to sell and sell ("Utilize") this software, but solely to the extent that any such patent is necessary to Utilize the software alone. The patent license shall not apply to any combinations which include this software. No hardware per se is licensed hereunder.
> DISCLAIMER
> THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
>
> """
>
> Is Intel licensing these new files also under the same license or has the license changed?
>
>
> -Timo
>
>


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
