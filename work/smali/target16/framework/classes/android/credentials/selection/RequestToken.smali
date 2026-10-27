.class public final Landroid/credentials/selection/RequestToken;
.super Ljava/lang/Object;
.source "RequestToken.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mToken:Landroid/os/IBinder;


# direct methods
.method public constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Landroid/credentials/selection/RequestToken;->mToken:Landroid/os/IBinder;

    .line 58
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 62
    if-ne p0, p1, :cond_4

    .line 63
    const/4 p1, 0x1

    return p1

    .line 65
    :cond_4
    if-eqz p1, :cond_16

    instance-of v0, p1, Landroid/credentials/selection/RequestToken;

    if-nez v0, :cond_b

    goto :goto_16

    .line 68
    :cond_b
    check-cast p1, Landroid/credentials/selection/RequestToken;

    .line 69
    iget-object v0, p0, Landroid/credentials/selection/RequestToken;->mToken:Landroid/os/IBinder;

    iget-object p1, p1, Landroid/credentials/selection/RequestToken;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 66
    :cond_16
    :goto_16
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist getToken()Landroid/os/IBinder;
    .registers 2

    .line 50
    iget-object v0, p0, Landroid/credentials/selection/RequestToken;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 74
    iget-object v0, p0, Landroid/credentials/selection/RequestToken;->mToken:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->hashCode()I

    move-result v0

    return v0
.end method
