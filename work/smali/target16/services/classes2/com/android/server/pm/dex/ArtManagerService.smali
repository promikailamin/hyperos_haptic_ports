.class public Lcom/android/server/pm/dex/ArtManagerService;
.super Landroid/content/pm/dex/IArtManager$Stub;
.source "ArtManagerService.java"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mPackageManager:Landroid/content/pm/IPackageManager;


# direct methods
.method public static synthetic $r8$lambda$GNacBYR-hVAPKUlbQwQy97kOseI(Landroid/os/ParcelFileDescriptor;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V
    .registers 6

    .line 320
    const-string v0, "ArtManagerService"

    :try_start_2
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 321
    invoke-interface {p1, p0}, Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;->onSuccess(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_2c

    :catchall_10
    move-exception p1

    goto :goto_48

    :catch_12
    move-exception p1

    goto :goto_30

    .line 323
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The snapshot FD became invalid before posting the result for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    .line 325
    invoke-interface {p1, v1}, Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;->onError(I)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2c} :catch_12
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2c} :catch_12
    .catchall {:try_start_2 .. :try_end_2c} :catchall_10

    .line 331
    :goto_2c
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    .line 328
    :goto_30
    :try_start_30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to call onSuccess after profile snapshot for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_44
    .catchall {:try_start_30 .. :try_end_44} :catchall_10

    .line 331
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :goto_48
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 332
    throw p1
.end method

.method public static synthetic $r8$lambda$zaKbCuBUQ9a-lDfPGRno4QUwo6w(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;ILjava/lang/String;)V
    .registers 4

    .line 303
    :try_start_0
    invoke-interface {p0, p1}, Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;->onError(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 305
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to callback after profile snapshot for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ArtManagerService"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static bridge synthetic -$$Nest$smgetCompilationFilterTronValue(Ljava/lang/String;)I
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/pm/dex/ArtManagerService;->getCompilationFilterTronValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smgetCompilationReasonTronValue(Ljava/lang/String;)I
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/pm/dex/ArtManagerService;->getCompilationReasonTronValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 76
    const-string v0, "ArtManagerService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/dex/ArtManagerService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 83
    invoke-direct {p0}, Landroid/content/pm/dex/IArtManager$Stub;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/android/server/pm/dex/ArtManagerService;->mContext:Landroid/content/Context;

    .line 85
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/pm/dex/ArtManagerService;->mHandler:Landroid/os/Handler;

    .line 87
    const-class p1, Landroid/content/pm/dex/ArtManagerInternal;

    new-instance v0, Lcom/android/server/pm/dex/ArtManagerService$ArtManagerInternalImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/dex/ArtManagerService$ArtManagerInternalImpl;-><init>(Lcom/android/server/pm/dex/ArtManagerService;Lcom/android/server/pm/dex/ArtManagerService-IA;)V

    invoke-static {p1, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public static getCompilationFilterTronValue(Ljava/lang/String;)I
    .registers 18

    move-object/from16 v0, p0

    .line 452
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xd

    const/16 v3, 0xc

    const/16 v4, 0xb

    const/16 v5, 0xa

    const/16 v6, 0x9

    const/16 v7, 0x8

    const/4 v8, 0x7

    const/4 v9, 0x6

    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, -0x1

    sparse-switch v1, :sswitch_data_f6

    goto/16 :goto_e1

    :sswitch_24
    const-string/jumbo v1, "run-from-apk-fallback"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto/16 :goto_e1

    :cond_2f
    move/from16 v16, v2

    goto/16 :goto_e1

    :sswitch_33
    const-string/jumbo v1, "run-from-apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    goto/16 :goto_e1

    :cond_3e
    move/from16 v16, v3

    goto/16 :goto_e1

    :sswitch_42
    const-string/jumbo v1, "quicken"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    goto/16 :goto_e1

    :cond_4d
    move/from16 v16, v4

    goto/16 :goto_e1

    :sswitch_51
    const-string v1, "everything"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    goto/16 :goto_e1

    :cond_5b
    move/from16 v16, v5

    goto/16 :goto_e1

    :sswitch_5f
    const-string/jumbo v1, "space-profile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    goto/16 :goto_e1

    :cond_6a
    move/from16 v16, v6

    goto/16 :goto_e1

    :sswitch_6e
    const-string/jumbo v1, "speed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    goto/16 :goto_e1

    :cond_79
    move/from16 v16, v7

    goto/16 :goto_e1

    :sswitch_7d
    const-string/jumbo v1, "space"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_88

    goto/16 :goto_e1

    :cond_88
    move/from16 v16, v8

    goto :goto_e1

    :sswitch_8b
    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_94

    goto :goto_e1

    :cond_94
    move/from16 v16, v9

    goto :goto_e1

    :sswitch_97
    const-string/jumbo v1, "verify"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a1

    goto :goto_e1

    :cond_a1
    move/from16 v16, v10

    goto :goto_e1

    :sswitch_a4
    const-string/jumbo v1, "run-from-vdex-fallback"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ae

    goto :goto_e1

    :cond_ae
    move/from16 v16, v11

    goto :goto_e1

    :sswitch_b1
    const-string/jumbo v1, "speed-profile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bb

    goto :goto_e1

    :cond_bb
    move/from16 v16, v12

    goto :goto_e1

    :sswitch_be
    const-string v1, "extract"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c7

    goto :goto_e1

    :cond_c7
    move/from16 v16, v13

    goto :goto_e1

    :sswitch_ca
    const-string v1, "everything-profile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d3

    goto :goto_e1

    :cond_d3
    move/from16 v16, v14

    goto :goto_e1

    :sswitch_d6
    const-string v1, "assume-verified"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_df

    goto :goto_e1

    :cond_df
    move/from16 v16, v15

    :goto_e1
    packed-switch v16, :pswitch_data_130

    return v14

    :pswitch_e5
    return v2

    :pswitch_e6
    return v3

    :pswitch_e7
    return v10

    :pswitch_e8
    return v4

    :pswitch_e9
    return v9

    :pswitch_ea
    return v6

    :pswitch_eb
    return v8

    :pswitch_ec
    return v15

    :pswitch_ed
    return v11

    :pswitch_ee
    const/16 v0, 0xe

    return v0

    :pswitch_f1
    return v7

    :pswitch_f2
    return v12

    :pswitch_f3
    return v5

    :pswitch_f4
    return v13

    nop

    :sswitch_data_f6
    .sparse-switch
        -0x74ad4b37 -> :sswitch_d6
        -0x6b7d2b71 -> :sswitch_ca
        -0x4dcd237f -> :sswitch_be
        -0x4358c9dd -> :sswitch_b1
        -0x35c83f13 -> :sswitch_a4
        -0x30df7787 -> :sswitch_97
        0x5c4d208 -> :sswitch_8b
        0x688f106 -> :sswitch_7d
        0x6890047 -> :sswitch_6e
        0x14c5f7e2 -> :sswitch_5f
        0x17efcab3 -> :sswitch_51
        0x273d6b56 -> :sswitch_42
        0x36f5967b -> :sswitch_33
        0x71a3adf4 -> :sswitch_24
    .end sparse-switch

    :pswitch_data_130
    .packed-switch 0x0
        :pswitch_f4
        :pswitch_f3
        :pswitch_f2
        :pswitch_f1
        :pswitch_ee
        :pswitch_ed
        :pswitch_ec
        :pswitch_eb
        :pswitch_ea
        :pswitch_e9
        :pswitch_e8
        :pswitch_e7
        :pswitch_e6
        :pswitch_e5
    .end packed-switch
.end method

.method public static getCompilationReasonTronValue(Ljava/lang/String;)I
    .registers 26

    move-object/from16 v0, p0

    .line 403
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x16

    const/16 v3, 0x15

    const/16 v4, 0x14

    const/16 v5, 0x13

    const/16 v6, 0x12

    const/16 v7, 0x11

    const/16 v8, 0x10

    const/16 v9, 0xf

    const/16 v10, 0xe

    const/16 v11, 0xd

    const/16 v12, 0xc

    const/16 v13, 0xb

    const/16 v14, 0xa

    const/16 v15, 0x9

    const/16 v16, 0x8

    const/16 v17, 0x7

    const/16 v18, 0x6

    const/16 v19, 0x5

    const/16 v20, 0x4

    const/16 v21, 0x2

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v24, -0x1

    sparse-switch v1, :sswitch_data_1b4

    goto/16 :goto_18e

    :sswitch_3c
    const-string v1, "install-bulk-downgraded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    goto/16 :goto_18e

    :cond_46
    const/16 v24, 0x18

    goto/16 :goto_18e

    :sswitch_4a
    const-string v1, "install-fast"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    goto/16 :goto_18e

    :cond_54
    const/16 v24, 0x17

    goto/16 :goto_18e

    :sswitch_58
    const-string v1, "install-bulk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    goto/16 :goto_18e

    :cond_62
    move/from16 v24, v2

    goto/16 :goto_18e

    :sswitch_66
    const-string v1, "install"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_70

    goto/16 :goto_18e

    :cond_70
    move/from16 v24, v3

    goto/16 :goto_18e

    :sswitch_74
    const-string/jumbo v1, "post-boot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7f

    goto/16 :goto_18e

    :cond_7f
    move/from16 v24, v4

    goto/16 :goto_18e

    :sswitch_83
    const-string v1, "install-bulk-secondary-downgraded-dm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8d

    goto/16 :goto_18e

    :cond_8d
    move/from16 v24, v5

    goto/16 :goto_18e

    :sswitch_91
    const-string v1, "install-bulk-downgraded-dm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9b

    goto/16 :goto_18e

    :cond_9b
    move/from16 v24, v6

    goto/16 :goto_18e

    :sswitch_9f
    const-string v1, "install-bulk-secondary-downgraded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a9

    goto/16 :goto_18e

    :cond_a9
    move/from16 v24, v7

    goto/16 :goto_18e

    :sswitch_ad
    const-string v1, "install-dm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b7

    goto/16 :goto_18e

    :cond_b7
    move/from16 v24, v8

    goto/16 :goto_18e

    :sswitch_bb
    const-string v1, "cmdline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c5

    goto/16 :goto_18e

    :cond_c5
    move/from16 v24, v9

    goto/16 :goto_18e

    :sswitch_c9
    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d3

    goto/16 :goto_18e

    :cond_d3
    move/from16 v24, v10

    goto/16 :goto_18e

    :sswitch_d7
    const-string v1, "cloud"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e1

    goto/16 :goto_18e

    :cond_e1
    move/from16 v24, v11

    goto/16 :goto_18e

    :sswitch_e5
    const-string v1, "inactive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ef

    goto/16 :goto_18e

    :cond_ef
    move/from16 v24, v12

    goto/16 :goto_18e

    :sswitch_f3
    const-string v1, "install-bulk-secondary"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fd

    goto/16 :goto_18e

    :cond_fd
    move/from16 v24, v13

    goto/16 :goto_18e

    :sswitch_101
    const-string/jumbo v1, "vdex"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10c

    goto/16 :goto_18e

    :cond_10c
    move/from16 v24, v14

    goto/16 :goto_18e

    :sswitch_110
    const-string v1, "first-boot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11a

    goto/16 :goto_18e

    :cond_11a
    move/from16 v24, v15

    goto/16 :goto_18e

    :sswitch_11e
    const-string v1, "install-bulk-dm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_128

    goto/16 :goto_18e

    :cond_128
    move/from16 v24, v16

    goto/16 :goto_18e

    :sswitch_12c
    const-string v1, "boot-after-ota"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_136

    goto/16 :goto_18e

    :cond_136
    move/from16 v24, v17

    goto :goto_18e

    :sswitch_139
    const-string/jumbo v1, "shared"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_143

    goto :goto_18e

    :cond_143
    move/from16 v24, v18

    goto :goto_18e

    :sswitch_146
    const-string v1, "install-bulk-secondary-dm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14f

    goto :goto_18e

    :cond_14f
    move/from16 v24, v19

    goto :goto_18e

    :sswitch_152
    const-string v1, "boot-after-mainline-update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15b

    goto :goto_18e

    :cond_15b
    move/from16 v24, v20

    goto :goto_18e

    :sswitch_15e
    const-string/jumbo v1, "prebuilt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_168

    goto :goto_18e

    :cond_168
    const/16 v24, 0x3

    goto :goto_18e

    :sswitch_16b
    const-string v1, "ab-ota"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_174

    goto :goto_18e

    :cond_174
    move/from16 v24, v21

    goto :goto_18e

    :sswitch_177
    const-string v1, "install-fast-dm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_180

    goto :goto_18e

    :cond_180
    move/from16 v24, v22

    goto :goto_18e

    :sswitch_183
    const-string v1, "bg-dexopt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18c

    goto :goto_18e

    :cond_18c
    move/from16 v24, v23

    :goto_18e
    packed-switch v24, :pswitch_data_21a

    return v22

    :pswitch_192
    return v11

    :pswitch_193
    return v14

    :pswitch_194
    return v13

    :pswitch_195
    return v20

    :pswitch_196
    return v3

    :pswitch_197
    return v5

    :pswitch_198
    return v6

    :pswitch_199
    return v10

    :pswitch_19a
    return v15

    :pswitch_19b
    return v2

    :pswitch_19c
    return v23

    :pswitch_19d
    const/16 v0, 0x1a

    return v0

    :pswitch_1a0
    return v17

    :pswitch_1a1
    return v12

    :pswitch_1a2
    const/16 v0, 0x18

    return v0

    :pswitch_1a5
    return v21

    :pswitch_1a6
    return v8

    :pswitch_1a7
    return v4

    :pswitch_1a8
    return v16

    :pswitch_1a9
    return v7

    :pswitch_1aa
    const/16 v0, 0x19

    return v0

    :pswitch_1ad
    const/16 v0, 0x17

    return v0

    :pswitch_1b0
    return v18

    :pswitch_1b1
    return v9

    :pswitch_1b2
    return v19

    nop

    :sswitch_data_1b4
    .sparse-switch
        -0x754fea3c -> :sswitch_183
        -0x6d771298 -> :sswitch_177
        -0x54fec890 -> :sswitch_16b
        -0x4d00be45 -> :sswitch_15e
        -0x47de9523 -> :sswitch_152
        -0x43162b55 -> :sswitch_146
        -0x35db539b -> :sswitch_139
        -0x23098d70 -> :sswitch_12c
        -0x1f55cf0e -> :sswitch_11e
        -0xc5e4811 -> :sswitch_110
        0x3727e1 -> :sswitch_101
        0x10534eb -> :sswitch_f3
        0x1785c6b -> :sswitch_e5
        0x5a5de35 -> :sswitch_d7
        0x5c4d208 -> :sswitch_c9
        0x34bd042e -> :sswitch_bb
        0x35aae5fb -> :sswitch_ad
        0x5ce564b1 -> :sswitch_9f
        0x68b4487e -> :sswitch_91
        0x6ac14725 -> :sswitch_83
        0x749a27ff -> :sswitch_74
        0x74ae259b -> :sswitch_66
        0x76889604 -> :sswitch_58
        0x768a1d4e -> :sswitch_4a
        0x778489f8 -> :sswitch_3c
    .end sparse-switch

    :pswitch_data_21a
    .packed-switch 0x0
        :pswitch_1b2
        :pswitch_1b1
        :pswitch_1b0
        :pswitch_1ad
        :pswitch_1aa
        :pswitch_1a9
        :pswitch_1a8
        :pswitch_1a7
        :pswitch_1a6
        :pswitch_1a5
        :pswitch_1a2
        :pswitch_1a1
        :pswitch_1a0
        :pswitch_19d
        :pswitch_19c
        :pswitch_19b
        :pswitch_19a
        :pswitch_199
        :pswitch_198
        :pswitch_197
        :pswitch_196
        :pswitch_195
        :pswitch_194
        :pswitch_193
        :pswitch_192
    .end packed-switch
.end method


# virtual methods
.method public final checkAndroidPermissions(ILjava/lang/String;)Z
    .registers 6

    .line 101
    iget-object v0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_RUNTIME_PROFILES"

    const-string v2, "ArtManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    const/16 v1, 0x2b

    .line 106
    invoke-virtual {v0, v1, p1, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_28

    const/4 v0, 0x3

    if-eq p1, v0, :cond_21

    const/4 p0, 0x0

    return p0

    .line 110
    :cond_21
    iget-object p0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    return p2
.end method

.method public final checkShellPermissions(ILjava/lang/String;I)Z
    .registers 8

    const/16 v0, 0x7d0

    const/4 v1, 0x0

    if-eq p3, v0, :cond_6

    return v1

    .line 133
    :cond_6
    sget-boolean p3, Lcom/android/internal/os/RoSystemProperties;->DEBUGGABLE:Z

    const/4 v0, 0x1

    if-eqz p3, :cond_c

    return v0

    :cond_c
    if-ne p1, v0, :cond_f

    return v1

    .line 142
    :cond_f
    :try_start_f
    invoke-virtual {p0}, Lcom/android/server/pm/dex/ArtManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    const-wide/16 v2, 0x0

    invoke-interface {p0, p2, v2, v3, v1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1a

    goto :goto_1b

    :catch_1a
    const/4 p0, 0x0

    :goto_1b
    if-nez p0, :cond_1e

    return v1

    .line 151
    :cond_1e
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 p1, 0x2

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_27

    move v1, v0

    :cond_27
    return v1
.end method

.method public final getPackageManager()Landroid/content/pm/IPackageManager;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    if-nez v0, :cond_11

    .line 93
    const-string/jumbo v0, "package"

    .line 94
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 93
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 96
    :cond_11
    iget-object p0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    return-object p0
.end method

.method public isRuntimeProfilingEnabled(ILjava/lang/String;)Z
    .registers 6

    .line 257
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    if-eq v0, v1, :cond_10

    .line 258
    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/dex/ArtManagerService;->checkAndroidPermissions(ILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_10

    return v2

    :cond_10
    const/4 p0, 0x1

    if-eqz p1, :cond_45

    if-ne p1, p0, :cond_2e

    .line 267
    const-string p1, "dalvik.vm.profilebootclasspath"

    .line 269
    invoke-static {p1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 267
    const-string/jumbo p2, "persist.device_config.runtime_native_boot.profilebootclasspath"

    invoke-static {p2, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 270
    sget-boolean p2, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez p2, :cond_2a

    sget-boolean p2, Landroid/os/Build;->IS_ENG:Z

    if-eqz p2, :cond_2d

    :cond_2a
    if-eqz p1, :cond_2d

    return p0

    :cond_2d
    return v2

    .line 272
    :cond_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid profile type:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_45
    return p0
.end method

.method public final postError(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;I)V
    .registers 6

    .line 297
    sget-boolean v0, Lcom/android/server/pm/dex/ArtManagerService;->DEBUG:Z

    if-eqz v0, :cond_22

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to snapshot profile for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ArtManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_22
    iget-object p0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/pm/dex/ArtManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p3, p2}, Lcom/android/server/pm/dex/ArtManagerService$$ExternalSyntheticLambda1;-><init>(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final postSuccess(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V
    .registers 6

    .line 312
    sget-boolean v0, Lcom/android/server/pm/dex/ArtManagerService;->DEBUG:Z

    if-eqz v0, :cond_1a

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Successfully snapshot profile for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ArtManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_1a
    iget-object p0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/pm/dex/ArtManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p3, p1}, Lcom/android/server/pm/dex/ArtManagerService$$ExternalSyntheticLambda0;-><init>(Landroid/os/ParcelFileDescriptor;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final snapshotAppProfile(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 205
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/pm/dex/ArtManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-interface {v2, p1, v3, v4, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_d

    goto :goto_e

    :catch_d
    move-object v2, v1

    :goto_e
    if-nez v2, :cond_14

    .line 210
    invoke-virtual {p0, p3, p1, v0}, Lcom/android/server/pm/dex/ArtManagerService;->postError(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;I)V

    return-void

    .line 214
    :cond_14
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 216
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    if-nez v3, :cond_40

    if-eqz v4, :cond_40

    .line 218
    array-length v6, v4

    sub-int/2addr v6, v5

    :goto_2b
    if-ltz v6, :cond_40

    .line 219
    aget-object v7, v4, v6

    invoke-virtual {v7, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 221
    iget-object p2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    aget-object v1, p2, v6

    move v3, v5

    goto :goto_40

    :cond_3d
    add-int/lit8 v6, v6, -0x1

    goto :goto_2b

    :cond_40
    :goto_40
    if-nez v3, :cond_46

    .line 227
    invoke-virtual {p0, p3, p1, v5}, Lcom/android/server/pm/dex/ArtManagerService;->postError(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;I)V

    return-void

    .line 235
    :cond_46
    :try_start_46
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPackageManagerLocal()Lcom/android/server/pm/PackageManagerLocal;

    move-result-object p2

    .line 236
    invoke-interface {p2}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object p2
    :try_end_4e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_46 .. :try_end_4e} :catch_70
    .catch Ljava/lang/IllegalStateException; {:try_start_46 .. :try_end_4e} :catch_6b
    .catch Lcom/android/server/art/ArtManagerLocal$SnapshotProfileException; {:try_start_46 .. :try_end_4e} :catch_6b

    .line 237
    :try_start_4e
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->getArtManagerLocal()Lcom/android/server/art/ArtManagerLocal;

    move-result-object v2

    invoke-virtual {v2, p2, p1, v1}, Lcom/android/server/art/ArtManagerLocal;->snapshotAppProfile(Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_56
    .catchall {:try_start_4e .. :try_end_56} :catchall_5f

    if-eqz p2, :cond_5b

    .line 239
    :try_start_58
    invoke-interface {p2}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V
    :try_end_5b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_58 .. :try_end_5b} :catch_70
    .catch Ljava/lang/IllegalStateException; {:try_start_58 .. :try_end_5b} :catch_6b
    .catch Lcom/android/server/art/ArtManagerLocal$SnapshotProfileException; {:try_start_58 .. :try_end_5b} :catch_6b

    .line 252
    :cond_5b
    invoke-virtual {p0, p1, v1, p3}, Lcom/android/server/pm/dex/ArtManagerService;->postSuccess(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V

    return-void

    :catchall_5f
    move-exception v1

    if-eqz p2, :cond_6a

    .line 234
    :try_start_62
    invoke-interface {p2}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_66

    goto :goto_6a

    :catchall_66
    move-exception p2

    :try_start_67
    invoke-virtual {v1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6a
    :goto_6a
    throw v1
    :try_end_6b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_67 .. :try_end_6b} :catch_70
    .catch Ljava/lang/IllegalStateException; {:try_start_67 .. :try_end_6b} :catch_6b
    .catch Lcom/android/server/art/ArtManagerLocal$SnapshotProfileException; {:try_start_67 .. :try_end_6b} :catch_6b

    :catch_6b
    const/4 p2, 0x2

    .line 248
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/pm/dex/ArtManagerService;->postError(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;I)V

    return-void

    .line 245
    :catch_70
    invoke-virtual {p0, p3, p1, v0}, Lcom/android/server/pm/dex/ArtManagerService;->postError(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;I)V

    return-void
.end method

.method public final snapshotBootImageProfile(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V
    .registers 5

    .line 280
    const-string v0, "android"

    :try_start_2
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPackageManagerLocal()Lcom/android/server/pm/PackageManagerLocal;

    move-result-object v1

    .line 281
    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object v1
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_a} :catch_27
    .catch Lcom/android/server/art/ArtManagerLocal$SnapshotProfileException; {:try_start_2 .. :try_end_a} :catch_27

    .line 282
    :try_start_a
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->getArtManagerLocal()Lcom/android/server/art/ArtManagerLocal;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/art/ArtManagerLocal;->snapshotBootImageProfile(Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_1b

    if-eqz v1, :cond_17

    .line 283
    :try_start_14
    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V
    :try_end_17
    .catch Ljava/lang/IllegalStateException; {:try_start_14 .. :try_end_17} :catch_27
    .catch Lcom/android/server/art/ArtManagerLocal$SnapshotProfileException; {:try_start_14 .. :try_end_17} :catch_27

    .line 288
    :cond_17
    invoke-virtual {p0, v0, v2, p1}, Lcom/android/server/pm/dex/ArtManagerService;->postSuccess(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V

    return-void

    :catchall_1b
    move-exception v2

    if-eqz v1, :cond_26

    .line 279
    :try_start_1e
    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    goto :goto_26

    :catchall_22
    move-exception v1

    :try_start_23
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_26
    :goto_26
    throw v2
    :try_end_27
    .catch Ljava/lang/IllegalStateException; {:try_start_23 .. :try_end_27} :catch_27
    .catch Lcom/android/server/art/ArtManagerLocal$SnapshotProfileException; {:try_start_23 .. :try_end_27} :catch_27

    :catch_27
    const/4 v1, 0x2

    .line 284
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/dex/ArtManagerService;->postError(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;I)V

    return-void
.end method

.method public snapshotRuntimeProfile(ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V
    .registers 8

    .line 159
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 160
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/dex/ArtManagerService;->checkShellPermissions(ILjava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_15

    .line 161
    invoke-virtual {p0, v0, p5}, Lcom/android/server/pm/dex/ArtManagerService;->checkAndroidPermissions(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    const/4 p0, 0x2

    .line 163
    :try_start_11
    invoke-interface {p4, p0}, Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;->onError(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_14

    :catch_14
    return-void

    .line 170
    :cond_15
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    if-nez v0, :cond_25

    .line 174
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 175
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 179
    :cond_25
    invoke-virtual {p0, p1, p5}, Lcom/android/server/pm/dex/ArtManagerService;->isRuntimeProfilingEnabled(ILjava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_57

    .line 183
    sget-boolean p1, Lcom/android/server/pm/dex/ArtManagerService;->DEBUG:Z

    if-eqz p1, :cond_4d

    .line 184
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Requested snapshot for "

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ":"

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p5, "ArtManagerService"

    invoke-static {p5, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    if-eqz v0, :cond_53

    .line 188
    invoke-virtual {p0, p4}, Lcom/android/server/pm/dex/ArtManagerService;->snapshotBootImageProfile(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V

    return-void

    .line 190
    :cond_53
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/pm/dex/ArtManagerService;->snapshotAppProfile(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V

    return-void

    .line 180
    :cond_57
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Runtime profiling is not enabled for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
