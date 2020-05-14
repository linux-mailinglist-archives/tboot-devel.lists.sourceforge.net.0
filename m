Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BAD91D3184
	for <lists+tboot-devel@lfdr.de>; Thu, 14 May 2020 15:42:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1jZE7z-00006n-9o; Thu, 14 May 2020 13:42:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <timo.lindfors@iki.fi>) id 1jZE7y-00006N-FA
 for tboot-devel@lists.sourceforge.net; Thu, 14 May 2020 13:42:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=F4NRcUIHsgkztnAC44EHnX/EAxJYRHzrsJTTDqX+4qk=; b=IspIeKROe1IvKVCTfEfPSe4I3m
 c6psuELrfZRfJWI7tCC07TZcF+GHjpBq+iTMDAKpQf4KYAN8PrvDYiNNlCL80E60l8erRufskDVkS
 lrQCyTPMedRSnScZNV5LFCPeJRIywABq3Awq5m2TKV/pzLVFVKkLRRF0bCT1Uzbbyins=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=F4NRcUIHsgkztnAC44EHnX/EAxJYRHzrsJTTDqX+4qk=; b=jFu0IvWYnnS8KC2DQMxbo10kdw
 QdaxsDtgTDvVR3hsG71dG/96N/NHzgHUbXRi7Dy6zjuK0TMHbULO59KkyIU5aT16IsEma71MiNIMG
 qtvRwB9hbWwI9MFhtzAasthqsx/b9Pr8XpAcbRVy1Dh3jPIxRJa+bLOk1c2nk3J8Z9o4=;
Received: from lahtoruutu.iki.fi ([212.16.98.55])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jZE7v-00FYPA-V6
 for tboot-devel@lists.sourceforge.net; Thu, 14 May 2020 13:42:22 +0000
Received: from mail.home (82-181-208-90.bb.dnainternet.fi [82.181.208.90])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by lahtoruutu.iki.fi (Postfix) with ESMTPSA id 48F121B00433;
 Thu, 14 May 2020 16:42:10 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=lahtoruutu; 
 t=1589463730;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=F4NRcUIHsgkztnAC44EHnX/EAxJYRHzrsJTTDqX+4qk=;
 b=K/VswSnPRTjO58hCU16N7pL6xvbVbyUGHZjhdWOEd8qWds25gmcafdeUGllIVKLLrjOFE3
 nJNQdXTsQ4csLa2RV0zSzh0pKcMJ0ShFf30ViaaJYiznfP4CcUWptQYMiSLeRFnzoEsCHS
 XPFlYYzgSV6wi5Qfs4dXdOHUN77IZbIaf6dgxOnZ178W4FEKZ4ZP9I9gicuPJNz050zPba
 tu0dctOtFl0SmRCmsWwWTdMSLkg3QnpJqKW+nF7/uAnH3vj2zgPOgDkDKSJ/q5BX0O0y9J
 inII7Tc1IClBd25Zx40KJM2ZV4LU5dSSWZ/elkZeOIU24P6d+OMjKysuPw6Vjg==
Received: from localhost ([127.0.0.1]) by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>)
 id 1jZE7f-0002a1-7F; Thu, 14 May 2020 16:42:03 +0300
Date: Thu, 14 May 2020 16:42:03 +0300 (EEST)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: Lukasz Hawrylko <lukasz.hawrylko@linux.intel.com>
In-Reply-To: <109c0b38a6b6d82452ff4acc4ef8b10a6fd2b3eb.camel@linux.intel.com>
Message-ID: <alpine.DEB.2.20.2005141640030.9904@mail.home>
References: <alpine.DEB.2.20.2005102344150.5921@mail.home>
 <109c0b38a6b6d82452ff4acc4ef8b10a6fd2b3eb.camel@linux.intel.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=lahtoruutu; t=1589463730;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=F4NRcUIHsgkztnAC44EHnX/EAxJYRHzrsJTTDqX+4qk=;
 b=LMvqm1wJx/GRWuE/3RE4M7PaW5LeGYUz8O9hAXhXHCOkMezHea7FUfU2oQs4LcXBvbXkI8
 O7G7uvujX0BH5jVcuSL7ANiYzFVbmoa3ZpSt8Ikau0oK0fbdeVZKrOOka+wQDJQZwudcas
 eOSYJrHi08cyt3e3RoSZRsMxQJZoXvr2sesLlkl+M1lIMJTihStUJY46ElfexWChVuswzW
 0CKFl+X8v/dYTBeL5u71f1ShbED0DADzxUbIDg9zPkHoP9pkxjMon0rqZXrCDmu/eFmCOM
 +bxF3PIaNRMbLUXBZ8xwyeJnUQfkhODSEsKp8zazuf7gE8vxWMhGuR+g9W4tGw==
ARC-Seal: i=1; s=lahtoruutu; d=iki.fi; t=1589463730; a=rsa-sha256; cv=none;
 b=QXxxXxzsMoPBxyRCbpw1t76/V62alNGdA2mzV19QjGXUvSF8t9jgMemzrJc2EgsLuiRMR+
 NWiq/OdA2QLyPCEAfQxJiS81FuF0krewAo65X1ZxGS7GKvz1f0T3mamw6g+H7cIJEesS1t
 Dm00QpuGcF8xZgiCO3DBdFoOsCMl7OdNONWBe+0tWImODYEEEMTt3JUl/9WWRkx0M95QmI
 DVA7J7mQ9F9qVeTLUqzsRPmq6x5C0ehIb45JqcWvcryXpon+MbuH98SqhudzYqXjgceBU6
 VDk0aOYJaF51Hjh12EOmOFaBFrZ2NPnH5RGQenWRmVp+igYZmKu4Vi0YueQx+w==
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
X-Headers-End: 1jZE7v-00FYPA-V6
Subject: Re: [tboot-devel] rename parse_err?
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tboot-devel-bounces@lists.sourceforge.net

Hi,

On Thu, 14 May 2020, Lukasz Hawrylko wrote:
> Agree, this should be changed. I have also renamed acminfo to txt-
> acminfo, now all these tools has 'txt-' prefix.

Great. I guess you also updated the man pages to refer to these new names? 
Also docs/Makefile should list man pages for all commands that are 
installed.

-Timo




_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
