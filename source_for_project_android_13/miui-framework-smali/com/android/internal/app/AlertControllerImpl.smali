.class public Lcom/android/internal/app/AlertControllerImpl;
.super Ljava/lang/Object;
.source "AlertControllerImpl.java"

# interfaces
.implements Lcom/android/internal/app/AlertControllerStub;


# instance fields
.field private blacklist mHapticFeedbackConstants:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const v0, 0x10000001

    iput v0, p0, Lcom/android/internal/app/AlertControllerImpl;->mHapticFeedbackConstants:I

    return-void
.end method


# virtual methods
.method public blacklist performButtonHaptic(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 25
    invoke-static {}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 26
    iget v0, p0, Lcom/android/internal/app/AlertControllerImpl;->mHapticFeedbackConstants:I

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 28
    :cond_b
    return-void
.end method

.method public blacklist positiveClick()V
    .registers 2

    .line 20
    const/high16 v0, 0x10000000

    iput v0, p0, Lcom/android/internal/app/AlertControllerImpl;->mHapticFeedbackConstants:I

    .line 21
    return-void
.end method
