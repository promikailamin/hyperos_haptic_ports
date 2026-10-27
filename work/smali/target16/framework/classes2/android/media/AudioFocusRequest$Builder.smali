.class public final Landroid/media/AudioFocusRequest$Builder;
.super Ljava/lang/Object;
.source "AudioFocusRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioFocusRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mA11yForceDucking:Z

.field private greylist-max-o mAttr:Landroid/media/AudioAttributes;

.field private greylist-max-o mDelayedFocus:Z

.field private greylist-max-o mFocusGain:I

.field private greylist-max-o mFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private greylist-max-o mFocusLocked:Z

.field private greylist-max-o mListenerHandler:Landroid/os/Handler;

.field private greylist-max-o mPausesOnDuck:Z


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 3

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    invoke-static {}, Landroid/media/AudioFocusRequest;->-$$Nest$sfgetFOCUS_DEFAULT_ATTR()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioFocusRequest$Builder;->mAttr:Landroid/media/AudioAttributes;

    .line 365
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/AudioFocusRequest$Builder;->mPausesOnDuck:Z

    .line 366
    iput-boolean v0, p0, Landroid/media/AudioFocusRequest$Builder;->mDelayedFocus:Z

    .line 367
    iput-boolean v0, p0, Landroid/media/AudioFocusRequest$Builder;->mFocusLocked:Z

    .line 368
    iput-boolean v0, p0, Landroid/media/AudioFocusRequest$Builder;->mA11yForceDucking:Z

    .line 383
    invoke-virtual {p0, p1}, Landroid/media/AudioFocusRequest$Builder;->setFocusGain(I)Landroid/media/AudioFocusRequest$Builder;

    .line 384
    return-void
.end method

.method public constructor whitelist <init>(Landroid/media/AudioFocusRequest;)V
    .registers 3

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    invoke-static {}, Landroid/media/AudioFocusRequest;->-$$Nest$sfgetFOCUS_DEFAULT_ATTR()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioFocusRequest$Builder;->mAttr:Landroid/media/AudioAttributes;

    .line 365
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/AudioFocusRequest$Builder;->mPausesOnDuck:Z

    .line 366
    iput-boolean v0, p0, Landroid/media/AudioFocusRequest$Builder;->mDelayedFocus:Z

    .line 367
    iput-boolean v0, p0, Landroid/media/AudioFocusRequest$Builder;->mFocusLocked:Z

    .line 368
    iput-boolean v0, p0, Landroid/media/AudioFocusRequest$Builder;->mA11yForceDucking:Z

    .line 394
    if-eqz p1, :cond_39

    .line 397
    invoke-static {p1}, Landroid/media/AudioFocusRequest;->-$$Nest$fgetmAttr(Landroid/media/AudioFocusRequest;)Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioFocusRequest$Builder;->mAttr:Landroid/media/AudioAttributes;

    .line 398
    invoke-static {p1}, Landroid/media/AudioFocusRequest;->-$$Nest$fgetmFocusListener(Landroid/media/AudioFocusRequest;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioFocusRequest$Builder;->mFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 399
    invoke-static {p1}, Landroid/media/AudioFocusRequest;->-$$Nest$fgetmListenerHandler(Landroid/media/AudioFocusRequest;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioFocusRequest$Builder;->mListenerHandler:Landroid/os/Handler;

    .line 400
    invoke-static {p1}, Landroid/media/AudioFocusRequest;->-$$Nest$fgetmFocusGain(Landroid/media/AudioFocusRequest;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioFocusRequest$Builder;->mFocusGain:I

    .line 401
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->willPauseWhenDucked()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioFocusRequest$Builder;->mPausesOnDuck:Z

    .line 402
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->acceptsDelayedFocusGain()Z

    move-result p1

    iput-boolean p1, p0, Landroid/media/AudioFocusRequest$Builder;->mDelayedFocus:Z

    .line 403
    return-void

    .line 395
    :cond_39
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal null AudioFocusRequest"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public whitelist build()Landroid/media/AudioFocusRequest;
    .registers 10

    .line 571
    iget-boolean v0, p0, Landroid/media/AudioFocusRequest$Builder;->mDelayedFocus:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Landroid/media/AudioFocusRequest$Builder;->mPausesOnDuck:Z

    if-eqz v0, :cond_c

    :cond_8
    iget-object v0, p0, Landroid/media/AudioFocusRequest$Builder;->mFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    if-eqz v0, :cond_5e

    .line 575
    :cond_c
    iget-boolean v0, p0, Landroid/media/AudioFocusRequest$Builder;->mA11yForceDucking:Z

    if-eqz v0, :cond_3b

    .line 577
    iget-object v0, p0, Landroid/media/AudioFocusRequest$Builder;->mAttr:Landroid/media/AudioAttributes;

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 578
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_24

    .line 580
    :cond_1e
    iget-object v0, p0, Landroid/media/AudioFocusRequest$Builder;->mAttr:Landroid/media/AudioAttributes;

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 583
    :goto_24
    const-string v1, "a11y_force_ducking"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 584
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    iget-object v2, p0, Landroid/media/AudioFocusRequest$Builder;->mAttr:Landroid/media/AudioAttributes;

    invoke-direct {v1, v2}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    invoke-virtual {v1, v0}, Landroid/media/AudioAttributes$Builder;->addBundle(Landroid/os/Bundle;)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioFocusRequest$Builder;->mAttr:Landroid/media/AudioAttributes;

    .line 586
    :cond_3b
    nop

    .line 587
    iget-boolean v0, p0, Landroid/media/AudioFocusRequest$Builder;->mDelayedFocus:Z

    const/4 v1, 0x0

    or-int/2addr v0, v1

    .line 588
    iget-boolean v2, p0, Landroid/media/AudioFocusRequest$Builder;->mPausesOnDuck:Z

    if-eqz v2, :cond_46

    const/4 v2, 0x2

    goto :goto_47

    :cond_46
    move v2, v1

    :goto_47
    or-int/2addr v0, v2

    .line 589
    iget-boolean v2, p0, Landroid/media/AudioFocusRequest$Builder;->mFocusLocked:Z

    if-eqz v2, :cond_4d

    const/4 v1, 0x4

    :cond_4d
    or-int v7, v0, v1

    .line 590
    new-instance v2, Landroid/media/AudioFocusRequest;

    iget-object v3, p0, Landroid/media/AudioFocusRequest$Builder;->mFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iget-object v4, p0, Landroid/media/AudioFocusRequest$Builder;->mListenerHandler:Landroid/os/Handler;

    iget-object v5, p0, Landroid/media/AudioFocusRequest$Builder;->mAttr:Landroid/media/AudioAttributes;

    iget v6, p0, Landroid/media/AudioFocusRequest$Builder;->mFocusGain:I

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Landroid/media/AudioFocusRequest;-><init>(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;Landroid/media/AudioAttributes;IILandroid/media/AudioFocusRequest-IA;)V

    return-object v2

    .line 572
    :cond_5e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t use delayed focus or pause on duck without a listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAcceptsDelayedFocusGain(Z)Landroid/media/AudioFocusRequest$Builder;
    .registers 2

    .line 527
    iput-boolean p1, p0, Landroid/media/AudioFocusRequest$Builder;->mDelayedFocus:Z

    .line 528
    return-object p0
.end method

.method public whitelist setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;
    .registers 3

    .line 494
    if-eqz p1, :cond_5

    .line 497
    iput-object p1, p0, Landroid/media/AudioFocusRequest$Builder;->mAttr:Landroid/media/AudioAttributes;

    .line 498
    return-object p0

    .line 495
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Illegal null AudioAttributes"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setFocusGain(I)Landroid/media/AudioFocusRequest$Builder;
    .registers 5

    .line 414
    invoke-static {p1}, Landroid/media/AudioFocusRequest;->isValidFocusGain(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 417
    iput p1, p0, Landroid/media/AudioFocusRequest$Builder;->mFocusGain:I

    .line 418
    return-object p0

    .line 415
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal audio focus gain type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setForceDucking(Z)Landroid/media/AudioFocusRequest$Builder;
    .registers 2

    .line 558
    iput-boolean p1, p0, Landroid/media/AudioFocusRequest$Builder;->mA11yForceDucking:Z

    .line 559
    return-object p0
.end method

.method public whitelist setLocksFocus(Z)Landroid/media/AudioFocusRequest$Builder;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 543
    iput-boolean p1, p0, Landroid/media/AudioFocusRequest$Builder;->mFocusLocked:Z

    .line 544
    return-object p0
.end method

.method public whitelist setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;
    .registers 3

    .line 436
    if-eqz p1, :cond_8

    .line 439
    iput-object p1, p0, Landroid/media/AudioFocusRequest$Builder;->mFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 440
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/media/AudioFocusRequest$Builder;->mListenerHandler:Landroid/os/Handler;

    .line 441
    return-object p0

    .line 437
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Illegal null focus listener"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)Landroid/media/AudioFocusRequest$Builder;
    .registers 3

    .line 472
    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    .line 475
    iput-object p1, p0, Landroid/media/AudioFocusRequest$Builder;->mFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 476
    iput-object p2, p0, Landroid/media/AudioFocusRequest$Builder;->mListenerHandler:Landroid/os/Handler;

    .line 477
    return-object p0

    .line 473
    :cond_9
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Illegal null focus listener or handler"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method greylist-max-o setOnAudioFocusChangeListenerInt(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)Landroid/media/AudioFocusRequest$Builder;
    .registers 3

    .line 453
    iput-object p1, p0, Landroid/media/AudioFocusRequest$Builder;->mFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 454
    iput-object p2, p0, Landroid/media/AudioFocusRequest$Builder;->mListenerHandler:Landroid/os/Handler;

    .line 455
    return-object p0
.end method

.method public whitelist setWillPauseWhenDucked(Z)Landroid/media/AudioFocusRequest$Builder;
    .registers 2

    .line 512
    iput-boolean p1, p0, Landroid/media/AudioFocusRequest$Builder;->mPausesOnDuck:Z

    .line 513
    return-object p0
.end method
