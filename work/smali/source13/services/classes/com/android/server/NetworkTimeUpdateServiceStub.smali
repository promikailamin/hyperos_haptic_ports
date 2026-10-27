.class public interface abstract Lcom/android/server/NetworkTimeUpdateServiceStub;
.super Ljava/lang/Object;
.source "NetworkTimeUpdateServiceStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/NetworkTimeUpdateServiceStub;
    .registers 1

    .line 11
    const-class v0, Lcom/android/server/NetworkTimeUpdateServiceStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NetworkTimeUpdateServiceStub;

    return-object v0
.end method


# virtual methods
.method public abstract initNtpServers(Landroid/content/Context;Landroid/util/NtpTrustedTime;)V
.end method

.method public switchNtpServer(ILandroid/util/NtpTrustedTime;)Z
    .registers 4
    .param p1, "tryCounter"    # I
    .param p2, "trustedTime"    # Landroid/util/NtpTrustedTime;

    .line 17
    invoke-virtual {p2}, Landroid/util/NtpTrustedTime;->forceRefresh()Z

    move-result v0

    return v0
.end method
