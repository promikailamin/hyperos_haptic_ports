.class public Lcom/android/net/module/util/BaseNetdUnsolicitedEventListener;
.super Landroid/net/INetdUnsolicitedEventListener$Stub;
.source "BaseNetdUnsolicitedEventListener.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Landroid/net/INetdUnsolicitedEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .registers 1

    .line 73
    const-string p0, "c1bb4eac63bf70e3b1fc43f626693deafb43c5b0"

    return-object p0
.end method

.method public getInterfaceVersion()I
    .registers 1

    .line 0
    const/16 p0, 0x12

    return p0
.end method

.method public onInterfaceAdded(Ljava/lang/String;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onInterfaceAddressRemoved(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 5

    .line 0
    return-void
.end method

.method public onInterfaceAddressUpdated(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 5

    .line 0
    return-void
.end method

.method public onInterfaceChanged(Ljava/lang/String;Z)V
    .registers 3

    .line 0
    return-void
.end method

.method public onInterfaceClassActivityChanged(ZIJI)V
    .registers 6

    .line 0
    return-void
.end method

.method public onInterfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V
    .registers 5

    .line 0
    return-void
.end method

.method public onInterfaceLinkStateChanged(Ljava/lang/String;Z)V
    .registers 3

    .line 0
    return-void
.end method

.method public onInterfaceRemoved(Ljava/lang/String;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onQuotaLimitReached(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onRouteChanged(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 0
    return-void
.end method

.method public onStrictCleartextDetected(ILjava/lang/String;)V
    .registers 3

    .line 0
    return-void
.end method
