Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EFBBA4E78E1
	for <lists+tboot-devel@lfdr.de>; Fri, 25 Mar 2022 17:25:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1nXmkm-00066R-J4; Fri, 25 Mar 2022 16:25:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jandryuk@gmail.com>) id 1nXmkl-00066K-6X
 for tboot-devel@lists.sourceforge.net; Fri, 25 Mar 2022 16:25:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8qQsXWQKutgEyuIKPTfj+ov/lwHgfKpwerMFYMTLApk=; b=JM90yGweB+tFpA1QKoh8qeCtxl
 41Mijeg+4urLpYGD1NtgSqEWzmdQTZBVM7k+iSK7jhAcheFnIpWbpl+Z7qI8dj+7H9hqrd66gIU3/
 NtKOzXyeEIUM6ErDMYuWyTuMMVfGMr20TFhf/P228IG+Bl8yeQn/u+nSwkHbQAIBjbDs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8qQsXWQKutgEyuIKPTfj+ov/lwHgfKpwerMFYMTLApk=; b=K5dV4GVDw/Ed8bmPMPpBm+L7sz
 wk9A0QGGU0E8MY4wjotk21b4GKW4wy3uiAfhyZOY9SBIBIjLYFjkUk3jbhO9muO7qPbrQyE99KCzE
 JbxJJs2BYgcuLKW5eqBHwORntm6wXZDg9WxUpxMx5ddzyyQwGDRHLWfy5z6SeP7iErq4=;
Received: from mail-lj1-f170.google.com ([209.85.208.170])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nXmki-0008Pk-SV
 for tboot-devel@lists.sourceforge.net; Fri, 25 Mar 2022 16:25:29 +0000
Received: by mail-lj1-f170.google.com with SMTP id g24so10974365lja.7
 for <tboot-devel@lists.sourceforge.net>; Fri, 25 Mar 2022 09:25:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=8qQsXWQKutgEyuIKPTfj+ov/lwHgfKpwerMFYMTLApk=;
 b=Ag3AtF3b1EpPutP3yxIIBnRQlFRVaBDPqTYGoPqvD9W5QQr9j9MJolkYHcRmvWQolL
 GYdj2yR+2g75/gg5SBmO+OS5uj4SxYi0YzILfKgTMxN4sezYZzRft33RvoqrazZYume/
 RqDZhiwvNXh2rBKDOTv3bxRkEZRf8RoRSlweuK/wSsrq3llHAtAjeyLa4zgc4BgT6VY+
 h6VJds+8KVK6lz8NCCSqImvU2pMWL6iFP5nAr43euzudW/hPOyGsiVw/tMYargweY0iN
 TMOGO4Ao8uY74ZfI4LC1qgkU4U6Su9NTlYIMb5QYo4Okm+gTOXKm6vFUYfhi0A/IHB4d
 vxuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=8qQsXWQKutgEyuIKPTfj+ov/lwHgfKpwerMFYMTLApk=;
 b=ZOd0AE5PUq563NIcIOegFpGHhlDZRrSNUMgTEpPLPw01hfBIX6bpe8izLQEiY704tK
 DDzAv0vej/Zldp1RCe2uxxnht7rYtPYDF6cKFONBhZ0hjdqei464FPPwFEZb0yAIolTG
 T+skM0/8MykYTtXsJUhsSYTIcTROk8sgQGMC4CN+adzIk6KTs25droyF5NdMezp7HyXl
 VEGl6IKBq5CAB/0nTSEK5XwhFKS4yGYOhhQdJNqVeANaMuzAC+gUyC5owHb4HjuCxdue
 evqteARyDZ+SD0YEqGI5q+X9FuWaFlV8yhpD8ZfCjL914GLOq0KUyYAXWzyQawcE6IKQ
 +xkQ==
X-Gm-Message-State: AOAM532MA0iB4U6RgAlKTF0+q7F57D5t1bwWOHiHcOOaj80aT/4H/ORj
 3lGk2uumkyXrtslESthnk9J+n9hb1N0ByPT/410=
X-Google-Smtp-Source: ABdhPJwG6oN76/j+zim7bf3P7KQaQw7A1x7M/eljp1AvMINsOpFXl4exJjMcxuMQDvJkn37lJrbuStDS10zt1+UVqss=
X-Received: by 2002:a05:651c:1a25:b0:249:a022:9913 with SMTP id
 by37-20020a05651c1a2500b00249a0229913mr8709898ljb.15.1648225521942; Fri, 25
 Mar 2022 09:25:21 -0700 (PDT)
MIME-Version: 1.0
References: <CAKf6xpu=3sWzdjaPpT8AM52gHotAvZVv1aB3QtXGxBmDaU+yeg@mail.gmail.com>
 <CY4PR1101MB207079134D515F45667C719FEB1A9@CY4PR1101MB2070.namprd11.prod.outlook.com>
In-Reply-To: <CY4PR1101MB207079134D515F45667C719FEB1A9@CY4PR1101MB2070.namprd11.prod.outlook.com>
From: Jason Andryuk <jandryuk@gmail.com>
Date: Fri, 25 Mar 2022 12:25:10 -0400
Message-ID: <CAKf6xps4sk6=egMhgD+ORWzD-61X3fmxo-ggLsKse0idf32Weg@mail.gmail.com>
To: "Randzio, Pawel" <pawel.randzio@intel.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Mar 25, 2022 at 12:11 PM Randzio, Pawel wrote: > >
 Hi Jason, > > I forwarded your request to the people responsible with keeping
 the site up to date. > I was informed that the contents shoul [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.170 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jandryuk[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.170 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nXmki-0008Pk-SV
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
Cc: "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: tboot-devel-bounces@lists.sourceforge.net

T24gRnJpLCBNYXIgMjUsIDIwMjIgYXQgMTI6MTEgUE0gUmFuZHppbywgUGF3ZWwgPHBhd2VsLnJh
bmR6aW9AaW50ZWwuY29tPiB3cm90ZToKPgo+IEhpIEphc29uLAo+Cj4gSSBmb3J3YXJkZWQgeW91
ciByZXF1ZXN0IHRvIHRoZSBwZW9wbGUgcmVzcG9uc2libGUgd2l0aCBrZWVwaW5nIHRoZSBzaXRl
IHVwIHRvIGRhdGUuCj4gSSB3YXMgaW5mb3JtZWQgdGhhdCB0aGUgY29udGVudHMgc2hvdWxkIGJl
IHVwZGF0ZWQgc29vbi4gSSdsbCBrZWVwIGFuIGV5ZSBvbiB0aGF0Lgo+Cj4gUGF3ZcWCCgpUaGFu
a3MsIFBhd2XFgiEKCi1KYXNvbgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCnRib290LWRldmVsIG1haWxpbmcgbGlzdAp0Ym9vdC1kZXZlbEBsaXN0cy5z
b3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGlu
Zm8vdGJvb3QtZGV2ZWwK
