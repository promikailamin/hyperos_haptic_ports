.class public final Lcom/android/server/policy/SingleKeyGestureDetector;
.super Ljava/lang/Object;
.source "SingleKeyGestureDetector.java"


# static fields
.field public static final MULTI_PRESS_TIMEOUT:J

.field public static sDefaultLongPressTimeout:J

.field public static sDefaultVeryLongPressTimeout:J


# instance fields
.field public mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

.field public mBeganFromDefaultDisplayOn:Z

.field public mBeganFromNonInteractive:Z

.field public mDownKeyCode:I

.field public mHandledByLongPress:Z

.field public final mHandler:Landroid/os/Handler;

.field public mKeyPressCounter:I

.field public mLastDownTime:J

.field public final mRules:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 69
    invoke-static {}, Landroid/view/ViewConfiguration;->getMultiPressTimeout()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/android/server/policy/SingleKeyGestureDetector;->MULTI_PRESS_TIMEOUT:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .registers 4

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mBeganFromNonInteractive:Z

    .line 58
    iput-boolean v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mBeganFromDefaultDisplayOn:Z

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mRules:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 61
    iput-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 64
    iput v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mDownKeyCode:I

    .line 65
    iput-boolean v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    const-wide/16 v0, 0x0

    .line 67
    iput-wide v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastDownTime:J

    .line 200
    new-instance v0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;-><init>(Lcom/android/server/policy/SingleKeyGestureDetector;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static get(Landroid/content/Context;Landroid/os/Looper;)Lcom/android/server/policy/SingleKeyGestureDetector;
    .registers 5

    .line 191
    new-instance v0, Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-direct {v0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector;-><init>(Landroid/os/Looper;)V

    .line 192
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x10e00bc

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long v1, p1

    sput-wide v1, Lcom/android/server/policy/SingleKeyGestureDetector;->sDefaultLongPressTimeout:J

    .line 194
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x10e0179

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long p0, p0

    sput-wide p0, Lcom/android/server/policy/SingleKeyGestureDetector;->sDefaultVeryLongPressTimeout:J

    return-object v0
.end method


# virtual methods
.method public addRule(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)V
    .registers 4

    .line 204
    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mRules:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 207
    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mRules:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 205
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rule : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already exists."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public beganFromDefaultDisplayOn()Z
    .registers 1

    .line 410
    iget-boolean p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mBeganFromDefaultDisplayOn:Z

    return p0
.end method

.method public beganFromNonInteractive()Z
    .registers 1

    .line 406
    iget-boolean p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mBeganFromNonInteractive:Z

    return p0
.end method

.method public final cancelDelayedPress(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;I)V
    .registers 6

    .line 516
    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 517
    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 518
    new-instance p0, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;

    invoke-static {p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->-$$Nest$fgetmKeyCode(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)I

    move-result v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;-><init>(III)V

    .line 521
    invoke-virtual {p0, p2}, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->setPressCount(I)Lcom/android/server/policy/SingleKeyGestureEvent$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->build()Lcom/android/server/policy/SingleKeyGestureEvent;

    move-result-object p0

    .line 518
    invoke-virtual {p1, p0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->onKeyGesture(Lcom/android/server/policy/SingleKeyGestureEvent;)V

    :cond_23
    return-void
.end method

.method public final cancelLongPress(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)V
    .registers 5

    .line 445
    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 446
    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 447
    new-instance p0, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;

    invoke-static {p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->-$$Nest$fgetmKeyCode(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;-><init>(III)V

    .line 449
    invoke-virtual {p0}, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->build()Lcom/android/server/policy/SingleKeyGestureEvent;

    move-result-object p0

    .line 447
    invoke-virtual {p1, p0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->onKeyGesture(Lcom/android/server/policy/SingleKeyGestureEvent;)V

    :cond_20
    return-void
.end method

.method public final cancelVeryLongPress(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)V
    .registers 4

    .line 472
    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 473
    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 474
    new-instance p0, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;

    invoke-static {p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->-$$Nest$fgetmKeyCode(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)I

    move-result v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, v1}, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;-><init>(III)V

    .line 476
    invoke-virtual {p0}, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->build()Lcom/android/server/policy/SingleKeyGestureEvent;

    move-result-object p0

    .line 474
    invoke-virtual {p1, p0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->onKeyGesture(Lcom/android/server/policy/SingleKeyGestureEvent;)V

    :cond_1f
    return-void
.end method

.method public final completeDelayedPress(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;II)V
    .registers 11

    .line 502
    new-instance v0, Lcom/android/server/policy/SingleKeyGestureDetector$GestureMessage;

    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    new-instance v2, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;

    invoke-static {p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->-$$Nest$fgetmKeyCode(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)I

    move-result p1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, p1, v3, v4}, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;-><init>(III)V

    iget-wide v5, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastDownTime:J

    .line 505
    invoke-virtual {v2, v5, v6}, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->setStartTime(J)Lcom/android/server/policy/SingleKeyGestureEvent$Builder;

    move-result-object p1

    .line 506
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->setEventTime(J)Lcom/android/server/policy/SingleKeyGestureEvent$Builder;

    move-result-object p1

    .line 507
    invoke-virtual {p1, p2}, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->setPressCount(I)Lcom/android/server/policy/SingleKeyGestureEvent$Builder;

    move-result-object p1

    .line 508
    invoke-virtual {p1, p3}, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->setDisplayId(I)Lcom/android/server/policy/SingleKeyGestureEvent$Builder;

    move-result-object p1

    .line 509
    invoke-virtual {p1}, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->build()Lcom/android/server/policy/SingleKeyGestureEvent;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {v0, v1, p1, p2}, Lcom/android/server/policy/SingleKeyGestureDetector$GestureMessage;-><init>(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;Lcom/android/server/policy/SingleKeyGestureEvent;Lcom/android/server/policy/SingleKeyGestureDetector-IA;)V

    .line 510
    iget-object p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 511
    invoke-virtual {p1, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 512
    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final completeLongPress(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)V
    .registers 9

    .line 432
    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 433
    new-instance v0, Lcom/android/server/policy/SingleKeyGestureDetector$GestureMessage;

    iget-object v2, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    new-instance v3, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;

    invoke-static {p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->-$$Nest$fgetmKeyCode(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)I

    move-result p1

    const/4 v4, 0x1

    invoke-direct {v3, p1, v4, v4}, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;-><init>(III)V

    iget-wide v5, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastDownTime:J

    .line 436
    invoke-virtual {v3, v5, v6}, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->setStartTime(J)Lcom/android/server/policy/SingleKeyGestureEvent$Builder;

    move-result-object p1

    .line 437
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->setEventTime(J)Lcom/android/server/policy/SingleKeyGestureEvent$Builder;

    move-result-object p1

    .line 438
    invoke-virtual {p1}, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->build()Lcom/android/server/policy/SingleKeyGestureEvent;

    move-result-object p1

    const/4 v3, 0x0

    invoke-direct {v0, v2, p1, v3}, Lcom/android/server/policy/SingleKeyGestureDetector$GestureMessage;-><init>(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;Lcom/android/server/policy/SingleKeyGestureEvent;Lcom/android/server/policy/SingleKeyGestureDetector-IA;)V

    .line 439
    iget-object p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 440
    invoke-virtual {p1, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 441
    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 8

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SingleKey rules:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 527
    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mRules:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v0, :cond_3d

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 528
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1b

    :cond_3d
    return-void
.end method

.method public getKeyPressCounter(I)I
    .registers 3

    .line 376
    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    if-eqz v0, :cond_d

    invoke-static {v0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->-$$Nest$fgetmKeyCode(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)I

    move-result v0

    if-ne v0, p1, :cond_d

    .line 377
    iget p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public interceptKey(Landroid/view/KeyEvent;ZZ)V
    .registers 6

    .line 215
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1a

    .line 217
    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mDownKeyCode:I

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-eq v0, v1, :cond_16

    :cond_10
    xor-int/lit8 p2, p2, 0x1

    .line 218
    iput-boolean p2, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mBeganFromNonInteractive:Z

    .line 219
    iput-boolean p3, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mBeganFromDefaultDisplayOn:Z

    .line 221
    :cond_16
    invoke-virtual {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector;->interceptKeyDown(Landroid/view/KeyEvent;)V

    return-void

    .line 223
    :cond_1a
    invoke-virtual {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector;->interceptKeyUp(Landroid/view/KeyEvent;)Z

    return-void
.end method

.method public final interceptKeyDown(Landroid/view/KeyEvent;)V
    .registers 8

    .line 228
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 230
    iget v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mDownKeyCode:I

    const/4 v2, 0x1

    if-ne v1, v0, :cond_2e

    .line 231
    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    if-eqz v0, :cond_d2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_d2

    iget-object p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 232
    invoke-virtual {p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->supportLongPress()Z

    move-result p1

    if-eqz p1, :cond_d2

    iget-boolean p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    if-nez p1, :cond_d2

    .line 236
    iput-boolean v2, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    .line 237
    iget-object p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector;->cancelVeryLongPress(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)V

    .line 238
    iget-object p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector;->completeLongPress(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)V

    return-void

    :cond_2e
    if-nez v1, :cond_3a

    .line 244
    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    if-eqz v1, :cond_3d

    .line 245
    invoke-static {v1, v0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->-$$Nest$mshouldInterceptKey(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;I)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 249
    :cond_3a
    invoke-virtual {p0}, Lcom/android/server/policy/SingleKeyGestureDetector;->reset()V

    .line 251
    :cond_3d
    iput v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mDownKeyCode:I

    .line 254
    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    if-nez v1, :cond_64

    .line 255
    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mRules:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_4a
    if-ge v3, v1, :cond_60

    .line 257
    iget-object v4, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mRules:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 258
    invoke-static {v4, v0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->-$$Nest$mshouldInterceptKey(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;I)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 262
    iput-object v4, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    goto :goto_60

    :cond_5d
    add-int/lit8 v3, v3, 0x1

    goto :goto_4a

    :cond_60
    :goto_60
    const-wide/16 v0, 0x0

    .line 266
    iput-wide v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastDownTime:J

    .line 268
    :cond_64
    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    if-nez v0, :cond_69

    goto :goto_d2

    .line 272
    :cond_69
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastDownTime:J

    sub-long/2addr v0, v3

    .line 273
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastDownTime:J

    .line 274
    sget-wide v3, Lcom/android/server/policy/SingleKeyGestureDetector;->MULTI_PRESS_TIMEOUT:J

    cmp-long v0, v0, v3

    if-ltz v0, :cond_7f

    .line 275
    iput v2, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    goto :goto_84

    .line 277
    :cond_7f
    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    .line 280
    :goto_84
    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    if-ne v0, v2, :cond_a3

    .line 281
    iget-object p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-virtual {p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->supportLongPress()Z

    move-result p1

    if-eqz p1, :cond_95

    .line 282
    iget-object p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector;->startLongPress(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)V

    .line 285
    :cond_95
    iget-object p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-virtual {p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->supportVeryLongPress()Z

    move-result p1

    if-eqz p1, :cond_d2

    .line 286
    iget-object p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector;->startVeryLongPress(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)V

    return-void

    .line 289
    :cond_a3
    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-virtual {p0, v0}, Lcom/android/server/policy/SingleKeyGestureDetector;->cancelLongPress(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)V

    .line 290
    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-virtual {p0, v0}, Lcom/android/server/policy/SingleKeyGestureDetector;->cancelVeryLongPress(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)V

    .line 291
    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    iget v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/SingleKeyGestureDetector;->cancelDelayedPress(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;I)V

    .line 294
    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-virtual {v0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getMaxMultiPressCount()I

    move-result v0

    if-le v0, v2, :cond_d2

    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 295
    invoke-virtual {v1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getMaxMultiPressCount()I

    move-result v1

    if-ne v0, v1, :cond_d2

    .line 300
    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    iget v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/policy/SingleKeyGestureDetector;->completeDelayedPress(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;II)V

    :cond_d2
    :goto_d2
    return-void
.end method

.method public final interceptKeyUp(Landroid/view/KeyEvent;)Z
    .registers 10

    const/4 v0, 0x0

    .line 306
    iput v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mDownKeyCode:I

    .line 307
    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    if-nez v1, :cond_8

    return v0

    .line 311
    :cond_8
    iget-boolean v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    if-nez v1, :cond_49

    .line 312
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    .line 313
    iget-wide v3, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastDownTime:J

    iget-object v5, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-virtual {v5}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getLongPressTimeoutMs()J

    move-result-wide v5

    add-long/2addr v3, v5

    cmp-long v3, v1, v3

    if-gez v3, :cond_23

    .line 314
    iget-object v3, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-virtual {p0, v3}, Lcom/android/server/policy/SingleKeyGestureDetector;->cancelLongPress(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)V

    goto :goto_2b

    .line 316
    :cond_23
    iget-object v3, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-virtual {v3}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->supportLongPress()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    .line 319
    :goto_2b
    iget-wide v3, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastDownTime:J

    iget-object v5, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-virtual {v5}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getVeryLongPressTimeoutMs()J

    move-result-wide v5

    add-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-gez v1, :cond_3e

    .line 320
    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-virtual {p0, v1}, Lcom/android/server/policy/SingleKeyGestureDetector;->cancelVeryLongPress(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)V

    goto :goto_49

    .line 324
    :cond_3e
    iget-boolean v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    iget-object v2, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-virtual {v2}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->supportVeryLongPress()Z

    move-result v2

    or-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    .line 328
    :cond_49
    :goto_49
    iget-boolean v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_56

    .line 329
    iput-boolean v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    .line 330
    iput v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    .line 331
    iput-object v2, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    return v3

    .line 335
    :cond_56
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    iget-object v4, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-static {v4}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->-$$Nest$fgetmKeyCode(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)I

    move-result v4

    if-ne v1, v4, :cond_bd

    .line 337
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastDownTime:J

    sub-long/2addr v4, v6

    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 338
    invoke-virtual {v1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getLongPressTimeoutMs()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-ltz v1, :cond_77

    .line 345
    invoke-virtual {p0}, Lcom/android/server/policy/SingleKeyGestureDetector;->reset()V

    return v0

    .line 350
    :cond_77
    new-instance v0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyUpMessage;

    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    iget v4, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->copy()Landroid/view/KeyEvent;

    move-result-object v5

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/android/server/policy/SingleKeyGestureDetector$KeyUpMessage;-><init>(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;ILandroid/view/KeyEvent;Lcom/android/server/policy/SingleKeyGestureDetector-IA;)V

    .line 351
    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v1, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 352
    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 353
    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 356
    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-virtual {v0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getMaxMultiPressCount()I

    move-result v0

    if-ne v0, v3, :cond_a7

    .line 360
    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result p1

    invoke-virtual {p0, v0, v3, p1}, Lcom/android/server/policy/SingleKeyGestureDetector;->completeDelayedPress(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;II)V

    .line 361
    iput-object v2, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    return v3

    .line 366
    :cond_a7
    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-virtual {v1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getMaxMultiPressCount()I

    move-result v1

    if-ge v0, v1, :cond_bc

    .line 367
    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    iget v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/policy/SingleKeyGestureDetector;->startDelayedPress(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;II)V

    :cond_bc
    return v3

    .line 371
    :cond_bd
    invoke-virtual {p0}, Lcom/android/server/policy/SingleKeyGestureDetector;->reset()V

    return v0
.end method

.method public isKeyIntercepted(I)Z
    .registers 2

    .line 402
    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    if-eqz p0, :cond_c

    invoke-static {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->-$$Nest$mshouldInterceptKey(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;I)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public reset()V
    .registers 4

    .line 384
    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 385
    iget v2, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mDownKeyCode:I

    if-eqz v2, :cond_11

    .line 386
    invoke-virtual {p0, v0}, Lcom/android/server/policy/SingleKeyGestureDetector;->cancelLongPress(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)V

    .line 387
    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-virtual {p0, v0}, Lcom/android/server/policy/SingleKeyGestureDetector;->cancelVeryLongPress(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)V

    .line 390
    :cond_11
    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    if-lez v0, :cond_1c

    .line 391
    iget-object v2, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-virtual {p0, v2, v0}, Lcom/android/server/policy/SingleKeyGestureDetector;->cancelDelayedPress(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;I)V

    .line 392
    iput v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    :cond_1c
    const/4 v0, 0x0

    .line 394
    iput-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 397
    :cond_1f
    iput-boolean v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    .line 398
    iput v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mDownKeyCode:I

    return-void
.end method

.method public final startDelayedPress(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;II)V
    .registers 11

    .line 481
    new-instance v0, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;

    invoke-static {p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->-$$Nest$fgetmKeyCode(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;-><init>(III)V

    .line 483
    invoke-virtual {v0, p2}, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->setPressCount(I)Lcom/android/server/policy/SingleKeyGestureEvent$Builder;

    move-result-object v0

    iget-wide v3, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastDownTime:J

    .line 484
    invoke-virtual {v0, v3, v4}, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->setStartTime(J)Lcom/android/server/policy/SingleKeyGestureEvent$Builder;

    move-result-object v0

    .line 485
    invoke-virtual {v0, p3}, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->setDisplayId(I)Lcom/android/server/policy/SingleKeyGestureEvent$Builder;

    move-result-object v0

    .line 486
    invoke-virtual {v0}, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->build()Lcom/android/server/policy/SingleKeyGestureEvent;

    move-result-object v0

    .line 481
    invoke-virtual {p1, v0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->onKeyGesture(Lcom/android/server/policy/SingleKeyGestureEvent;)V

    .line 488
    new-instance v0, Lcom/android/server/policy/SingleKeyGestureDetector$GestureMessage;

    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    new-instance v3, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;

    invoke-static {p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->-$$Nest$fgetmKeyCode(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)I

    move-result p1

    const/4 v4, 0x1

    invoke-direct {v3, p1, v2, v4}, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;-><init>(III)V

    iget-wide v5, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastDownTime:J

    .line 491
    invoke-virtual {v3, v5, v6}, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->setStartTime(J)Lcom/android/server/policy/SingleKeyGestureEvent$Builder;

    move-result-object p1

    .line 492
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sget-wide v5, Lcom/android/server/policy/SingleKeyGestureDetector;->MULTI_PRESS_TIMEOUT:J

    add-long/2addr v2, v5

    invoke-virtual {p1, v2, v3}, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->setEventTime(J)Lcom/android/server/policy/SingleKeyGestureEvent$Builder;

    move-result-object p1

    .line 493
    invoke-virtual {p1, p2}, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->setPressCount(I)Lcom/android/server/policy/SingleKeyGestureEvent$Builder;

    move-result-object p1

    .line 494
    invoke-virtual {p1, p3}, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->setDisplayId(I)Lcom/android/server/policy/SingleKeyGestureEvent$Builder;

    move-result-object p1

    .line 495
    invoke-virtual {p1}, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->build()Lcom/android/server/policy/SingleKeyGestureEvent;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {v0, v1, p1, p2}, Lcom/android/server/policy/SingleKeyGestureDetector$GestureMessage;-><init>(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;Lcom/android/server/policy/SingleKeyGestureEvent;Lcom/android/server/policy/SingleKeyGestureDetector-IA;)V

    .line 496
    iget-object p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 497
    invoke-virtual {p1, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 498
    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final startLongPress(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)V
    .registers 11

    .line 414
    new-instance v0, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;

    invoke-static {p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->-$$Nest$fgetmKeyCode(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;-><init>(III)V

    iget-wide v4, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastDownTime:J

    .line 416
    invoke-virtual {v0, v4, v5}, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->setStartTime(J)Lcom/android/server/policy/SingleKeyGestureEvent$Builder;

    move-result-object v0

    .line 417
    invoke-virtual {v0}, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->build()Lcom/android/server/policy/SingleKeyGestureEvent;

    move-result-object v0

    .line 414
    invoke-virtual {p1, v0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->onKeyGesture(Lcom/android/server/policy/SingleKeyGestureEvent;)V

    .line 419
    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-virtual {v0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getLongPressTimeoutMs()J

    move-result-wide v0

    .line 420
    new-instance v4, Lcom/android/server/policy/SingleKeyGestureDetector$GestureMessage;

    iget-object v5, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    new-instance v6, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;

    invoke-static {p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->-$$Nest$fgetmKeyCode(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)I

    move-result p1

    invoke-direct {v6, p1, v2, v2}, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;-><init>(III)V

    iget-wide v7, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastDownTime:J

    .line 423
    invoke-virtual {v6, v7, v8}, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->setStartTime(J)Lcom/android/server/policy/SingleKeyGestureEvent$Builder;

    move-result-object p1

    .line 424
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    add-long/2addr v6, v0

    invoke-virtual {p1, v6, v7}, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->setEventTime(J)Lcom/android/server/policy/SingleKeyGestureEvent$Builder;

    move-result-object p1

    .line 425
    invoke-virtual {p1}, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->build()Lcom/android/server/policy/SingleKeyGestureEvent;

    move-result-object p1

    const/4 v6, 0x0

    invoke-direct {v4, v5, p1, v6}, Lcom/android/server/policy/SingleKeyGestureDetector$GestureMessage;-><init>(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;Lcom/android/server/policy/SingleKeyGestureEvent;Lcom/android/server/policy/SingleKeyGestureDetector-IA;)V

    .line 426
    iget-object p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 427
    invoke-virtual {p1, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 428
    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final startVeryLongPress(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)V
    .registers 11

    .line 454
    new-instance v0, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;

    invoke-static {p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->-$$Nest$fgetmKeyCode(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;-><init>(III)V

    iget-wide v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastDownTime:J

    .line 456
    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->setStartTime(J)Lcom/android/server/policy/SingleKeyGestureEvent$Builder;

    move-result-object v0

    .line 457
    invoke-virtual {v0}, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->build()Lcom/android/server/policy/SingleKeyGestureEvent;

    move-result-object v0

    .line 454
    invoke-virtual {p1, v0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->onKeyGesture(Lcom/android/server/policy/SingleKeyGestureEvent;)V

    .line 459
    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-virtual {v0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getVeryLongPressTimeoutMs()J

    move-result-wide v0

    .line 460
    new-instance v2, Lcom/android/server/policy/SingleKeyGestureDetector$GestureMessage;

    iget-object v4, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    new-instance v5, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;

    invoke-static {p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->-$$Nest$fgetmKeyCode(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)I

    move-result p1

    const/4 v6, 0x1

    invoke-direct {v5, p1, v3, v6}, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;-><init>(III)V

    iget-wide v7, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastDownTime:J

    .line 463
    invoke-virtual {v5, v7, v8}, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->setStartTime(J)Lcom/android/server/policy/SingleKeyGestureEvent$Builder;

    move-result-object p1

    .line 464
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    add-long/2addr v7, v0

    invoke-virtual {p1, v7, v8}, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->setEventTime(J)Lcom/android/server/policy/SingleKeyGestureEvent$Builder;

    move-result-object p1

    .line 465
    invoke-virtual {p1}, Lcom/android/server/policy/SingleKeyGestureEvent$Builder;->build()Lcom/android/server/policy/SingleKeyGestureEvent;

    move-result-object p1

    const/4 v3, 0x0

    invoke-direct {v2, v4, p1, v3}, Lcom/android/server/policy/SingleKeyGestureDetector$GestureMessage;-><init>(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;Lcom/android/server/policy/SingleKeyGestureEvent;Lcom/android/server/policy/SingleKeyGestureDetector-IA;)V

    .line 466
    iget-object p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 467
    invoke-virtual {p1, v6}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 468
    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
