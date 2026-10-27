.class public final Landroid/app/ComponentCaller;
.super Ljava/lang/Object;
.source "ComponentCaller.java"


# instance fields
.field private final blacklist mActivityToken:Landroid/os/IBinder;

.field private final blacklist mCallerToken:Landroid/os/IBinder;


# direct methods
.method public constructor blacklist <init>(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/app/ComponentCaller;->mActivityToken:Landroid/os/IBinder;

    .line 49
    iput-object p2, p0, Landroid/app/ComponentCaller;->mCallerToken:Landroid/os/IBinder;

    .line 50
    return-void
.end method


# virtual methods
.method public whitelist checkContentUriPermission(Landroid/net/Uri;I)I
    .registers 6

    .line 158
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ComponentCaller;->mActivityToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/app/ComponentCaller;->mCallerToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/app/ActivityClient;->checkActivityCallerContentUriPermission(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/net/Uri;I)I

    move-result p1

    return p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 164
    const/4 v0, 0x0

    if-eqz p1, :cond_17

    instance-of v1, p1, Landroid/app/ComponentCaller;

    if-eqz v1, :cond_17

    check-cast p1, Landroid/app/ComponentCaller;

    .line 167
    iget-object v1, p0, Landroid/app/ComponentCaller;->mActivityToken:Landroid/os/IBinder;

    iget-object v2, p1, Landroid/app/ComponentCaller;->mActivityToken:Landroid/os/IBinder;

    if-ne v1, v2, :cond_16

    iget-object v1, p0, Landroid/app/ComponentCaller;->mCallerToken:Landroid/os/IBinder;

    iget-object p1, p1, Landroid/app/ComponentCaller;->mCallerToken:Landroid/os/IBinder;

    if-ne v1, p1, :cond_16

    const/4 v0, 0x1

    :cond_16
    return v0

    .line 165
    :cond_17
    return v0
.end method

.method public whitelist getPackage()Ljava/lang/String;
    .registers 4

    .line 123
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ComponentCaller;->mActivityToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/app/ComponentCaller;->mCallerToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityClient;->getActivityCallerPackage(Landroid/os/IBinder;Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getUid()I
    .registers 4

    .line 85
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ComponentCaller;->mActivityToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/app/ComponentCaller;->mCallerToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityClient;->getActivityCallerUid(Landroid/os/IBinder;Landroid/os/IBinder;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 173
    nop

    .line 174
    iget-object v0, p0, Landroid/app/ComponentCaller;->mActivityToken:Landroid/os/IBinder;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    .line 175
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroid/app/ComponentCaller;->mCallerToken:Landroid/os/IBinder;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 176
    return v1
.end method
