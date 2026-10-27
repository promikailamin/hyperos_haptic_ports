.class public Lcom/android/server/pm/dex/ArtManagerService;
.super Landroid/content/pm/dex/IArtManager$Stub;
.source "ArtManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/dex/ArtManagerService$ArtManagerInternalImpl;
    }
.end annotation


# static fields
.field private static final BOOT_IMAGE_ANDROID_PACKAGE:Ljava/lang/String; = "android"

.field private static final BOOT_IMAGE_PROFILE_NAME:Ljava/lang/String; = "android.prof"

.field private static final DEBUG:Z

.field public static final DEXOPT_REASON_WITH_DEX_METADATA_ANNOTATION:Ljava/lang/String; = "-dm"

.field private static final TAG:Ljava/lang/String; = "ArtManagerService"

.field private static final TRON_COMPILATION_FILTER_ASSUMED_VERIFIED:I = 0x2

.field private static final TRON_COMPILATION_FILTER_ASSUMED_VERIFIED_IORAP:I = 0xf

.field private static final TRON_COMPILATION_FILTER_ERROR:I = 0x0

.field private static final TRON_COMPILATION_FILTER_EVERYTHING:I = 0xb

.field private static final TRON_COMPILATION_FILTER_EVERYTHING_IORAP:I = 0x18

.field private static final TRON_COMPILATION_FILTER_EVERYTHING_PROFILE:I = 0xa

.field private static final TRON_COMPILATION_FILTER_EVERYTHING_PROFILE_IORAP:I = 0x17

.field private static final TRON_COMPILATION_FILTER_EXTRACT:I = 0x3

.field private static final TRON_COMPILATION_FILTER_EXTRACT_IORAP:I = 0x10

.field private static final TRON_COMPILATION_FILTER_FAKE_RUN_FROM_APK:I = 0xc

.field private static final TRON_COMPILATION_FILTER_FAKE_RUN_FROM_APK_FALLBACK:I = 0xd

.field private static final TRON_COMPILATION_FILTER_FAKE_RUN_FROM_APK_FALLBACK_IORAP:I = 0x1a

.field private static final TRON_COMPILATION_FILTER_FAKE_RUN_FROM_APK_IORAP:I = 0x19

.field private static final TRON_COMPILATION_FILTER_FAKE_RUN_FROM_VDEX_FALLBACK:I = 0xe

.field private static final TRON_COMPILATION_FILTER_FAKE_RUN_FROM_VDEX_FALLBACK_IORAP:I = 0x1b

.field private static final TRON_COMPILATION_FILTER_QUICKEN:I = 0x5

.field private static final TRON_COMPILATION_FILTER_QUICKEN_IORAP:I = 0x12

.field private static final TRON_COMPILATION_FILTER_SPACE:I = 0x7

.field private static final TRON_COMPILATION_FILTER_SPACE_IORAP:I = 0x14

.field private static final TRON_COMPILATION_FILTER_SPACE_PROFILE:I = 0x6

.field private static final TRON_COMPILATION_FILTER_SPACE_PROFILE_IORAP:I = 0x13

.field private static final TRON_COMPILATION_FILTER_SPEED:I = 0x9

.field private static final TRON_COMPILATION_FILTER_SPEED_IORAP:I = 0x16

.field private static final TRON_COMPILATION_FILTER_SPEED_PROFILE:I = 0x8

.field private static final TRON_COMPILATION_FILTER_SPEED_PROFILE_IORAP:I = 0x15

.field private static final TRON_COMPILATION_FILTER_UNKNOWN:I = 0x1

.field private static final TRON_COMPILATION_FILTER_VERIFY:I = 0x4

.field private static final TRON_COMPILATION_FILTER_VERIFY_IORAP:I = 0x11

.field private static final TRON_COMPILATION_REASON_AB_OTA:I = 0x6

.field private static final TRON_COMPILATION_REASON_BG_DEXOPT:I = 0x5

.field private static final TRON_COMPILATION_REASON_BOOT_AFTER_OTA:I = 0x14

.field private static final TRON_COMPILATION_REASON_BOOT_DEPRECATED_SINCE_S:I = 0x3

.field private static final TRON_COMPILATION_REASON_CMDLINE:I = 0x16

.field private static final TRON_COMPILATION_REASON_ERROR:I = 0x0

.field private static final TRON_COMPILATION_REASON_FIRST_BOOT:I = 0x2

.field private static final TRON_COMPILATION_REASON_FIRST_USE:I = 0x19

.field private static final TRON_COMPILATION_REASON_INACTIVE:I = 0x7

.field private static final TRON_COMPILATION_REASON_INSTALL:I = 0x4

.field private static final TRON_COMPILATION_REASON_INSTALL_BASELINE:I = 0x1c

.field private static final TRON_COMPILATION_REASON_INSTALL_BULK:I = 0xb

.field private static final TRON_COMPILATION_REASON_INSTALL_BULK_DOWNGRADED:I = 0xd

.field private static final TRON_COMPILATION_REASON_INSTALL_BULK_DOWNGRADED_WITH_DM:I = 0x12

.field private static final TRON_COMPILATION_REASON_INSTALL_BULK_SECONDARY:I = 0xc

.field private static final TRON_COMPILATION_REASON_INSTALL_BULK_SECONDARY_DOWNGRADED:I = 0xe

.field private static final TRON_COMPILATION_REASON_INSTALL_BULK_SECONDARY_DOWNGRADED_WITH_DM:I = 0x13

.field private static final TRON_COMPILATION_REASON_INSTALL_BULK_SECONDARY_WITH_DM:I = 0x11

.field private static final TRON_COMPILATION_REASON_INSTALL_BULK_WITH_DM:I = 0x10

.field private static final TRON_COMPILATION_REASON_INSTALL_CREATE_DM:I = 0x1b

.field private static final TRON_COMPILATION_REASON_INSTALL_FAST:I = 0xa

.field private static final TRON_COMPILATION_REASON_INSTALL_FAST_WITH_DM:I = 0xf

.field private static final TRON_COMPILATION_REASON_INSTALL_WITH_DM:I = 0x9

.field private static final TRON_COMPILATION_REASON_POST_BOOT:I = 0x15

.field private static final TRON_COMPILATION_REASON_PREBUILT:I = 0x17

.field private static final TRON_COMPILATION_REASON_SECONDARY:I = 0x1a

.field private static final TRON_COMPILATION_REASON_SHARED:I = 0x8

.field private static final TRON_COMPILATION_REASON_UNKNOWN:I = 0x1

.field private static final TRON_COMPILATION_REASON_VDEX:I = 0x18


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mInstaller:Lcom/android/server/pm/Installer;

.field private mPackageManager:Landroid/content/pm/IPackageManager;


# direct methods
.method static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/pm/dex/ArtManagerService;->DEBUG:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$smgetCompilationFilterTronValue(Ljava/lang/String;)I
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/dex/ArtManagerService;->getCompilationFilterTronValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smgetCompilationReasonTronValue(Ljava/lang/String;)I
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/dex/ArtManagerService;->getCompilationReasonTronValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 86
    const-string v0, "ArtManagerService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/dex/ArtManagerService;->DEBUG:Z

    .line 101
    invoke-static {}, Lcom/android/server/pm/dex/ArtManagerService;->verifyTronLoggingConstants()V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/Installer;Ljava/lang/Object;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "installer"    # Lcom/android/server/pm/Installer;
    .param p3, "ignored"    # Ljava/lang/Object;

    .line 105
    invoke-direct {p0}, Landroid/content/pm/dex/IArtManager$Stub;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/android/server/pm/dex/ArtManagerService;->mContext:Landroid/content/Context;

    .line 107
    iput-object p2, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 108
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mHandler:Landroid/os/Handler;

    .line 110
    const-class v0, Landroid/content/pm/dex/ArtManagerInternal;

    new-instance v1, Lcom/android/server/pm/dex/ArtManagerService$ArtManagerInternalImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/pm/dex/ArtManagerService$ArtManagerInternalImpl;-><init>(Lcom/android/server/pm/dex/ArtManagerService;Lcom/android/server/pm/dex/ArtManagerService$ArtManagerInternalImpl-IA;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 111
    return-void
.end method

.method private checkAndroidPermissions(ILjava/lang/String;)Z
    .registers 7
    .param p1, "callingUid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_RUNTIME_PROFILES"

    const-string v2, "ArtManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 129
    const/16 v1, 0x2b

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_28

    .line 137
    const/4 v0, 0x0

    return v0

    .line 133
    :sswitch_1f
    iget-object v0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return v1

    .line 131
    :sswitch_27
    return v1

    :sswitch_data_28
    .sparse-switch
        0x0 -> :sswitch_27
        0x3 -> :sswitch_1f
    .end sparse-switch
.end method

.method private checkShellPermissions(ILjava/lang/String;I)Z
    .registers 10
    .param p1, "profileType"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callingUid"    # I

    .line 153
    const/4 v0, 0x0

    const/16 v1, 0x7d0

    if-eq p3, v1, :cond_6

    .line 154
    return v0

    .line 156
    :cond_6
    sget-boolean v1, Lcom/android/internal/os/RoSystemProperties;->DEBUGGABLE:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_c

    .line 157
    return v2

    .line 159
    :cond_c
    if-ne p1, v2, :cond_f

    .line 161
    return v0

    .line 163
    :cond_f
    const/4 v1, 0x0

    .line 165
    .local v1, "info":Landroid/content/pm/PackageInfo;
    :try_start_10
    invoke-direct {p0}, Lcom/android/server/pm/dex/ArtManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-interface {v3, p2, v4, v5, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1a} :catch_1c

    move-object v1, v3

    .line 168
    goto :goto_1d

    .line 166
    :catch_1c
    move-exception v3

    .line 169
    :goto_1d
    if-nez v1, :cond_20

    .line 170
    return v0

    .line 174
    :cond_20
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_29

    move v0, v2

    :cond_29
    return v0
.end method

.method private createProfileSnapshot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "classpath"    # Ljava/lang/String;
    .param p4, "appId"    # I
    .param p5, "callback"    # Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;

    .line 273
    const/4 v0, 0x2

    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v1, p4, p1, p2, p3}, Lcom/android/server/pm/Installer;->createProfileSnapshot(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 274
    invoke-direct {p0, p5, p1, v0}, Lcom/android/server/pm/dex/ArtManagerService;->postError(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;I)V
    :try_end_c
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1 .. :try_end_c} :catch_56

    .line 275
    return-void

    .line 280
    :cond_d
    nop

    .line 283
    invoke-static {p1, p2}, Landroid/content/pm/dex/ArtManager;->getProfileSnapshotFileForName(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 285
    .local v1, "snapshotProfile":Ljava/io/File;
    const/4 v2, 0x0

    .line 287
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    const/high16 v3, 0x10000000

    :try_start_15
    invoke-static {v1, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    move-object v2, v3

    .line 288
    if-eqz v2, :cond_2b

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->valid()Z

    move-result v3

    if-nez v3, :cond_27

    goto :goto_2b

    .line 291
    :cond_27
    invoke-direct {p0, p1, v2, p5}, Lcom/android/server/pm/dex/ArtManagerService;->postSuccess(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V

    goto :goto_2e

    .line 289
    :cond_2b
    :goto_2b
    invoke-direct {p0, p5, p1, v0}, Lcom/android/server/pm/dex/ArtManagerService;->postError(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;I)V
    :try_end_2e
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_2e} :catch_2f

    .line 297
    :goto_2e
    goto :goto_55

    .line 293
    :catch_2f
    move-exception v3

    .line 294
    .local v3, "e":Ljava/io/FileNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not open snapshot profile for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ArtManagerService"

    invoke-static {v5, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 296
    invoke-direct {p0, p5, p1, v0}, Lcom/android/server/pm/dex/ArtManagerService;->postError(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;I)V

    .line 298
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :goto_55
    return-void

    .line 277
    .end local v1    # "snapshotProfile":Ljava/io/File;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_56
    move-exception v1

    .line 278
    .local v1, "e":Lcom/android/server/pm/Installer$InstallerException;
    invoke-direct {p0, p5, p1, v0}, Lcom/android/server/pm/dex/ArtManagerService;->postError(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;I)V

    .line 279
    return-void
.end method

.method private destroyProfileSnapshot(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "profileName"    # Ljava/lang/String;

    .line 301
    sget-boolean v0, Lcom/android/server/pm/dex/ArtManagerService;->DEBUG:Z

    const-string v1, ":"

    const-string v2, "ArtManagerService"

    if-eqz v0, :cond_26

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Destroying profile snapshot for"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_26
    :try_start_26
    iget-object v0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/Installer;->destroyProfileSnapshot(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_26 .. :try_end_2b} :catch_2c

    .line 310
    goto :goto_4b

    .line 307
    :catch_2c
    move-exception v0

    .line 308
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to destroy profile snapshot for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 311
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_4b
    return-void
.end method

.method private static getCompilationFilterTronValue(Ljava/lang/String;)I
    .registers 25
    .param p0, "compilationFilter"    # Ljava/lang/String;

    .line 679
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x15

    const/16 v3, 0x14

    const/16 v4, 0x13

    const/16 v5, 0x12

    const/16 v6, 0x11

    const/16 v7, 0x10

    const/16 v8, 0xf

    const/16 v9, 0xe

    const/16 v10, 0xd

    const/16 v11, 0xc

    const/16 v12, 0xb

    const/16 v13, 0xa

    const/16 v14, 0x9

    const/16 v15, 0x8

    const/16 v16, 0x7

    const/16 v17, 0x6

    const/16 v18, 0x5

    const/16 v19, 0x4

    const/16 v20, 0x3

    const/16 v21, 0x2

    const/16 v22, 0x0

    const/16 v23, 0x1

    sparse-switch v1, :sswitch_data_1b0

    :cond_35
    goto/16 :goto_183

    :sswitch_37
    const-string/jumbo v1, "run-from-apk-fallback"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move v1, v10

    goto/16 :goto_184

    :sswitch_43
    const-string/jumbo v1, "quicken-iorap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move v1, v5

    goto/16 :goto_184

    :sswitch_4f
    const-string/jumbo v1, "space-iorap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move v1, v3

    goto/16 :goto_184

    :sswitch_5b
    const-string/jumbo v1, "speed-iorap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/16 v1, 0x16

    goto/16 :goto_184

    :sswitch_68
    const-string/jumbo v1, "run-from-apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move v1, v11

    goto/16 :goto_184

    :sswitch_74
    const-string v1, "everything-profile-iorap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/16 v1, 0x17

    goto/16 :goto_184

    :sswitch_80
    const-string/jumbo v1, "quicken"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move/from16 v1, v18

    goto/16 :goto_184

    :sswitch_8d
    const-string v1, "everything-iorap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/16 v1, 0x18

    goto/16 :goto_184

    :sswitch_99
    const-string v1, "everything"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move v1, v12

    goto/16 :goto_184

    :sswitch_a4
    const-string/jumbo v1, "space-profile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move/from16 v1, v17

    goto/16 :goto_184

    :sswitch_b1
    const-string/jumbo v1, "run-from-apk-iorap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/16 v1, 0x19

    goto/16 :goto_184

    :sswitch_be
    const-string/jumbo v1, "speed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move v1, v14

    goto/16 :goto_184

    :sswitch_ca
    const-string/jumbo v1, "space"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move/from16 v1, v16

    goto/16 :goto_184

    :sswitch_d7
    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move/from16 v1, v22

    goto/16 :goto_184

    :sswitch_e3
    const-string v1, "assume-verified-iorap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move v1, v8

    goto/16 :goto_184

    :sswitch_ee
    const-string/jumbo v1, "run-from-vdex-fallback-iorap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/16 v1, 0x1b

    goto/16 :goto_184

    :sswitch_fb
    const-string/jumbo v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move/from16 v1, v23

    goto/16 :goto_184

    :sswitch_108
    const-string/jumbo v1, "space-profile-iorap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move v1, v4

    goto/16 :goto_184

    :sswitch_114
    const-string/jumbo v1, "verify"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move/from16 v1, v19

    goto/16 :goto_184

    :sswitch_121
    const-string/jumbo v1, "run-from-vdex-fallback"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move v1, v9

    goto :goto_184

    :sswitch_12c
    const-string/jumbo v1, "run-from-apk-fallback-iorap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/16 v1, 0x1a

    goto :goto_184

    :sswitch_138
    const-string/jumbo v1, "speed-profile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move v1, v15

    goto :goto_184

    :sswitch_143
    const-string v1, "extract"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move/from16 v1, v20

    goto :goto_184

    :sswitch_14e
    const-string v1, "extract-iorap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move v1, v7

    goto :goto_184

    :sswitch_158
    const-string/jumbo v1, "verify-iorap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move v1, v6

    goto :goto_184

    :sswitch_163
    const-string v1, "everything-profile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move v1, v13

    goto :goto_184

    :sswitch_16d
    const-string v1, "assume-verified"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move/from16 v1, v21

    goto :goto_184

    :sswitch_178
    const-string/jumbo v1, "speed-profile-iorap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move v1, v2

    goto :goto_184

    :goto_183
    const/4 v1, -0x1

    :goto_184
    packed-switch v1, :pswitch_data_222

    .line 713
    return v23

    .line 712
    :pswitch_188
    const/16 v1, 0x1b

    return v1

    .line 710
    :pswitch_18b
    const/16 v1, 0x1a

    return v1

    .line 708
    :pswitch_18e
    const/16 v1, 0x19

    return v1

    .line 707
    :pswitch_191
    const/16 v1, 0x18

    return v1

    .line 706
    :pswitch_194
    const/16 v1, 0x17

    return v1

    .line 704
    :pswitch_197
    const/16 v1, 0x16

    return v1

    .line 703
    :pswitch_19a
    return v2

    .line 702
    :pswitch_19b
    return v3

    .line 701
    :pswitch_19c
    return v4

    .line 700
    :pswitch_19d
    return v5

    .line 699
    :pswitch_19e
    return v6

    .line 698
    :pswitch_19f
    return v7

    .line 697
    :pswitch_1a0
    return v8

    .line 696
    :pswitch_1a1
    return v9

    .line 694
    :pswitch_1a2
    return v10

    .line 692
    :pswitch_1a3
    return v11

    .line 691
    :pswitch_1a4
    return v12

    .line 690
    :pswitch_1a5
    return v13

    .line 689
    :pswitch_1a6
    return v14

    .line 688
    :pswitch_1a7
    return v15

    .line 687
    :pswitch_1a8
    return v16

    .line 686
    :pswitch_1a9
    return v17

    .line 685
    :pswitch_1aa
    return v18

    .line 684
    :pswitch_1ab
    return v19

    .line 683
    :pswitch_1ac
    return v20

    .line 682
    :pswitch_1ad
    return v21

    .line 681
    :pswitch_1ae
    return v23

    .line 680
    :pswitch_1af
    return v22

    :sswitch_data_1b0
    .sparse-switch
        -0x7dd94aef -> :sswitch_178
        -0x74ad4b37 -> :sswitch_16d
        -0x6b7d2b71 -> :sswitch_163
        -0x65cd9119 -> :sswitch_158
        -0x65986311 -> :sswitch_14e
        -0x4dcd237f -> :sswitch_143
        -0x4358c9dd -> :sswitch_138
        -0x405bb3de -> :sswitch_12c
        -0x35c83f13 -> :sswitch_121
        -0x30df7787 -> :sswitch_114
        -0x29c91470 -> :sswitch_108
        -0x10fa53b6 -> :sswitch_fb
        -0x2ad7fa5 -> :sswitch_ee
        0x3061f37 -> :sswitch_e3
        0x5c4d208 -> :sswitch_d7
        0x688f106 -> :sswitch_ca
        0x6890047 -> :sswitch_be
        0xf517369 -> :sswitch_b1
        0x14c5f7e2 -> :sswitch_a4
        0x17efcab3 -> :sswitch_99
        0x23319da1 -> :sswitch_8d
        0x273d6b56 -> :sswitch_80
        0x3374d27d -> :sswitch_74
        0x36f5967b -> :sswitch_68
        0x3a695435 -> :sswitch_5b
        0x4e7b79b4 -> :sswitch_4f
        0x585ef804 -> :sswitch_43
        0x71a3adf4 -> :sswitch_37
    .end sparse-switch

    :pswitch_data_222
    .packed-switch 0x0
        :pswitch_1af
        :pswitch_1ae
        :pswitch_1ad
        :pswitch_1ac
        :pswitch_1ab
        :pswitch_1aa
        :pswitch_1a9
        :pswitch_1a8
        :pswitch_1a7
        :pswitch_1a6
        :pswitch_1a5
        :pswitch_1a4
        :pswitch_1a3
        :pswitch_1a2
        :pswitch_1a1
        :pswitch_1a0
        :pswitch_19f
        :pswitch_19e
        :pswitch_19d
        :pswitch_19c
        :pswitch_19b
        :pswitch_19a
        :pswitch_197
        :pswitch_194
        :pswitch_191
        :pswitch_18e
        :pswitch_18b
        :pswitch_188
    .end packed-switch
.end method

.method private static getCompilationReasonTronValue(Ljava/lang/String;)I
    .registers 25
    .param p0, "compilationReason"    # Ljava/lang/String;

    .line 628
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    const/16 v3, 0xf

    const/16 v4, 0x9

    const/16 v5, 0xe

    const/16 v6, 0xd

    const/16 v7, 0xc

    const/16 v8, 0xb

    const/16 v9, 0xa

    const/16 v10, 0x1a

    const/16 v11, 0x19

    const/16 v12, 0x18

    const/16 v13, 0x17

    const/16 v14, 0x8

    const/4 v15, 0x7

    const/16 v16, 0x6

    const/16 v17, 0x5

    const/16 v18, 0x4

    const/16 v19, 0x15

    const/16 v20, 0x14

    const/16 v21, 0x2

    const/16 v22, 0x0

    const/16 v23, 0x16

    sparse-switch v1, :sswitch_data_192

    :cond_34
    goto/16 :goto_166

    :sswitch_36
    const-string v1, "install-bulk-downgraded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    const/16 v1, 0x13

    goto/16 :goto_167

    :sswitch_42
    const-string v1, "install-fast"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    move v1, v2

    goto/16 :goto_167

    :sswitch_4d
    const-string v1, "install-bulk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    const/16 v1, 0x11

    goto/16 :goto_167

    :sswitch_59
    const-string v1, "install"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    move/from16 v1, v17

    goto/16 :goto_167

    :sswitch_65
    const-string/jumbo v1, "post-boot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    move/from16 v1, v18

    goto/16 :goto_167

    :sswitch_72
    const-string v1, "install-bulk-secondary-downgraded-dm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    move v1, v10

    goto/16 :goto_167

    :sswitch_7d
    const-string v1, "install-bulk-downgraded-dm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    move v1, v11

    goto/16 :goto_167

    :sswitch_88
    const-string v1, "install-bulk-secondary-downgraded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    move/from16 v1, v20

    goto/16 :goto_167

    :sswitch_94
    const-string v1, "install-create-dm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    move v1, v5

    goto/16 :goto_167

    :sswitch_9f
    const-string v1, "install-dm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    move/from16 v1, v19

    goto/16 :goto_167

    :sswitch_ab
    const-string v1, "cmdline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    move/from16 v1, v22

    goto/16 :goto_167

    :sswitch_b7
    const-string v1, "first-use"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    move v1, v7

    goto/16 :goto_167

    :sswitch_c2
    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    const/4 v1, 0x1

    goto/16 :goto_167

    :sswitch_cd
    const-string v1, "inactive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    move v1, v14

    goto/16 :goto_167

    :sswitch_d8
    const-string v1, "install-bulk-secondary"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    const/16 v1, 0x12

    goto/16 :goto_167

    :sswitch_e4
    const-string/jumbo v1, "vdex"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    move v1, v8

    goto/16 :goto_167

    :sswitch_f0
    const-string v1, "first-boot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    move/from16 v1, v21

    goto/16 :goto_167

    :sswitch_fc
    const-string v1, "install-bulk-dm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    move v1, v13

    goto/16 :goto_167

    :sswitch_107
    const-string v1, "boot-after-ota"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    const/4 v1, 0x3

    goto :goto_167

    :sswitch_111
    const-string/jumbo v1, "secondary"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    move v1, v6

    goto :goto_167

    :sswitch_11c
    const-string/jumbo v1, "shared"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    move v1, v4

    goto :goto_167

    :sswitch_127
    const-string v1, "install-bulk-secondary-dm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    move v1, v12

    goto :goto_167

    :sswitch_131
    const-string/jumbo v1, "prebuilt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    move v1, v9

    goto :goto_167

    :sswitch_13c
    const-string v1, "ab-ota"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    move v1, v15

    goto :goto_167

    :sswitch_146
    const-string v1, "baseline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    move v1, v3

    goto :goto_167

    :sswitch_150
    const-string v1, "install-fast-dm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    move/from16 v1, v23

    goto :goto_167

    :sswitch_15b
    const-string v1, "bg-dexopt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    move/from16 v1, v16

    goto :goto_167

    :goto_166
    const/4 v1, -0x1

    :goto_167
    packed-switch v1, :pswitch_data_200

    .line 671
    const/4 v1, 0x1

    return v1

    .line 670
    :pswitch_16c
    const/16 v1, 0x13

    return v1

    .line 668
    :pswitch_16f
    const/16 v1, 0x12

    return v1

    .line 666
    :pswitch_172
    const/16 v1, 0x11

    return v1

    .line 664
    :pswitch_175
    return v2

    .line 662
    :pswitch_176
    return v3

    .line 660
    :pswitch_177
    return v4

    .line 656
    :pswitch_178
    return v5

    .line 654
    :pswitch_179
    return v6

    .line 652
    :pswitch_17a
    return v7

    .line 650
    :pswitch_17b
    return v8

    .line 648
    :pswitch_17c
    return v9

    .line 645
    :pswitch_17d
    const/16 v1, 0x1c

    return v1

    .line 644
    :pswitch_180
    const/16 v1, 0x1b

    return v1

    .line 643
    :pswitch_183
    return v10

    .line 642
    :pswitch_184
    return v11

    .line 640
    :pswitch_185
    return v12

    .line 639
    :pswitch_186
    return v13

    .line 638
    :pswitch_187
    return v14

    .line 637
    :pswitch_188
    return v15

    .line 636
    :pswitch_189
    return v16

    .line 635
    :pswitch_18a
    return v17

    .line 634
    :pswitch_18b
    return v18

    .line 633
    :pswitch_18c
    return v19

    .line 632
    :pswitch_18d
    return v20

    .line 631
    :pswitch_18e
    return v21

    .line 630
    :pswitch_18f
    return v22

    .line 629
    :pswitch_190
    return v23

    nop

    :sswitch_data_192
    .sparse-switch
        -0x754fea3c -> :sswitch_15b
        -0x6d771298 -> :sswitch_150
        -0x669119bb -> :sswitch_146
        -0x54fec890 -> :sswitch_13c
        -0x4d00be45 -> :sswitch_131
        -0x43162b55 -> :sswitch_127
        -0x35db539b -> :sswitch_11c
        -0x30bb8e8c -> :sswitch_111
        -0x23098d70 -> :sswitch_107
        -0x1f55cf0e -> :sswitch_fc
        -0xc5e4811 -> :sswitch_f0
        0x3727e1 -> :sswitch_e4
        0x10534eb -> :sswitch_d8
        0x1785c6b -> :sswitch_cd
        0x5c4d208 -> :sswitch_c2
        0x7dc34ea -> :sswitch_b7
        0x34bd042e -> :sswitch_ab
        0x35aae5fb -> :sswitch_9f
        0x3c0ea548 -> :sswitch_94
        0x5ce564b1 -> :sswitch_88
        0x68b4487e -> :sswitch_7d
        0x6ac14725 -> :sswitch_72
        0x749a27ff -> :sswitch_65
        0x74ae259b -> :sswitch_59
        0x76889604 -> :sswitch_4d
        0x768a1d4e -> :sswitch_42
        0x778489f8 -> :sswitch_36
    .end sparse-switch

    :pswitch_data_200
    .packed-switch 0x0
        :pswitch_190
        :pswitch_18f
        :pswitch_18e
        :pswitch_18d
        :pswitch_18c
        :pswitch_18b
        :pswitch_18a
        :pswitch_189
        :pswitch_188
        :pswitch_187
        :pswitch_186
        :pswitch_185
        :pswitch_184
        :pswitch_183
        :pswitch_180
        :pswitch_17d
        :pswitch_17c
        :pswitch_17b
        :pswitch_17a
        :pswitch_179
        :pswitch_178
        :pswitch_177
        :pswitch_176
        :pswitch_175
        :pswitch_172
        :pswitch_16f
        :pswitch_16c
    .end packed-switch
.end method

.method private getPackageManager()Landroid/content/pm/IPackageManager;
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    if-nez v0, :cond_12

    .line 116
    nop

    .line 117
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 116
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 119
    :cond_12
    iget-object v0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method private getPackageProfileNames(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArrayMap;
    .registers 9
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 523
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 524
    .local v0, "result":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isHasCode()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 525
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    :cond_17
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v1

    .line 529
    .local v1, "splitCodePaths":[Ljava/lang/String;
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitFlags()[I

    move-result-object v2

    .line 530
    .local v2, "splitFlags":[I
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object v3

    .line 531
    .local v3, "splitNames":[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_41

    .line 532
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2a
    array-length v5, v1

    if-ge v4, v5, :cond_41

    .line 533
    aget v5, v2, v4

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_3e

    .line 534
    aget-object v5, v1, v4

    aget-object v6, v3, v4

    invoke-static {v6}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    :cond_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 538
    .end local v4    # "i":I
    :cond_41
    return-object v0
.end method

.method static synthetic lambda$postError$0(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;ILjava/lang/String;)V
    .registers 6
    .param p0, "callback"    # Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;
    .param p1, "errCode"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 361
    :try_start_0
    invoke-interface {p0, p1}, Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;->onError(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 364
    goto :goto_1d

    .line 362
    :catch_4
    move-exception v0

    .line 363
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to callback after profile snapshot for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ArtManagerService"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 365
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1d
    return-void
.end method

.method static synthetic lambda$postSuccess$1(Landroid/os/ParcelFileDescriptor;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V
    .registers 7
    .param p0, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "callback"    # Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 378
    const-string v0, "ArtManagerService"

    :try_start_2
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 379
    invoke-interface {p1, p0}, Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;->onSuccess(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_2a

    .line 381
    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The snapshot FD became invalid before posting the result for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;->onError(I)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2a} :catch_31
    .catchall {:try_start_2 .. :try_end_2a} :catchall_2f

    .line 389
    :goto_2a
    nop

    :goto_2b
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 390
    goto :goto_4a

    .line 389
    :catchall_2f
    move-exception v0

    goto :goto_4b

    .line 385
    :catch_31
    move-exception v1

    .line 386
    .local v1, "e":Ljava/lang/Exception;
    :try_start_32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call onSuccess after profile snapshot for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_48
    .catchall {:try_start_32 .. :try_end_48} :catchall_2f

    .line 389
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_2b

    .line 391
    :goto_4a
    return-void

    .line 389
    :goto_4b
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 390
    throw v0
.end method

.method private postError(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;I)V
    .registers 6
    .param p1, "callback"    # Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "errCode"    # I

    .line 355
    sget-boolean v0, Lcom/android/server/pm/dex/ArtManagerService;->DEBUG:Z

    if-eqz v0, :cond_26

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to snapshot profile for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ArtManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_26
    iget-object v0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/dex/ArtManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p3, p2}, Lcom/android/server/pm/dex/ArtManagerService$$ExternalSyntheticLambda0;-><init>(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 366
    return-void
.end method

.method private postSuccess(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "callback"    # Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;

    .line 370
    sget-boolean v0, Lcom/android/server/pm/dex/ArtManagerService;->DEBUG:Z

    if-eqz v0, :cond_1c

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Successfully snapshot profile for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ArtManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_1c
    iget-object v0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/dex/ArtManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2, p3, p1}, Lcom/android/server/pm/dex/ArtManagerService$$ExternalSyntheticLambda1;-><init>(Landroid/os/ParcelFileDescriptor;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 392
    return-void
.end method

.method private snapshotAppProfile(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "codePath"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;

    .line 220
    const/4 v0, 0x0

    .line 229
    .local v0, "info":Landroid/content/pm/PackageInfo;
    const/4 v1, 0x0

    :try_start_2
    invoke-direct {p0}, Lcom/android/server/pm/dex/ArtManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-interface {v2, p1, v3, v4, v1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_e

    move-object v0, v2

    .line 232
    goto :goto_f

    .line 230
    :catch_e
    move-exception v2

    .line 233
    :goto_f
    if-nez v0, :cond_15

    .line 234
    invoke-direct {p0, p3, p1, v1}, Lcom/android/server/pm/dex/ArtManagerService;->postError(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;I)V

    .line 235
    return-void

    .line 238
    :cond_15
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 239
    .local v1, "pathFound":Z
    const/4 v2, 0x0

    .line 240
    .local v2, "splitName":Ljava/lang/String;
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v3

    .line 241
    .local v3, "splitCodePaths":[Ljava/lang/String;
    const/4 v4, 0x1

    if-nez v1, :cond_42

    if-eqz v3, :cond_42

    .line 242
    array-length v5, v3

    sub-int/2addr v5, v4

    .local v5, "i":I
    :goto_2d
    if-ltz v5, :cond_42

    .line 243
    aget-object v6, v3, v5

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 244
    const/4 v1, 0x1

    .line 245
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    aget-object v2, v6, v5

    .line 246
    goto :goto_42

    .line 242
    :cond_3f
    add-int/lit8 v5, v5, -0x1

    goto :goto_2d

    .line 250
    .end local v5    # "i":I
    :cond_42
    :goto_42
    if-nez v1, :cond_48

    .line 251
    invoke-direct {p0, p3, p1, v4}, Lcom/android/server/pm/dex/ArtManagerService;->postError(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;I)V

    .line 252
    return-void

    .line 256
    :cond_48
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    .line 257
    .local v4, "appId":I
    if-gez v4, :cond_6f

    .line 258
    const/4 v5, 0x2

    invoke-direct {p0, p3, p1, v5}, Lcom/android/server/pm/dex/ArtManagerService;->postError(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;I)V

    .line 259
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AppId is -1 for package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ArtManagerService"

    invoke-static {v6, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return-void

    .line 263
    :cond_6f
    invoke-static {v2}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, p0

    move-object v6, p1

    move-object v8, p2

    move v9, v4

    move-object v10, p3

    invoke-direct/range {v5 .. v10}, Lcom/android/server/pm/dex/ArtManagerService;->createProfileSnapshot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V

    .line 266
    invoke-static {v2}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/android/server/pm/dex/ArtManagerService;->destroyProfileSnapshot(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method private snapshotBootImageProfile(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V
    .registers 10
    .param p1, "callback"    # Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;

    .line 339
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const-string v1, "BOOTCLASSPATH"

    invoke-static {v1}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 340
    const-string v1, "SYSTEMSERVERCLASSPATH"

    invoke-static {v1}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 339
    const-string v1, ":"

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, "classpath":Ljava/lang/String;
    const-string v3, "android"

    const-string v4, "android.prof"

    const/4 v6, -0x1

    move-object v2, p0

    move-object v5, v0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/dex/ArtManagerService;->createProfileSnapshot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V

    .line 346
    const-string v1, "android"

    const-string v2, "android.prof"

    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/dex/ArtManagerService;->destroyProfileSnapshot(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    return-void
.end method

.method private static verifyTronLoggingConstants()V
    .registers 6

    .line 718
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2f

    .line 719
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 720
    .local v1, "reason":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/pm/dex/ArtManagerService;->getCompilationReasonTronValue(Ljava/lang/String;)I

    move-result v2

    .line 721
    .local v2, "value":I
    if-eqz v2, :cond_16

    const/4 v3, 0x1

    if-eq v2, v3, :cond_16

    .line 718
    .end local v1    # "reason":Ljava/lang/String;
    .end local v2    # "value":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 723
    .restart local v1    # "reason":Ljava/lang/String;
    .restart local v2    # "value":I
    :cond_16
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Compilation reason not configured for TRON logging: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 727
    .end local v0    # "i":I
    .end local v1    # "reason":Ljava/lang/String;
    .end local v2    # "value":I
    :cond_2f
    return-void
.end method


# virtual methods
.method public clearAppProfiles(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 7
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 455
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/dex/ArtManagerService;->getPackageProfileNames(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArrayMap;

    move-result-object v0

    .line 456
    .local v0, "packageProfileNames":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_a
    if-ltz v1, :cond_1e

    .line 457
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 458
    .local v2, "profileName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/server/pm/Installer;->clearAppProfiles(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_1b} :catch_1f

    .line 456
    .end local v2    # "profileName":Ljava/lang/String;
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 462
    .end local v0    # "packageProfileNames":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "i":I
    :cond_1e
    goto :goto_29

    .line 460
    :catch_1f
    move-exception v0

    .line 461
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ArtManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_29
    return-void
.end method

.method public compileLayouts(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 12
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 488
    const-string v0, "PackageManager"

    const/4 v1, 0x0

    :try_start_3
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 489
    .local v2, "packageName":Ljava/lang/String;
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v3

    .line 491
    .local v3, "apkPath":Ljava/lang/String;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {p1, v4}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->getDataDir(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;I)Ljava/io/File;

    move-result-object v4

    .line 492
    .local v4, "dataDir":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/code_cache/compiled_view.dex"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 493
    .local v5, "outDexFile":Ljava/lang/String;
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isPrivileged()Z

    move-result v6

    if-nez v6, :cond_7f

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isUseEmbeddedDex()Z

    move-result v6

    if-nez v6, :cond_7f

    .line 494
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isDefaultToDeviceProtectedStorage()Z

    move-result v6

    if-eqz v6, :cond_3d

    goto :goto_7f

    .line 502
    :cond_3d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Compiling layouts in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_6b
    .catchall {:try_start_3 .. :try_end_6b} :catchall_80

    .line 506
    .local v6, "callingId":J
    :try_start_6b
    iget-object v8, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 507
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v9

    .line 506
    invoke-virtual {v8, v3, v2, v5, v9}, Lcom/android/server/pm/Installer;->compileLayouts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v8
    :try_end_75
    .catchall {:try_start_6b .. :try_end_75} :catchall_79

    .line 509
    :try_start_75
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 506
    return v8

    .line 509
    :catchall_79
    move-exception v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 510
    nop

    .end local p0    # "this":Lcom/android/server/pm/dex/ArtManagerService;
    .end local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    throw v8
    :try_end_7f
    .catchall {:try_start_75 .. :try_end_7f} :catchall_80

    .line 500
    .end local v6    # "callingId":J
    .restart local p0    # "this":Lcom/android/server/pm/dex/ArtManagerService;
    .restart local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_7f
    :goto_7f
    return v1

    .line 512
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "apkPath":Ljava/lang/String;
    .end local v4    # "dataDir":Ljava/io/File;
    .end local v5    # "outDexFile":Ljava/lang/String;
    :catchall_80
    move-exception v2

    .line 513
    .local v2, "e":Ljava/lang/Throwable;
    const-string v3, "Failed to compile layouts"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 514
    return v1
.end method

.method public dumpProfiles(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V
    .registers 12
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "dumpClassesAndMethods"    # Z

    .line 469
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v0

    .line 471
    .local v0, "sharedGid":I
    :try_start_8
    invoke-direct {p0, p1}, Lcom/android/server/pm/dex/ArtManagerService;->getPackageProfileNames(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArrayMap;

    move-result-object v1

    move-object v7, v1

    .line 472
    .local v7, "packageProfileNames":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v8, v1

    .local v8, "i":I
    :goto_14
    if-ltz v8, :cond_33

    .line 473
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    .line 474
    .local v5, "codePath":Ljava/lang/String;
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    .line 475
    .local v4, "profileName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move v2, v0

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/Installer;->dumpProfiles(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_2f
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_8 .. :try_end_2f} :catch_34

    .line 472
    nop

    .end local v4    # "profileName":Ljava/lang/String;
    .end local v5    # "codePath":Ljava/lang/String;
    add-int/lit8 v8, v8, -0x1

    goto :goto_14

    .line 480
    .end local v7    # "packageProfileNames":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "i":I
    :cond_33
    goto :goto_3c

    .line 478
    :catch_34
    move-exception v1

    .line 479
    .local v1, "e":Lcom/android/server/pm/Installer$InstallerException;
    const-string v2, "ArtManagerService"

    const-string v3, "Failed to dump profiles"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 481
    .end local v1    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_3c
    return-void
.end method

.method public isRuntimeProfilingEnabled(ILjava/lang/String;)Z
    .registers 8
    .param p1, "profileType"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 315
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 316
    .local v0, "callingUid":I
    const/4 v1, 0x0

    const/16 v2, 0x7d0

    if-eq v0, v2, :cond_10

    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/dex/ArtManagerService;->checkAndroidPermissions(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 317
    return v1

    .line 320
    :cond_10
    const-string v2, "dalvik.vm.usejitprofiles"

    packed-switch p1, :pswitch_data_56

    .line 332
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid profile type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 325
    :pswitch_2e
    nop

    .line 327
    const-string v3, "dalvik.vm.profilebootclasspath"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 325
    const-string/jumbo v4, "persist.device_config.runtime_native_boot.profilebootclasspath"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 328
    .local v3, "profileBootClassPath":Z
    sget-boolean v4, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v4, :cond_44

    sget-boolean v4, Landroid/os/Build;->IS_ENG:Z

    if-eqz v4, :cond_4e

    .line 329
    :cond_44
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4e

    if-eqz v3, :cond_4e

    const/4 v1, 0x1

    goto :goto_4f

    :cond_4e
    nop

    .line 328
    :goto_4f
    return v1

    .line 322
    .end local v3    # "profileBootClassPath":Z
    :pswitch_50
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1

    nop

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_50
        :pswitch_2e
    .end packed-switch
.end method

.method public prepareAppProfiles(Lcom/android/server/pm/parsing/pkg/AndroidPackage;IZ)V
    .registers 20
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "user"    # I
    .param p3, "updateReferenceProfileContent"    # Z

    .line 403
    move-object/from16 v1, p0

    move/from16 v9, p2

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    .line 404
    .local v10, "appId":I
    if-gez v9, :cond_27

    .line 405
    const-string v0, "ArtManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid user id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    return-void

    .line 408
    :cond_27
    if-gez v10, :cond_42

    .line 409
    const-string v0, "ArtManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid app id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    return-void

    .line 413
    :cond_42
    :try_start_42
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/dex/ArtManagerService;->getPackageProfileNames(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArrayMap;

    move-result-object v0

    move-object v11, v0

    .line 414
    .local v11, "codePathsProfileNames":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v12, v0

    .local v12, "i":I
    :goto_4e
    if-ltz v12, :cond_b7

    .line 415
    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v13, v0

    .line 416
    .local v13, "codePath":Ljava/lang/String;
    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 417
    .local v6, "profileName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 421
    .local v0, "dexMetadataPath":Ljava/lang/String;
    if-eqz p3, :cond_75

    .line 422
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/content/pm/dex/DexMetadataHelper;->findDexMetadataForFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 423
    .local v2, "dexMetadata":Ljava/io/File;
    if-nez v2, :cond_6e

    const/4 v3, 0x0

    goto :goto_72

    :cond_6e
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    :goto_72
    move-object v0, v3

    move-object v14, v0

    goto :goto_76

    .line 421
    .end local v2    # "dexMetadata":Ljava/io/File;
    :cond_75
    move-object v14, v0

    .line 425
    .end local v0    # "dexMetadataPath":Ljava/lang/String;
    .local v14, "dexMetadataPath":Ljava/lang/String;
    :goto_76
    iget-object v15, v1, Lcom/android/server/pm/dex/ArtManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    monitor-enter v15
    :try_end_79
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_42 .. :try_end_79} :catch_b8

    .line 426
    :try_start_79
    iget-object v2, v1, Lcom/android/server/pm/dex/ArtManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move/from16 v4, p2

    move v5, v10

    move-object v7, v13

    move-object v8, v14

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/Installer;->prepareAppProfile(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 428
    .local v0, "result":Z
    if-nez v0, :cond_b0

    .line 429
    const-string v2, "ArtManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to prepare profile for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 430
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 429
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    .end local v0    # "result":Z
    :cond_b0
    monitor-exit v15

    .line 414
    .end local v6    # "profileName":Ljava/lang/String;
    .end local v13    # "codePath":Ljava/lang/String;
    .end local v14    # "dexMetadataPath":Ljava/lang/String;
    add-int/lit8 v12, v12, -0x1

    goto :goto_4e

    .line 432
    .restart local v6    # "profileName":Ljava/lang/String;
    .restart local v13    # "codePath":Ljava/lang/String;
    .restart local v14    # "dexMetadataPath":Ljava/lang/String;
    :catchall_b4
    move-exception v0

    monitor-exit v15
    :try_end_b6
    .catchall {:try_start_79 .. :try_end_b6} :catchall_b4

    .end local v10    # "appId":I
    .end local p0    # "this":Lcom/android/server/pm/dex/ArtManagerService;
    .end local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local p2    # "user":I
    .end local p3    # "updateReferenceProfileContent":Z
    :try_start_b6
    throw v0
    :try_end_b7
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_b6 .. :try_end_b7} :catch_b8

    .line 436
    .end local v6    # "profileName":Ljava/lang/String;
    .end local v11    # "codePathsProfileNames":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "i":I
    .end local v13    # "codePath":Ljava/lang/String;
    .end local v14    # "dexMetadataPath":Ljava/lang/String;
    .restart local v10    # "appId":I
    .restart local p0    # "this":Lcom/android/server/pm/dex/ArtManagerService;
    .restart local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local p2    # "user":I
    .restart local p3    # "updateReferenceProfileContent":Z
    :cond_b7
    goto :goto_d5

    .line 434
    :catch_b8
    move-exception v0

    .line 435
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    const-string v2, "ArtManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to prepare profile for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 437
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_d5
    return-void
.end method

.method public prepareAppProfiles(Lcom/android/server/pm/parsing/pkg/AndroidPackage;[IZ)V
    .registers 6
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "user"    # [I
    .param p3, "updateReferenceProfileContent"    # Z

    .line 445
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_c

    .line 446
    aget v1, p2, v0

    invoke-virtual {p0, p1, v1, p3}, Lcom/android/server/pm/dex/ArtManagerService;->prepareAppProfiles(Lcom/android/server/pm/parsing/pkg/AndroidPackage;IZ)V

    .line 445
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 448
    .end local v0    # "i":I
    :cond_c
    return-void
.end method

.method public snapshotRuntimeProfile(ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V
    .registers 11
    .param p1, "profileType"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "codePath"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;
    .param p5, "callingPackage"    # Ljava/lang/String;

    .line 183
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 184
    .local v0, "callingUid":I
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/dex/ArtManagerService;->checkShellPermissions(ILjava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_17

    .line 185
    invoke-direct {p0, v0, p5}, Lcom/android/server/pm/dex/ArtManagerService;->checkAndroidPermissions(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 187
    const/4 v1, 0x2

    :try_start_11
    invoke-interface {p4, v1}, Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;->onError(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_15

    .line 189
    goto :goto_16

    .line 188
    :catch_15
    move-exception v1

    .line 190
    :goto_16
    return-void

    .line 194
    :cond_17
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    .line 197
    .local v1, "bootImageProfile":Z
    :goto_1f
    if-nez v1, :cond_27

    .line 198
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 199
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 203
    :cond_27
    invoke-virtual {p0, p1, p5}, Lcom/android/server/pm/dex/ArtManagerService;->isRuntimeProfilingEnabled(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 207
    sget-boolean v2, Lcom/android/server/pm/dex/ArtManagerService;->DEBUG:Z

    if-eqz v2, :cond_53

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested snapshot for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ArtManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_53
    if-eqz v1, :cond_59

    .line 212
    invoke-direct {p0, p4}, Lcom/android/server/pm/dex/ArtManagerService;->snapshotBootImageProfile(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V

    goto :goto_5c

    .line 214
    :cond_59
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/pm/dex/ArtManagerService;->snapshotAppProfile(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V

    .line 216
    :goto_5c
    return-void

    .line 204
    :cond_5d
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Runtime profiling is not enabled for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
