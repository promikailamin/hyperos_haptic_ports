.class public Lcom/android/server/wm/LaunchParamsController$LaunchParams;
.super Ljava/lang/Object;
.source "LaunchParamsController.java"


# instance fields
.field public final mAppBounds:Landroid/graphics/Rect;

.field public final mBounds:Landroid/graphics/Rect;

.field public mBoundsSet:Z

.field public mNeedsSafeRegionBounds:Ljava/lang/Boolean;

.field public mPreferredRootTask:Lcom/android/server/wm/Task;

.field public mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

.field public mWindowingMode:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 193
    iput-boolean v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBoundsSet:Z

    .line 195
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mAppBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 211
    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mNeedsSafeRegionBounds:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_5e

    .line 270
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_12

    goto :goto_5e

    .line 272
    :cond_12
    check-cast p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 274
    iget-object v1, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget-object v2, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eq v1, v2, :cond_1b

    return v0

    .line 275
    :cond_1b
    iget-object v1, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredRootTask:Lcom/android/server/wm/Task;

    iget-object v2, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredRootTask:Lcom/android/server/wm/Task;

    if-eq v1, v2, :cond_22

    return v0

    .line 276
    :cond_22
    iget v1, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    iget v2, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    if-eq v1, v2, :cond_29

    return v0

    .line 277
    :cond_29
    iget-object v1, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mAppBounds:Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    return v0

    .line 278
    :cond_34
    iget-object v1, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mNeedsSafeRegionBounds:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mNeedsSafeRegionBounds:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    return v0

    .line 279
    :cond_3f
    iget-boolean v1, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBoundsSet:Z

    iget-boolean v2, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBoundsSet:Z

    if-eq v1, v2, :cond_46

    return v0

    .line 280
    :cond_46
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_57

    iget-object p0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object p1, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_57
    iget-object p0, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    return p0

    :cond_5e
    :goto_5e
    return v0
.end method

.method public hasPreferredTaskDisplayArea()Z
    .registers 1

    .line 264
    iget-object p0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public hasWindowingMode()Z
    .registers 1

    .line 260
    iget p0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .registers 4

    .line 285
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->hashCode()I

    move-result v0

    goto :goto_11

    :cond_10
    move v0, v1

    :goto_11
    mul-int/lit8 v0, v0, 0x1f

    .line 286
    iget-boolean v2, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBoundsSet:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 287
    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 288
    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v2, :cond_2e

    .line 289
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2f

    :cond_2e
    move v2, v1

    :goto_2f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 290
    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredRootTask:Lcom/android/server/wm/Task;

    if-eqz v2, :cond_3b

    .line 291
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3c

    :cond_3b
    move v2, v1

    :goto_3c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 292
    iget v2, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 293
    iget-object p0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mNeedsSafeRegionBounds:Ljava/lang/Boolean;

    if-eqz p0, :cond_50

    .line 294
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    :cond_50
    add-int/2addr v0, v1

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 253
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBoundsSet:Z

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredRootTask:Lcom/android/server/wm/Task;

    if-nez v0, :cond_26

    iget v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    if-nez v0, :cond_26

    iget-object p0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mNeedsSafeRegionBounds:Ljava/lang/Boolean;

    if-nez p0, :cond_26

    const/4 p0, 0x1

    return p0

    :cond_26
    const/4 p0, 0x0

    return p0
.end method

.method public merge(Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V
    .registers 4

    .line 238
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 239
    iget-boolean v0, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBoundsSet:Z

    iput-boolean v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBoundsSet:Z

    .line 240
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mAppBounds:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 241
    iget-object v0, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 242
    iget-object v0, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredRootTask:Lcom/android/server/wm/Task;

    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredRootTask:Lcom/android/server/wm/Task;

    .line 243
    iget v0, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    iput v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 246
    iget-object p1, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mNeedsSafeRegionBounds:Ljava/lang/Boolean;

    if-eqz p1, :cond_24

    .line 247
    iput-object p1, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mNeedsSafeRegionBounds:Ljava/lang/Boolean;

    :cond_24
    return-void
.end method

.method public reset()V
    .registers 3

    .line 216
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v0, 0x0

    .line 217
    iput-boolean v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBoundsSet:Z

    .line 218
    iget-object v1, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v1, 0x0

    .line 219
    iput-object v1, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 220
    iput-object v1, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredRootTask:Lcom/android/server/wm/Task;

    .line 221
    iput v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 222
    iput-object v1, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mNeedsSafeRegionBounds:Ljava/lang/Boolean;

    return-void
.end method

.method public set(Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V
    .registers 4

    .line 227
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 228
    iget-boolean v0, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBoundsSet:Z

    iput-boolean v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBoundsSet:Z

    .line 229
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mAppBounds:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 230
    iget-object v0, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 231
    iget-object v0, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredRootTask:Lcom/android/server/wm/Task;

    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredRootTask:Lcom/android/server/wm/Task;

    .line 232
    iget v0, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    iput v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 233
    iget-object p1, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mNeedsSafeRegionBounds:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mNeedsSafeRegionBounds:Ljava/lang/Boolean;

    return-void
.end method
