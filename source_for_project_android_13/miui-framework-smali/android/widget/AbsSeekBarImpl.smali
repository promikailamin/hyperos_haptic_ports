.class public Landroid/widget/AbsSeekBarImpl;
.super Ljava/lang/Object;
.source "AbsSeekBarImpl.java"

# interfaces
.implements Landroid/widget/AbsSeekBarStub;


# instance fields
.field private blacklist mHasEdgeReached:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist captureState(Landroid/widget/ProgressBar;)V
    .registers 4
    .param p1, "bar"    # Landroid/widget/ProgressBar;

    .line 18
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    if-eq v0, v1, :cond_13

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    if-nez v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    iput-boolean v0, p0, Landroid/widget/AbsSeekBarImpl;->mHasEdgeReached:Z

    .line 19
    return-void
.end method

.method public blacklist performEdgeReachedHaptic(Landroid/widget/ProgressBar;)V
    .registers 4
    .param p1, "bar"    # Landroid/widget/ProgressBar;

    .line 23
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    if-eq v0, v1, :cond_13

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    if-nez v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    .line 24
    .local v0, "isEdgeReached":Z
    :goto_14
    if-eqz v0, :cond_26

    iget-boolean v1, p0, Landroid/widget/AbsSeekBarImpl;->mHasEdgeReached:Z

    if-nez v1, :cond_26

    invoke-static {}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 25
    const v1, 0x10000004

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->performHapticFeedback(I)Z

    .line 27
    :cond_26
    iput-boolean v0, p0, Landroid/widget/AbsSeekBarImpl;->mHasEdgeReached:Z

    .line 28
    return-void
.end method
