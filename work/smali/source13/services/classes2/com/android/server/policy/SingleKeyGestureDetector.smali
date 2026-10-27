.class public final Lcom/android/server/policy/SingleKeyGestureDetector;
.super Ljava/lang/Object;
.source "SingleKeyGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;,
        Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;,
        Lcom/android/server/policy/SingleKeyGestureDetector$KeyGestureFlag;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field public static final KEY_LONGPRESS:I = 0x2

.field public static final KEY_VERYLONGPRESS:I = 0x4

.field private static final MSG_KEY_DELAYED_PRESS:I = 0x2

.field private static final MSG_KEY_LONG_PRESS:I = 0x0

.field private static final MSG_KEY_VERY_LONG_PRESS:I = 0x1

.field static final MULTI_PRESS_TIMEOUT:J

.field private static final TAG:Ljava/lang/String; = "SingleKeyGesture"

.field private static mLongPressTimeoutForPower:J

.field static sDefaultLongPressTimeout:J

.field static sDefaultVeryLongPressTimeout:J


# instance fields
.field private mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

.field private mBeganFromNonInteractive:Z

.field private mDownKeyCode:I

.field private volatile mHandledByLongPress:Z

.field private final mHandler:Landroid/os/Handler;

.field private mKeyPressCounter:I

.field private mLastDownTime:J

.field private final mRules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmLastDownTime(Lcom/android/server/policy/SingleKeyGestureDetector;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastDownTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputmHandledByLongPress(Lcom/android/server/policy/SingleKeyGestureDetector;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/policy/SingleKeyGestureDetector;->DEBUG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 43
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/policy/SingleKeyGestureDetector;->DEBUG:Z

    .line 67
    invoke-static {}, Landroid/view/ViewConfiguration;->getMultiPressTimeout()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/android/server/policy/SingleKeyGestureDetector;->MULTI_PRESS_TIMEOUT:J

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mBeganFromNonInteractive:Z

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mRules:Ljava/util/ArrayList;

    .line 55
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 58
    iput v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mDownKeyCode:I

    .line 59
    iput-boolean v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastDownTime:J

    .line 203
    new-instance v0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;-><init>(Lcom/android/server/policy/SingleKeyGestureDetector;)V

    iput-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    .line 204
    return-void
.end method

.method static get(Landroid/content/Context;)Lcom/android/server/policy/SingleKeyGestureDetector;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 192
    new-instance v0, Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-direct {v0}, Lcom/android/server/policy/SingleKeyGestureDetector;-><init>()V

    .line 193
    .local v0, "detector":Lcom/android/server/policy/SingleKeyGestureDetector;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e007c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    sput-wide v1, Lcom/android/server/policy/SingleKeyGestureDetector;->sDefaultLongPressTimeout:J

    .line 196
    sput-wide v1, Lcom/android/server/policy/SingleKeyGestureDetector;->mLongPressTimeoutForPower:J

    .line 197
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00ff

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    sput-wide v1, Lcom/android/server/policy/SingleKeyGestureDetector;->sDefaultVeryLongPressTimeout:J

    .line 199
    return-object v0
.end method

.method private interceptKeyDown(Landroid/view/KeyEvent;)V
    .registers 11
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 236
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 238
    .local v0, "keyCode":I
    iget v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mDownKeyCode:I

    const-string v2, "SingleKeyGesture"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v0, :cond_65

    .line 239
    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    if-eqz v1, :cond_64

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_64

    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 240
    invoke-static {v1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->-$$Nest$msupportLongPress(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)Z

    move-result v1

    if-eqz v1, :cond_64

    iget-boolean v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    if-nez v1, :cond_64

    .line 241
    sget-boolean v1, Lcom/android/server/policy/SingleKeyGestureDetector;->DEBUG:Z

    if-eqz v1, :cond_42

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Long press key "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_42
    iput-boolean v4, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    .line 245
    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 246
    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 247
    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-static {v2}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->-$$Nest$fgetmKeyCode(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)I

    move-result v2

    iget-object v5, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-virtual {v1, v3, v2, v3, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 249
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 250
    iget-object v2, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 252
    .end local v1    # "msg":Landroid/os/Message;
    :cond_64
    return-void

    .line 256
    :cond_65
    if-nez v1, :cond_71

    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    if-eqz v1, :cond_92

    .line 257
    invoke-static {v1, v0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->-$$Nest$mshouldInterceptKey(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;I)Z

    move-result v1

    if-nez v1, :cond_92

    .line 258
    :cond_71
    sget-boolean v1, Lcom/android/server/policy/SingleKeyGestureDetector;->DEBUG:Z

    if-eqz v1, :cond_8f

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Press another key "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_8f
    invoke-virtual {p0}, Lcom/android/server/policy/SingleKeyGestureDetector;->reset()V

    .line 263
    :cond_92
    iput v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mDownKeyCode:I

    .line 266
    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    if-nez v1, :cond_d3

    .line 267
    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mRules:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 268
    .local v1, "count":I
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_9f
    if-ge v5, v1, :cond_cf

    .line 269
    iget-object v6, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mRules:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 270
    .local v6, "rule":Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;
    invoke-static {v6, v0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->-$$Nest$mshouldInterceptKey(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;I)Z

    move-result v7

    if-eqz v7, :cond_cc

    .line 271
    sget-boolean v7, Lcom/android/server/policy/SingleKeyGestureDetector;->DEBUG:Z

    if-eqz v7, :cond_c9

    .line 272
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Intercept key by rule "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_c9
    iput-object v6, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 275
    goto :goto_cf

    .line 268
    .end local v6    # "rule":Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;
    :cond_cc
    add-int/lit8 v5, v5, 0x1

    goto :goto_9f

    .line 278
    .end local v5    # "index":I
    :cond_cf
    :goto_cf
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastDownTime:J

    .line 280
    .end local v1    # "count":I
    :cond_d3
    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    if-nez v1, :cond_d8

    .line 281
    return-void

    .line 284
    :cond_d8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastDownTime:J

    sub-long/2addr v5, v7

    .line 285
    .local v5, "keyDownInterval":J
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastDownTime:J

    .line 286
    sget-wide v7, Lcom/android/server/policy/SingleKeyGestureDetector;->MULTI_PRESS_TIMEOUT:J

    cmp-long v1, v5, v7

    if-ltz v1, :cond_ee

    .line 287
    iput v4, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    goto :goto_f3

    .line 289
    :cond_ee
    iget v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    .line 292
    :goto_f3
    iget v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    if-ne v1, v4, :cond_141

    .line 293
    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-static {v1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->-$$Nest$msupportLongPress(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)Z

    move-result v1

    if-eqz v1, :cond_122

    .line 294
    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-virtual {v1, v3, v0, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 296
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 299
    iget-object v2, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    .line 300
    iget-object v7, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-static {v7}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->-$$Nest$fgetmKeyCode(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)I

    move-result v7

    const/16 v8, 0x1a

    if-ne v7, v8, :cond_119

    sget-wide v7, Lcom/android/server/policy/SingleKeyGestureDetector;->mLongPressTimeoutForPower:J

    goto :goto_11f

    .line 301
    :cond_119
    iget-object v7, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-virtual {v7}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getLongPressTimeoutMs()J

    move-result-wide v7

    .line 299
    :goto_11f
    invoke-virtual {v2, v1, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 304
    .end local v1    # "msg":Landroid/os/Message;
    :cond_122
    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-static {v1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->-$$Nest$msupportVeryLongPress(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)Z

    move-result v1

    if-eqz v1, :cond_1a1

    .line 305
    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-virtual {v1, v4, v0, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 307
    .restart local v1    # "msg":Landroid/os/Message;
    invoke-virtual {v1, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 308
    iget-object v2, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-virtual {v3}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getVeryLongPressTimeoutMs()J

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 309
    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_1a1

    .line 311
    :cond_141
    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 312
    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 313
    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 316
    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-virtual {v1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getMaxMultiPressCount()I

    move-result v1

    if-le v1, v4, :cond_1a1

    iget v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    iget-object v7, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 317
    invoke-virtual {v7}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getMaxMultiPressCount()I

    move-result v7

    if-ne v1, v7, :cond_1a1

    .line 318
    sget-boolean v1, Lcom/android/server/policy/SingleKeyGestureDetector;->DEBUG:Z

    if-eqz v1, :cond_18f

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Trigger multi press "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-virtual {v7}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " for it reached the max count "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v7, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_18f
    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    iget-object v7, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-virtual {v1, v3, v0, v2, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 324
    .restart local v1    # "msg":Landroid/os/Message;
    invoke-virtual {v1, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 325
    iget-object v2, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 328
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1a1
    :goto_1a1
    return-void
.end method

.method private interceptKeyUp(Landroid/view/KeyEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 337
    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 338
    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 339
    iput v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mDownKeyCode:I

    .line 340
    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    if-nez v0, :cond_13

    .line 341
    return v1

    .line 344
    :cond_13
    iget-boolean v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_1f

    .line 345
    iput-boolean v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    .line 346
    iput v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    .line 347
    iput-object v3, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 348
    return v2

    .line 351
    :cond_1f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 352
    return v1

    .line 356
    :cond_26
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iget-object v4, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-static {v4}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->-$$Nest$fgetmKeyCode(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)I

    move-result v4

    if-ne v0, v4, :cond_9e

    .line 358
    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-virtual {v0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getMaxMultiPressCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v2, :cond_79

    .line 359
    sget-boolean v0, Lcom/android/server/policy/SingleKeyGestureDetector;->DEBUG:Z

    if-eqz v0, :cond_60

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "press key "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-static {v4}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "SingleKeyGesture"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_60
    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-static {v4}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->-$$Nest$fgetmKeyCode(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 364
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 365
    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 366
    iput-object v3, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 367
    return v2

    .line 371
    .end local v0    # "msg":Landroid/os/Message;
    :cond_79
    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    iget-object v3, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-virtual {v3}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getMaxMultiPressCount()I

    move-result v3

    if-ge v0, v3, :cond_9d

    .line 372
    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-static {v3}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->-$$Nest$fgetmKeyCode(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)I

    move-result v3

    iget v4, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    iget-object v5, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 374
    .restart local v0    # "msg":Landroid/os/Message;
    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 375
    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    sget-wide v3, Lcom/android/server/policy/SingleKeyGestureDetector;->MULTI_PRESS_TIMEOUT:J

    invoke-virtual {v1, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 377
    .end local v0    # "msg":Landroid/os/Message;
    :cond_9d
    return v2

    .line 379
    :cond_9e
    invoke-virtual {p0}, Lcom/android/server/policy/SingleKeyGestureDetector;->reset()V

    .line 380
    return v1
.end method


# virtual methods
.method addRule(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)V
    .registers 3
    .param p1, "rule"    # Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 211
    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mRules:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 212
    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mRules:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_f
    return-void
.end method

.method beganFromNonInteractive()Z
    .registers 2

    .line 414
    iget-boolean v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mBeganFromNonInteractive:Z

    return v0
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SingleKey rules:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mRules:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 420
    .local v1, "rule":Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 421
    .end local v1    # "rule":Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;
    goto :goto_1c

    .line 422
    :cond_43
    return-void
.end method

.method getKeyPressCounter(I)I
    .registers 3
    .param p1, "keyCode"    # I

    .line 384
    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    if-eqz v0, :cond_d

    invoke-static {v0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->-$$Nest$fgetmKeyCode(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)I

    move-result v0

    if-ne v0, p1, :cond_d

    .line 385
    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    return v0

    .line 387
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method interceptKey(Landroid/view/KeyEvent;Z)V
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "interactive"    # Z

    .line 224
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_18

    .line 226
    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mDownKeyCode:I

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-eq v0, v1, :cond_14

    .line 227
    :cond_10
    xor-int/lit8 v0, p2, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mBeganFromNonInteractive:Z

    .line 229
    :cond_14
    invoke-direct {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector;->interceptKeyDown(Landroid/view/KeyEvent;)V

    goto :goto_1b

    .line 231
    :cond_18
    invoke-direct {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector;->interceptKeyUp(Landroid/view/KeyEvent;)Z

    .line 233
    :goto_1b
    return-void
.end method

.method isKeyIntercepted(I)Z
    .registers 3
    .param p1, "keyCode"    # I

    .line 410
    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    if-eqz v0, :cond_c

    invoke-static {v0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->-$$Nest$mshouldInterceptKey(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;I)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method reset()V
    .registers 4

    .line 392
    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    .line 393
    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mDownKeyCode:I

    if-eqz v0, :cond_14

    .line 394
    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 395
    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 398
    :cond_14
    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    if-lez v0, :cond_20

    .line 399
    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 400
    iput v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    .line 402
    :cond_20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 405
    :cond_23
    iput-boolean v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    .line 406
    iput v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mDownKeyCode:I

    .line 407
    return-void
.end method

.method public setDebugSwitch(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 332
    sput-boolean p1, Lcom/android/server/policy/SingleKeyGestureDetector;->DEBUG:Z

    .line 333
    return-void
.end method

.method public setLongPressTimeout(J)V
    .registers 3
    .param p1, "time"    # J

    .line 219
    sput-wide p1, Lcom/android/server/policy/SingleKeyGestureDetector;->mLongPressTimeoutForPower:J

    .line 220
    return-void
.end method
