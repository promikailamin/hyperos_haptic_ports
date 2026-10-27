.class public Lcom/android/server/audio/FocusRequester;
.super Ljava/lang/Object;
.source "FocusRequester.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MediaFocusControl"


# instance fields
.field private final mAttributes:Landroid/media/AudioAttributes;

.field private final mCallingUid:I

.field private final mClientId:Ljava/lang/String;

.field private mDeathHandler:Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

.field private final mFocusController:Lcom/android/server/audio/MediaFocusControl;

.field private mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

.field private final mFocusGainRequest:I

.field mFocusLossFadeLimbo:Z

.field private mFocusLossReceived:I

.field private mFocusLossWasNotified:Z

.field private final mGrantFlags:I

.field private final mPackageName:Ljava/lang/String;

.field private final mSdkTarget:I

.field private final mSourceRef:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/media/AudioAttributes;IILandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Ljava/lang/String;Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;Ljava/lang/String;ILcom/android/server/audio/MediaFocusControl;I)V
    .registers 14
    .param p1, "aa"    # Landroid/media/AudioAttributes;
    .param p2, "focusRequest"    # I
    .param p3, "grantFlags"    # I
    .param p4, "afl"    # Landroid/media/IAudioFocusDispatcher;
    .param p5, "source"    # Landroid/os/IBinder;
    .param p6, "id"    # Ljava/lang/String;
    .param p7, "hdlr"    # Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    .param p8, "pn"    # Ljava/lang/String;
    .param p9, "uid"    # I
    .param p10, "ctlr"    # Lcom/android/server/audio/MediaFocusControl;
    .param p11, "sdk"    # I

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/android/server/audio/FocusRequester;->mAttributes:Landroid/media/AudioAttributes;

    .line 102
    iput-object p4, p0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 103
    iput-object p5, p0, Lcom/android/server/audio/FocusRequester;->mSourceRef:Landroid/os/IBinder;

    .line 104
    iput-object p6, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    .line 105
    iput-object p7, p0, Lcom/android/server/audio/FocusRequester;->mDeathHandler:Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    .line 106
    iput-object p8, p0, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    .line 107
    iput p9, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    .line 108
    iput p2, p0, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    .line 109
    iput p3, p0, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    .line 111
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossWasNotified:Z

    .line 112
    iput-boolean v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossFadeLimbo:Z

    .line 113
    iput-object p10, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    .line 114
    iput p11, p0, Lcom/android/server/audio/FocusRequester;->mSdkTarget:I

    .line 115
    return-void
.end method

.method constructor <init>(Landroid/media/AudioFocusInfo;Landroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;Lcom/android/server/audio/MediaFocusControl;)V
    .registers 8
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "afl"    # Landroid/media/IAudioFocusDispatcher;
    .param p3, "source"    # Landroid/os/IBinder;
    .param p4, "hdlr"    # Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    .param p5, "ctlr"    # Lcom/android/server/audio/MediaFocusControl;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/FocusRequester;->mAttributes:Landroid/media/AudioAttributes;

    .line 120
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    .line 123
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getGainRequest()I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    .line 124
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    .line 125
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossWasNotified:Z

    .line 126
    iput-boolean v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossFadeLimbo:Z

    .line 127
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getFlags()I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    .line 128
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getSdkTarget()I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/FocusRequester;->mSdkTarget:I

    .line 130
    iput-object p2, p0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 131
    iput-object p3, p0, Lcom/android/server/audio/FocusRequester;->mSourceRef:Landroid/os/IBinder;

    .line 132
    iput-object p4, p0, Lcom/android/server/audio/FocusRequester;->mDeathHandler:Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    .line 133
    iput-object p5, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    .line 134
    return-void
.end method

.method private static flagsToString(I)Ljava/lang/String;
    .registers 5
    .param p0, "flags"    # I

    .line 227
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 228
    .local v0, "msg":Ljava/lang/String;
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_1c

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DELAY_OK"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    :cond_1c
    and-int/lit8 v1, p0, 0x4

    const-string/jumbo v2, "|"

    if-eqz v1, :cond_4d

    .line 232
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    :cond_3a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "LOCK"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 235
    :cond_4d
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_7b

    .line 236
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_68

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    :cond_68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "PAUSES_ON_DUCKABLE_LOSS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    :cond_7b
    return-object v0
.end method

.method private static focusChangeToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "focus"    # I

    .line 196
    packed-switch p0, :pswitch_data_36

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[invalid focus change"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 206
    :pswitch_1d
    const-string v0, "GAIN_TRANSIENT_EXCLUSIVE"

    return-object v0

    .line 204
    :pswitch_20
    const-string v0, "GAIN_TRANSIENT_MAY_DUCK"

    return-object v0

    .line 202
    :pswitch_23
    const-string v0, "GAIN_TRANSIENT"

    return-object v0

    .line 200
    :pswitch_26
    const-string v0, "GAIN"

    return-object v0

    .line 198
    :pswitch_29
    const-string/jumbo v0, "none"

    return-object v0

    .line 208
    :pswitch_2d
    const-string v0, "LOSS"

    return-object v0

    .line 210
    :pswitch_30
    const-string v0, "LOSS_TRANSIENT"

    return-object v0

    .line 212
    :pswitch_33
    const-string v0, "LOSS_TRANSIENT_CAN_DUCK"

    return-object v0

    :pswitch_data_36
    .packed-switch -0x3
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method private focusGainToString()Ljava/lang/String;
    .registers 2

    .line 219
    iget v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    invoke-static {v0}, Lcom/android/server/audio/FocusRequester;->focusChangeToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private focusLossForGainRequest(I)I
    .registers 5
    .param p1, "gainRequest"    # I

    .line 291
    const/4 v0, -0x2

    const/4 v1, -0x1

    packed-switch p1, :pswitch_data_3a

    goto :goto_1f

    .line 293
    :pswitch_6
    iget v2, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    packed-switch v2, :pswitch_data_46

    goto :goto_d

    .line 298
    :pswitch_c
    return v1

    .line 302
    :goto_d
    :pswitch_d
    iget v2, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    packed-switch v2, :pswitch_data_52

    goto :goto_15

    .line 308
    :pswitch_13
    return v1

    .line 306
    :pswitch_14
    return v0

    .line 311
    :goto_15
    :pswitch_15
    iget v2, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    packed-switch v2, :pswitch_data_5e

    goto :goto_1f

    .line 318
    :pswitch_1b
    return v1

    .line 316
    :pswitch_1c
    return v0

    .line 314
    :pswitch_1d
    const/4 v0, -0x3

    return v0

    .line 321
    :goto_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "focusLossForGainRequest() for invalid focus request "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaFocusControl"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_6
        :pswitch_d
        :pswitch_15
        :pswitch_d
    .end packed-switch

    :pswitch_data_46
    .packed-switch -0x3
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch

    :pswitch_data_52
    .packed-switch -0x3
        :pswitch_14
        :pswitch_14
        :pswitch_13
        :pswitch_14
    .end packed-switch

    :pswitch_data_5e
    .packed-switch -0x3
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1d
    .end packed-switch
.end method

.method private focusLossToString()Ljava/lang/String;
    .registers 2

    .line 223
    iget v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    invoke-static {v0}, Lcom/android/server/audio/FocusRequester;->focusChangeToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private frameworkHandleFocusLoss(ILcom/android/server/audio/FocusRequester;Z)Z
    .registers 9
    .param p1, "focusLoss"    # I
    .param p2, "frWinner"    # Lcom/android/server/audio/FocusRequester;
    .param p3, "forceDuck"    # Z

    .line 476
    iget v0, p2, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    iget v1, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_8

    .line 479
    return v2

    .line 482
    :cond_8
    const/4 v0, -0x3

    if-ne p1, v0, :cond_63

    .line 488
    const-string/jumbo v0, "not ducking uid "

    const-string v1, "MediaFocusControl"

    if-nez p3, :cond_35

    iget v3, p0, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_35

    .line 492
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " - flags"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    return v2

    .line 495
    :cond_35
    if-nez p3, :cond_5c

    .line 496
    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->getSdkTarget()I

    move-result v3

    const/16 v4, 0x19

    if-gt v3, v4, :cond_5c

    .line 498
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " - old SDK"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    return v2

    .line 502
    :cond_5c
    iget-object v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p2, p0, p3}, Lcom/android/server/audio/MediaFocusControl;->duckPlayers(Lcom/android/server/audio/FocusRequester;Lcom/android/server/audio/FocusRequester;Z)Z

    move-result v0

    return v0

    .line 505
    :cond_63
    const/4 v0, -0x1

    if-ne p1, v0, :cond_79

    .line 511
    iget-object v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p2, p0}, Lcom/android/server/audio/MediaFocusControl;->fadeOutPlayers(Lcom/android/server/audio/FocusRequester;Lcom/android/server/audio/FocusRequester;)Z

    move-result v0

    .line 512
    .local v0, "playersAreFaded":Z
    if-eqz v0, :cond_79

    .line 516
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossFadeLimbo:Z

    .line 517
    iget-object v2, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/server/audio/MediaFocusControl;->postDelayedLossAfterFade(Lcom/android/server/audio/FocusRequester;J)V

    .line 519
    return v1

    .line 523
    .end local v0    # "playersAreFaded":Z
    :cond_79
    return v2
.end method


# virtual methods
.method dispatchFocusChange(I)I
    .registers 10
    .param p1, "focusChange"    # I

    .line 527
    iget-object v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 528
    .local v0, "fd":Landroid/media/IAudioFocusDispatcher;
    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 530
    return v1

    .line 532
    :cond_6
    if-nez p1, :cond_9

    .line 534
    return v1

    .line 535
    :cond_9
    const/4 v2, 0x3

    const/4 v3, 0x1

    const-string v4, "MediaFocusControl"

    if-eq p1, v2, :cond_17

    const/4 v2, 0x4

    if-eq p1, v2, :cond_17

    const/4 v2, 0x2

    if-eq p1, v2, :cond_17

    if-ne p1, v3, :cond_3e

    :cond_17
    iget v2, p0, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    if-eq v2, p1, :cond_3e

    .line 540
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "focus gain was requested with "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", dispatching "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    .line 542
    :cond_3e
    const/4 v2, -0x3

    if-eq p1, v2, :cond_47

    const/4 v2, -0x2

    if-eq p1, v2, :cond_47

    const/4 v2, -0x1

    if-ne p1, v2, :cond_49

    .line 545
    :cond_47
    iput p1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    .line 549
    :cond_49
    :goto_49
    :try_start_49
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v2

    iget v5, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    iget-object v6, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    iget v7, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    invoke-interface {v2, v5, v6, v7}, Lcom/android/server/am/SmartPowerServiceStub;->recordAudioFocusLoss(ILjava/lang/String;I)V

    .line 552
    iget-object v2, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-interface {v0, p1, v2}, Landroid/media/IAudioFocusDispatcher;->dispatchAudioFocusChange(ILjava/lang/String;)V
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_5b} :catch_5d

    .line 556
    nop

    .line 557
    return v3

    .line 553
    :catch_5d
    move-exception v2

    .line 554
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchFocusChange: error talking to focus listener "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 555
    return v1
.end method

.method dispatchFocusResultFromExtPolicy(I)V
    .registers 6
    .param p1, "requestResult"    # I

    .line 561
    iget-object v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 562
    .local v0, "fd":Landroid/media/IAudioFocusDispatcher;
    if-nez v0, :cond_5

    .line 566
    return-void

    .line 572
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Landroid/media/IAudioFocusDispatcher;->dispatchFocusResultFromExtPolicy(ILjava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 576
    goto :goto_26

    .line 573
    :catch_b
    move-exception v1

    .line 574
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchFocusResultFromExtPolicy: error talking to focus listener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MediaFocusControl"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 577
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_26
    return-void
.end method

.method dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  source:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mSourceRef:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- pack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- client: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- gain: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 246
    invoke-direct {p0}, Lcom/android/server/audio/FocusRequester;->focusGainToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- flags: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    .line 247
    invoke-static {v1}, Lcom/android/server/audio/FocusRequester;->flagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- loss: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 248
    invoke-direct {p0}, Lcom/android/server/audio/FocusRequester;->focusLossToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- notified: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossWasNotified:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- limbo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossFadeLimbo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- attr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- sdk:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/audio/FocusRequester;->mSdkTarget:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 243
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 280
    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 281
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 282
    return-void
.end method

.method getAudioAttributes()Landroid/media/AudioAttributes;
    .registers 2

    .line 188
    iget-object v0, p0, Lcom/android/server/audio/FocusRequester;->mAttributes:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method getClientId()Ljava/lang/String;
    .registers 2

    .line 176
    iget-object v0, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    return-object v0
.end method

.method getClientUid()I
    .registers 2

    .line 172
    iget v0, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    return v0
.end method

.method getGainRequest()I
    .registers 2

    .line 180
    iget v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    return v0
.end method

.method getGrantFlags()I
    .registers 2

    .line 184
    iget v0, p0, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    return v0
.end method

.method getPackageName()Ljava/lang/String;
    .registers 2

    .line 160
    iget-object v0, p0, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method getSdkTarget()I
    .registers 2

    .line 192
    iget v0, p0, Lcom/android/server/audio/FocusRequester;->mSdkTarget:I

    return v0
.end method

.method handleFocusGain(I)V
    .registers 7
    .param p1, "focusGain"    # I

    .line 348
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    .line 349
    iput-boolean v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossFadeLimbo:Z

    .line 350
    iget-object v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V

    .line 352
    iget-object v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 353
    .local v0, "fd":Landroid/media/IAudioFocusDispatcher;
    if-eqz v0, :cond_54

    .line 359
    invoke-static {}, Lcom/android/server/audio/FocusRequesterStub;->get()Lcom/android/server/audio/FocusRequesterStub;

    move-result-object v1

    iget v2, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    iget-object v3, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    .line 360
    invoke-virtual {v3}, Lcom/android/server/audio/MediaFocusControl;->getFocusHandler()Landroid/os/Handler;

    move-result-object v3

    .line 359
    invoke-interface {v1, v2, v3}, Lcom/android/server/audio/FocusRequesterStub;->notifyFocusChange(ILandroid/os/Handler;)V

    .line 362
    iget-boolean v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossWasNotified:Z

    if-eqz v1, :cond_54

    .line 364
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v1

    iget v2, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    iget-object v3, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    invoke-interface {v1, v2, v3, v4}, Lcom/android/server/am/SmartPowerServiceStub;->recordAudioFocusLoss(ILjava/lang/String;I)V

    .line 368
    invoke-static {}, Lcom/android/server/audio/MediaFocusControlStub;->getInstance()Lcom/android/server/audio/MediaFocusControlStub;

    move-result-object v1

    iget v2, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    invoke-interface {v1, v2}, Lcom/android/server/audio/MediaFocusControlStub;->isDelayedDispatchFocusChangeNeeded(I)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 369
    invoke-static {}, Lcom/android/server/audio/MediaFocusControlStub;->getInstance()Lcom/android/server/audio/MediaFocusControlStub;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    .line 370
    invoke-virtual {v3}, Lcom/android/server/audio/MediaFocusControl;->getFocusHandler()Landroid/os/Handler;

    move-result-object v3

    .line 369
    invoke-interface {v1, p1, p0, v2, v3}, Lcom/android/server/audio/MediaFocusControlStub;->delayFocusChangeDispatch(ILcom/android/server/audio/FocusRequester;Ljava/lang/String;Landroid/os/Handler;)V

    goto :goto_54

    .line 373
    :cond_4f
    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Landroid/media/IAudioFocusDispatcher;->dispatchAudioFocusChange(ILjava/lang/String;)V

    .line 377
    :cond_54
    :goto_54
    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v1, p0}, Lcom/android/server/audio/MediaFocusControl;->restoreVShapedPlayers(Lcom/android/server/audio/FocusRequester;)V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_59} :catch_5a

    .line 380
    .end local v0    # "fd":Landroid/media/IAudioFocusDispatcher;
    goto :goto_62

    .line 378
    :catch_5a
    move-exception v0

    .line 379
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaFocusControl"

    const-string v2, "Failure to signal gain of audio focus due to: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 381
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_62
    return-void
.end method

.method handleFocusGainFromRequest(I)V
    .registers 3
    .param p1, "focusRequestResult"    # I

    .line 385
    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 386
    iget-object v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p0}, Lcom/android/server/audio/MediaFocusControl;->restoreVShapedPlayers(Lcom/android/server/audio/FocusRequester;)V

    .line 388
    :cond_8
    return-void
.end method

.method handleFocusLoss(ILcom/android/server/audio/FocusRequester;Z)V
    .registers 12
    .param p1, "focusLoss"    # I
    .param p2, "frWinner"    # Lcom/android/server/audio/FocusRequester;
    .param p3, "forceDuck"    # Z

    .line 394
    const-string v0, "MediaFocusControl"

    :try_start_2
    iget v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    if-eq p1, v1, :cond_78

    .line 396
    nop

    .line 399
    .local v1, "mLastFocusLossReceived":I
    iput p1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    .line 400
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossWasNotified:Z

    .line 407
    iget-object v3, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v3}, Lcom/android/server/audio/MediaFocusControl;->mustNotifyFocusOwnerOnDuck()Z

    move-result v3

    if-nez v3, :cond_29

    iget v3, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    const/4 v4, -0x3

    if-ne v3, v4, :cond_29

    iget v3, p0, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_29

    .line 415
    iget-object v3, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    .line 416
    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v4

    .line 415
    invoke-virtual {v3, v4, v2}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V

    .line 417
    return-void

    .line 421
    :cond_29
    invoke-static {}, Lcom/android/server/audio/PlaybackActivityMonitorStub;->get()Lcom/android/server/audio/PlaybackActivityMonitorStub;

    move-result-object v3

    .line 422
    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->getClientUid()I

    move-result v4

    .line 421
    invoke-interface {v3, p2, v4}, Lcom/android/server/audio/PlaybackActivityMonitorStub;->ignoreFocusRequest(Lcom/android/server/audio/FocusRequester;I)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 423
    const-string/jumbo v2, "skip handle audio focus change for user setting ..."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iput v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    .line 425
    return-void

    .line 430
    :cond_40
    const/4 v3, 0x0

    .line 431
    .local v3, "handled":Z
    if-eqz p2, :cond_48

    .line 432
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/FocusRequester;->frameworkHandleFocusLoss(ILcom/android/server/audio/FocusRequester;Z)Z

    move-result v4

    move v3, v4

    .line 435
    :cond_48
    if-eqz v3, :cond_54

    .line 440
    iget-object v4, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    .line 441
    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v5

    .line 440
    invoke-virtual {v4, v5, v2}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V

    .line 442
    return-void

    .line 445
    :cond_54
    iget-object v2, p0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 446
    .local v2, "fd":Landroid/media/IAudioFocusDispatcher;
    if-eqz v2, :cond_78

    .line 451
    iget-object v4, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    .line 452
    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v5

    .line 451
    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V

    .line 453
    iput-boolean v6, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossWasNotified:Z

    .line 455
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v4

    iget v5, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    iget-object v6, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    iget v7, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    invoke-interface {v4, v5, v6, v7}, Lcom/android/server/am/SmartPowerServiceStub;->recordAudioFocusLoss(ILjava/lang/String;I)V

    .line 458
    iget v4, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    iget-object v5, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/media/IAudioFocusDispatcher;->dispatchAudioFocusChange(ILjava/lang/String;)V
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_78} :catch_79

    .line 463
    .end local v1    # "mLastFocusLossReceived":I
    .end local v2    # "fd":Landroid/media/IAudioFocusDispatcher;
    .end local v3    # "handled":Z
    :cond_78
    goto :goto_7f

    .line 461
    :catch_79
    move-exception v1

    .line 462
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Failure to signal loss of audio focus due to:"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 464
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_7f
    return-void
.end method

.method handleFocusLossFromGain(ILcom/android/server/audio/FocusRequester;Z)Z
    .registers 7
    .param p1, "focusGain"    # I
    .param p2, "frWinner"    # Lcom/android/server/audio/FocusRequester;
    .param p3, "forceDuck"    # Z

    .line 335
    invoke-direct {p0, p1}, Lcom/android/server/audio/FocusRequester;->focusLossForGainRequest(I)I

    move-result v0

    .line 336
    .local v0, "focusLoss":I
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/audio/FocusRequester;->handleFocusLoss(ILcom/android/server/audio/FocusRequester;Z)V

    .line 338
    invoke-static {}, Lcom/android/server/audio/PlaybackActivityMonitorStub;->get()Lcom/android/server/audio/PlaybackActivityMonitorStub;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->getClientUid()I

    move-result v2

    invoke-interface {v1, p2, v2}, Lcom/android/server/audio/PlaybackActivityMonitorStub;->ignoreFocusRequest(Lcom/android/server/audio/FocusRequester;I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    .line 339
    return v2

    .line 342
    :cond_17
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1b

    const/4 v2, 0x1

    :cond_1b
    return v2
.end method

.method hasSameBinder(Landroid/os/IBinder;)Z
    .registers 3
    .param p1, "ib"    # Landroid/os/IBinder;

    .line 152
    iget-object v0, p0, Lcom/android/server/audio/FocusRequester;->mSourceRef:Landroid/os/IBinder;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method hasSameClient(Ljava/lang/String;)Z
    .registers 3
    .param p1, "otherClient"    # Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method hasSameDispatcher(Landroid/media/IAudioFocusDispatcher;)Z
    .registers 3
    .param p1, "fd"    # Landroid/media/IAudioFocusDispatcher;

    .line 156
    iget-object v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method hasSamePackage(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pack"    # Ljava/lang/String;

    .line 164
    iget-object v0, p0, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method hasSameUid(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 168
    iget v0, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method isInFocusLossLimbo()Z
    .registers 2

    .line 148
    iget-boolean v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossFadeLimbo:Z

    return v0
.end method

.method isLockedFocusOwner()Z
    .registers 2

    .line 141
    iget v0, p0, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method maybeRelease()V
    .registers 2

    .line 261
    iget-boolean v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossFadeLimbo:Z

    if-nez v0, :cond_7

    .line 262
    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 264
    :cond_7
    return-void
.end method

.method release()V
    .registers 4

    .line 267
    iget-object v0, p0, Lcom/android/server/audio/FocusRequester;->mSourceRef:Landroid/os/IBinder;

    .line 268
    .local v0, "srcRef":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mDeathHandler:Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    .line 270
    .local v1, "deathHdlr":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    if-eqz v0, :cond_e

    if-eqz v1, :cond_e

    .line 271
    const/4 v2, 0x0

    :try_start_9
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_c
    .catch Ljava/util/NoSuchElementException; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_e

    .line 273
    :catch_d
    move-exception v2

    :cond_e
    :goto_e
    nop

    .line 274
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/audio/FocusRequester;->mDeathHandler:Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    .line 275
    iput-object v2, p0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 276
    return-void
.end method

.method toAudioFocusInfo()Landroid/media/AudioFocusInfo;
    .registers 11

    .line 580
    new-instance v9, Landroid/media/AudioFocusInfo;

    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mAttributes:Landroid/media/AudioAttributes;

    iget v2, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    iget-object v3, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    iget v6, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    iget v7, p0, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    iget v8, p0, Lcom/android/server/audio/FocusRequester;->mSdkTarget:I

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/media/AudioFocusInfo;-><init>(Landroid/media/AudioAttributes;ILjava/lang/String;Ljava/lang/String;IIII)V

    return-object v9
.end method
