.class public Landroid/util/HapticFeedbackUtilStubImpl;
.super Ljava/lang/Object;
.source "HapticFeedbackUtilStubImpl.java"

# interfaces
.implements Landroid/util/HapticFeedbackUtilStub;


# direct methods
.method protected constructor blacklist <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public whitelist isSupportLinearMotorVibrate(I)Z
    .registers 3
    .param p1, "flag"    # I

    .line 28
    invoke-static {p1}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate(I)Z

    move-result v0

    return v0
.end method

.method public whitelist performHapticFeedback(Landroid/content/Context;ZIZ)Z
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "onceOnly"    # Z
    .param p3, "flag"    # I
    .param p4, "always"    # Z

    .line 21
    new-instance v0, Lmiui/util/HapticFeedbackUtil;

    invoke-direct {v0, p1, p2}, Lmiui/util/HapticFeedbackUtil;-><init>(Landroid/content/Context;Z)V

    .line 22
    .local v0, "hapticFeedbackUtil":Lmiui/util/HapticFeedbackUtil;
    invoke-virtual {v0, p3, p4}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(IZ)Z

    move-result v1

    return v1
.end method
