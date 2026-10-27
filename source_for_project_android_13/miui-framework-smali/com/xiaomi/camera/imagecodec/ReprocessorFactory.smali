.class public Lcom/xiaomi/camera/imagecodec/ReprocessorFactory;
.super Ljava/lang/Object;
.source "ReprocessorFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ReprocessorFactory"

.field private static blacklist sDefaultReprocessorType:Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory;->sDefaultReprocessorType:Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized blacklist getDefaultReprocessor()Lcom/xiaomi/camera/imagecodec/Reprocessor;
    .registers 3

    const-class v0, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory;

    monitor-enter v0

    .line 36
    :try_start_3
    sget-object v1, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory;->sDefaultReprocessorType:Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;

    if-eqz v1, :cond_d

    .line 40
    invoke-static {v1}, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory;->getReprocessor(Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;)Lcom/xiaomi/camera/imagecodec/Reprocessor;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_15

    monitor-exit v0

    return-object v1

    .line 37
    :cond_d
    :try_start_d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The default reprocessingType is not defined yet, make sure #init(Context) has been called"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_15

    .line 35
    :catchall_15
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized blacklist getReprocessor(Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;)Lcom/xiaomi/camera/imagecodec/Reprocessor;
    .registers 5
    .param p0, "type"    # Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;

    const-class v0, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory;

    monitor-enter v0

    .line 47
    if-eqz p0, :cond_53

    .line 51
    :try_start_5
    const-string v1, "ReprocessorFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getReprocessor: type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    sget-object v1, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$1;->$SwitchMap$com$xiaomi$camera$imagecodec$ReprocessorFactory$ReprocessorType:[I

    invoke-virtual {p0}, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_5e

    .line 61
    sget-object v1, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->sInstance:Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton;

    goto :goto_49

    .line 59
    :pswitch_2b
    sget-object v1, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessorV2;->sInstance:Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton;

    invoke-virtual {v1}, Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/imagecodec/Reprocessor;
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_51

    monitor-exit v0

    return-object v1

    .line 56
    :pswitch_35
    :try_start_35
    sget-object v1, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->sInstance:Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton;

    invoke-virtual {v1}, Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/imagecodec/Reprocessor;
    :try_end_3d
    .catchall {:try_start_35 .. :try_end_3d} :catchall_51

    monitor-exit v0

    return-object v1

    .line 54
    :pswitch_3f
    :try_start_3f
    sget-object v1, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->sInstance:Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton;

    invoke-virtual {v1}, Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/imagecodec/Reprocessor;
    :try_end_47
    .catchall {:try_start_3f .. :try_end_47} :catchall_51

    monitor-exit v0

    return-object v1

    .line 61
    :goto_49
    :try_start_49
    invoke-virtual {v1}, Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/imagecodec/Reprocessor;
    :try_end_4f
    .catchall {:try_start_49 .. :try_end_4f} :catchall_51

    monitor-exit v0

    return-object v1

    .line 46
    .end local p0    # "type":Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;
    :catchall_51
    move-exception p0

    goto :goto_5b

    .line 48
    .restart local p0    # "type":Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;
    :cond_53
    :try_start_53
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The given reprocessingType must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5b
    .catchall {:try_start_53 .. :try_end_5b} :catchall_51

    .line 46
    .end local p0    # "type":Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;
    :goto_5b
    monitor-exit v0

    throw p0

    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_3f
        :pswitch_35
        :pswitch_2b
    .end packed-switch
.end method

.method public static declared-synchronized blacklist init(Landroid/content/Context;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory;

    monitor-enter v0

    .line 66
    :try_start_3
    sget-object v1, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;->VIRTUAL_CAMERA:Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_41

    .line 69
    .local v1, "reprocessorType":Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;
    :try_start_5
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;->values()[Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3
    :try_end_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_c} :catch_e
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_c} :catch_e
    .catchall {:try_start_5 .. :try_end_c} :catchall_41

    move-object v1, v2

    .line 72
    goto :goto_16

    .line 70
    :catch_e
    move-exception v2

    .line 71
    .local v2, "e":Ljava/lang/RuntimeException;
    :try_start_f
    const-string v3, "ReprocessorFactory"

    const-string v4, "Failed to find the preferred reprocessor, defaults to use VIRTUAL_CAMERA instead"

    invoke-static {v3, v4, v2}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_16
    const-string v2, "ReprocessorFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reprocessorType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    sget-object v2, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory;->sDefaultReprocessorType:Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;

    if-nez v2, :cond_35

    .line 75
    sput-object v1, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory;->sDefaultReprocessorType:Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;
    :try_end_34
    .catchall {:try_start_f .. :try_end_34} :catchall_41

    goto :goto_37

    .line 76
    :cond_35
    if-ne v2, v1, :cond_39

    .line 79
    :goto_37
    monitor-exit v0

    return-void

    .line 77
    :cond_39
    :try_start_39
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The type of preferred reprocessor is not allowed to be changed."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_41
    .catchall {:try_start_39 .. :try_end_41} :catchall_41

    .line 65
    .end local v1    # "reprocessorType":Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;
    .end local p0    # "context":Landroid/content/Context;
    :catchall_41
    move-exception p0

    monitor-exit v0

    throw p0
.end method
