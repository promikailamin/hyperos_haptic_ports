.class public Landroid/hardware/camera2/impl/CameraMetadataNativeInjector;
.super Ljava/lang/Object;
.source "CameraMetadataNativeInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;
    }
.end annotation


# static fields
.field private static blacklist KEY_CMD_LIST:Ljava/lang/String; = null

.field private static final blacklist KEY_CUSTOM_CAMERA_RESOLUTION_ENABLED:Ljava/lang/String; = "camera_adjust_picture_size_enabled"

.field private static final blacklist TAG:Ljava/lang/String; = "CameraMetadataNativeInjector"

.field private static final blacklist sAllMiCameraInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sIsCustomStreamConfigurationEnabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 73
    const-string v0, "camera_adjust_picture_size_cmd_list"

    sput-object v0, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector;->KEY_CMD_LIST:Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector;->sAllMiCameraInfo:Ljava/util/List;

    .line 96
    const-string v0, "camera_adjust_picture_size_enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_25

    .line 97
    const-string v0, "persist.vendor.camera.picturesize.limit.enable"

    const-string v2, "false"

    invoke-static {v0, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_25

    :cond_23
    move v0, v1

    goto :goto_26

    :cond_25
    :goto_25
    const/4 v0, 0x1

    :goto_26
    sput-boolean v0, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector;->sIsCustomStreamConfigurationEnabled:Z

    .line 98
    if-eqz v0, :cond_46

    .line 99
    invoke-static {}, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector;->cmdListChange()V

    .line 100
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector;->KEY_CMD_LIST:Ljava/lang/String;

    invoke-static {v0}, Lmiui/util/FeatureParser;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "cmdList":[Ljava/lang/String;
    if-eqz v0, :cond_46

    .line 102
    array-length v2, v0

    :goto_36
    if-ge v1, v2, :cond_46

    aget-object v3, v0, v1

    .line 103
    .local v3, "cmd":Ljava/lang/String;
    sget-object v4, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector;->sAllMiCameraInfo:Ljava/util/List;

    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector;->parseMiCameraInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 102
    .end local v3    # "cmd":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 107
    .end local v0    # "cmdList":[Ljava/lang/String;
    :cond_46
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist addMiResolution(Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .registers 14
    .param p0, "addRes"    # Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;)Z"
        }
    .end annotation

    .line 279
    .local p1, "configurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/StreamConfiguration;>;"
    .local p2, "minFrameDurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;"
    .local p3, "stallDurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;"
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;->size:Landroid/util/Size;

    .line 280
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;->size:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;->format:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    iget-boolean v2, p0, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;->isInput:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    .line 279
    const-string v2, "addMiResolution: size = %dx%d, format = 0x%x, isInput = %b"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraMetadataNativeInjector"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    new-instance v0, Landroid/hardware/camera2/params/StreamConfiguration;

    iget v1, p0, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;->format:I

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;->size:Landroid/util/Size;

    .line 283
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;->size:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    iget-boolean v5, p0, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;->isInput:Z

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/hardware/camera2/params/StreamConfiguration;-><init>(IIIZ)V

    .line 281
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;->isInput:Z

    if-nez v0, :cond_8c

    .line 286
    new-instance v0, Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget v5, p0, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;->format:I

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;->size:Landroid/util/Size;

    .line 288
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v6

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;->size:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v7

    const-wide/32 v8, 0x2faf080

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Landroid/hardware/camera2/params/StreamConfigurationDuration;-><init>(IIIJ)V

    .line 286
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    new-instance v0, Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget v5, p0, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;->format:I

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;->size:Landroid/util/Size;

    .line 291
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v6

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;->size:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v7

    const-wide/32 v8, 0x1fca055

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Landroid/hardware/camera2/params/StreamConfigurationDuration;-><init>(IIIJ)V

    .line 289
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_8c
    return v3
.end method

.method public static blacklist addMiResolution(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .registers 10
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;)Z"
        }
    .end annotation

    .line 267
    .local p2, "configurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/StreamConfiguration;>;"
    .local p3, "minFrameDurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;"
    .local p4, "stallDurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;"
    const/4 v0, 0x0

    .line 268
    .local v0, "ret":Z
    const-string v1, "add"

    invoke-static {p0, p1, v1}, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector;->filterMiCameraInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 269
    .local v1, "cameraInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;

    .line 270
    .local v3, "info":Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;
    invoke-static {v3, p2, p3, p4}, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector;->addMiResolution(Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v4

    or-int/2addr v0, v4

    .line 271
    .end local v3    # "info":Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;
    goto :goto_b

    .line 272
    :cond_1d
    return v0
.end method

.method private static blacklist buildMiCameraInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;
    .registers 19
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "miCameraInfo"    # Ljava/lang/String;

    .line 150
    move-object/from16 v1, p1

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "splitInfos":[Ljava/lang/String;
    array-length v0, v2

    const-string v3, "buildMiCameraInfo: illegal stream configuration: "

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v6, "CameraMetadataNativeInjector"

    if-ge v0, v4, :cond_26

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-object v5

    .line 156
    :cond_26
    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 157
    .local v15, "type":Ljava/lang/String;
    const-string v0, "add"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    .line 158
    .local v16, "isAddType":Z
    if-eqz v16, :cond_50

    array-length v0, v2

    const/4 v7, 0x6

    if-eq v0, v7, :cond_50

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buildMiCameraInfo: illegal add type stream configuration: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-object v5

    .line 165
    :cond_50
    const/4 v7, 0x0

    .line 166
    .local v7, "format":I
    const/4 v8, 0x0

    .line 168
    .local v8, "isInput":Z
    const/4 v0, 0x2

    :try_start_53
    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 169
    .local v11, "width":I
    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 170
    .local v12, "height":I
    if-eqz v16, :cond_84

    .line 171
    aget-object v0, v2, v4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v7, v0

    .line 172
    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_80
    .catch Ljava/lang/NumberFormatException; {:try_start_53 .. :try_end_80} :catch_9b

    move v8, v0

    move v0, v7

    move v3, v8

    goto :goto_86

    .line 170
    :cond_84
    move v0, v7

    move v3, v8

    .line 177
    .end local v7    # "format":I
    .end local v8    # "isInput":Z
    .local v0, "format":I
    .local v3, "isInput":Z
    :goto_86
    nop

    .line 179
    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 180
    .local v4, "cameraId":Ljava/lang/String;
    new-instance v5, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;

    move-object v7, v5

    move-object/from16 v8, p0

    move-object v9, v4

    move-object v10, v15

    move v13, v0

    move v14, v3

    invoke-direct/range {v7 .. v14}, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)V

    return-object v5

    .line 174
    .end local v0    # "format":I
    .end local v3    # "isInput":Z
    .end local v4    # "cameraId":Ljava/lang/String;
    .end local v11    # "width":I
    .end local v12    # "height":I
    .restart local v7    # "format":I
    .restart local v8    # "isInput":Z
    :catch_9b
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-object v5
.end method

.method private static blacklist cmdListChange()V
    .registers 2

    .line 78
    const-string v0, "ro.boot.camera.config"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 79
    const-string v0, "camera_adjust_picture_size_cmd_list_pro"

    sput-object v0, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector;->KEY_CMD_LIST:Ljava/lang/String;

    .line 80
    invoke-static {v0}, Lmiui/util/FeatureParser;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 81
    const-string v0, "camera_adjust_picture_size_cmd_list"

    sput-object v0, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector;->KEY_CMD_LIST:Ljava/lang/String;

    .line 84
    :cond_1c
    return-void
.end method

.method private static blacklist filterMiCameraInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;",
            ">;"
        }
    .end annotation

    .line 331
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 332
    .local v0, "miCameraInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;>;"
    sget-object v1, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector;->sAllMiCameraInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;

    .line 333
    .local v2, "info":Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;
    if-eqz p1, :cond_38

    iget-object v3, v2, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;->cameraId:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    if-eqz p0, :cond_38

    iget-object v3, v2, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;->packageName:Ljava/lang/String;

    .line 334
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_38

    if-eqz p2, :cond_38

    iget-object v3, v2, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;->type:Ljava/lang/String;

    .line 335
    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 336
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    .end local v2    # "info":Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;
    :cond_38
    goto :goto_b

    .line 340
    :cond_39
    return-object v0
.end method

.method public static blacklist getLimitedSensorIso(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Range;
    .registers 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 321
    const-string v0, "iso"

    invoke-static {p0, p1, v0}, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector;->filterMiCameraInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 322
    .local v0, "miCameraInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4d

    .line 323
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;

    iget-object v1, v1, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;->size:Landroid/util/Size;

    .line 324
    .local v1, "iso":Landroid/util/Size;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sensor iso: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CameraMetadataNativeInjector"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    new-instance v2, Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v2

    .line 327
    .end local v1    # "iso":Landroid/util/Size;
    :cond_4d
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist getLimitedSensorSize(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Size;
    .registers 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 311
    const-string v0, "ssize"

    invoke-static {p0, p1, v0}, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector;->filterMiCameraInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 312
    .local v0, "miCameraInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_38

    .line 313
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;

    iget-object v1, v1, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;->size:Landroid/util/Size;

    .line 314
    .local v1, "size":Landroid/util/Size;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sensor size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CameraMetadataNativeInjector"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    return-object v1

    .line 317
    .end local v1    # "size":Landroid/util/Size;
    :cond_38
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist isCustomCameraResolutionEnabled()Z
    .registers 1

    .line 115
    sget-boolean v0, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector;->sIsCustomStreamConfigurationEnabled:Z

    return v0
.end method

.method private static blacklist limitMiResolution(Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .registers 11
    .param p0, "limit"    # Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;)Z"
        }
    .end annotation

    .line 214
    .local p1, "configurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/StreamConfiguration;>;"
    .local p2, "minFrameDurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;"
    .local p3, "stallDurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;"
    if-nez p0, :cond_4

    .line 215
    const/4 v0, 0x0

    return v0

    .line 218
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "limitMiResolution: limitedSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;->size:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraMetadataNativeInjector"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, "bChanged":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 221
    .local v1, "configItor":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/camera2/params/StreamConfiguration;>;"
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 222
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/StreamConfiguration;

    .line 223
    .local v2, "conf":Landroid/hardware/camera2/params/StreamConfiguration;
    invoke-virtual {v2}, Landroid/hardware/camera2/params/StreamConfiguration;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;->size:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    if-gt v3, v4, :cond_47

    invoke-virtual {v2}, Landroid/hardware/camera2/params/StreamConfiguration;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;->size:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    if-le v3, v4, :cond_4b

    .line 224
    :cond_47
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 225
    const/4 v0, 0x1

    .line 227
    .end local v2    # "conf":Landroid/hardware/camera2/params/StreamConfiguration;
    :cond_4b
    goto :goto_23

    .line 229
    :cond_4c
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 230
    .local v2, "minFrameItor":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;"
    :goto_50
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_79

    .line 231
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 232
    .local v3, "conf":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;->size:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    if-gt v4, v5, :cond_74

    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;->size:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    if-le v4, v5, :cond_78

    .line 233
    :cond_74
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 234
    const/4 v0, 0x1

    .line 236
    .end local v3    # "conf":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    :cond_78
    goto :goto_50

    .line 238
    :cond_79
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 239
    .local v3, "stallItor":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;"
    :goto_7d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a6

    .line 240
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 241
    .local v4, "conf":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    invoke-virtual {v4}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getWidth()I

    move-result v5

    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;->size:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v6

    if-gt v5, v6, :cond_a1

    invoke-virtual {v4}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getHeight()I

    move-result v5

    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;->size:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    if-le v5, v6, :cond_a5

    .line 242
    :cond_a1
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 243
    const/4 v0, 0x1

    .line 245
    .end local v4    # "conf":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    :cond_a5
    goto :goto_7d

    .line 247
    :cond_a6
    return v0
.end method

.method public static blacklist limitMiResolution(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .registers 12
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;)Z"
        }
    .end annotation

    .line 199
    .local p2, "configurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/StreamConfiguration;>;"
    .local p3, "minFrameDurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;"
    .local p4, "stallDurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;"
    const/4 v0, 0x0

    .line 200
    .local v0, "smallest":Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;
    const-string v1, "limit"

    invoke-static {p0, p1, v1}, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector;->filterMiCameraInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 201
    .local v1, "cameraInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;

    .line 202
    .local v3, "info":Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;
    if-eqz v3, :cond_38

    if-eqz v0, :cond_37

    iget-object v4, v0, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;->size:Landroid/util/Size;

    .line 203
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    iget-object v5, v0, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;->size:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    iget-object v5, v3, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;->size:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    iget-object v6, v3, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;->size:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    if-le v4, v5, :cond_38

    .line 204
    :cond_37
    move-object v0, v3

    .line 206
    .end local v3    # "info":Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;
    :cond_38
    goto :goto_b

    .line 207
    :cond_39
    invoke-static {v0, p2, p3, p4}, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector;->limitMiResolution(Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    return v2
.end method

.method private static blacklist parseMiCameraInfo(Ljava/lang/String;)Ljava/util/List;
    .registers 14
    .param p0, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;",
            ">;"
        }
    .end annotation

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v0, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;>;"
    const-string v1, "CameraMetadataNativeInjector"

    if-nez p0, :cond_f

    .line 121
    const-string v2, "parseMiCameraInfo: null stream configuration"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-object v0

    .line 125
    :cond_f
    const-string v2, ":"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, "sourceStrArray":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_30

    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseMiCameraInfo: invalid stream configuration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-object v0

    .line 131
    :cond_30
    const/4 v1, 0x0

    aget-object v3, v2, v1

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, "splitPackageNames":[Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v6, v2, v5

    invoke-virtual {v6, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 133
    .local v4, "splitInfos":[Ljava/lang/String;
    array-length v6, v3

    move v7, v1

    :goto_42
    if-ge v7, v6, :cond_66

    aget-object v8, v3, v7

    .line 134
    .local v8, "packageName":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 135
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v5, :cond_51

    .line 136
    goto :goto_63

    .line 138
    :cond_51
    array-length v9, v4

    move v10, v1

    :goto_53
    if-ge v10, v9, :cond_63

    aget-object v11, v4, v10

    .line 139
    .local v11, "info":Ljava/lang/String;
    invoke-static {v8, v11}, Landroid/hardware/camera2/impl/CameraMetadataNativeInjector;->buildMiCameraInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;

    move-result-object v12

    .line 140
    .local v12, "instance":Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;
    if-eqz v12, :cond_60

    .line 141
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    .end local v11    # "info":Ljava/lang/String;
    .end local v12    # "instance":Landroid/hardware/camera2/impl/CameraMetadataNativeInjector$MiCameraInfo;
    :cond_60
    add-int/lit8 v10, v10, 0x1

    goto :goto_53

    .line 133
    .end local v8    # "packageName":Ljava/lang/String;
    :cond_63
    :goto_63
    add-int/lit8 v7, v7, 0x1

    goto :goto_42

    .line 146
    :cond_66
    return-object v0
.end method
