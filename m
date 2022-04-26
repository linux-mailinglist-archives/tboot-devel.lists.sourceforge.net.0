Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AB6F50F05C
	for <lists+tboot-devel@lfdr.de>; Tue, 26 Apr 2022 07:40:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1njDwF-00067N-V2; Tue, 26 Apr 2022 05:40:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <timo.lindfors@iki.fi>) id 1njDwE-00067H-F5
 for tboot-devel@lists.sourceforge.net; Tue, 26 Apr 2022 05:40:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MpVAtpwBx4jN456D9rT0C097PxBtP+H7lQ7Y5L7Aa9I=; b=ZUS32MfcKbzFmRkf7J8Qr4HTKk
 xhbdRgQMcCSY6+tQVcMBw2ygA7ngSN8ZHpHV298O0GLNqArmqM+V3Bj041YpAtU7XkN+tNbjW8Nls
 G83I8KWfvr7dCg1E5JxR8fdFH9DdThw47M8RJnvDadlR9bH8r1IHZKY8T6N4KF+pb4GQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MpVAtpwBx4jN456D9rT0C097PxBtP+H7lQ7Y5L7Aa9I=; b=UroBQvlJ6/XWdoExSG25cFmYda
 FHbepv42A+AiOIq6nCD7Dn5Gd5xhsuWQ/gST+NvDfz+rekn5O3lISd5ozV4YWKeeFxfQt2+FJrEnc
 1ioN3ROKJKh6pi+P54g82ilfafKKuO76ocnOgL5+eGwZLnINS8Z738us/g7NYRsBfp3k=;
Received: from lahtoruutu.iki.fi ([185.185.170.37])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1njDw8-0006jY-7u
 for tboot-devel@lists.sourceforge.net; Tue, 26 Apr 2022 05:40:36 +0000
Received: from mail.home (82-181-195-69.bb.dnainternet.fi [82.181.195.69])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by lahtoruutu.iki.fi (Postfix) with ESMTPSA id 4A0F51B00228;
 Tue, 26 Apr 2022 08:22:26 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=lahtoruutu; 
 t=1650950546;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=MpVAtpwBx4jN456D9rT0C097PxBtP+H7lQ7Y5L7Aa9I=;
 b=oWwjRiodHzwDgQ6hMhr4m/t3AQKTSkf4NGECjYonmYNHDktEq5y1F9Nw16wv+dC+vGfWZl
 CtNls3F5teeXCuXe6hLJ5OONrmsDdoGaN8jBMi3xIpkxHwnfsmDiDKzQUffIrNAqIWX7UT
 LpmZK+osRafcUl3SAukjG1g+Ortcn94ojrjqqSRwH55yYhNSFYgBFSbdDRzF5Smct8/5f7
 rlJfkaCwt/FylA5UVA976fyBy7lvNNJj8sAvBGGVbMlAD/UOAILjXCgAsD46CeNhnQkE70
 a6CFAshSLFdZBen3OxUtDAKOxWgkswDDTHMi7s3LUecdlH5dagbAwDdf+M+Z1w==
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>)
 id 1njBjO-00082X-As; Tue, 26 Apr 2022 06:19:14 +0300
Date: Tue, 26 Apr 2022 06:19:14 +0300 (EEST)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: Jason Andryuk <jandryuk@gmail.com>
In-Reply-To: <CAKf6xps_kDLNr1nxKFLxLSa673xAj8V8p1u6XC1vOAQmOoutRg@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.2204260616410.30820@mail.home>
References: <CAKf6xpu=3sWzdjaPpT8AM52gHotAvZVv1aB3QtXGxBmDaU+yeg@mail.gmail.com>
 <CY4PR1101MB207079134D515F45667C719FEB1A9@CY4PR1101MB2070.namprd11.prod.outlook.com>
 <CAKf6xpsgyKdzU8nnPoTHoE+zxgkJX4wpCE5tFhzdC+LOG83Uzg@mail.gmail.com>
 <CY4PR1101MB20700DA2CD945A201DE4F1BBEBF79@CY4PR1101MB2070.namprd11.prod.outlook.com>
 <DC64916B-D25B-4310-BBC5-070BAEFA497B@intel.com>
 <BYAPR11MB283862EBA030B7498BCEFC23D4F89@BYAPR11MB2838.namprd11.prod.outlook.com>
 <CAKf6xps_kDLNr1nxKFLxLSa673xAj8V8p1u6XC1vOAQmOoutRg@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
ARC-Seal: i=1; s=lahtoruutu; d=iki.fi; t=1650950546; a=rsa-sha256; cv=none;
 b=kk9fuA9xmqR3bWNID/3/wvjHAdUML/kkcxZE0aZFwjJdzfc20uGpRLnwg2xxzCOB0IWzpw
 SS7p5y7TaH+TRttZYVAN/VZlO+vzFUNu3r6y6RA5huC5dyvNf9p4hdZeu8nA0FuaTqdVmA
 rDexNM+vvWknODir7KwonXpRH7Rop/eajRBVToHVMo77mLRMA+LNaTZhpy1H3xA79Gowio
 gNGNBqbmvSBLPP7Dvf/B1brfhNnN7eAMtpkfy4fB2O/FDfR6Bx4/OhLtQqRjX0jpD3kcyW
 RAf+5ns6ajbz2Y8C0PMLkjz900oIPkbrGHBynR8hKvhfezLpNwi7k9h5WOMO6A==
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=timo.lindfors smtp.mailfrom=timo.lindfors@iki.fi
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=lahtoruutu; t=1650950546;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=MpVAtpwBx4jN456D9rT0C097PxBtP+H7lQ7Y5L7Aa9I=;
 b=hvmRch4/zmp+QzkISdF+LfKc2u13CQe4mZ0+vbWpwEU/Z4fSyO1hNKTlK+ueExXMgDzyMc
 U81jiJ1LsVZ67cM70YHRZRbPq0ZipScP7RGds1vhZ4ARamkzwI/VIxoBpbm4cnqcnWoIP1
 mRD3s+WLmYKmFw/rxI1b6as79YGBNrB+PL3yoJHtYzKx4NrU2WERPz0+LGICN5WFG0WXfC
 DAmQ5up7NvuNbAXJ/LLLA1sgO5E1X7fvC09XnRhnpPhy+AXi1epUiPsGlvc2ZzelkNFp6c
 apjpJGt9W1nkkEZsc6qKaSLM4b95Lvir0kuRRTfl2MG8WsRd6ByaMkkEsd3IkQ==
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Mon, 25 Apr 2022,
 Jason Andryuk wrote: >> >>
 https://cdrdv2.intel.com/v1/dl/getContent/630744?explicitVersion=true
 >> >> Jeevan Bhungal > > Great! Yeah, the internal link does not work, but
 the dir [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.185.170.37 listed in list.dnswl.org]
X-Headers-End: 1njDw8-0006jY-7u
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

Is the plan still to have these listed on

https://www.intel.com/content/www/us/en/developer/articles/tool/intel-trusted-execution-technology.html

along with other ACMs? The reason why I am asking is that I am packaging 
these in Debian non-free intel-acm package and have some automation for 
tracking changes on that page to notice new ACMs.

-Timo



_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
