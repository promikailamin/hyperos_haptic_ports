.class Landroid/app/PropertyInvalidatedCache$NonceLocal;
.super Landroid/app/PropertyInvalidatedCache$NonceHandler;
.source "PropertyInvalidatedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PropertyInvalidatedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NonceLocal"
.end annotation


# instance fields
.field private blacklist mValue:J


# direct methods
.method constructor blacklist <init>(Landroid/app/PropertyInvalidatedCache$CacheKey;)V
    .registers 2

    .line 1063
    invoke-direct {p0, p1}, Landroid/app/PropertyInvalidatedCache$NonceHandler;-><init>(Landroid/app/PropertyInvalidatedCache$CacheKey;)V

    .line 1064
    return-void
.end method


# virtual methods
.method blacklist getNonceInternal()J
    .registers 3

    .line 1068
    iget-wide v0, p0, Landroid/app/PropertyInvalidatedCache$NonceLocal;->mShadowNonce:J

    return-wide v0
.end method

.method blacklist setNonceInternal(J)V
    .registers 3

    .line 1073
    iput-wide p1, p0, Landroid/app/PropertyInvalidatedCache$NonceLocal;->mShadowNonce:J

    .line 1074
    return-void
.end method
