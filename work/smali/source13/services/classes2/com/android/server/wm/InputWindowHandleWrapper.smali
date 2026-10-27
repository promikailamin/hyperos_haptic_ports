.class Lcom/android/server/wm/InputWindowHandleWrapper;
.super Ljava/lang/Object;
.source "InputWindowHandleWrapper.java"


# instance fields
.field private mChanged:Z

.field private final mHandle:Landroid/view/InputWindowHandle;


# direct methods
.method constructor <init>(Landroid/view/InputWindowHandle;)V
    .registers 3
    .param p1, "handle"    # Landroid/view/InputWindowHandle;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 48
    iput-object p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    .line 49
    return-void
.end method


# virtual methods
.method applyChangesToSurface(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "sc"    # Landroid/view/SurfaceControl;

    .line 64
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 66
    return-void
.end method

.method clearTouchableRegion()V
    .registers 2

    .line 180
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object v0, v0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 181
    return-void

    .line 183
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object v0, v0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 185
    return-void
.end method

.method forceChange()V
    .registers 2

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 61
    return-void
.end method

.method getDisplayId()I
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v0, v0, Landroid/view/InputWindowHandle;->displayId:I

    return v0
.end method

.method getInputApplicationHandle()Landroid/view/InputApplicationHandle;
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object v0, v0, Landroid/view/InputWindowHandle;->inputApplicationHandle:Landroid/view/InputApplicationHandle;

    return-object v0
.end method

.method hasWallpaper()Z
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v0, v0, Landroid/view/InputWindowHandle;->inputConfig:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method isChanged()Z
    .registers 2

    .line 56
    iget-boolean v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return v0
.end method

.method isFocusable()Z
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v0, v0, Landroid/view/InputWindowHandle;->inputConfig:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method isPaused()Z
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v0, v0, Landroid/view/InputWindowHandle;->inputConfig:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method isTrustedOverlay()Z
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v0, v0, Landroid/view/InputWindowHandle;->inputConfig:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method isVisible()Z
    .registers 3

    .line 95
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v0, v0, Landroid/view/InputWindowHandle;->inputConfig:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method setDispatchingTimeoutMillis(J)V
    .registers 5
    .param p1, "timeout"    # J

    .line 164
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-wide v0, v0, Landroid/view/InputWindowHandle;->dispatchingTimeoutMillis:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_9

    .line 165
    return-void

    .line 167
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iput-wide p1, v0, Landroid/view/InputWindowHandle;->dispatchingTimeoutMillis:J

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 169
    return-void
.end method

.method setDisplayId(I)V
    .registers 3
    .param p1, "displayId"    # I

    .line 253
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v0, v0, Landroid/view/InputWindowHandle;->displayId:I

    if-ne v0, p1, :cond_7

    .line 254
    return-void

    .line 256
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iput p1, v0, Landroid/view/InputWindowHandle;->displayId:I

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 258
    return-void
.end method

.method setFocusable(Z)V
    .registers 5
    .param p1, "focusable"    # Z

    .line 188
    invoke-virtual {p0}, Lcom/android/server/wm/InputWindowHandleWrapper;->isFocusable()Z

    move-result v0

    if-ne v0, p1, :cond_7

    .line 189
    return-void

    .line 191
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    const/4 v1, 0x4

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/InputWindowHandle;->setInputConfig(IZ)V

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 193
    return-void
.end method

.method setFrame(IIII)V
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 271
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v0, v0, Landroid/view/InputWindowHandle;->frameLeft:I

    if-ne v0, p1, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v0, v0, Landroid/view/InputWindowHandle;->frameTop:I

    if-ne v0, p2, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v0, v0, Landroid/view/InputWindowHandle;->frameRight:I

    if-ne v0, p3, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v0, v0, Landroid/view/InputWindowHandle;->frameBottom:I

    if-ne v0, p4, :cond_19

    .line 273
    return-void

    .line 275
    :cond_19
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iput p1, v0, Landroid/view/InputWindowHandle;->frameLeft:I

    .line 276
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iput p2, v0, Landroid/view/InputWindowHandle;->frameTop:I

    .line 277
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iput p3, v0, Landroid/view/InputWindowHandle;->frameRight:I

    .line 278
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iput p4, v0, Landroid/view/InputWindowHandle;->frameBottom:I

    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 280
    return-void
.end method

.method setHasWallpaper(Z)V
    .registers 4
    .param p1, "hasWallpaper"    # Z

    .line 204
    invoke-virtual {p0}, Lcom/android/server/wm/InputWindowHandleWrapper;->hasWallpaper()Z

    move-result v0

    if-ne v0, p1, :cond_7

    .line 205
    return-void

    .line 207
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    const/16 v1, 0x20

    invoke-virtual {v0, v1, p1}, Landroid/view/InputWindowHandle;->setInputConfig(IZ)V

    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 210
    return-void
.end method

.method setInputApplicationHandle(Landroid/view/InputApplicationHandle;)V
    .registers 3
    .param p1, "handle"    # Landroid/view/InputApplicationHandle;

    .line 124
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object v0, v0, Landroid/view/InputWindowHandle;->inputApplicationHandle:Landroid/view/InputApplicationHandle;

    if-ne v0, p1, :cond_7

    .line 125
    return-void

    .line 127
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iput-object p1, v0, Landroid/view/InputWindowHandle;->inputApplicationHandle:Landroid/view/InputApplicationHandle;

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 129
    return-void
.end method

.method setInputConfigMasked(II)V
    .registers 7
    .param p1, "inputConfig"    # I
    .param p2, "mask"    # I

    .line 323
    and-int v0, p1, p2

    .line 324
    .local v0, "inputConfigMasked":I
    iget-object v1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v1, v1, Landroid/view/InputWindowHandle;->inputConfig:I

    and-int/2addr v1, p2

    if-ne v0, v1, :cond_a

    .line 325
    return-void

    .line 327
    :cond_a
    iget-object v1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v2, v1, Landroid/view/InputWindowHandle;->inputConfig:I

    not-int v3, p2

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/InputWindowHandle;->inputConfig:I

    .line 328
    iget-object v1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v2, v1, Landroid/view/InputWindowHandle;->inputConfig:I

    or-int/2addr v2, v0

    iput v2, v1, Landroid/view/InputWindowHandle;->inputConfig:I

    .line 329
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 330
    return-void
.end method

.method setIsNeedMiuiEmbeddedEventMapping(Z)V
    .registers 3
    .param p1, "isNeedMiuiMwEventMapping"    # Z

    .line 115
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-boolean v0, v0, Landroid/view/InputWindowHandle;->isNeedMiuiEmbeddedEventMapping:Z

    if-ne v0, p1, :cond_7

    .line 116
    return-void

    .line 118
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iput-boolean p1, v0, Landroid/view/InputWindowHandle;->isNeedMiuiEmbeddedEventMapping:Z

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 120
    return-void
.end method

.method setLayoutParamsFlags(I)V
    .registers 3
    .param p1, "flags"    # I

    .line 148
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v0, v0, Landroid/view/InputWindowHandle;->layoutParamsFlags:I

    if-ne v0, p1, :cond_7

    .line 149
    return-void

    .line 151
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iput p1, v0, Landroid/view/InputWindowHandle;->layoutParamsFlags:I

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 153
    return-void
.end method

.method setLayoutParamsType(I)V
    .registers 3
    .param p1, "type"    # I

    .line 156
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v0, v0, Landroid/view/InputWindowHandle;->layoutParamsType:I

    if-ne v0, p1, :cond_7

    .line 157
    return-void

    .line 159
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iput p1, v0, Landroid/view/InputWindowHandle;->layoutParamsType:I

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 161
    return-void
.end method

.method setMiFlags(I)V
    .registers 3
    .param p1, "miFlags"    # I

    .line 262
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v0, v0, Landroid/view/InputWindowHandle;->miFlags:I

    if-ne v0, p1, :cond_7

    .line 263
    return-void

    .line 265
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iput p1, v0, Landroid/view/InputWindowHandle;->miFlags:I

    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 267
    return-void
.end method

.method setMiuiEmbeddedHotRegion(Landroid/graphics/Region;)V
    .registers 3
    .param p1, "region"    # Landroid/graphics/Region;

    .line 107
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object v0, v0, Landroid/view/InputWindowHandle;->miuiEmbeddedHotRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 108
    return-void

    .line 110
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object v0, v0, Landroid/view/InputWindowHandle;->miuiEmbeddedHotRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 112
    return-void
.end method

.method setMiuiEmbeddedMidRegion(Landroid/graphics/Region;)V
    .registers 3
    .param p1, "region"    # Landroid/graphics/Region;

    .line 99
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object v0, v0, Landroid/view/InputWindowHandle;->miuiEmbeddedMidRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 100
    return-void

    .line 102
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object v0, v0, Landroid/view/InputWindowHandle;->miuiEmbeddedMidRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 104
    return-void
.end method

.method setName(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object v0, v0, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 141
    return-void

    .line 143
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iput-object p1, v0, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 145
    return-void
.end method

.method setOwnerPid(I)V
    .registers 3
    .param p1, "pid"    # I

    .line 229
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v0, v0, Landroid/view/InputWindowHandle;->ownerPid:I

    if-ne v0, p1, :cond_7

    .line 230
    return-void

    .line 232
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iput p1, v0, Landroid/view/InputWindowHandle;->ownerPid:I

    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 234
    return-void
.end method

.method setOwnerUid(I)V
    .registers 3
    .param p1, "uid"    # I

    .line 237
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v0, v0, Landroid/view/InputWindowHandle;->ownerUid:I

    if-ne v0, p1, :cond_7

    .line 238
    return-void

    .line 240
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iput p1, v0, Landroid/view/InputWindowHandle;->ownerUid:I

    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 242
    return-void
.end method

.method setPackageName(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 245
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object v0, v0, Landroid/view/InputWindowHandle;->packageName:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 246
    return-void

    .line 248
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iput-object p1, v0, Landroid/view/InputWindowHandle;->packageName:Ljava/lang/String;

    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 250
    return-void
.end method

.method setPaused(Z)V
    .registers 4
    .param p1, "paused"    # Z

    .line 213
    invoke-virtual {p0}, Lcom/android/server/wm/InputWindowHandleWrapper;->isPaused()Z

    move-result v0

    if-ne v0, p1, :cond_7

    .line 214
    return-void

    .line 216
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    const/16 v1, 0x80

    invoke-virtual {v0, v1, p1}, Landroid/view/InputWindowHandle;->setInputConfig(IZ)V

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 218
    return-void
.end method

.method setReplaceTouchableRegionWithCrop(Z)V
    .registers 3
    .param p1, "replace"    # Z

    .line 307
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-boolean v0, v0, Landroid/view/InputWindowHandle;->replaceTouchableRegionWithCrop:Z

    if-ne v0, p1, :cond_7

    .line 308
    return-void

    .line 310
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iput-boolean p1, v0, Landroid/view/InputWindowHandle;->replaceTouchableRegionWithCrop:Z

    .line 311
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 312
    return-void
.end method

.method setScaleFactor(F)V
    .registers 3
    .param p1, "scale"    # F

    .line 291
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v0, v0, Landroid/view/InputWindowHandle;->scaleFactor:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_9

    .line 292
    return-void

    .line 294
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iput p1, v0, Landroid/view/InputWindowHandle;->scaleFactor:F

    .line 295
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 296
    return-void
.end method

.method setSurfaceInset(I)V
    .registers 3
    .param p1, "inset"    # I

    .line 283
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v0, v0, Landroid/view/InputWindowHandle;->surfaceInset:I

    if-ne v0, p1, :cond_7

    .line 284
    return-void

    .line 286
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iput p1, v0, Landroid/view/InputWindowHandle;->surfaceInset:I

    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 288
    return-void
.end method

.method setToken(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 132
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object v0, v0, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    if-ne v0, p1, :cond_7

    .line 133
    return-void

    .line 135
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iput-object p1, v0, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 137
    return-void
.end method

.method setTouchOcclusionMode(I)V
    .registers 3
    .param p1, "mode"    # I

    .line 196
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v0, v0, Landroid/view/InputWindowHandle;->touchOcclusionMode:I

    if-ne v0, p1, :cond_7

    .line 197
    return-void

    .line 199
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iput p1, v0, Landroid/view/InputWindowHandle;->touchOcclusionMode:I

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 201
    return-void
.end method

.method setTouchableRegion(Landroid/graphics/Region;)V
    .registers 3
    .param p1, "region"    # Landroid/graphics/Region;

    .line 172
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object v0, v0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 173
    return-void

    .line 175
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object v0, v0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 177
    return-void
.end method

.method setTouchableRegionCrop(Landroid/view/SurfaceControl;)V
    .registers 3
    .param p1, "bounds"    # Landroid/view/SurfaceControl;

    .line 299
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object v0, v0, Landroid/view/InputWindowHandle;->touchableRegionSurfaceControl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_b

    .line 300
    return-void

    .line 302
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    invoke-virtual {v0, p1}, Landroid/view/InputWindowHandle;->setTouchableRegionCrop(Landroid/view/SurfaceControl;)V

    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 304
    return-void
.end method

.method setTrustedOverlay(Z)V
    .registers 4
    .param p1, "trustedOverlay"    # Z

    .line 221
    invoke-virtual {p0}, Lcom/android/server/wm/InputWindowHandleWrapper;->isTrustedOverlay()Z

    move-result v0

    if-ne v0, p1, :cond_7

    .line 222
    return-void

    .line 224
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    const/16 v1, 0x100

    invoke-virtual {v0, v1, p1}, Landroid/view/InputWindowHandle;->setInputConfig(IZ)V

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 226
    return-void
.end method

.method setWindowToken(Landroid/view/IWindow;)V
    .registers 3
    .param p1, "windowToken"    # Landroid/view/IWindow;

    .line 315
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    invoke-virtual {v0}, Landroid/view/InputWindowHandle;->getWindow()Landroid/view/IWindow;

    move-result-object v0

    if-ne v0, p1, :cond_9

    .line 316
    return-void

    .line 318
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    invoke-virtual {v0, p1}, Landroid/view/InputWindowHandle;->setWindowToken(Landroid/view/IWindow;)V

    .line 319
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 320
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", changed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
