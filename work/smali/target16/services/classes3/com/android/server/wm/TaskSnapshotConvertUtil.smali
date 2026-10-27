.class public abstract Lcom/android/server/wm/TaskSnapshotConvertUtil;
.super Ljava/lang/Object;
.source "TaskSnapshotConvertUtil.java"


# direct methods
.method public static convertLowResSnapshot(Landroid/window/TaskSnapshot;Landroid/graphics/Bitmap;)Landroid/window/TaskSnapshot;
    .registers 24

    .line 85
    sget-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    move-object/from16 v2, p1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_14

    .line 87
    const-string v0, "WindowManager"

    const-string v1, "Failed to create hardware bitmap"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 90
    :cond_14
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v7

    .line 91
    new-instance v1, Landroid/window/TaskSnapshot;

    invoke-virtual/range {p0 .. p0}, Landroid/window/TaskSnapshot;->getId()J

    move-result-wide v2

    .line 92
    invoke-virtual/range {p0 .. p0}, Landroid/window/TaskSnapshot;->getCaptureTime()J

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Landroid/window/TaskSnapshot;->getTopActivityComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 93
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Landroid/window/TaskSnapshot;->getOrientation()I

    move-result v9

    .line 94
    invoke-virtual/range {p0 .. p0}, Landroid/window/TaskSnapshot;->getRotation()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/window/TaskSnapshot;->getTaskSize()Landroid/graphics/Point;

    move-result-object v11

    .line 95
    invoke-virtual/range {p0 .. p0}, Landroid/window/TaskSnapshot;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Landroid/window/TaskSnapshot;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object v13

    .line 96
    invoke-virtual/range {p0 .. p0}, Landroid/window/TaskSnapshot;->isRealSnapshot()Z

    move-result v15

    .line 97
    invoke-virtual/range {p0 .. p0}, Landroid/window/TaskSnapshot;->getWindowingMode()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Landroid/window/TaskSnapshot;->getAppearance()I

    move-result v17

    .line 98
    invoke-virtual/range {p0 .. p0}, Landroid/window/TaskSnapshot;->isTranslucent()Z

    move-result v18

    invoke-virtual/range {p0 .. p0}, Landroid/window/TaskSnapshot;->hasImeSurface()Z

    move-result v19

    .line 99
    invoke-virtual/range {p0 .. p0}, Landroid/window/TaskSnapshot;->getUiMode()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Landroid/window/TaskSnapshot;->getDensityDpi()I

    move-result v21

    const/4 v14, 0x1

    invoke-direct/range {v1 .. v21}, Landroid/window/TaskSnapshot;-><init>(JJLandroid/content/ComponentName;Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;IILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZIIZZII)V

    .line 100
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v1
.end method

.method public static convertSnapshotToLowRes(Landroid/window/TaskSnapshot;F)Landroid/window/TaskSnapshot;
    .registers 5

    .line 43
    invoke-static {p0}, Lcom/android/server/wm/TaskSnapshotConvertUtil;->copySWBitmap(Landroid/window/TaskSnapshot;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 50
    :cond_8
    invoke-virtual {p0}, Landroid/window/TaskSnapshot;->getHardwareBufferWidth()I

    move-result v1

    .line 51
    invoke-virtual {p0}, Landroid/window/TaskSnapshot;->getHardwareBufferHeight()I

    move-result v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int p1, v2

    const/4 v2, 0x1

    .line 57
    invoke-static {v0, v1, p1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 61
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 62
    invoke-static {p0, p1}, Lcom/android/server/wm/TaskSnapshotConvertUtil;->convertLowResSnapshot(Landroid/window/TaskSnapshot;Landroid/graphics/Bitmap;)Landroid/window/TaskSnapshot;

    move-result-object p0

    .line 63
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object p0
.end method

.method public static copySWBitmap(Landroid/window/TaskSnapshot;)Landroid/graphics/Bitmap;
    .registers 5

    .line 109
    invoke-virtual {p0}, Landroid/window/TaskSnapshot;->getHardwareBufferWidth()I

    move-result v0

    .line 110
    invoke-virtual {p0}, Landroid/window/TaskSnapshot;->getHardwareBufferHeight()I

    move-result v1

    .line 111
    invoke-virtual {p0}, Landroid/window/TaskSnapshot;->getHardwareBufferFormat()I

    move-result v2

    .line 118
    invoke-static {p0}, Lcom/android/server/wm/TaskSnapshotConvertUtil;->mustPersistByHardwareRender(Landroid/window/TaskSnapshot;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 119
    invoke-static {p0}, Lcom/android/server/wm/TaskSnapshotConvertUtil;->copyToSwBitmapReadBack(Landroid/window/TaskSnapshot;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 120
    :cond_17
    invoke-static {v0, v1, v2, p0}, Lcom/android/server/wm/TaskSnapshotConvertUtil;->copyToSwBitmapDirect(IIILandroid/window/TaskSnapshot;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static copyToSwBitmapDirect(IIILandroid/window/TaskSnapshot;)Landroid/graphics/Bitmap;
    .registers 11

    const/4 v0, 0x1

    .line 152
    invoke-static {p0, p1, p2, v0}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    .line 155
    :try_start_5
    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/window/TaskSnapshot;->attachAndQueueBufferWithColorSpace(Landroid/view/Surface;)V

    .line 160
    invoke-virtual {v1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object p3
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_2f

    const/4 v2, 0x0

    .line 161
    const-string v3, "WindowManager"

    if-eqz p3, :cond_7c

    :try_start_15
    invoke-virtual {p3}, Landroid/media/Image;->getPlaneCount()I

    move-result v4

    if-ge v4, v0, :cond_1c

    goto :goto_7c

    .line 166
    :cond_1c
    invoke-virtual {p3}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v4

    .line 167
    array-length v5, v4

    if-eq v5, v0, :cond_33

    .line 168
    const-string p0, "Image reader cannot get plane"

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catchall {:try_start_15 .. :try_end_28} :catchall_31

    .line 191
    :try_start_28
    invoke-virtual {p3}, Landroid/media/Image;->close()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2f

    .line 192
    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    return-object v2

    :catchall_2f
    move-exception p0

    goto :goto_95

    :catchall_31
    move-exception p0

    goto :goto_8a

    :cond_33
    const/4 v0, 0x0

    .line 171
    :try_start_34
    aget-object v2, v4, v0

    .line 172
    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v3

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v4

    .line 173
    invoke-virtual {p3}, Landroid/media/Image;->getWidth()I

    move-result v5

    mul-int/2addr v4, v5

    sub-int/2addr v3, v4

    .line 174
    invoke-virtual {v2}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v4

    div-int/2addr v3, v4

    .line 176
    invoke-virtual {p3}, Landroid/media/Image;->getWidth()I

    move-result v4

    add-int/2addr v4, v3

    .line 177
    invoke-virtual {p3}, Landroid/media/Image;->getHeight()I

    move-result v5

    const/4 v6, 0x4

    if-ne p2, v6, :cond_58

    .line 179
    sget-object p2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_5a

    :cond_58
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 175
    :goto_5a
    invoke-static {v4, v5, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 180
    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    :try_end_65
    .catchall {:try_start_34 .. :try_end_65} :catchall_31

    if-nez v3, :cond_6e

    .line 191
    :try_start_67
    invoke-virtual {p3}, Landroid/media/Image;->close()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_2f

    .line 192
    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    return-object p2

    .line 186
    :cond_6e
    :try_start_6e
    invoke-static {p2, v0, v0, p0, p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 189
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_75
    .catchall {:try_start_6e .. :try_end_75} :catchall_31

    .line 191
    :try_start_75
    invoke-virtual {p3}, Landroid/media/Image;->close()V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_2f

    .line 192
    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    return-object p0

    .line 162
    :cond_7c
    :goto_7c
    :try_start_7c
    const-string p0, "Image reader cannot acquire image"

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catchall {:try_start_7c .. :try_end_81} :catchall_31

    if-eqz p3, :cond_86

    .line 191
    :try_start_83
    invoke-virtual {p3}, Landroid/media/Image;->close()V
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_2f

    .line 192
    :cond_86
    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    return-object v2

    :goto_8a
    if-eqz p3, :cond_94

    .line 160
    :try_start_8c
    invoke-virtual {p3}, Landroid/media/Image;->close()V
    :try_end_8f
    .catchall {:try_start_8c .. :try_end_8f} :catchall_90

    goto :goto_94

    :catchall_90
    move-exception p1

    :try_start_91
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_94
    :goto_94
    throw p0
    :try_end_95
    .catchall {:try_start_91 .. :try_end_95} :catchall_2f

    :goto_95
    if-eqz v1, :cond_9f

    .line 152
    :try_start_97
    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V
    :try_end_9a
    .catchall {:try_start_97 .. :try_end_9a} :catchall_9b

    goto :goto_9f

    :catchall_9b
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9f
    :goto_9f
    throw p0
.end method

.method public static copyToSwBitmapReadBack(Landroid/window/TaskSnapshot;)Landroid/graphics/Bitmap;
    .registers 5

    .line 126
    invoke-virtual {p0}, Landroid/window/TaskSnapshot;->wrapToBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 v0, 0x0

    .line 131
    const-string v1, "WindowManager"

    if-nez p0, :cond_f

    .line 132
    const-string p0, "Invalid task snapshot hw bitmap"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 136
    :cond_f
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_42

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bitmap conversion from (config="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", isMutable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ") to (config=ARGB_8888, isMutable=false) failed."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 138
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 143
    :cond_42
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v2
.end method

.method public static mustPersistByHardwareRender(Landroid/window/TaskSnapshot;)Z
    .registers 5

    .line 71
    invoke-virtual {p0}, Landroid/window/TaskSnapshot;->getHardwareBufferFormat()I

    move-result v0

    .line 72
    invoke-virtual {p0}, Landroid/window/TaskSnapshot;->hasProtectedContent()Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eq v0, v2, :cond_e

    if-ne v0, v3, :cond_19

    .line 79
    :cond_e
    invoke-virtual {p0}, Landroid/window/TaskSnapshot;->isRealSnapshot()Z

    move-result p0

    if-eqz p0, :cond_19

    if-eqz v1, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x0

    return p0

    :cond_19
    :goto_19
    return v3
.end method
