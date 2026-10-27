.class public Lcom/android/net/module/util/BaseNetdEventListener;
.super Landroid/net/metrics/INetdEventListener$Stub;
.source "BaseNetdEventListener.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Landroid/net/metrics/INetdEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .registers 1

    .line 59
    const-string p0, "8e27594d285ca7c567d87e8cf74766c27647e02b"

    return-object p0
.end method

.method public getInterfaceVersion()I
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public onConnectEvent(IIILjava/lang/String;II)V
    .registers 7

    .line 0
    return-void
.end method

.method public onDnsEvent(IIIILjava/lang/String;[Ljava/lang/String;II)V
    .registers 9

    .line 0
    return-void
.end method

.method public onNat64PrefixEvent(IZLjava/lang/String;I)V
    .registers 5

    .line 0
    return-void
.end method

.method public onPrivateDnsValidationEvent(ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    .line 0
    return-void
.end method

.method public onTcpSocketStatsEvent([I[I[I[I[I)V
    .registers 6

    .line 0
    return-void
.end method

.method public onWakeupEvent(Ljava/lang/String;III[BLjava/lang/String;Ljava/lang/String;IIJ)V
    .registers 12

    .line 0
    return-void
.end method
