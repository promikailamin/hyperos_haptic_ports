.class public Lcom/android/server/net/BaseNetdEventCallback;
.super Landroid/net/INetdEventCallback$Stub;
.source "BaseNetdEventCallback.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Landroid/net/INetdEventCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onConnectEvent(Ljava/lang/String;IJI)V
    .registers 6

    .line 49
    return-void
.end method

.method public blacklist onDnsEvent(IIILjava/lang/String;[Ljava/lang/String;IJI)V
    .registers 10

    .line 32
    return-void
.end method

.method public blacklist onNat64PrefixEvent(IZLjava/lang/String;I)V
    .registers 5

    .line 38
    return-void
.end method

.method public blacklist onPrivateDnsValidationEvent(ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    .line 44
    return-void
.end method
