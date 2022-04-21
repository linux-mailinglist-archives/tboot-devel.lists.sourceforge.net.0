Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 34D7350A3E9
	for <lists+tboot-devel@lfdr.de>; Thu, 21 Apr 2022 17:22:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1nhYdX-0001M0-D9; Thu, 21 Apr 2022 15:22:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jandryuk@gmail.com>) id 1nhYdW-0001Lu-LS
 for tboot-devel@lists.sourceforge.net; Thu, 21 Apr 2022 15:22:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JRv01VKOtnfMOvfuGQVfb6k1IP2cwgYKUFurGZlLrSk=; b=Asw5av6mvzE3LTW7QxpzNDOm/f
 kwMVfliH4XvbO/dsjOwreAvmE6fVO6bB9cXsiEZsc5V2cDReIIo/m9g+nX+Sld0m07bYzricJI76c
 hySUTgPChNSgX/O+ymUvPk9SMk4yQQYHCMAjz+HKBNXHjg5Ug3LckVCO0K3NF0BfSrl8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JRv01VKOtnfMOvfuGQVfb6k1IP2cwgYKUFurGZlLrSk=; b=WkmorEDU+ilIePwYVR1trrcGxP
 kJg3ER+0D+X5XqPqMKK1CVZtz7QaI3n4LNDTHnjWHBiVDd4LbFPX9MtcLi8728MPu//DlkNvzICOl
 KJq6ilIQP2QMoQ1Pfng9TAZTE9rCmwqmSKp1ttimq2ua5JCiibH9G+o3swdO+5B4YLTI=;
Received: from mail-lf1-f47.google.com ([209.85.167.47])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nhYdW-005fuZ-K0
 for tboot-devel@lists.sourceforge.net; Thu, 21 Apr 2022 15:22:27 +0000
Received: by mail-lf1-f47.google.com with SMTP id bu29so9386410lfb.0
 for <tboot-devel@lists.sourceforge.net>; Thu, 21 Apr 2022 08:22:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=JRv01VKOtnfMOvfuGQVfb6k1IP2cwgYKUFurGZlLrSk=;
 b=XhmkGCeWgiPtI0cX89MWO6JsuVFLTgmgkIXQNggEkO+eIkr1jvavNEmpZBKyglOPVD
 oMVYNc4x0kJ1ZkIqPK/U9Dt13EZt1xpQ9L6Jql59PtOjVDla+zMtPDpiBzjou+1j3MWS
 SONe/p3sEWdAgv5xkn3uWUWZ3XZdbg97nDLZDc/mr7mXMpP5WawmRIBYrsYTRxK8dDvG
 jIGBjwQLae0iBHZOkVG5qpkDl1z8SwC+dLDNNqHl34h6BYzlv48LsWd++3rja5veHr4n
 5X3fgFatLIHAxAwFPbC7JfkFz441AfHBtTbHvRqTN7NINmmmKQn0USCBU4+V9xBHOfpo
 RQqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=JRv01VKOtnfMOvfuGQVfb6k1IP2cwgYKUFurGZlLrSk=;
 b=i7bpQC82sbuIahiTyCUTlKmJQan2jx0TCK06UkQvWTqrJXmFQSBPu41C1QVQJhG4jX
 /zqE87N6i+MaFbp3wEl921SawpMFnFe+UPbatMbcMuV0YF71TdENW4d7UB9ydT7Zrp+4
 IZvgodGTdJjGLDxrCK0XKzeDhK3B9+QARp1/lSGId8kXaeVAoYu7kL0Sg2TyaR3zhu4C
 bdTivokQTUnBwDXwjiJvZ0ib3OrcEJRGWYSbqU5Pd4DZR0qc27RB3/vxKKA31XA+Ixsb
 QVxzpMggqwcnCaG3X7SlJFE2ZXReXi1OQqFyianMTIDMj7neo05kYS4f2ha3bitDac5K
 5RMg==
X-Gm-Message-State: AOAM533jRbRJgXXrX65gWZ+K2xDvuvc0V+iQqKD2+kzwXSlJmM48svRX
 8YIDbjywvgvMVZqryujXkTaZdgOPuvC/CEOHBK1FBkWgs2U=
X-Google-Smtp-Source: ABdhPJwwHnD9XjouHKmn5c8TUB/WgfymPvxF8bz/qPjeNLeuB2txoMxFu9sL9D69Ye9QPS3RaojeI4sUzS0uooRLWig=
X-Received: by 2002:a05:6512:3fa0:b0:44a:f66c:8365 with SMTP id
 x32-20020a0565123fa000b0044af66c8365mr38928lfa.152.1650554539948; Thu, 21 Apr
 2022 08:22:19 -0700 (PDT)
MIME-Version: 1.0
References: <CAKf6xpu=3sWzdjaPpT8AM52gHotAvZVv1aB3QtXGxBmDaU+yeg@mail.gmail.com>
 <CY4PR1101MB207079134D515F45667C719FEB1A9@CY4PR1101MB2070.namprd11.prod.outlook.com>
In-Reply-To: <CY4PR1101MB207079134D515F45667C719FEB1A9@CY4PR1101MB2070.namprd11.prod.outlook.com>
From: Jason Andryuk <jandryuk@gmail.com>
Date: Thu, 21 Apr 2022 11:22:08 -0400
Message-ID: <CAKf6xpsgyKdzU8nnPoTHoE+zxgkJX4wpCE5tFhzdC+LOG83Uzg@mail.gmail.com>
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
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jandryuk[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.47 listed in list.dnswl.org]
X-Headers-End: 1nhYdW-005fuZ-K0
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
IHVwZGF0ZWQgc29vbi4gSSdsbCBrZWVwIGFuIGV5ZSBvbiB0aGF0LgoKSGksIFBhd2XFggoKQXJl
IHRoZXJlIGFueSB1cGRhdGVzIG9uIHRoZSBBQ01zPyAgSSBkb24ndCBzZWUgdGhlbSBvbgpodHRw
czovL3NvZnR3YXJlLmludGVsLmNvbS9jb250ZW50L3d3dy91cy9lbi9kZXZlbG9wL2FydGljbGVz
L2ludGVsLXRydXN0ZWQtZXhlY3V0aW9uLXRlY2hub2xvZ3kuaHRtbC4KClRoYW5rcywKSmFzb24K
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwp0Ym9vdC1k
ZXZlbCBtYWlsaW5nIGxpc3QKdGJvb3QtZGV2ZWxAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBz
Oi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Rib290LWRldmVsCg==
