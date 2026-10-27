.class final Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;
.super Ljava/lang/Object;
.source "MediaFocusControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/MediaFocusControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ForgetFadeUidInfo"
.end annotation


# instance fields
.field private final mUid:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmUid(Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;)I
    .registers 1

    iget p0, p0, Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;->mUid:I

    return p0
.end method

.method constructor <init>(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 1461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1462
    iput p1, p0, Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;->mUid:I

    .line 1463
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 1467
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1468
    return v0

    .line 1470
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_1d

    .line 1473
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;

    .line 1474
    .local v2, "f":Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;
    iget v3, v2, Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;->mUid:I

    iget v4, p0, Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;->mUid:I

    if-eq v3, v4, :cond_1c

    .line 1475
    return v1

    .line 1477
    :cond_1c
    return v0

    .line 1471
    .end local v2    # "f":Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;
    :cond_1d
    :goto_1d
    return v1
.end method

.method public hashCode()I
    .registers 2

    .line 1482
    iget v0, p0, Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;->mUid:I

    return v0
.end method
