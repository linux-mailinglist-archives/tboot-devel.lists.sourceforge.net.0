Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 329D850E664
	for <lists+tboot-devel@lfdr.de>; Mon, 25 Apr 2022 19:02:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1nj26P-0004e6-53; Mon, 25 Apr 2022 17:02:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jandryuk@gmail.com>) id 1nj26O-0004e0-HW
 for tboot-devel@lists.sourceforge.net; Mon, 25 Apr 2022 17:02:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JzuCcWM+WPagIFUlxfXtwZ0J1JqYw3hdyIDy5EVPfmM=; b=HqWTOXhJ+mCNzmRG+flu9Ve4Gp
 sO0vMKtDVL+bgra84MQQ0ur9aBTU5aXcQuBbqhyLqa5gMxkLAT35kAcD5PqR9iQMPq8xqdts1LiMX
 tkEy0E923FuqvbIbwxTH1YsH+CpzqRiROND0ELdD74yn63wElGmEXyiVSvOQ9H8IGOao=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JzuCcWM+WPagIFUlxfXtwZ0J1JqYw3hdyIDy5EVPfmM=; b=TcGxPvYcCKMhwDOc9f3VzuZkL6
 Ug10dHHUWMZ9QAToxz2nStTbfrnnwj0K6eH30odl5152JtkidGnrjm9bVIQLEuWVFGCnfJTha45LB
 IcRySAUlOXsXI+TsLy4ZvZ+RCit+MryM9NWNosqiIHlwRodrZ+NwLS//EOz5H98RC0OE=;
Received: from mail-lf1-f47.google.com ([209.85.167.47])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nj26M-00046A-7S
 for tboot-devel@lists.sourceforge.net; Mon, 25 Apr 2022 17:02:18 +0000
Received: by mail-lf1-f47.google.com with SMTP id bu29so27385561lfb.0
 for <tboot-devel@lists.sourceforge.net>; Mon, 25 Apr 2022 10:02:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JzuCcWM+WPagIFUlxfXtwZ0J1JqYw3hdyIDy5EVPfmM=;
 b=KIQAF/mTt5b3DfVBjSWLjxcH4v+FngPqJ8EKUVs6f1wrXOdcIcwKxcXSbtQGlCDc2U
 EIl7xAO16kEPuaXpGp9YLBZt77Ti4x7kJWVNL9Nyn4341sC1fVj49uD3LHnfOjOdNKM6
 dEQbAxDUVhTGGpVUsCmY+1zc0ZiR8Z+iQ/E1qUt7oJZX67IZ4HJzgCVVSlX+7PxSH0Y4
 QC/sYHXZwCj/9u705whqPwUuT5CzMKIS1ZDedd5UKJqQtxl8pUYlRW6drs5T+wBQcufX
 KYAgP8TRZJZvU0XI+4N/F1o3gKAha+HO6njufbqzFfH9ryD390fwYTq/9uCkfV/kQaN0
 BiHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JzuCcWM+WPagIFUlxfXtwZ0J1JqYw3hdyIDy5EVPfmM=;
 b=MOp+5mHWa6FgQKg8Gp8uuKPe3gLA/fL/nIOemyko5nac5AQmLfvER5BM3hlGdPmiQs
 c4P/mPV9sOnk2119L9SPLsVGSEEqAUqpQ17+W5/nsbNdLaqoh/eHr5sFKQgh8+N+i8jJ
 P0R30iwZ5VOZyyc7/f3ALSvArCmR9KHZeq8glkrlAooJcbyVfdgAmIfEbu+HXQJ2RelT
 bcqAK1FuXmyIlaDzBOgzyd+JctSUTFToRNGRnhiKmhLI7QxS/ag6NXuRf3qempfZ3VCA
 DDP/ycr59VyzXTtCpC1fGk4O+tOnOMIqzaq20RV7bZyfwUeCPclFJ7q3sSbCbHLzpaXn
 uwVA==
X-Gm-Message-State: AOAM533GxUq71DgAhnCePw4ZybrtescBz5FzZz93549RDdAZRxYN9IGc
 74S/DEjuHonHmk7G6kx167rAG8A1sDvDYm7ixYbpfUe3
X-Google-Smtp-Source: ABdhPJzhD7Qu2HnjP0VaRd7Dgz/H2gvJil0ZShs/xp2FLZMA7MEekrOH5yt+cgmhQsmNTfwwCuGtGgeMG5wB9yoOgXI=
X-Received: by 2002:a05:6512:3d9e:b0:472:94a:a259 with SMTP id
 k30-20020a0565123d9e00b00472094aa259mr3663007lfv.359.1650906130776; Mon, 25
 Apr 2022 10:02:10 -0700 (PDT)
MIME-Version: 1.0
References: <CAKf6xpu=3sWzdjaPpT8AM52gHotAvZVv1aB3QtXGxBmDaU+yeg@mail.gmail.com>
 <CY4PR1101MB207079134D515F45667C719FEB1A9@CY4PR1101MB2070.namprd11.prod.outlook.com>
 <CAKf6xpsgyKdzU8nnPoTHoE+zxgkJX4wpCE5tFhzdC+LOG83Uzg@mail.gmail.com>
 <CY4PR1101MB20700DA2CD945A201DE4F1BBEBF79@CY4PR1101MB2070.namprd11.prod.outlook.com>
 <DC64916B-D25B-4310-BBC5-070BAEFA497B@intel.com>
 <BYAPR11MB283862EBA030B7498BCEFC23D4F89@BYAPR11MB2838.namprd11.prod.outlook.com>
In-Reply-To: <BYAPR11MB283862EBA030B7498BCEFC23D4F89@BYAPR11MB2838.namprd11.prod.outlook.com>
From: Jason Andryuk <jandryuk@gmail.com>
Date: Mon, 25 Apr 2022 13:01:59 -0400
Message-ID: <CAKf6xps_kDLNr1nxKFLxLSa673xAj8V8p1u6XC1vOAQmOoutRg@mail.gmail.com>
To: "Bhungal, Jeevan S" <jeevan.s.bhungal@intel.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Apr 25, 2022 at 12:48 PM Bhungal, Jeevan S wrote:
 > > Hi Jason, > > All Public ACMs are posted on the Intel RDC Public-Facing
 site here(Kit #630744), > > https://www.intel.com/content/www/us [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.47 listed in list.dnswl.org]
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
 [209.85.167.47 listed in wl.mailspike.net]
X-Headers-End: 1nj26M-00046A-7S
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
 "Sehra, Supreeti" <supreeti.sehra@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tboot-devel-bounces@lists.sourceforge.net

On Mon, Apr 25, 2022 at 12:48 PM Bhungal, Jeevan S
<jeevan.s.bhungal@intel.com> wrote:
>
> Hi Jason,
>
> All Public ACMs are posted on the Intel RDC Public-Facing site here(Kit #630744),
>
> https://www.intel.com/content/www/us/en/secure/design/internal/content-details.html?DocID=630744
>
> Since I am signed in and access from Intel Account, this is the internal link, but this download link below should work for outside intel folks as well,
>
> https://cdrdv2.intel.com/v1/dl/getContent/630744?explicitVersion=true
>
> Jeevan Bhungal

Great!  Yeah, the internal link does not work, but the direct link
does.  Thank you, Jeevan.

Regards,
Jason


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
