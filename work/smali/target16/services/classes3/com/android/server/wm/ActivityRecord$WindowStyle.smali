.class public Lcom/android/server/wm/ActivityRecord$WindowStyle;
.super Ljava/lang/Object;
.source "ActivityRecord.java"


# instance fields
.field public final mFlags:I

.field public final mSplashScreenBehavior:I


# direct methods
.method public constructor <init>(Landroid/content/res/TypedArray;)V
    .registers 5

    .line 9606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 9608
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    const/4 v2, 0x4

    .line 9611
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_12

    or-int/lit8 v0, v0, 0x2

    :cond_12
    const/16 v2, 0xe

    .line 9614
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_1c

    or-int/lit8 v0, v0, 0x4

    :cond_1c
    const/16 v2, 0xa

    .line 9617
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_26

    or-int/lit8 v0, v0, 0x8

    :cond_26
    const/16 v2, 0xc

    .line 9620
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_30

    or-int/lit8 v0, v0, 0x10

    :cond_30
    const/16 v2, 0x3f

    .line 9623
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_3a

    or-int/lit8 v0, v0, 0x20

    .line 9626
    :cond_3a
    iput v0, p0, Lcom/android/server/wm/ActivityRecord$WindowStyle;->mFlags:I

    const/16 v0, 0x3d

    .line 9627
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/ActivityRecord$WindowStyle;->mSplashScreenBehavior:I

    return-void
.end method


# virtual methods
.method public disablePreview()Z
    .registers 1

    .line 9647
    iget p0, p0, Lcom/android/server/wm/ActivityRecord$WindowStyle;->mFlags:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public isFloating()Z
    .registers 1

    .line 9635
    iget p0, p0, Lcom/android/server/wm/ActivityRecord$WindowStyle;->mFlags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public isTranslucent()Z
    .registers 2

    .line 9631
    iget p0, p0, Lcom/android/server/wm/ActivityRecord$WindowStyle;->mFlags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public noDisplay()Z
    .registers 1

    .line 9643
    iget p0, p0, Lcom/android/server/wm/ActivityRecord$WindowStyle;->mFlags:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public optOutEdgeToEdge()Z
    .registers 1

    .line 9651
    iget p0, p0, Lcom/android/server/wm/ActivityRecord$WindowStyle;->mFlags:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public showWallpaper()Z
    .registers 1

    .line 9639
    iget p0, p0, Lcom/android/server/wm/ActivityRecord$WindowStyle;->mFlags:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method
