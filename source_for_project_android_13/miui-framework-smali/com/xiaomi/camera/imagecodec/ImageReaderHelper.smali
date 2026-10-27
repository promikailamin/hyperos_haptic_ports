.class public Lcom/xiaomi/camera/imagecodec/ImageReaderHelper;
.super Ljava/lang/Object;
.source "ImageReaderHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;
    }
.end annotation


# static fields
.field private static blacklist IMAGEREADER_NAME_WITHOUT_CACHE_PREFIX:Ljava/lang/String;

.field private static blacklist IMAGEREADER_NAME_WITH_CACHE_PREFIX:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    const-string v0, "MiuiCamera-Snapshot"

    sput-object v0, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper;->IMAGEREADER_NAME_WITHOUT_CACHE_PREFIX:Ljava/lang/String;

    .line 22
    const-string v0, "MiuiCamera-BQ"

    sput-object v0, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper;->IMAGEREADER_NAME_WITH_CACHE_PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getImageReaderName(Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;Z)Ljava/lang/String;
    .registers 5
    .param p0, "type"    # Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;
    .param p1, "isSkipProducerCache"    # Z

    .line 37
    if-eqz p1, :cond_5

    .line 38
    sget-object v0, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper;->IMAGEREADER_NAME_WITHOUT_CACHE_PREFIX:Ljava/lang/String;

    .local v0, "imageReaderName":Ljava/lang/String;
    goto :goto_7

    .line 40
    .end local v0    # "imageReaderName":Ljava/lang/String;
    :cond_5
    sget-object v0, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper;->IMAGEREADER_NAME_WITH_CACHE_PREFIX:Ljava/lang/String;

    .line 42
    .restart local v0    # "imageReaderName":Ljava/lang/String;
    :goto_7
    sget-object v1, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$1;->$SwitchMap$com$xiaomi$camera$imagecodec$ImageReaderHelper$ImageReaderType:[I

    invoke-virtual {p0}, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_b6

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-default"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b4

    .line 62
    :pswitch_27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-jpeg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    goto/16 :goto_b4

    .line 59
    :pswitch_3c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-videosnap"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    goto :goto_b4

    .line 56
    :pswitch_50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-raw"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    goto :goto_b4

    .line 53
    :pswitch_64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-yuv"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    goto :goto_b4

    .line 50
    :pswitch_78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-imagepool"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    goto :goto_b4

    .line 47
    :pswitch_8c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-effect"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    goto :goto_b4

    .line 44
    :pswitch_a0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-orignal"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    nop

    .line 68
    :goto_b4
    return-object v0

    nop

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_a0
        :pswitch_8c
        :pswitch_78
        :pswitch_64
        :pswitch_50
        :pswitch_3c
        :pswitch_27
    .end packed-switch
.end method

.method public static blacklist setImageReaderNameDepends(Landroid/media/ImageReader;Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;Z)V
    .registers 11
    .param p0, "imageReader"    # Landroid/media/ImageReader;
    .param p1, "type"    # Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;
    .param p2, "isSkipProducerCache"    # Z

    .line 72
    invoke-static {p1, p2}, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper;->getImageReaderName(Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;Z)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "imageReaderName":Ljava/lang/String;
    const-class v1, Landroid/media/ImageReader;

    .line 75
    .local v1, "clazz":Ljava/lang/Class;
    const/4 v2, 0x0

    .line 78
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_9
    const-string v5, "setName"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v3

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_15
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_15} :catch_17

    move-object v2, v5

    .line 81
    goto :goto_34

    .line 79
    :catch_17
    move-exception v5

    .line 80
    .local v5, "e":Ljava/lang/NoSuchMethodException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NoSuchMethodException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ImageReaderHelper"

    invoke-static {v7, v6}, Lcom/xiaomi/engine/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .end local v5    # "e":Ljava/lang/NoSuchMethodException;
    :goto_34
    if-nez v2, :cond_37

    .line 84
    return-void

    .line 87
    :cond_37
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 90
    :try_start_3a
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_41
    .catch Ljava/lang/IllegalAccessException; {:try_start_3a .. :try_end_41} :catch_47
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3a .. :try_end_41} :catch_42

    goto :goto_4b

    .line 93
    :catch_42
    move-exception v3

    .line 94
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_4c

    .line 91
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_47
    move-exception v3

    .line 92
    .local v3, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 95
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :goto_4b
    nop

    .line 96
    :goto_4c
    return-void
.end method
