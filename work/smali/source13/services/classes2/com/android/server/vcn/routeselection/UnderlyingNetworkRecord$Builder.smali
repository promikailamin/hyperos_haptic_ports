.class Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;
.super Ljava/lang/Object;
.source "UnderlyingNetworkRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private mCached:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

.field mIsBlocked:Z

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private final mNetwork:Landroid/net/Network;

.field private mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field mWasIsBlockedSet:Z


# direct methods
.method constructor <init>(Landroid/net/Network;)V
    .registers 2
    .param p1, "network"    # Landroid/net/Network;

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object p1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mNetwork:Landroid/net/Network;

    .line 205
    return-void
.end method


# virtual methods
.method build()Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;
    .registers 6

    .line 238
    invoke-virtual {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 243
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mCached:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    if-nez v0, :cond_19

    .line 244
    new-instance v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mNetwork:Landroid/net/Network;

    iget-object v2, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v3, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mLinkProperties:Landroid/net/LinkProperties;

    iget-boolean v4, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mIsBlocked:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;-><init>(Landroid/net/Network;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Z)V

    iput-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mCached:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 249
    :cond_19
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mCached:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    return-object v0

    .line 239
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Called build before UnderlyingNetworkRecord was valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getNetwork()Landroid/net/Network;
    .registers 2

    .line 209
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mNetwork:Landroid/net/Network;

    return-object v0
.end method

.method getNetworkCapabilities()Landroid/net/NetworkCapabilities;
    .registers 2

    .line 219
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-object v0
.end method

.method isValid()Z
    .registers 2

    .line 234
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mLinkProperties:Landroid/net/LinkProperties;

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mWasIsBlockedSet:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method setIsBlocked(Z)V
    .registers 3
    .param p1, "isBlocked"    # Z

    .line 228
    iput-boolean p1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mIsBlocked:Z

    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mWasIsBlockedSet:Z

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mCached:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 231
    return-void
.end method

.method setLinkProperties(Landroid/net/LinkProperties;)V
    .registers 3
    .param p1, "linkProperties"    # Landroid/net/LinkProperties;

    .line 223
    iput-object p1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mLinkProperties:Landroid/net/LinkProperties;

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mCached:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 225
    return-void
.end method

.method setNetworkCapabilities(Landroid/net/NetworkCapabilities;)V
    .registers 3
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .line 213
    iput-object p1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mCached:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 215
    return-void
.end method
