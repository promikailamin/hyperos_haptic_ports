.class public interface abstract Lcom/android/server/connectivity/VpnStub;
.super Ljava/lang/Object;
.source "VpnStub.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VpnStub"


# direct methods
.method public static get()Lcom/android/server/connectivity/VpnStub;
    .registers 1

    .line 15
    const-class v0, Lcom/android/server/connectivity/VpnStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/VpnStub;

    return-object v0
.end method


# virtual methods
.method public connect(Ljava/lang/String;)V
    .registers 2
    .param p1, "user"    # Ljava/lang/String;

    .line 18
    return-void
.end method

.method public disconnect(Ljava/lang/String;)V
    .registers 2
    .param p1, "user"    # Ljava/lang/String;

    .line 19
    return-void
.end method
