.class public final Landroid/content/pm/RegisteredServicesCache$ServiceInfoCachesToken;
.super Ljava/lang/Object;
.source "RegisteredServicesCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/RegisteredServicesCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceInfoCachesToken"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final blacklist mRegisteredServicesCache:Landroid/content/pm/RegisteredServicesCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/pm/RegisteredServicesCache<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final blacklist mUserId:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/pm/RegisteredServicesCache;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/RegisteredServicesCache<",
            "TV;>;I)V"
        }
    .end annotation

    .line 973
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 974
    iput-object p1, p0, Landroid/content/pm/RegisteredServicesCache$ServiceInfoCachesToken;->mRegisteredServicesCache:Landroid/content/pm/RegisteredServicesCache;

    .line 975
    iput p2, p0, Landroid/content/pm/RegisteredServicesCache$ServiceInfoCachesToken;->mUserId:I

    .line 976
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 980
    instance-of v0, p1, Landroid/content/pm/RegisteredServicesCache$ServiceInfoCachesToken;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 981
    check-cast p1, Landroid/content/pm/RegisteredServicesCache$ServiceInfoCachesToken;

    .line 982
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache$ServiceInfoCachesToken;->mRegisteredServicesCache:Landroid/content/pm/RegisteredServicesCache;

    iget-object v2, p1, Landroid/content/pm/RegisteredServicesCache$ServiceInfoCachesToken;->mRegisteredServicesCache:Landroid/content/pm/RegisteredServicesCache;

    if-ne v0, v2, :cond_14

    iget v0, p0, Landroid/content/pm/RegisteredServicesCache$ServiceInfoCachesToken;->mUserId:I

    iget p1, p1, Landroid/content/pm/RegisteredServicesCache$ServiceInfoCachesToken;->mUserId:I

    if-ne v0, p1, :cond_14

    const/4 v1, 0x1

    :cond_14
    return v1

    .line 985
    :cond_15
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 990
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache$ServiceInfoCachesToken;->mRegisteredServicesCache:Landroid/content/pm/RegisteredServicesCache;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache$ServiceInfoCachesToken;->mRegisteredServicesCache:Landroid/content/pm/RegisteredServicesCache;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 991
    :goto_c
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/content/pm/RegisteredServicesCache$ServiceInfoCachesToken;->mUserId:I

    add-int/2addr v0, v1

    .line 992
    return v0
.end method
