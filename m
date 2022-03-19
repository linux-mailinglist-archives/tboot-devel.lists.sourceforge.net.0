Return-Path: <tboot-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+tboot-devel@lfdr.de
Delivered-To: lists+tboot-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F2AEB4DE4D8
	for <lists+tboot-devel@lfdr.de>; Sat, 19 Mar 2022 01:28:59 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tboot-devel-bounces@lists.sourceforge.net>)
	id 1nVMpe-0003BP-MQ; Sat, 19 Mar 2022 00:28:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <z23@posteo.net>) id 1nVMpc-0003BJ-T1
 for tboot-devel@lists.sourceforge.net; Sat, 19 Mar 2022 00:28:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:References:To:From:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/6jWana9i4mdbF5IMsaVhys4Ps/Dh8PaVo3D9bV521M=; b=FAP+sVw1soH9ujH4GzoIiqiPz1
 VzuQxVUZWwzIXNSh9KdEsJ9lNeoQyJNCZQGcy9yCx0s8+h+qBpwxcgyb8uSr01UGbfdZa1737qN8C
 sdMtFicId0hyEnd6UNIlydVn0BJ2c9V8+qxzWn3FtpvHfUDib1cd6MSg5HHgZ0QjgSvI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:References:To:From:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/6jWana9i4mdbF5IMsaVhys4Ps/Dh8PaVo3D9bV521M=; b=hzrl9ozqpvhHFKcfpQUk4oS3/f
 ioPGFDwfMnJeWlKJfmGEEf21s39ovjUHc9KzBQ1mQjq6qki4Vhf8m5d6iv2y3isv+njdEUChx/hER
 ZxHNtKhc7t5XgtQ63cn9Qjqx/qm84f9QNHe/gdmb8KPlI/ouzRn+Gr1PVgKpoul8/bTc=;
Received: from mout01.posteo.de ([185.67.36.65])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nVMxW-0007QG-S4
 for tboot-devel@lists.sourceforge.net; Sat, 19 Mar 2022 00:28:44 +0000
Received: from submission (posteo.de [185.67.36.169]) 
 by mout01.posteo.de (Postfix) with ESMTPS id 52390240026
 for <tboot-devel@lists.sourceforge.net>; Sat, 19 Mar 2022 01:28:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.net; s=2017;
 t=1647649715; bh=2/P0N9ZeW6e+gUxJVKSwC9JmyD16SILyWyEnBhiDIpQ=;
 h=Subject:From:To:Date:From;
 b=bAmex0PSBAsykBc0cOdD9qYRgqVqw6FTqZ36hv6pNDGMsTV+bhSLZ2T6EgQw4gDB4
 3orrH+UynyVFia/hpvZn0R8KziSm/+71zZNzlZCahrpgo/viFQMuV6MwY2ca5iZxTw
 0BZEmC9R0MFEAWEvhJEF7/dgREvJfTWUrSVcAuf8GIoz1MaLcDi37JzSzK4AJ0fOjs
 o1QlCkNfIOuAYIY6BQcOwIhiRR+zjNvB5U6WFKOWaHoGtRWhduxuaG6auXbvzcPh60
 bzaL4ggEoSOKq//QqlMfOxSPtW0DpN1a/5fWRBBTCXO5KWMw5kf4d9QRuAiN9qFz6J
 5cmOmqJpjrpzQ==
Received: from customer (localhost [127.0.0.1])
 by submission (posteo.de) with ESMTPSA id 4KL1vQ36gPz9rxF;
 Sat, 19 Mar 2022 01:28:34 +0100 (CET)
From: Derek Dolney <z23@posteo.net>
To: =?UTF-8?B?xYF1a2FzeiBIYXdyecWCa28=?= <lukasz@hawrylko.pl>,
 tboot-devel@lists.sourceforge.net
References: <4b3349f2-69f2-d6d3-ab66-6178af102333@posteo.net>
 <dcb47ad40ac22b08380312c1c18f322848ccd4d6.camel@hawrylko.pl>
 <6ca692b5-c54d-c57c-03a8-e774a86762c0@posteo.net>
Message-ID: <3ae8a2cd-9ca3-1feb-4a96-0abc54277b34@posteo.net>
Date: Sat, 19 Mar 2022 00:27:33 +0000
MIME-Version: 1.0
In-Reply-To: <6ca692b5-c54d-c57c-03a8-e774a86762c0@posteo.net>
Content-Language: en-US
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  I did a git bisect on the Linux kernel and found that the
 commit below is the one that breaks tboot+suspend to ram. It is part of a
 series of some cpu hotplug commits. I don't know how this would affe [...]
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.67.36.65 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [185.67.36.65 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1nVMxW-0007QG-S4
Subject: Re: [tboot-devel] suspend problem since kernel 5.15
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tboot-devel-bounces@lists.sourceforge.net

I did a git bisect on the Linux kernel and found that the commit below
is the one that breaks tboot+suspend to ram. It is part of a series of
some cpu hotplug commits. I don't know how this would affect tboot
suspend but I paste the patch below hoping that maybe you knowledgeable
devs would get some ideas just by seeing it.

Just to be clear: if I build a kernel from the commit just before this
one I can suspend and resume, but if I build with this commit I can not
suspend, laptop gets stuck on blinking power LED. (Note I did this
bisect using tboot 1.10.5).

------------------------------------------------
commit 453e41085183980087f8a80dada523caf1131c3c (HEAD, refs/bisect/bad)
Author: Vincent Donnefort <vincent.donnefort@arm.com>
Date:   Tue Feb 16 10:35:06 2021 +0000

    cpu/hotplug: Add cpuhp_invoke_callback_range()

    Factorizing and unifying cpuhp callback range invocations,
especially for
    the hotunplug path, where two different ways of decrementing were
used. The
    first one, decrements before the callback is called:

     cpuhp_thread_fun()
         state = st->state;
         st->state--;
         cpuhp_invoke_callback(state);

    The second one, after:

     take_down_cpu()|cpuhp_down_callbacks()
         cpuhp_invoke_callback(st->state);
         st->state--;

    This is problematic for rolling back the steps in case of error, as
    depending on the decrement, the rollback will start from N or N-1.
It also
    makes tracing inconsistent, between steps run in the cpuhp thread and
    the others.

    Additionally, avoid useless cpuhp_thread_fun() loops by skipping empty
    steps.

    Signed-off-by: Vincent Donnefort <vincent.donnefort@arm.com>
    Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
    Signed-off-by: Ingo Molnar <mingo@kernel.org>
    Link:
https://lkml.kernel.org/r/20210216103506.416286-4-vincent.donnefort@arm.com
--------------------------------------------------------------

***
*** This is what the problem commit has done:
***

diff --git b/kernel/cpu.c a/kernel/cpu.c
index 680ed8f427c0..23505d6abd45 100644
--- b/kernel/cpu.c
+++ a/kernel/cpu.c
@@ -135,6 +135,11 @@ static struct cpuhp_step *cpuhp_get_step(enum
cpuhp_state state)
 	return cpuhp_hp_states + state;
 }

+static bool cpuhp_step_empty(bool bringup, struct cpuhp_step *step)
+{
+	return bringup ? !step->startup.single : !step->teardown.single;
+}
+
 /**
  * cpuhp_invoke_callback _ Invoke the callbacks for a given state
  * @cpu:	The cpu for which the callback should be invoked
@@ -157,26 +162,24 @@ static int cpuhp_invoke_callback(unsigned int cpu,
enum cpuhp_state state,

 	if (st->fail == state) {
 		st->fail = CPUHP_INVALID;
-
-		if (!(bringup ? step->startup.single : step->teardown.single))
-			return 0;
-
 		return -EAGAIN;
 	}

+	if (cpuhp_step_empty(bringup, step)) {
+		WARN_ON_ONCE(1);
+		return 0;
+	}
+
 	if (!step->multi_instance) {
 		WARN_ON_ONCE(lastp && *lastp);
 		cb = bringup ? step->startup.single : step->teardown.single;
-		if (!cb)
-			return 0;
+
 		trace_cpuhp_enter(cpu, st->target, state, cb);
 		ret = cb(cpu);
 		trace_cpuhp_exit(cpu, st->state, state, ret);
 		return ret;
 	}
 	cbm = bringup ? step->startup.multi : step->teardown.multi;
-	if (!cbm)
-		return 0;

 	/* Single invocation for instance add/remove */
 	if (node) {
@@ -475,6 +478,15 @@ cpuhp_set_state(struct cpuhp_cpu_state *st, enum
cpuhp_state target)
 static inline void
 cpuhp_reset_state(struct cpuhp_cpu_state *st, enum cpuhp_state prev_state)
 {
+	st->target = prev_state;
+
+	/*
+	 * Already rolling back. No need invert the bringup value or to change
+	 * the current state.
+	 */
+	if (st->rollback)
+		return;
+
 	st->rollback = true;

 	/*
@@ -488,7 +500,6 @@ cpuhp_reset_state(struct cpuhp_cpu_state *st, enum
cpuhp_state prev_state)
 			st->state++;
 	}

-	st->target = prev_state;
 	st->bringup = !st->bringup;
 }

@@ -591,10 +602,53 @@ static int finish_cpu(unsigned int cpu)
  * Hotplug state machine related functions
  */

-static void undo_cpu_up(unsigned int cpu, struct cpuhp_cpu_state *st)
+/*
+ * Get the next state to run. Empty ones will be skipped. Returns true if a
+ * state must be run.
+ *
+ * st->state will be modified ahead of time, to match state_to_run, as
if it
+ * has already ran.
+ */
+static bool cpuhp_next_state(bool bringup,
+			     enum cpuhp_state *state_to_run,
+			     struct cpuhp_cpu_state *st,
+			     enum cpuhp_state target)
 {
-	for (st->state--; st->state > st->target; st->state--)
-		cpuhp_invoke_callback(cpu, st->state, false, NULL, NULL);
+	do {
+		if (bringup) {
+			if (st->state >= target)
+				return false;
+
+			*state_to_run = ++st->state;
+		} else {
+			if (st->state <= target)
+				return false;
+
+			*state_to_run = st->state--;
+		}
+
+		if (!cpuhp_step_empty(bringup, cpuhp_get_step(*state_to_run)))
+			break;
+	} while (true);
+
+	return true;
+}
+
+static int cpuhp_invoke_callback_range(bool bringup,
+				       unsigned int cpu,
+				       struct cpuhp_cpu_state *st,
+				       enum cpuhp_state target)
+{
+	enum cpuhp_state state;
+	int err = 0;
+
+	while (cpuhp_next_state(bringup, &state, st, target)) {
+		err = cpuhp_invoke_callback(cpu, state, bringup, NULL, NULL);
+		if (err)
+			break;
+	}
+
+	return err;
 }

 static inline bool can_rollback_cpu(struct cpuhp_cpu_state *st)
@@ -617,16 +671,12 @@ static int cpuhp_up_callbacks(unsigned int cpu,
struct cpuhp_cpu_state *st,
 	enum cpuhp_state prev_state = st->state;
 	int ret = 0;

-	while (st->state < target) {
-		st->state++;
-		ret = cpuhp_invoke_callback(cpu, st->state, true, NULL, NULL);
-		if (ret) {
-			if (can_rollback_cpu(st)) {
-				st->target = prev_state;
-				undo_cpu_up(cpu, st);
-			}
-			break;
-		}
+	ret = cpuhp_invoke_callback_range(true, cpu, st, target);
+	if (ret) {
+		cpuhp_reset_state(st, prev_state);
+		if (can_rollback_cpu(st))
+			WARN_ON(cpuhp_invoke_callback_range(false, cpu, st,
+							    prev_state));
 	}
 	return ret;
 }
@@ -690,17 +740,9 @@ static void cpuhp_thread_fun(unsigned int cpu)
 		state = st->cb_state;
 		st->should_run = false;
 	} else {
-		if (bringup) {
-			st->state++;
-			state = st->state;
-			st->should_run = (st->state < st->target);
-			WARN_ON_ONCE(st->state > st->target);
-		} else {
-			state = st->state;
-			st->state--;
-			st->should_run = (st->state > st->target);
-			WARN_ON_ONCE(st->state < st->target);
-		}
+		st->should_run = cpuhp_next_state(bringup, &state, st, st->target);
+		if (!st->should_run)
+			goto end;
 	}

 	WARN_ON_ONCE(!cpuhp_is_ap_state(state));
@@ -728,6 +770,7 @@ static void cpuhp_thread_fun(unsigned int cpu)
 		st->should_run = false;
 	}

+end:
 	cpuhp_lock_release(bringup);
 	lockdep_release_cpus_lock();

@@ -881,19 +924,18 @@ static int take_cpu_down(void *_param)
 		return err;

 	/*
-	 * We get here while we are in CPUHP_TEARDOWN_CPU state and we must not
-	 * do this step again.
+	 * Must be called from CPUHP_TEARDOWN_CPU, which means, as we are going
+	 * down, that the current state is CPUHP_TEARDOWN_CPU - 1.
 	 */
-	WARN_ON(st->state != CPUHP_TEARDOWN_CPU);
-	st->state--;
+	WARN_ON(st->state != (CPUHP_TEARDOWN_CPU - 1));
+
 	/* Invoke the former CPU_DYING callbacks */
-	for (; st->state > target; st->state--) {
-		ret = cpuhp_invoke_callback(cpu, st->state, false, NULL, NULL);
-		/*
-		 * DYING must not fail!
-		 */
-		WARN_ON_ONCE(ret);
-	}
+	ret = cpuhp_invoke_callback_range(false, cpu, st, target);
+
+	/*
+	 * DYING must not fail!
+	 */
+	WARN_ON_ONCE(ret);

 	/* Give up timekeeping duties */
 	tick_handover_do_timer();
@@ -975,27 +1017,22 @@ void cpuhp_report_idle_dead(void)
 				 cpuhp_complete_idle_dead, st, 0);
 }

-static void undo_cpu_down(unsigned int cpu, struct cpuhp_cpu_state *st)
-{
-	for (st->state++; st->state < st->target; st->state++)
-		cpuhp_invoke_callback(cpu, st->state, true, NULL, NULL);
-}
-
 static int cpuhp_down_callbacks(unsigned int cpu, struct
cpuhp_cpu_state *st,
 				enum cpuhp_state target)
 {
 	enum cpuhp_state prev_state = st->state;
 	int ret = 0;

-	for (; st->state > target; st->state--) {
-		ret = cpuhp_invoke_callback(cpu, st->state, false, NULL, NULL);
-		if (ret) {
-			st->target = prev_state;
-			if (st->state < prev_state)
-				undo_cpu_down(cpu, st);
-			break;
-		}
+	ret = cpuhp_invoke_callback_range(false, cpu, st, target);
+	if (ret) {
+
+		cpuhp_reset_state(st, prev_state);
+
+		if (st->state < prev_state)
+			WARN_ON(cpuhp_invoke_callback_range(true, cpu, st,
+							    prev_state));
 	}
+
 	return ret;
 }

@@ -1168,14 +1205,12 @@ void notify_cpu_starting(unsigned int cpu)

 	rcu_cpu_starting(cpu);	/* Enables RCU usage on this CPU. */
 	cpumask_set_cpu(cpu, &cpus_booted_once_mask);
-	while (st->state < target) {
-		st->state++;
-		ret = cpuhp_invoke_callback(cpu, st->state, true, NULL, NULL);
-		/*
-		 * STARTING must not fail!
-		 */
-		WARN_ON_ONCE(ret);
-	}
+	ret = cpuhp_invoke_callback_range(true, cpu, st, target);
+
+	/*
+	 * STARTING must not fail!
+	 */
+	WARN_ON_ONCE(ret);
 }

 /*
@@ -1781,8 +1816,7 @@ static int cpuhp_issue_call(int cpu, enum
cpuhp_state state, bool bringup,
 	 * If there's nothing to do, we done.
 	 * Relies on the union for multi_instance.
 	 */
-	if ((bringup && !sp->startup.single) ||
-	    (!bringup && !sp->teardown.single))
+	if (cpuhp_step_empty(bringup, sp))
 		return 0;
 	/*
 	 * The non AP bound callbacks can fail on bringup. On teardown


_______________________________________________
tboot-devel mailing list
tboot-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tboot-devel
