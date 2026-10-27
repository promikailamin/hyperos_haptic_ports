.class public Lcom/android/server/wm/AppSnapshotLoader;
.super Ljava/lang/Object;
.source "AppSnapshotLoader.java"


# instance fields
.field public final mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V
    .registers 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/server/wm/AppSnapshotLoader;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    return-void
.end method


# virtual methods
.method public getLegacySnapshotConfig(IFZZ)Lcom/android/server/wm/AppSnapshotLoader$PreRLegacySnapshotConfig;
    .registers 9

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_6

    move p1, p0

    goto :goto_7

    :cond_6
    move p1, v0

    :goto_7
    if-nez p1, :cond_b

    const/4 p0, 0x0

    return-object p0

    :cond_b
    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    if-eqz p1, :cond_2b

    .line 103
    invoke-static {p2, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_2b

    .line 107
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result p1

    if-eqz p1, :cond_22

    if-nez p3, :cond_22

    const p2, 0x3f19999a    # 0.6f

    goto :goto_3a

    :cond_22
    if-eqz p4, :cond_26

    move p2, v1

    goto :goto_29

    :cond_26
    const/high16 p0, 0x3f800000    # 1.0f

    move p2, p0

    :cond_29
    :goto_29
    move p0, v0

    goto :goto_3a

    :cond_2b
    if-eqz p1, :cond_38

    .line 118
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result p1

    if-eqz p1, :cond_34

    goto :goto_3a

    :cond_34
    if-eqz p4, :cond_29

    mul-float/2addr p2, v1

    goto :goto_29

    :cond_38
    move p0, v0

    move p2, v2

    .line 127
    :goto_3a
    new-instance p1, Lcom/android/server/wm/AppSnapshotLoader$PreRLegacySnapshotConfig;

    invoke-direct {p1, p2, p0}, Lcom/android/server/wm/AppSnapshotLoader$PreRLegacySnapshotConfig;-><init>(FZ)V

    return-object p1
.end method

.method public loadTask(IIZ)Landroid/window/TaskSnapshot;
    .registers 32

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v15, p3

    .line 143
    const-string v3, "WindowManager"

    iget-object v4, v0, Lcom/android/server/wm/AppSnapshotLoader;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    invoke-virtual {v4, v1, v2}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getProtoFile(II)Ljava/io/File;

    move-result-object v4

    .line 144
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    const/16 v23, 0x0

    if-nez v5, :cond_19

    return-object v23

    .line 148
    :cond_19
    :try_start_19
    invoke-virtual {v4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    invoke-static {v4}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v4

    .line 149
    invoke-static {v4}, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->parseFrom([B)Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;

    move-result-object v4

    .line 150
    iget-object v5, v0, Lcom/android/server/wm/AppSnapshotLoader;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    .line 151
    invoke-virtual {v5, v1, v2}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getHighResolutionBitmapFile(II)Ljava/io/File;

    move-result-object v5

    .line 153
    iget v6, v4, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->taskWidth:I

    iget v7, v4, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->legacyScale:F

    .line 154
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    .line 153
    invoke-virtual {v0, v6, v7, v8, v15}, Lcom/android/server/wm/AppSnapshotLoader;->getLegacySnapshotConfig(IFZZ)Lcom/android/server/wm/AppSnapshotLoader$PreRLegacySnapshotConfig;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_43

    .line 156
    iget-boolean v8, v6, Lcom/android/server/wm/AppSnapshotLoader$PreRLegacySnapshotConfig;->mForceLoadReducedJpeg:Z

    if-eqz v8, :cond_43

    const/4 v8, 0x1

    goto :goto_44

    :catch_40
    move-object v0, v3

    goto/16 :goto_152

    :cond_43
    move v8, v7

    :goto_44
    if-nez v15, :cond_48

    if-eqz v8, :cond_4e

    .line 159
    :cond_48
    iget-object v5, v0, Lcom/android/server/wm/AppSnapshotLoader;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    invoke-virtual {v5, v1, v2}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getLowResolutionBitmapFile(II)Ljava/io/File;

    move-result-object v5

    .line 162
    :cond_4e
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_55

    return-object v23

    .line 166
    :cond_55
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 168
    iget-object v0, v0, Lcom/android/server/wm/AppSnapshotLoader;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    .line 167
    invoke-virtual {v0}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->use16BitFormat()Z

    move-result v0

    if-eqz v0, :cond_69

    iget-boolean v0, v4, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isTranslucent:Z

    if-nez v0, :cond_69

    .line 168
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_6b

    :cond_69
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_6b
    iput-object v0, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 169
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_90

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load bitmap: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v23

    .line 175
    :cond_90
    sget-object v2, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v2, v7}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v24

    .line 176
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    if-nez v24, :cond_b4

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create hardware bitmap: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v23

    .line 181
    :cond_b4
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v8

    .line 182
    iget-object v0, v4, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->topActivityComponent:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v6, :cond_d9

    .line 187
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, v6, Lcom/android/server/wm/AppSnapshotLoader$PreRLegacySnapshotConfig;->mScale:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 188
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v5, v6, Lcom/android/server/wm/AppSnapshotLoader$PreRLegacySnapshotConfig;->mScale:F

    div-float/2addr v2, v5

    float-to-int v2, v2

    .line 189
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v0, v2}, Landroid/graphics/Point;-><init>(II)V

    :goto_d7
    move-object v12, v5

    goto :goto_e3

    .line 191
    :cond_d9
    new-instance v5, Landroid/graphics/Point;

    iget v0, v4, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->taskWidth:I

    iget v2, v4, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->taskHeight:I

    invoke-direct {v5, v0, v2}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_d7

    .line 193
    :goto_e3
    iget v0, v4, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->densityDpi:I

    if-gtz v0, :cond_ee

    .line 195
    const-string v0, "Loaded snapshot density is invalid. Using default device density."

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    :cond_ee
    move/from16 v22, v0

    .line 199
    new-instance v2, Landroid/window/TaskSnapshot;

    iget-wide v5, v4, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->id:J

    move-wide v9, v5

    .line 200
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v5

    move-wide v10, v9

    .line 201
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v9

    move-wide v13, v10

    iget v10, v4, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->orientation:I

    iget v11, v4, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->rotation:I

    move-wide/from16 v16, v13

    new-instance v13, Landroid/graphics/Rect;

    iget v0, v4, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetLeft:I

    iget v14, v4, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetTop:I

    move-object/from16 p0, v2

    iget v2, v4, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetRight:I
    :try_end_10f
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_10f} :catch_40

    move-object/from16 v18, v3

    :try_start_111
    iget v3, v4, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetBottom:I

    invoke-direct {v13, v0, v14, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v14, Landroid/graphics/Rect;

    iget v0, v4, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetLeft:I

    iget v2, v4, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetTop:I

    iget v3, v4, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetRight:I

    move-wide/from16 v19, v5

    iget v5, v4, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetBottom:I

    invoke-direct {v14, v0, v2, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-boolean v0, v4, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isRealSnapshot:Z

    iget v2, v4, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->windowingMode:I

    iget v3, v4, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->appearance:I

    iget-boolean v5, v4, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isTranslucent:Z

    iget v4, v4, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->uiMode:I
    :try_end_12f
    .catch Ljava/io/IOException; {:try_start_111 .. :try_end_12f} :catch_150

    move-wide/from16 v25, v19

    move/from16 v19, v5

    move-wide/from16 v5, v25

    const/16 v20, 0x0

    move/from16 v21, v4

    move/from16 v25, v2

    move-object/from16 v2, p0

    move-wide/from16 v26, v16

    move/from16 v16, v0

    move/from16 v17, v25

    move-object/from16 v0, v18

    move/from16 v18, v3

    move-wide/from16 v3, v26

    :try_start_149
    invoke-direct/range {v2 .. v22}, Landroid/window/TaskSnapshot;-><init>(JJLandroid/content/ComponentName;Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;IILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZIIZZII)V

    .line 208
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_14f
    .catch Ljava/io/IOException; {:try_start_149 .. :try_end_14f} :catch_152

    return-object v2

    :catch_150
    move-object/from16 v0, v18

    .line 211
    :catch_152
    :goto_152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load task snapshot data for Id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v23
.end method
