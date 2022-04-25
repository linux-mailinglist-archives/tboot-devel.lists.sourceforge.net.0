Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A56050E422
	for <lists+tboot-devel@lfdr.de>; Mon, 25 Apr 2022 17:16:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1nj0RH-0005WR-DH; Mon, 25 Apr 2022 15:15:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jandryuk@gmail.com>) id 1nj0RF-0005WL-Qt
 for tboot-devel@lists.sourceforge.net; Mon, 25 Apr 2022 15:15:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UDGkavsF6hF6hgGaBscJas727mgrgtfedcrPCecQkVQ=; b=Ku8RhFCx35GE2xbTV4ECACDWfo
 mSd3y2wIU2nWmixrEK5kdeE33/BNa9VPPPEotNOLAXSi04m6EGVW6MlfBO5Bl/ADX2tRwLgBEEKNt
 jcKeNo93HdfjPhIed5+1wObu7DSGKKQ4XXrMCDAk81Pfpvb1UfWmhHnSiWfMD5BWtsJU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UDGkavsF6hF6hgGaBscJas727mgrgtfedcrPCecQkVQ=; b=CzorwluhQvuuSW6UdV6Vy4jqVO
 +OL3dogcgLkimy02OYYlQaEwAwlUS5ATQJ487RcGMjbMAAwKRuCqVzQG2/vy+ROOlmQS8pYbdPQX8
 Fo+XlP2qb3A+Js1Fsu+hwBYA+xZnKtaMY3POIZMNOZQzvkKQZseE8PkVBIgm+NYKnO4I=;
Received: from mail-lf1-f52.google.com ([209.85.167.52])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nj0RF-0006Pt-Rw
 for tboot-devel@lists.sourceforge.net; Mon, 25 Apr 2022 15:15:46 +0000
Received: by mail-lf1-f52.google.com with SMTP id bq30so26788498lfb.3
 for <tboot-devel@lists.sourceforge.net>; Mon, 25 Apr 2022 08:15:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UDGkavsF6hF6hgGaBscJas727mgrgtfedcrPCecQkVQ=;
 b=l3WfsECs7iCk6UaJIi2Hano5liI5qCYO+Dv26kZat+p5+5Nt/1CdhXHpORviDRbnW+
 bP9+R5w8XolQ+5aQqmuQg8QjMKNWnIZsx6MR+uqCaA/Je5lbxS+50SvMseTpZDuGzpmU
 mi1fTrKExPzlJXxatKggw1OygRkW9uHFa5DISbDcGCEcD/o0nXS2AVRN5eksDmmb1JHq
 MMzTljhZkz+xw7TlWuRecwk56DkVkrdCVf8jeNsc/E2l8Iq4ycWqB3Xw4qLYD1d5g/sk
 fTe9SgF7iZpU1I3Pyp+EaZV6KuiOJBp/2sGI69a3tuk8Fgs5O6QrbkeQtGz86pGULRNw
 yeWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UDGkavsF6hF6hgGaBscJas727mgrgtfedcrPCecQkVQ=;
 b=6rXZMdWYtDJcvMHpZyCmb9P/c8KSFGkNGF4xp+sz6cYWzYNreOcQ3uHiXkqU2K1tDX
 zbmvB2gpa76J83ZSnKbgovY8NoU4wdH524uiISyqD3tIaNfj4u8nY9CdOZRIDBn+aULN
 +1IcUs5iT9ulFRc3b4U8Oc3rxCIonbiSwA01ksFVcSNtdspkAmwEFZeSC/aWTcBIRb7K
 ahVXEwnqfDKvFMuYULqSqDP3AoptsooDAp9ntplYao5OGO+5W8v+B7XCTLCd4cJ70Alb
 bEr/GU/puPU2ynUbpvwo/OwdWeJawy25jRLlD2SBICeTGPOuL9RBArrXKP2TwyorwvJR
 RnJA==
X-Gm-Message-State: AOAM532LijTDlnHPqvs6x2KmVHeCynwaSbaPrTpGQQWO6KezJMseUV5w
 /aOYmR/yRGLLZx7Tds1GWGXSgBU5jKVOP1gb/ns=
X-Google-Smtp-Source: ABdhPJzVvK1dKj8jaZPbOQ6aUDvy2MhkkRNG8MHhgNTHNqb8ZQa2HhOTnMKtOAsYhUaenb/ZVg7NSvHVwWBSEmBqv/A=
X-Received: by 2002:a05:6512:110d:b0:471:94ad:2bf4 with SMTP id
 l13-20020a056512110d00b0047194ad2bf4mr13802284lfg.128.1650899739182; Mon, 25
 Apr 2022 08:15:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAKf6xpu=3sWzdjaPpT8AM52gHotAvZVv1aB3QtXGxBmDaU+yeg@mail.gmail.com>
 <CY4PR1101MB207079134D515F45667C719FEB1A9@CY4PR1101MB2070.namprd11.prod.outlook.com>
 <CAKf6xpsgyKdzU8nnPoTHoE+zxgkJX4wpCE5tFhzdC+LOG83Uzg@mail.gmail.com>
 <CY4PR1101MB20700DA2CD945A201DE4F1BBEBF79@CY4PR1101MB2070.namprd11.prod.outlook.com>
 <DC64916B-D25B-4310-BBC5-070BAEFA497B@intel.com>
In-Reply-To: <DC64916B-D25B-4310-BBC5-070BAEFA497B@intel.com>
From: Jason Andryuk <jandryuk@gmail.com>
Date: Mon, 25 Apr 2022 11:15:27 -0400
Message-ID: <CAKf6xpvZucpAEWOtZUnuF9KJjTE3z4pcBRW9vzLxruogk07AvQ@mail.gmail.com>
To: "Sehra, Supreeti" <supreeti.sehra@intel.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Apr 22, 2022 at 5:41 PM Sehra, Supreeti wrote: > >
 Hi Jason, Pawel, > > I am not sure if I have access to update the page. Jeevan
 will be back on Monday and he can help with adding ACM's on [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.52 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jandryuk[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.52 listed in wl.mailspike.net]
X-Headers-End: 1nj0RF-0006Pt-Rw
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
 Artem" <artem.fedko@intel.com>, "Crain, Keegan" <keegan.crain@intel.com>,
 "Parmeter, Ben" <ben.parmeter@intel.com>,
 "tboot-devel@lists.sourceforge.net" <tboot-devel@lists.sourceforge.net>,
 "Bhungal, Jeevan S" <jeevan.s.bhungal@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tboot-devel-bounces@lists.sourceforge.net

On Fri, Apr 22, 2022 at 5:41 PM Sehra, Supreeti
<supreeti.sehra@intel.com> wrote:
>
> Hi Jason, Pawel,
>
> I am not sure if I have access to update the page.  Jeevan will be back on Monday and he can help with adding ACM's on the page.

Great!  Thank you, Supreeti.

Regards,
Jason


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
