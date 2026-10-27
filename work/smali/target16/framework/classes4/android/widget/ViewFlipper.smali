.class public Landroid/widget/ViewFlipper;
.super Landroid/widget/ViewAnimator;
.source "ViewFlipper.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final greylist-max-o DEFAULT_INTERVAL:I = 0xbb8

.field private static final greylist-max-o LOGD:Z

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ViewFlipper"


# instance fields
.field private greylist-max-o mAutoStart:Z

.field private greylist-max-o mFlipInterval:I

.field private final greylist-max-o mFlipRunnable:Ljava/lang/Runnable;

.field private blacklist mInhibited:Z

.field private greylist-max-o mRunning:Z

.field private greylist-max-o mStarted:Z

.field private greylist-max-o mVisible:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFlipInterval(Landroid/widget/ViewFlipper;)I
    .registers 1

    iget p0, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFlipRunnable(Landroid/widget/ViewFlipper;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Landroid/widget/ViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRunning(Landroid/widget/ViewFlipper;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/ViewFlipper;->mRunning:Z

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 43
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    sput-boolean v0, Landroid/widget/ViewFlipper;->LOGD:Z

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 2

    .line 58
    invoke-direct {p0, p1}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;)V

    .line 47
    const/16 p1, 0xbb8

    iput p1, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    .line 48
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/widget/ViewFlipper;->mAutoStart:Z

    .line 50
    iput-boolean p1, p0, Landroid/widget/ViewFlipper;->mRunning:Z

    .line 51
    iput-boolean p1, p0, Landroid/widget/ViewFlipper;->mStarted:Z

    .line 52
    iput-boolean p1, p0, Landroid/widget/ViewFlipper;->mVisible:Z

    .line 55
    iput-boolean p1, p0, Landroid/widget/ViewFlipper;->mInhibited:Z

    .line 219
    new-instance p1, Landroid/widget/ViewFlipper$1;

    invoke-direct {p1, p0}, Landroid/widget/ViewFlipper$1;-><init>(Landroid/widget/ViewFlipper;)V

    iput-object p1, p0, Landroid/widget/ViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    .line 59
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const/16 v0, 0xbb8

    iput v0, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    .line 48
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/ViewFlipper;->mAutoStart:Z

    .line 50
    iput-boolean v1, p0, Landroid/widget/ViewFlipper;->mRunning:Z

    .line 51
    iput-boolean v1, p0, Landroid/widget/ViewFlipper;->mStarted:Z

    .line 52
    iput-boolean v1, p0, Landroid/widget/ViewFlipper;->mVisible:Z

    .line 55
    iput-boolean v1, p0, Landroid/widget/ViewFlipper;->mInhibited:Z

    .line 219
    new-instance v2, Landroid/widget/ViewFlipper$1;

    invoke-direct {v2, p0}, Landroid/widget/ViewFlipper$1;-><init>(Landroid/widget/ViewFlipper;)V

    iput-object v2, p0, Landroid/widget/ViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    .line 64
    sget-object v2, Lcom/android/internal/R$styleable;->ViewFlipper:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 66
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    .line 68
    const/4 p2, 0x1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/widget/ViewFlipper;->mAutoStart:Z

    .line 70
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 71
    return-void
.end method

.method private greylist-max-o updateRunning()V
    .registers 2

    .line 161
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/ViewFlipper;->updateRunning(Z)V

    .line 162
    return-void
.end method

.method private greylist-max-r updateRunning(Z)V
    .registers 6

    .line 174
    iget-boolean v0, p0, Landroid/widget/ViewFlipper;->mVisible:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Landroid/widget/ViewFlipper;->mStarted:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Landroid/widget/ViewFlipper;->mInhibited:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 175
    :goto_f
    iget-boolean v1, p0, Landroid/widget/ViewFlipper;->mRunning:Z

    if-eq v0, v1, :cond_2a

    .line 176
    if-eqz v0, :cond_23

    .line 177
    iget v1, p0, Landroid/widget/ViewFlipper;->mWhichChild:I

    invoke-virtual {p0, v1, p1}, Landroid/widget/ViewFlipper;->showOnly(IZ)V

    .line 178
    iget-object v1, p0, Landroid/widget/ViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    iget v2, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/ViewFlipper;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_28

    .line 180
    :cond_23
    iget-object v1, p0, Landroid/widget/ViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/ViewFlipper;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 182
    :goto_28
    iput-boolean v0, p0, Landroid/widget/ViewFlipper;->mRunning:Z

    .line 184
    :cond_2a
    sget-boolean v0, Landroid/widget/ViewFlipper;->LOGD:Z

    if-eqz v0, :cond_a4

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRunning() mVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/widget/ViewFlipper;->mVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStarted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/widget/ViewFlipper;->mStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInhibited="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/widget/ViewFlipper;->mInhibited:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mRunning="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/widget/ViewFlipper;->mRunning:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/widget/ViewFlipper;->mInhibited:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flipNow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", mFlipInterval="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", view="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", parent="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 189
    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 185
    const-string v0, "ViewFlipper"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_a4
    return-void
.end method


# virtual methods
.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 153
    const-class v0, Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFlipInterval()I
    .registers 2

    .line 116
    iget v0, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    return v0
.end method

.method public whitelist isAutoStart()Z
    .registers 2

    .line 216
    iget-boolean v0, p0, Landroid/widget/ViewFlipper;->mAutoStart:Z

    return v0
.end method

.method public whitelist isFlipping()Z
    .registers 2

    .line 199
    iget-boolean v0, p0, Landroid/widget/ViewFlipper;->mStarted:Z

    return v0
.end method

.method protected whitelist onAttachedToWindow()V
    .registers 2

    .line 75
    invoke-super {p0}, Landroid/widget/ViewAnimator;->onAttachedToWindow()V

    .line 77
    iget-boolean v0, p0, Landroid/widget/ViewFlipper;->mAutoStart:Z

    if-eqz v0, :cond_a

    .line 79
    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->startFlipping()V

    .line 81
    :cond_a
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 2

    .line 85
    invoke-super {p0}, Landroid/widget/ViewAnimator;->onDetachedFromWindow()V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ViewFlipper;->mVisible:Z

    .line 87
    invoke-direct {p0}, Landroid/widget/ViewFlipper;->updateRunning()V

    .line 88
    return-void
.end method

.method protected whitelist onWindowVisibilityChanged(I)V
    .registers 3

    .line 92
    invoke-super {p0, p1}, Landroid/widget/ViewAnimator;->onWindowVisibilityChanged(I)V

    .line 93
    const/4 v0, 0x0

    if-nez p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    move p1, v0

    :goto_9
    iput-boolean p1, p0, Landroid/widget/ViewFlipper;->mVisible:Z

    .line 94
    invoke-direct {p0, v0}, Landroid/widget/ViewFlipper;->updateRunning(Z)V

    .line 95
    return-void
.end method

.method public whitelist setAutoStart(Z)V
    .registers 2

    .line 207
    iput-boolean p1, p0, Landroid/widget/ViewFlipper;->mAutoStart:Z

    .line 208
    return-void
.end method

.method public whitelist setFlipInterval(I)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 105
    iput p1, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    .line 106
    return-void
.end method

.method public blacklist setInhibited(Z)V
    .registers 2

    .line 147
    iput-boolean p1, p0, Landroid/widget/ViewFlipper;->mInhibited:Z

    .line 148
    invoke-direct {p0}, Landroid/widget/ViewFlipper;->updateRunning()V

    .line 149
    return-void
.end method

.method public whitelist startFlipping()V
    .registers 2

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ViewFlipper;->mStarted:Z

    .line 124
    invoke-direct {p0}, Landroid/widget/ViewFlipper;->updateRunning()V

    .line 125
    return-void
.end method

.method public whitelist stopFlipping()V
    .registers 2

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ViewFlipper;->mStarted:Z

    .line 132
    invoke-direct {p0}, Landroid/widget/ViewFlipper;->updateRunning()V

    .line 133
    return-void
.end method
