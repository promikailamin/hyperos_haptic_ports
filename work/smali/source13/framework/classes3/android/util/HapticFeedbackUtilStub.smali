.class public interface abstract Landroid/util/HapticFeedbackUtilStub;
.super Ljava/lang/Object;
.source "HapticFeedbackUtilStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/HapticFeedbackUtilStub$SingletonHolder;
    }
.end annotation


# direct methods
.method public static blacklist getInstance()Landroid/util/HapticFeedbackUtilStub;
    .registers 1

    .line 16
    invoke-static {}, Landroid/util/HapticFeedbackUtilStub$SingletonHolder;->-$$Nest$sfgetINSTANCE()Landroid/util/HapticFeedbackUtilStub;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract blacklist isSupportLinearMotorVibrate(I)Z
.end method

.method public abstract blacklist performHapticFeedback(Landroid/content/Context;ZIZ)Z
.end method
