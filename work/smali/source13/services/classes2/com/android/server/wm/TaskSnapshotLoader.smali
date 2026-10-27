.class Lcom/android/server/wm/TaskSnapshotLoader;
.super Ljava/lang/Object;
.source "TaskSnapshotLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskSnapshotLoader$PreRLegacySnapshotConfig;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private final mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

.field private final reduceResolution:Z


# direct methods
.method constructor <init>(Lcom/android/server/wm/TaskSnapshotPersister;)V
    .registers 4
    .param p1, "persister"    # Lcom/android/server/wm/TaskSnapshotPersister;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string/jumbo v0, "persist.tasksnapshot.force_reduce_resolution"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotLoader;->reduceResolution:Z

    .line 56
    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotLoader;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    .line 57
    return-void
.end method


# virtual methods
.method getLegacySnapshotConfig(IFZZ)Lcom/android/server/wm/TaskSnapshotLoader$PreRLegacySnapshotConfig;
    .registers 11
    .param p1, "taskWidth"    # I
    .param p2, "legacyScale"    # F
    .param p3, "highResFileExists"    # Z
    .param p4, "loadLowResolutionBitmap"    # Z

    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, "preRLegacyScale":F
    const/4 v1, 0x0

    .line 98
    .local v1, "forceLoadReducedJpeg":Z
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_8

    move v4, v2

    goto :goto_9

    :cond_8
    move v4, v3

    .line 99
    .local v4, "isPreRLegacySnapshot":Z
    :goto_9
    if-nez v4, :cond_d

    .line 100
    const/4 v2, 0x0

    return-object v2

    .line 102
    :cond_d
    if-eqz v4, :cond_17

    const/4 v5, 0x0

    .line 103
    invoke-static {p2, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-nez v5, :cond_17

    goto :goto_18

    :cond_17
    move v2, v3

    .line 105
    .local v2, "isPreQLegacyProto":Z
    :goto_18
    const/high16 v3, 0x3f000000    # 0.5f

    if-eqz v2, :cond_30

    .line 107
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v5

    if-eqz v5, :cond_29

    if-nez p3, :cond_29

    .line 109
    const v0, 0x3f19999a    # 0.6f

    .line 111
    const/4 v1, 0x1

    goto :goto_46

    .line 114
    :cond_29
    if-eqz p4, :cond_2c

    goto :goto_2e

    :cond_2c
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_2e
    move v0, v3

    goto :goto_46

    .line 116
    :cond_30
    if-eqz v4, :cond_46

    .line 118
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v5

    if-nez v5, :cond_44

    iget-boolean v5, p0, Lcom/android/server/wm/TaskSnapshotLoader;->reduceResolution:Z

    if-eqz v5, :cond_3d

    goto :goto_44

    .line 124
    :cond_3d
    if-eqz p4, :cond_41

    mul-float/2addr v3, p2

    goto :goto_42

    :cond_41
    move v3, p2

    :goto_42
    move v0, v3

    goto :goto_46

    .line 119
    :cond_44
    :goto_44
    move v0, p2

    .line 121
    const/4 v1, 0x1

    .line 127
    :cond_46
    :goto_46
    new-instance v3, Lcom/android/server/wm/TaskSnapshotLoader$PreRLegacySnapshotConfig;

    invoke-direct {v3, v0, v1}, Lcom/android/server/wm/TaskSnapshotLoader$PreRLegacySnapshotConfig;-><init>(FZ)V

    return-object v3
.end method

.method loadTask(IIZ)Landroid/window/TaskSnapshot;
    .registers 41
    .param p1, "taskId"    # I
    .param p2, "userId"    # I
    .param p3, "loadLowResolutionBitmap"    # Z

    .line 143
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v15, p3

    const-string v14, "WindowManager"

    iget-object v0, v1, Lcom/android/server/wm/TaskSnapshotLoader;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/TaskSnapshotPersister;->getProtoFile(II)Ljava/io/File;

    move-result-object v21

    .line 144
    .local v21, "protoFile":Ljava/io/File;
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v0

    const/16 v22, 0x0

    if-nez v0, :cond_19

    .line 145
    return-object v22

    .line 148
    :cond_19
    :try_start_19
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v0

    .line 149
    .local v0, "bytes":[B
    invoke-static {v0}, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->parseFrom([B)Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;

    move-result-object v4

    move-object v13, v4

    .line 150
    .local v13, "proto":Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;
    iget-object v4, v1, Lcom/android/server/wm/TaskSnapshotLoader;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/wm/TaskSnapshotPersister;->getHighResolutionBitmapFile(II)Ljava/io/File;

    move-result-object v4

    move-object/from16 v23, v4

    .line 152
    .local v23, "highResBitmap":Ljava/io/File;
    iget v4, v13, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->taskWidth:I

    iget v5, v13, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->legacyScale:F

    .line 153
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v6

    .line 152
    invoke-virtual {v1, v4, v5, v6, v15}, Lcom/android/server/wm/TaskSnapshotLoader;->getLegacySnapshotConfig(IFZZ)Lcom/android/server/wm/TaskSnapshotLoader$PreRLegacySnapshotConfig;

    move-result-object v4

    move-object v12, v4

    .line 155
    .local v12, "legacyConfig":Lcom/android/server/wm/TaskSnapshotLoader$PreRLegacySnapshotConfig;
    const/4 v4, 0x0

    if-eqz v12, :cond_44

    iget-boolean v5, v12, Lcom/android/server/wm/TaskSnapshotLoader$PreRLegacySnapshotConfig;->mForceLoadReducedJpeg:Z

    if-eqz v5, :cond_44

    const/4 v5, 0x1

    goto :goto_45

    :cond_44
    move v5, v4

    :goto_45
    move/from16 v24, v5

    .line 157
    .local v24, "forceLoadReducedJpeg":Z
    if-nez v15, :cond_4f

    if-eqz v24, :cond_4c

    goto :goto_4f

    .line 158
    :cond_4c
    move-object/from16 v5, v23

    goto :goto_55

    :cond_4f
    :goto_4f
    iget-object v5, v1, Lcom/android/server/wm/TaskSnapshotLoader;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v5, v2, v3}, Lcom/android/server/wm/TaskSnapshotPersister;->getLowResolutionBitmapFile(II)Ljava/io/File;

    move-result-object v5

    :goto_55
    move-object/from16 v25, v5

    .line 160
    .local v25, "bitmapFile":Ljava/io/File;
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_5e

    .line 161
    return-object v22

    .line 164
    :cond_5e
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object v11, v5

    .line 165
    .local v11, "options":Landroid/graphics/BitmapFactory$Options;
    iget-object v5, v1, Lcom/android/server/wm/TaskSnapshotLoader;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v5}, Lcom/android/server/wm/TaskSnapshotPersister;->use16BitFormat()Z

    move-result v5

    if-eqz v5, :cond_73

    iget-boolean v5, v13, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isTranslucent:Z

    if-nez v5, :cond_73

    .line 166
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_75

    .line 167
    :cond_73
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_75
    iput-object v5, v11, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 168
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v11}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v10, v5

    .line 169
    .local v10, "bitmap":Landroid/graphics/Bitmap;
    if-nez v10, :cond_9d

    .line 170
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to load bitmap: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-object v22

    .line 174
    :cond_9d
    sget-object v5, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v10, v5, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v26, v4

    .line 175
    .local v26, "hwBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 176
    if-nez v26, :cond_c5

    .line 177
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to create hardware bitmap: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-object v22

    .line 180
    :cond_c5
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v4

    move-object/from16 v27, v4

    .line 181
    .local v27, "buffer":Landroid/hardware/HardwareBuffer;
    if-nez v27, :cond_e8

    .line 182
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to retrieve gralloc buffer for bitmap: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 183
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 182
    invoke-static {v14, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-object v22

    .line 187
    :cond_e8
    iget-object v4, v13, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->topActivityComponent:Ljava/lang/String;

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    .line 191
    .local v7, "topActivityComponent":Landroid/content/ComponentName;
    if-eqz v12, :cond_10b

    .line 192
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, v12, Lcom/android/server/wm/TaskSnapshotLoader$PreRLegacySnapshotConfig;->mScale:F

    div-float/2addr v4, v5

    float-to-int v4, v4

    .line 193
    .local v4, "taskWidth":I
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, v12, Lcom/android/server/wm/TaskSnapshotLoader$PreRLegacySnapshotConfig;->mScale:F

    div-float/2addr v5, v6

    float-to-int v5, v5

    .line 194
    .local v5, "taskHeight":I
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    move-object v4, v6

    .line 195
    .end local v5    # "taskHeight":I
    .local v4, "taskSize":Landroid/graphics/Point;
    move-object/from16 v28, v4

    goto :goto_116

    .line 196
    .end local v4    # "taskSize":Landroid/graphics/Point;
    :cond_10b
    new-instance v4, Landroid/graphics/Point;

    iget v5, v13, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->taskWidth:I

    iget v6, v13, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->taskHeight:I

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v28, v4

    .line 199
    .local v28, "taskSize":Landroid/graphics/Point;
    :goto_116
    new-instance v29, Landroid/window/TaskSnapshot;

    iget-wide v5, v13, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->id:J

    .line 200
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v9

    iget v8, v13, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->orientation:I

    iget v4, v13, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->rotation:I

    move-object/from16 v30, v0

    .end local v0    # "bytes":[B
    .local v30, "bytes":[B
    new-instance v0, Landroid/graphics/Rect;

    iget v1, v13, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetLeft:I

    iget v3, v13, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetTop:I

    move/from16 v16, v4

    iget v4, v13, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetRight:I

    move/from16 v17, v8

    iget v8, v13, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetBottom:I

    invoke-direct {v0, v1, v3, v4, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/Rect;

    iget v3, v13, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetLeft:I

    iget v4, v13, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetTop:I

    iget v8, v13, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetRight:I

    move-object/from16 v18, v10

    .end local v10    # "bitmap":Landroid/graphics/Bitmap;
    .local v18, "bitmap":Landroid/graphics/Bitmap;
    iget v10, v13, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetBottom:I

    invoke-direct {v1, v3, v4, v8, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-boolean v3, v13, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isRealSnapshot:Z

    iget v10, v13, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->windowingMode:I

    iget v8, v13, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->appearance:I

    iget-boolean v4, v13, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isTranslucent:Z
    :try_end_14c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_14c} :catch_178

    const/16 v20, 0x0

    move/from16 v19, v4

    move-object/from16 v4, v29

    move/from16 v31, v8

    move-object/from16 v8, v27

    move-object/from16 v32, v18

    move/from16 v18, v10

    .end local v18    # "bitmap":Landroid/graphics/Bitmap;
    .local v32, "bitmap":Landroid/graphics/Bitmap;
    move/from16 v10, v17

    move-object/from16 v33, v11

    .end local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    .local v33, "options":Landroid/graphics/BitmapFactory$Options;
    move/from16 v11, v16

    move-object/from16 v34, v12

    .end local v12    # "legacyConfig":Lcom/android/server/wm/TaskSnapshotLoader$PreRLegacySnapshotConfig;
    .local v34, "legacyConfig":Lcom/android/server/wm/TaskSnapshotLoader$PreRLegacySnapshotConfig;
    move-object/from16 v12, v28

    move-object/from16 v35, v13

    .end local v13    # "proto":Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;
    .local v35, "proto":Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;
    move-object v13, v0

    move-object/from16 v36, v14

    move-object v14, v1

    move/from16 v15, p3

    move/from16 v16, v3

    move/from16 v17, v18

    move/from16 v18, v31

    :try_start_172
    invoke-direct/range {v4 .. v20}, Landroid/window/TaskSnapshot;-><init>(JLandroid/content/ComponentName;Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;IILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZIIZZ)V
    :try_end_175
    .catch Ljava/io/IOException; {:try_start_172 .. :try_end_175} :catch_176

    .line 199
    return-object v29

    .line 206
    .end local v7    # "topActivityComponent":Landroid/content/ComponentName;
    .end local v23    # "highResBitmap":Ljava/io/File;
    .end local v24    # "forceLoadReducedJpeg":Z
    .end local v25    # "bitmapFile":Ljava/io/File;
    .end local v26    # "hwBitmap":Landroid/graphics/Bitmap;
    .end local v27    # "buffer":Landroid/hardware/HardwareBuffer;
    .end local v28    # "taskSize":Landroid/graphics/Point;
    .end local v30    # "bytes":[B
    .end local v32    # "bitmap":Landroid/graphics/Bitmap;
    .end local v33    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v34    # "legacyConfig":Lcom/android/server/wm/TaskSnapshotLoader$PreRLegacySnapshotConfig;
    .end local v35    # "proto":Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;
    :catch_176
    move-exception v0

    goto :goto_17b

    :catch_178
    move-exception v0

    move-object/from16 v36, v14

    .line 207
    .local v0, "e":Ljava/io/IOException;
    :goto_17b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load task snapshot data for taskId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v36

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return-object v22
.end method
