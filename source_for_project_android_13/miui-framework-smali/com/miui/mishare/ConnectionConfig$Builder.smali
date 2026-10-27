.class public final Lcom/miui/mishare/ConnectionConfig$Builder;
.super Ljava/lang/Object;
.source "ConnectionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/mishare/ConnectionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mExtras:Landroid/os/Bundle;

.field private blacklist mGuidingNetworkType:I

.field private blacklist mMainNetworkType:I

.field private blacklist mProtocolType:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/miui/mishare/ConnectionConfig;
    .registers 8

    .line 121
    new-instance v6, Lcom/miui/mishare/ConnectionConfig;

    iget v1, p0, Lcom/miui/mishare/ConnectionConfig$Builder;->mGuidingNetworkType:I

    iget v2, p0, Lcom/miui/mishare/ConnectionConfig$Builder;->mMainNetworkType:I

    iget v3, p0, Lcom/miui/mishare/ConnectionConfig$Builder;->mProtocolType:I

    iget-object v4, p0, Lcom/miui/mishare/ConnectionConfig$Builder;->mExtras:Landroid/os/Bundle;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/miui/mishare/ConnectionConfig;-><init>(IIILandroid/os/Bundle;Lcom/miui/mishare/ConnectionConfig-IA;)V

    return-object v6
.end method

.method public blacklist setExtras(Landroid/os/Bundle;)Lcom/miui/mishare/ConnectionConfig$Builder;
    .registers 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 116
    iput-object p1, p0, Lcom/miui/mishare/ConnectionConfig$Builder;->mExtras:Landroid/os/Bundle;

    .line 117
    return-object p0
.end method

.method public blacklist setGuidingNetworkType(I)Lcom/miui/mishare/ConnectionConfig$Builder;
    .registers 2
    .param p1, "guidingNetworkType"    # I

    .line 101
    iput p1, p0, Lcom/miui/mishare/ConnectionConfig$Builder;->mGuidingNetworkType:I

    .line 102
    return-object p0
.end method

.method public blacklist setMainNetworkType(I)Lcom/miui/mishare/ConnectionConfig$Builder;
    .registers 2
    .param p1, "mainNetworkType"    # I

    .line 106
    iput p1, p0, Lcom/miui/mishare/ConnectionConfig$Builder;->mMainNetworkType:I

    .line 107
    return-object p0
.end method

.method public blacklist setProtocolType(I)Lcom/miui/mishare/ConnectionConfig$Builder;
    .registers 2
    .param p1, "protocolType"    # I

    .line 111
    iput p1, p0, Lcom/miui/mishare/ConnectionConfig$Builder;->mProtocolType:I

    .line 112
    return-object p0
.end method
