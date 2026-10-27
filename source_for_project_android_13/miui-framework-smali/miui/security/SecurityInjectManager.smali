.class public Lmiui/security/SecurityInjectManager;
.super Ljava/lang/Object;
.source "SecurityInjectManager.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method

.method public static native blacklist blockSelfNetwork(Z)V
.end method

.method public static native blacklist hookFunctions(JI)Z
.end method

.method public static native blacklist isNetworkBlocked()Z
.end method
