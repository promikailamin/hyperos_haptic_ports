.class public Landroid/widget/CompoundButtonImpl;
.super Ljava/lang/Object;
.source "CompoundButtonImpl.java"

# interfaces
.implements Landroid/widget/CompoundButtonStub;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist performClickHaptic(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 17
    invoke-static {}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 18
    const v0, 0x10000006

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 20
    :cond_c
    return-void
.end method
