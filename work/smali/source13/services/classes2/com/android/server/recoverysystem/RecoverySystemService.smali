.class public Lcom/android/server/recoverysystem/RecoverySystemService;
.super Landroid/os/IRecoverySystem$Stub;
.source "RecoverySystemService.java"

# interfaces
.implements Lcom/android/internal/widget/RebootEscrowListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;,
        Lcom/android/server/recoverysystem/RecoverySystemService$BlockData;,
        Lcom/android/server/recoverysystem/RecoverySystemService$Lifecycle;,
        Lcom/android/server/recoverysystem/RecoverySystemService$Injector;,
        Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;,
        Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;,
        Lcom/android/server/recoverysystem/RecoverySystemService$ResumeOnRebootActionsOnClear;,
        Lcom/android/server/recoverysystem/RecoverySystemService$ResumeOnRebootActionsOnRequest;
    }
.end annotation


# static fields
.field static final AB_UPDATE:Ljava/lang/String; = "ro.build.ab_update"

.field private static final APEX_INFO_SIZE_LIMIT:J = 0x258000L

.field private static final DATA_APPS_PATH:Ljava/lang/String; = "/data/miui/app"

.field private static final DEBUG:Z = false

.field private static final EXTENSION_PARAMETERS_AIRFLASH_CALLER:Ljava/lang/String; = "airflash_caller"

.field private static final EXTENSION_PARAMETERS_DISABLE_FACTORYRESET:Ljava/lang/String; = "disable_factoryreset"

.field private static final EXTENSION_PARAMETERS_DISABLE_FACTORYRESET_CALLER:Ljava/lang/String; = "disable_factoryreset_caller"

.field static final FATAL_ARM_ESCROW_ERRORS:Landroid/util/FastImmutableArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FastImmutableArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final INIT_SERVICE_CLEAR_BCB:Ljava/lang/String; = "init.svc.clear-bcb"

.field static final INIT_SERVICE_SETUP_BCB:Ljava/lang/String; = "init.svc.setup-bcb"

.field static final INIT_SERVICE_UNCRYPT:Ljava/lang/String; = "init.svc.uncrypt"

.field static final LSKF_CAPTURED_COUNT_PREF:Ljava/lang/String; = "lskf_captured_count"

.field static final LSKF_CAPTURED_TIMESTAMP_PREF:Ljava/lang/String; = "lskf_captured_timestamp"

.field private static final RECOVERY_SYSTEM_LOG_PATH:Ljava/lang/String;

.field static final RECOVERY_WIPE_DATA_COMMAND:Ljava/lang/String; = "--wipe_data"

.field static final REQUEST_LSKF_COUNT_PREF_SUFFIX:Ljava/lang/String; = "_request_lskf_count"

.field static final REQUEST_LSKF_TIMESTAMP_PREF_SUFFIX:Ljava/lang/String; = "_request_lskf_timestamp"

.field private static final RESCUE_LOG_COUNT:I = 0x32

.field private static final RET_ILLEGAL_NAME:I = 0x4

.field private static final RET_NO_PERMISSION:I = 0x1

.field private static final RET_OPERATE_FAIL:I = 0x2

.field private static final RET_SIZE_TOO_BIG:I = 0x3

.field private static final RET_SUCCESS:I = 0x0

.field private static final RET_TRANSPORT_FAIL:I = 0x5

.field private static final ROR_NEED_PREPARATION:I = 0x0

.field private static final ROR_NOT_REQUESTED:I = 0x0

.field private static final ROR_REQUESTED_NEED_CLEAR:I = 0x1

.field private static final ROR_REQUESTED_SKIP_CLEAR:I = 0x2

.field private static final ROR_SKIP_PREPARATION_AND_NOTIFY:I = 0x1

.field private static final ROR_SKIP_PREPARATION_NOT_NOTIFY:I = 0x2

.field private static final SOCKET_CONNECTION_MAX_RETRY:I = 0x7530

.field private static final SPLICED_DATA_APPS_PATH:Ljava/lang/String; = "/data/miui/apps.block"

.field private static final TAG:Ljava/lang/String; = "RecoverySystemService"

.field private static final UNCRYPT_SOCKET:Ljava/lang/String; = "uncrypt"

.field private static blockDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/recoverysystem/RecoverySystemService$BlockData;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRequestLock:Ljava/lang/Object;

.field private static splicingThreadList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCallerPendingRequest:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/IntentSender;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallerPreparedForReboot:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 133
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/recoverysystem/RecoverySystemService;->sRequestLock:Ljava/lang/Object;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/android/server/recoverysystem/RecoverySystemService;->blockDataList:Ljava/util/List;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/recoverysystem/RecoverySystemService;->splicingThreadList:Ljava/util/List;

    .line 152
    const-string/jumbo v0, "ro.build.ab_update"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 153
    const-string v0, "/mnt/rescue/recovery/last_system_operate_log"

    sput-object v0, Lcom/android/server/recoverysystem/RecoverySystemService;->RECOVERY_SYSTEM_LOG_PATH:Ljava/lang/String;

    goto :goto_2a

    .line 155
    :cond_26
    const-string v0, "/cache/recovery/last_system_operate_log"

    sput-object v0, Lcom/android/server/recoverysystem/RecoverySystemService;->RECOVERY_SYSTEM_LOG_PATH:Ljava/lang/String;

    .line 230
    :goto_2a
    new-instance v0, Landroid/util/FastImmutableArraySet;

    const/4 v2, 0x5

    new-array v3, v2, [Ljava/lang/Integer;

    .line 232
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    const/4 v1, 0x1

    .line 233
    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v1

    .line 234
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    .line 235
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v5

    const/4 v2, 0x6

    .line 236
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-direct {v0, v3}, Landroid/util/FastImmutableArraySet;-><init>([Ljava/lang/Object;)V

    sput-object v0, Lcom/android/server/recoverysystem/RecoverySystemService;->FATAL_ARM_ESCROW_ERRORS:Landroid/util/FastImmutableArraySet;

    .line 230
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 446
    new-instance v0, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/recoverysystem/RecoverySystemService;-><init>(Lcom/android/server/recoverysystem/RecoverySystemService$Injector;)V

    .line 447
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/recoverysystem/RecoverySystemService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/recoverysystem/RecoverySystemService;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/recoverysystem/RecoverySystemService$Injector;)V
    .registers 3
    .param p1, "injector"    # Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    .line 450
    invoke-direct {p0}, Landroid/os/IRecoverySystem$Stub;-><init>()V

    .line 178
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    .line 180
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    .line 451
    iput-object p1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    .line 452
    invoke-virtual {p1}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mContext:Landroid/content/Context;

    .line 453
    return-void
.end method

.method private appendRecoveryParameters(Ljava/util/Map;Ljava/lang/String;)V
    .registers 12
    .param p2, "lastExtensionParametersPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 832
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "="

    const-string v1, "RecoverySystemService"

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 834
    .local v2, "lastExtensionParameters":Ljava/io/File;
    :try_start_9
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_61

    .line 835
    .local v3, "fileReader":Ljava/io/FileReader;
    :try_start_e
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_57

    .line 836
    .local v4, "reader":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 837
    .local v5, "line":Ljava/lang/String;
    :goto_14
    :try_start_14
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    if-eqz v6, :cond_46

    .line 838
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 839
    .local v6, "parameter":[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x2

    if-eq v7, v8, :cond_28

    goto :goto_14

    .line 840
    :cond_28
    const/4 v7, 0x0

    aget-object v8, v6, v7

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_45

    .line 841
    aget-object v7, v6, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_45
    .catchall {:try_start_14 .. :try_end_45} :catchall_4d

    .line 843
    .end local v6    # "parameter":[Ljava/lang/String;
    :cond_45
    goto :goto_14

    .line 844
    .end local v5    # "line":Ljava/lang/String;
    :cond_46
    :try_start_46
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_57

    .end local v4    # "reader":Ljava/io/BufferedReader;
    :try_start_49
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_61

    .line 846
    .end local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_67

    .line 834
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_4d
    move-exception v5

    :try_start_4e
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_52

    goto :goto_56

    :catchall_52
    move-exception v6

    :try_start_53
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "lastExtensionParameters":Ljava/io/File;
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .end local p0    # "this":Lcom/android/server/recoverysystem/RecoverySystemService;
    .end local p1    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p2    # "lastExtensionParametersPath":Ljava/lang/String;
    :goto_56
    throw v5
    :try_end_57
    .catchall {:try_start_53 .. :try_end_57} :catchall_57

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "lastExtensionParameters":Ljava/io/File;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    .restart local p0    # "this":Lcom/android/server/recoverysystem/RecoverySystemService;
    .restart local p1    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p2    # "lastExtensionParametersPath":Ljava/lang/String;
    :catchall_57
    move-exception v4

    :try_start_58
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_5c

    goto :goto_60

    :catchall_5c
    move-exception v5

    :try_start_5d
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "lastExtensionParameters":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/recoverysystem/RecoverySystemService;
    .end local p1    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p2    # "lastExtensionParametersPath":Ljava/lang/String;
    :goto_60
    throw v4
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_61} :catch_61

    .line 844
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v2    # "lastExtensionParameters":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/recoverysystem/RecoverySystemService;
    .restart local p1    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p2    # "lastExtensionParametersPath":Ljava/lang/String;
    :catch_61
    move-exception v3

    .line 845
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "Recovery extension parameters does not exist. "

    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 849
    .end local v3    # "e":Ljava/io/IOException;
    :goto_67
    :try_start_67
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6c} :catch_c8

    .line 850
    .local v3, "fileWriter":Ljava/io/FileWriter;
    :try_start_6c
    new-instance v4, Ljava/io/BufferedWriter;

    invoke-direct {v4, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_71
    .catchall {:try_start_6c .. :try_end_71} :catchall_be

    .line 851
    .local v4, "writer":Ljava/io/BufferedWriter;
    :try_start_71
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_79
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_ad

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 852
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 853
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_ac
    .catchall {:try_start_71 .. :try_end_ac} :catchall_b4

    .line 854
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_79

    .line 855
    :cond_ad
    :try_start_ad
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_b0
    .catchall {:try_start_ad .. :try_end_b0} :catchall_be

    .end local v4    # "writer":Ljava/io/BufferedWriter;
    :try_start_b0
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b3} :catch_c8

    .line 857
    .end local v3    # "fileWriter":Ljava/io/FileWriter;
    goto :goto_e5

    .line 849
    .restart local v3    # "fileWriter":Ljava/io/FileWriter;
    .restart local v4    # "writer":Ljava/io/BufferedWriter;
    :catchall_b4
    move-exception v0

    :try_start_b5
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_b8
    .catchall {:try_start_b5 .. :try_end_b8} :catchall_b9

    goto :goto_bd

    :catchall_b9
    move-exception v5

    :try_start_ba
    invoke-virtual {v0, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "lastExtensionParameters":Ljava/io/File;
    .end local v3    # "fileWriter":Ljava/io/FileWriter;
    .end local p0    # "this":Lcom/android/server/recoverysystem/RecoverySystemService;
    .end local p1    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p2    # "lastExtensionParametersPath":Ljava/lang/String;
    :goto_bd
    throw v0
    :try_end_be
    .catchall {:try_start_ba .. :try_end_be} :catchall_be

    .end local v4    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "lastExtensionParameters":Ljava/io/File;
    .restart local v3    # "fileWriter":Ljava/io/FileWriter;
    .restart local p0    # "this":Lcom/android/server/recoverysystem/RecoverySystemService;
    .restart local p1    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p2    # "lastExtensionParametersPath":Ljava/lang/String;
    :catchall_be
    move-exception v0

    :try_start_bf
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_c2
    .catchall {:try_start_bf .. :try_end_c2} :catchall_c3

    goto :goto_c7

    :catchall_c3
    move-exception v4

    :try_start_c4
    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "lastExtensionParameters":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/recoverysystem/RecoverySystemService;
    .end local p1    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p2    # "lastExtensionParametersPath":Ljava/lang/String;
    :goto_c7
    throw v0
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_c8} :catch_c8

    .line 855
    .end local v3    # "fileWriter":Ljava/io/FileWriter;
    .restart local v2    # "lastExtensionParameters":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/recoverysystem/RecoverySystemService;
    .restart local p1    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p2    # "lastExtensionParametersPath":Ljava/lang/String;
    :catch_c8
    move-exception v0

    .line 856
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Write parameters to config file ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") failed!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 858
    .end local v0    # "e":Ljava/io/IOException;
    :goto_e5
    return-void
.end method

.method private armRebootEscrow(Ljava/lang/String;Z)Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "slotSwitch"    # Z

    .line 1199
    const-string v0, "RecoverySystemService"

    const/4 v1, 0x0

    if-nez p1, :cond_12

    .line 1200
    const-string v2, "Missing packageName when rebooting with lskf."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    new-instance v0, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;

    const/16 v2, 0x7d0

    invoke-direct {v0, v2, v1}, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;-><init>(II)V

    return-object v0

    .line 1204
    :cond_12
    invoke-virtual {p0, p1}, Lcom/android/server/recoverysystem/RecoverySystemService;->isLskfCaptured(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 1205
    new-instance v0, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;

    const/16 v2, 0xbb8

    invoke-direct {v0, v2, v1}, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;-><init>(II)V

    return-object v0

    .line 1209
    :cond_20
    invoke-direct {p0, p2}, Lcom/android/server/recoverysystem/RecoverySystemService;->verifySlotForNextBoot(Z)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 1210
    new-instance v0, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;

    const/16 v2, 0xfa0

    invoke-direct {v0, v2, v1}, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;-><init>(II)V

    return-object v0

    .line 1214
    :cond_2e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1217
    .local v2, "origId":J
    :try_start_32
    iget-object v4, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v4}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getLockSettingsService()Lcom/android/internal/widget/LockSettingsInternal;

    move-result-object v4

    .line 1218
    .local v4, "lockSettings":Lcom/android/internal/widget/LockSettingsInternal;
    const/16 v5, 0x1388

    if-nez v4, :cond_4b

    .line 1219
    const-string v1, "Failed to get lock settings service, skipping armRebootEscrow"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    new-instance v0, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;

    const/4 v1, 0x3

    invoke-direct {v0, v5, v1}, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;-><init>(II)V
    :try_end_47
    .catchall {:try_start_32 .. :try_end_47} :catchall_78

    .line 1227
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1221
    return-object v0

    .line 1225
    :cond_4b
    :try_start_4b
    invoke-virtual {v4}, Lcom/android/internal/widget/LockSettingsInternal;->armRebootEscrow()I

    move-result v6
    :try_end_4f
    .catchall {:try_start_4b .. :try_end_4f} :catchall_78

    move v4, v6

    .line 1227
    .local v4, "providerErrorCode":I
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1228
    nop

    .line 1230
    if-eqz v4, :cond_72

    .line 1231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure to escrow key for reboot, providerErrorCode: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    new-instance v0, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;

    invoke-direct {v0, v5, v4}, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;-><init>(II)V

    return-object v0

    .line 1237
    :cond_72
    new-instance v0, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;

    invoke-direct {v0, v1, v1}, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;-><init>(II)V

    return-object v0

    .line 1227
    .end local v4    # "providerErrorCode":I
    :catchall_78
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1228
    throw v0
.end method

.method private byteArrayToSharedMemory(Ljava/lang/String;[B)Landroid/os/SharedMemory;
    .registers 6
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "content"    # [B

    .line 797
    :try_start_0
    array-length v0, p2

    invoke-static {p1, v0}, Landroid/os/SharedMemory;->create(Ljava/lang/String;I)Landroid/os/SharedMemory;

    move-result-object v0

    .line 798
    .local v0, "sm":Landroid/os/SharedMemory;
    invoke-virtual {v0}, Landroid/os/SharedMemory;->mapReadWrite()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 799
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 800
    sget v2, Landroid/system/OsConstants;->PROT_READ:I

    invoke-virtual {v0, v2}, Landroid/os/SharedMemory;->setProtect(I)Z

    .line 801
    invoke-static {v1}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V
    :try_end_14
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_14} :catch_15

    .line 803
    return-object v0

    .line 804
    .end local v0    # "sm":Landroid/os/SharedMemory;
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    :catch_15
    move-exception v0

    .line 805
    .local v0, "e":Landroid/system/ErrnoException;
    const-string v1, "RecoverySystemService"

    const-string v2, "Shared Memory operate failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 806
    const/4 v1, 0x0

    return-object v1
.end method

.method private checkAndWaitForUncryptService()Z
    .registers 9

    .line 1431
    const/4 v0, 0x0

    .local v0, "retry":I
    :goto_1
    const/16 v1, 0x7530

    const/4 v2, 0x0

    if-ge v0, v1, :cond_4b

    .line 1432
    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    const-string v3, "init.svc.uncrypt"

    invoke-virtual {v1, v3}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->systemPropertiesGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1433
    .local v1, "uncryptService":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    const-string v4, "init.svc.setup-bcb"

    invoke-virtual {v3, v4}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->systemPropertiesGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1434
    .local v3, "setupBcbService":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    const-string v5, "init.svc.clear-bcb"

    invoke-virtual {v4, v5}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->systemPropertiesGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1435
    .local v4, "clearBcbService":Ljava/lang/String;
    const-string/jumbo v5, "running"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_34

    .line 1436
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_34

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    :cond_34
    move v2, v7

    .line 1444
    .local v2, "busy":Z
    :cond_35
    if-nez v2, :cond_38

    .line 1445
    return v7

    .line 1451
    :cond_38
    :try_start_38
    iget-object v5, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    const-wide/16 v6, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->threadSleep(J)V
    :try_end_3f
    .catch Ljava/lang/InterruptedException; {:try_start_38 .. :try_end_3f} :catch_40

    .line 1454
    goto :goto_48

    .line 1452
    :catch_40
    move-exception v5

    .line 1453
    .local v5, "e":Ljava/lang/InterruptedException;
    const-string v6, "RecoverySystemService"

    const-string v7, "Interrupted:"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1431
    .end local v1    # "uncryptService":Ljava/lang/String;
    .end local v2    # "busy":Z
    .end local v3    # "setupBcbService":Ljava/lang/String;
    .end local v4    # "clearBcbService":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :goto_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1457
    .end local v0    # "retry":I
    :cond_4b
    return v2
.end method

.method private declared-synchronized clearRoRPreparationState()V
    .registers 2

    monitor-enter p0

    .line 1281
    :try_start_1
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1282
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 1283
    monitor-exit p0

    return-void

    .line 1280
    .end local p0    # "this":Lcom/android/server/recoverysystem/RecoverySystemService;
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private clearRoRPreparationStateOnRebootFailure(Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;)V
    .registers 4
    .param p1, "escrowError"    # Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;

    .line 1286
    sget-object v0, Lcom/android/server/recoverysystem/RecoverySystemService;->FATAL_ARM_ESCROW_ERRORS:Landroid/util/FastImmutableArraySet;

    iget v1, p1, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;->mProviderErrorCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/FastImmutableArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1287
    return-void

    .line 1290
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clearing resume on reboot states for all clients on arm escrow error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;->mProviderErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecoverySystemService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    invoke-direct {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->clearRoRPreparationState()V

    .line 1293
    return-void
.end method

.method private static deleteSecrets()V
    .registers 3

    .line 762
    const-string v0, "RecoverySystemService"

    const-string v1, "deleteSecrets"

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :try_start_7
    invoke-static {}, Landroid/security/AndroidKeyStoreMaintenance;->deleteAllKeys()V
    :try_end_a
    .catch Landroid/security/KeyStoreException; {:try_start_7 .. :try_end_a} :catch_b

    .line 767
    goto :goto_11

    .line 765
    :catch_b
    move-exception v1

    .line 766
    .local v1, "e":Landroid/security/KeyStoreException;
    const-string v2, "Failed to delete all keys from keystore."

    invoke-static {v0, v2, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 768
    .end local v1    # "e":Landroid/security/KeyStoreException;
    :goto_11
    return-void
.end method

.method private enforcePermissionForResumeOnReboot()V
    .registers 3

    .line 942
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RECOVERY"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mContext:Landroid/content/Context;

    .line 944
    const-string v1, "android.permission.REBOOT"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    goto :goto_1d

    .line 946
    :cond_15
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller must have android.permission.RECOVERY or android.permission.REBOOT for resume on reboot."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 949
    :cond_1d
    :goto_1d
    return-void
.end method

.method private enforceShell()V
    .registers 3

    .line 1614
    invoke-direct {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->isCallerShell()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1617
    return-void

    .line 1615
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller must be shell"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getCompressedApexInfoList(Ljava/lang/String;)Landroid/apex/CompressedApexInfoList;
    .registers 10
    .param p0, "packageFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1337
    const-string v0, "RecoverySystemService"

    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 1338
    .local v1, "zipFile":Ljava/util/zip/ZipFile;
    :try_start_7
    const-string v2, "apex_info.pb"

    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_fc

    .line 1339
    .local v2, "entry":Ljava/util/zip/ZipEntry;
    if-nez v2, :cond_14

    .line 1340
    const/4 v0, 0x0

    .line 1375
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    .line 1340
    return-object v0

    .line 1342
    :cond_14
    :try_start_14
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v3

    const-wide/32 v5, 0x258000

    cmp-long v3, v3, v5

    if-gez v3, :cond_d5

    .line 1347
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_38

    .line 1348
    new-instance v0, Landroid/apex/CompressedApexInfoList;

    invoke-direct {v0}, Landroid/apex/CompressedApexInfoList;-><init>()V

    .line 1349
    .local v0, "infoList":Landroid/apex/CompressedApexInfoList;
    const/4 v3, 0x0

    new-array v3, v3, [Landroid/apex/CompressedApexInfo;

    iput-object v3, v0, Landroid/apex/CompressedApexInfoList;->apexInfos:[Landroid/apex/CompressedApexInfo;
    :try_end_33
    .catchall {:try_start_14 .. :try_end_33} :catchall_fc

    .line 1350
    nop

    .line 1375
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    .line 1350
    return-object v0

    .line 1352
    .end local v0    # "infoList":Landroid/apex/CompressedApexInfoList;
    :cond_38
    :try_start_38
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Allocating "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes of memory to store OTA Metadata"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v3

    long-to-int v3, v3

    new-array v3, v3, [B

    .line 1356
    .local v3, "data":[B
    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_63
    .catchall {:try_start_38 .. :try_end_63} :catchall_fc

    .line 1357
    .local v4, "is":Ljava/io/InputStream;
    :try_start_63
    invoke-virtual {v4, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 1358
    .local v5, "bytesRead":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Read "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " when expecting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1359
    .local v6, "msg":Ljava/lang/String;
    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    array-length v0, v3
    :try_end_89
    .catchall {:try_start_63 .. :try_end_89} :catchall_c9

    if-ne v5, v0, :cond_c3

    .line 1363
    .end local v5    # "bytesRead":I
    .end local v6    # "msg":Ljava/lang/String;
    if-eqz v4, :cond_90

    :try_start_8d
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 1364
    .end local v4    # "is":Ljava/io/InputStream;
    :cond_90
    invoke-static {v3}, Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;->parseFrom([B)Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;

    move-result-object v0

    .line 1365
    .local v0, "metadata":Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;
    new-instance v4, Landroid/apex/CompressedApexInfoList;

    invoke-direct {v4}, Landroid/apex/CompressedApexInfoList;-><init>()V

    .line 1366
    .local v4, "apexInfoList":Landroid/apex/CompressedApexInfoList;
    iget-object v5, v0, Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;->apexInfo:[Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    .line 1367
    invoke-static {v5}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/server/recoverysystem/RecoverySystemService$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/android/server/recoverysystem/RecoverySystemService$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/server/recoverysystem/RecoverySystemService$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lcom/android/server/recoverysystem/RecoverySystemService$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/server/recoverysystem/RecoverySystemService$$ExternalSyntheticLambda2;

    invoke-direct {v6}, Lcom/android/server/recoverysystem/RecoverySystemService$$ExternalSyntheticLambda2;-><init>()V

    .line 1373
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/apex/CompressedApexInfo;

    iput-object v5, v4, Landroid/apex/CompressedApexInfoList;->apexInfos:[Landroid/apex/CompressedApexInfo;
    :try_end_be
    .catchall {:try_start_8d .. :try_end_be} :catchall_fc

    .line 1374
    nop

    .line 1375
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    .line 1374
    return-object v4

    .line 1361
    .end local v0    # "metadata":Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;
    .local v4, "is":Ljava/io/InputStream;
    .restart local v5    # "bytesRead":I
    .restart local v6    # "msg":Ljava/lang/String;
    :cond_c3
    :try_start_c3
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "zipFile":Ljava/util/zip/ZipFile;
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    .end local v3    # "data":[B
    .end local v4    # "is":Ljava/io/InputStream;
    .end local p0    # "packageFile":Ljava/lang/String;
    throw v0
    :try_end_c9
    .catchall {:try_start_c3 .. :try_end_c9} :catchall_c9

    .line 1356
    .end local v5    # "bytesRead":I
    .end local v6    # "msg":Ljava/lang/String;
    .restart local v1    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v2    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v3    # "data":[B
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local p0    # "packageFile":Ljava/lang/String;
    :catchall_c9
    move-exception v0

    if-eqz v4, :cond_d4

    :try_start_cc
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_cf
    .catchall {:try_start_cc .. :try_end_cf} :catchall_d0

    goto :goto_d4

    :catchall_d0
    move-exception v5

    :try_start_d1
    invoke-virtual {v0, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "zipFile":Ljava/util/zip/ZipFile;
    .end local p0    # "packageFile":Ljava/lang/String;
    :cond_d4
    :goto_d4
    throw v0

    .line 1343
    .end local v3    # "data":[B
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v1    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local p0    # "packageFile":Ljava/lang/String;
    :cond_d5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apex_info.pb has size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1344
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " which is larger than the permitted limit"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "zipFile":Ljava/util/zip/ZipFile;
    .end local p0    # "packageFile":Ljava/lang/String;
    throw v0
    :try_end_fc
    .catchall {:try_start_d1 .. :try_end_fc} :catchall_fc

    .line 1337
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v1    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local p0    # "packageFile":Ljava/lang/String;
    :catchall_fc
    move-exception v0

    :try_start_fd
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_100
    .catchall {:try_start_fd .. :try_end_100} :catchall_101

    goto :goto_105

    :catchall_101
    move-exception v2

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_105
    throw v0
.end method

.method private isAbDevice()Z
    .registers 3

    .line 1148
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    const-string/jumbo v1, "ro.build.ab_update"

    invoke-virtual {v0, v1}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->systemPropertiesGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isCallerShell()Z
    .registers 3

    .line 1609
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1610
    .local v0, "callingUid":I
    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_d

    if-nez v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v1, 0x1

    :goto_e
    return v1
.end method

.method public static isUpdatableApexSupported()Z
    .registers 2

    .line 1329
    invoke-static {}, Landroid/sysprop/ApexProperties;->updatable()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getCompressedApexInfoList$0(Landroid/ota/nano/OtaPackageMetadata$ApexInfo;)Z
    .registers 2
    .param p0, "apex"    # Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    .line 1367
    iget-boolean v0, p0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->isCompressed:Z

    return v0
.end method

.method static synthetic lambda$getCompressedApexInfoList$1(Landroid/ota/nano/OtaPackageMetadata$ApexInfo;)Landroid/apex/CompressedApexInfo;
    .registers 4
    .param p0, "apex"    # Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    .line 1368
    new-instance v0, Landroid/apex/CompressedApexInfo;

    invoke-direct {v0}, Landroid/apex/CompressedApexInfo;-><init>()V

    .line 1369
    .local v0, "info":Landroid/apex/CompressedApexInfo;
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/apex/CompressedApexInfo;->moduleName:Ljava/lang/String;

    .line 1370
    iget-wide v1, p0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->decompressedSize:J

    iput-wide v1, v0, Landroid/apex/CompressedApexInfo;->decompressedSize:J

    .line 1371
    iget-wide v1, p0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->version:J

    iput-wide v1, v0, Landroid/apex/CompressedApexInfo;->versionCode:J

    .line 1372
    return-object v0
.end method

.method static synthetic lambda$getCompressedApexInfoList$2(I)[Landroid/apex/CompressedApexInfo;
    .registers 2
    .param p0, "x$0"    # I

    .line 1373
    new-array v0, p0, [Landroid/apex/CompressedApexInfo;

    return-object v0
.end method

.method private declared-synchronized logRecoverySystemOperate(Ljava/lang/String;)V
    .registers 10
    .param p1, "line"    # Ljava/lang/String;

    monitor-enter p0

    .line 772
    :try_start_1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/recoverysystem/RecoverySystemService;->RECOVERY_SYSTEM_LOG_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 773
    .local v0, "f":Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 775
    .local v1, "str":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 776
    .local v2, "linecount":I
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_b3

    if-eqz v3, :cond_8b

    .line 777
    :try_start_35
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3a} :catch_80
    .catchall {:try_start_35 .. :try_end_3a} :catchall_b3

    .line 778
    .local v3, "in":Ljava/io/FileReader;
    :try_start_3a
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_76

    .line 779
    .local v4, "bin":Ljava/io/BufferedReader;
    :goto_3f
    add-int/lit8 v2, v2, 0x1

    const/16 v5, 0x32

    if-ge v2, v5, :cond_6f

    :try_start_45
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .local v6, "temp":Ljava/lang/String;
    if-eqz v5, :cond_6f

    .line 780
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_62
    .catchall {:try_start_45 .. :try_end_62} :catchall_63

    goto :goto_3f

    .line 777
    .end local v6    # "temp":Ljava/lang/String;
    :catchall_63
    move-exception v5

    :try_start_64
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_68

    goto :goto_6c

    :catchall_68
    move-exception v6

    :try_start_69
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "str":Ljava/lang/StringBuilder;
    .end local v2    # "linecount":I
    .end local v3    # "in":Ljava/io/FileReader;
    .end local p0    # "this":Lcom/android/server/recoverysystem/RecoverySystemService;
    .end local p1    # "line":Ljava/lang/String;
    :goto_6c
    throw v5
    :try_end_6d
    .catchall {:try_start_69 .. :try_end_6d} :catchall_6d

    .end local v4    # "bin":Ljava/io/BufferedReader;
    .restart local v0    # "f":Ljava/io/File;
    .restart local v1    # "str":Ljava/lang/StringBuilder;
    .restart local v2    # "linecount":I
    .restart local v3    # "in":Ljava/io/FileReader;
    .restart local p0    # "this":Lcom/android/server/recoverysystem/RecoverySystemService;
    .restart local p1    # "line":Ljava/lang/String;
    :catchall_6d
    move-exception v4

    goto :goto_77

    .line 782
    .restart local v4    # "bin":Ljava/io/BufferedReader;
    :cond_6f
    :try_start_6f
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_76

    .end local v4    # "bin":Ljava/io/BufferedReader;
    :try_start_72
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_80
    .catchall {:try_start_72 .. :try_end_75} :catchall_b3

    .line 784
    .end local v3    # "in":Ljava/io/FileReader;
    goto :goto_88

    .line 777
    .end local p0    # "this":Lcom/android/server/recoverysystem/RecoverySystemService;
    .restart local v3    # "in":Ljava/io/FileReader;
    :catchall_76
    move-exception v4

    :goto_77
    :try_start_77
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_7b

    goto :goto_7f

    :catchall_7b
    move-exception v5

    :try_start_7c
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "str":Ljava/lang/StringBuilder;
    .end local v2    # "linecount":I
    .end local p1    # "line":Ljava/lang/String;
    :goto_7f
    throw v4
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_80} :catch_80
    .catchall {:try_start_7c .. :try_end_80} :catchall_b3

    .line 782
    .end local v3    # "in":Ljava/io/FileReader;
    .restart local v0    # "f":Ljava/io/File;
    .restart local v1    # "str":Ljava/lang/StringBuilder;
    .restart local v2    # "linecount":I
    .restart local p1    # "line":Ljava/lang/String;
    :catch_80
    move-exception v3

    .line 783
    .local v3, "e":Ljava/io/IOException;
    :try_start_81
    const-string v4, "RecoverySystemService"

    const-string v5, "Read recovery system operate log failed! "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 785
    .end local v3    # "e":Ljava/io/IOException;
    :goto_88
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_8b
    .catchall {:try_start_81 .. :try_end_8b} :catchall_b3

    .line 787
    :cond_8b
    :try_start_8b
    new-instance v3, Ljava/io/FileWriter;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_91} :catch_a9
    .catchall {:try_start_8b .. :try_end_91} :catchall_b3

    .line 788
    .local v3, "out":Ljava/io/FileWriter;
    :try_start_91
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 789
    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V
    :try_end_9b
    .catchall {:try_start_91 .. :try_end_9b} :catchall_9f

    .line 790
    :try_start_9b
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9e} :catch_a9
    .catchall {:try_start_9b .. :try_end_9e} :catchall_b3

    .line 792
    .end local v3    # "out":Ljava/io/FileWriter;
    goto :goto_b1

    .line 787
    .restart local v3    # "out":Ljava/io/FileWriter;
    :catchall_9f
    move-exception v4

    :try_start_a0
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_a3
    .catchall {:try_start_a0 .. :try_end_a3} :catchall_a4

    goto :goto_a8

    :catchall_a4
    move-exception v5

    :try_start_a5
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "str":Ljava/lang/StringBuilder;
    .end local v2    # "linecount":I
    .end local p1    # "line":Ljava/lang/String;
    :goto_a8
    throw v4
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_a9} :catch_a9
    .catchall {:try_start_a5 .. :try_end_a9} :catchall_b3

    .line 790
    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v0    # "f":Ljava/io/File;
    .restart local v1    # "str":Ljava/lang/StringBuilder;
    .restart local v2    # "linecount":I
    .restart local p1    # "line":Ljava/lang/String;
    :catch_a9
    move-exception v3

    .line 791
    .local v3, "e":Ljava/io/IOException;
    :try_start_aa
    const-string v4, "RecoverySystemService"

    const-string v5, "Log recovery system operate failed! "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b1
    .catchall {:try_start_aa .. :try_end_b1} :catchall_b3

    .line 793
    .end local v3    # "e":Ljava/io/IOException;
    :goto_b1
    monitor-exit p0

    return-void

    .line 771
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "str":Ljava/lang/StringBuilder;
    .end local v2    # "linecount":I
    .end local p1    # "line":Ljava/lang/String;
    :catchall_b3
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private rebootWithLskfImpl(Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "slotSwitch"    # Z

    .line 1297
    invoke-direct {p0, p1, p3}, Lcom/android/server/recoverysystem/RecoverySystemService;->armRebootEscrow(Ljava/lang/String;Z)Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;

    move-result-object v0

    .line 1298
    .local v0, "escrowError":Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;
    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/recoverysystem/RecoverySystemService;->reportMetricsOnRebootWithLskf(Ljava/lang/String;ZLcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;)V

    .line 1299
    invoke-direct {p0, v0}, Lcom/android/server/recoverysystem/RecoverySystemService;->clearRoRPreparationStateOnRebootFailure(Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;)V

    .line 1301
    iget v1, v0, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;->mRebootErrorCode:I

    .line 1302
    .local v1, "errorCode":I
    if-eqz v1, :cond_f

    .line 1303
    return v1

    .line 1307
    :cond_f
    iget-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v2}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getMetricsPrefs()Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;->deletePrefsFile()V

    .line 1309
    iget-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v2}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getPowerManager()Landroid/os/PowerManager;

    move-result-object v2

    .line 1310
    .local v2, "pm":Landroid/os/PowerManager;
    invoke-virtual {v2, p2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 1311
    const/16 v3, 0x3e8

    return v3
.end method

.method private reportMetricsOnPreparedForReboot()V
    .registers 16

    .line 1033
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v0}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getCurrentTimeMillis()J

    move-result-wide v0

    .line 1036
    .local v0, "currentTimestamp":J
    monitor-enter p0

    .line 1037
    :try_start_7
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1038
    .local v2, "preparedClients":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_7f

    .line 1041
    iget-object v3, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v3}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getMetricsPrefs()Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;

    move-result-object v3

    .line 1042
    .local v3, "prefs":Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;
    const-string v4, "lskf_captured_timestamp"

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;->putLong(Ljava/lang/String;J)V

    .line 1043
    const-string v4, "lskf_captured_count"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;->incrementIntKey(Ljava/lang/String;I)V

    .line 1045
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1046
    .local v6, "packageName":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v7, v6}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getUidFromPackageName(Ljava/lang/String;)I

    move-result v7

    .line 1048
    .local v7, "uid":I
    const/4 v8, -0x1

    .line 1049
    .local v8, "durationSeconds":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_request_lskf_timestamp"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-wide/16 v10, -0x1

    invoke-virtual {v3, v9, v10, v11}, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    .line 1051
    .local v12, "requestLskfTimestamp":J
    cmp-long v9, v12, v10

    if-eqz v9, :cond_5d

    cmp-long v9, v0, v12

    if-lez v9, :cond_5d

    .line 1052
    sub-long v9, v0, v12

    long-to-int v9, v9

    div-int/lit16 v8, v9, 0x3e8

    .line 1054
    :cond_5d
    const-string v9, "RecoverySystemService"

    const-string v10, "Reporting lskf captured, lskf capture takes %d seconds for package %s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    .line 1055
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v11, v5

    const/4 v14, 0x1

    aput-object v6, v11, v14

    .line 1054
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    iget-object v9, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v7, v10, v8}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->reportRebootEscrowLskfCapturedMetrics(III)V

    .line 1058
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "uid":I
    .end local v8    # "durationSeconds":I
    .end local v12    # "requestLskfTimestamp":J
    goto :goto_24

    .line 1059
    :cond_7e
    return-void

    .line 1038
    .end local v2    # "preparedClients":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "prefs":Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;
    :catchall_7f
    move-exception v2

    :try_start_80
    monitor-exit p0
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    throw v2
.end method

.method private reportMetricsOnRebootWithLskf(Ljava/lang/String;ZLcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;)V
    .registers 25
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "slotSwitch"    # Z
    .param p3, "escrowError"    # Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;

    .line 1253
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v0, v2}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getUidFromPackageName(Ljava/lang/String;)I

    move-result v12

    .line 1254
    .local v12, "uid":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->useServerBasedRoR()Z

    move-result v13

    .line 1256
    .local v13, "serverBased":Z
    monitor-enter p0

    .line 1257
    :try_start_f
    iget-object v0, v1, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v6

    .line 1258
    .local v6, "preparedClientCount":I
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_98

    .line 1260
    iget-object v0, v1, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v0}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getCurrentTimeMillis()J

    move-result-wide v14

    .line 1261
    .local v14, "currentTimestamp":J
    const/4 v0, -0x1

    .line 1262
    .local v0, "durationSeconds":I
    iget-object v3, v1, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v3}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getMetricsPrefs()Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;

    move-result-object v11

    .line 1263
    .local v11, "prefs":Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;
    const-string v3, "lskf_captured_timestamp"

    const-wide/16 v4, -0x1

    invoke-virtual {v11, v3, v4, v5}, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;->getLong(Ljava/lang/String;J)J

    move-result-wide v16

    .line 1264
    .local v16, "lskfCapturedTimestamp":J
    cmp-long v3, v16, v4

    if-eqz v3, :cond_38

    cmp-long v3, v14, v16

    if-lez v3, :cond_38

    .line 1265
    sub-long v3, v14, v16

    long-to-int v3, v3

    div-int/lit16 v0, v3, 0x3e8

    .line 1268
    :cond_38
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_request_lskf_count"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v11, v3, v4}, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;->getInt(Ljava/lang/String;I)I

    move-result v18

    .line 1269
    .local v18, "requestCount":I
    const-string v3, "lskf_captured_count"

    invoke-virtual {v11, v3, v4}, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 1271
    .local v19, "lskfCapturedCount":I
    const-string v3, "RecoverySystemService"

    const-string v4, "Reporting reboot with lskf, package name %s, client count %d, request count %d, lskf captured count %d, duration since lskf captured %d seconds."

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v5, v7

    const/4 v7, 0x1

    .line 1273
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x3

    .line 1274
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    .line 1271
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    iget-object v3, v1, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;->getErrorCodeForMetrics()I

    move-result v4

    move v5, v12

    move/from16 v7, v18

    move/from16 v8, p2

    move v9, v13

    move v10, v0

    move-object/from16 v20, v11

    .end local v11    # "prefs":Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;
    .local v20, "prefs":Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;
    move/from16 v11, v19

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->reportRebootEscrowRebootMetrics(IIIIZZII)V

    .line 1278
    return-void

    .line 1258
    .end local v0    # "durationSeconds":I
    .end local v6    # "preparedClientCount":I
    .end local v14    # "currentTimestamp":J
    .end local v16    # "lskfCapturedTimestamp":J
    .end local v18    # "requestCount":I
    .end local v19    # "lskfCapturedCount":I
    .end local v20    # "prefs":Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;
    :catchall_98
    move-exception v0

    :try_start_99
    monitor-exit p0
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_98

    throw v0
.end method

.method private reportMetricsOnRequestLskf(Ljava/lang/String;I)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "requestResult"    # I

    .line 952
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v0, p1}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getUidFromPackageName(Ljava/lang/String;)I

    move-result v0

    .line 954
    .local v0, "uid":I
    monitor-enter p0

    .line 955
    :try_start_7
    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 956
    .local v1, "pendingRequestCount":I
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_4d

    .line 959
    iget-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v2}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getMetricsPrefs()Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;

    move-result-object v2

    .line 960
    .local v2, "prefs":Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_request_lskf_timestamp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    .line 961
    invoke-virtual {v4}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getCurrentTimeMillis()J

    move-result-wide v4

    .line 960
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;->putLong(Ljava/lang/String;J)V

    .line 962
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_request_lskf_count"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;->incrementIntKey(Ljava/lang/String;I)V

    .line 964
    iget-object v3, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v3, v0, p2, v1}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->reportRebootEscrowPreparationMetrics(III)V

    .line 965
    return-void

    .line 956
    .end local v1    # "pendingRequestCount":I
    .end local v2    # "prefs":Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;
    :catchall_4d
    move-exception v1

    :try_start_4e
    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw v1
.end method

.method private static scanAllFiles(Ljava/io/File;)Z
    .registers 12
    .param p0, "path"    # Ljava/io/File;

    .line 542
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 543
    return v1

    .line 545
    :cond_8
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    const-wide/16 v2, 0x8

    if-eqz v0, :cond_3e

    .line 546
    sget-object v0, Lcom/android/server/recoverysystem/RecoverySystemService;->blockDataList:Ljava/util/List;

    new-instance v1, Lcom/android/server/recoverysystem/RecoverySystemService$BlockData;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/android/server/recoverysystem/RecoverySystemService$BlockData;->getStartPoint()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lcom/android/server/recoverysystem/RecoverySystemService$BlockData;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    invoke-static {}, Lcom/android/server/recoverysystem/RecoverySystemService$BlockData;->getStartPoint()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v0, v4

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/android/server/recoverysystem/RecoverySystemService$BlockData;->setStartPoint(J)V

    goto :goto_8d

    .line 548
    :cond_3e
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 549
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v4, v0

    :goto_49
    if-ge v1, v4, :cond_8d

    aget-object v5, v0, v1

    .line 550
    .local v5, "inFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_81

    .line 551
    sget-object v6, Lcom/android/server/recoverysystem/RecoverySystemService;->blockDataList:Ljava/util/List;

    new-instance v7, Lcom/android/server/recoverysystem/RecoverySystemService$BlockData;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/android/server/recoverysystem/RecoverySystemService$BlockData;->getStartPoint()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/android/server/recoverysystem/RecoverySystemService$BlockData;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 552
    invoke-static {}, Lcom/android/server/recoverysystem/RecoverySystemService$BlockData;->getStartPoint()J

    move-result-wide v6

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v6, v8

    add-long/2addr v6, v2

    invoke-static {v6, v7}, Lcom/android/server/recoverysystem/RecoverySystemService$BlockData;->setStartPoint(J)V

    goto :goto_8a

    .line 553
    :cond_81
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_8a

    .line 554
    invoke-static {v5}, Lcom/android/server/recoverysystem/RecoverySystemService;->scanAllFiles(Ljava/io/File;)Z

    .line 549
    .end local v5    # "inFile":Ljava/io/File;
    :cond_8a
    :goto_8a
    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    .line 558
    :cond_8d
    :goto_8d
    const/4 v0, 0x1

    return v0
.end method

.method private sendPreparedForRebootIntentIfNeeded(Landroid/content/IntentSender;)V
    .registers 8
    .param p1, "intentSender"    # Landroid/content/IntentSender;

    .line 1088
    if-eqz p1, :cond_29

    .line 1090
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    :try_start_8
    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_b
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_8 .. :try_end_b} :catch_c

    .line 1093
    goto :goto_29

    .line 1091
    :catch_c
    move-exception v0

    .line 1092
    .local v0, "e":Landroid/content/IntentSender$SendIntentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not send intent for prepared reboot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/IntentSender$SendIntentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecoverySystemService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    .end local v0    # "e":Landroid/content/IntentSender$SendIntentException;
    :cond_29
    :goto_29
    return-void
.end method

.method private setupOrClearBcb(ZLjava/lang/String;)Z
    .registers 10
    .param p1, "isSetup"    # Z
    .param p2, "command"    # Ljava/lang/String;

    .line 1461
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RECOVERY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1463
    invoke-direct {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->checkAndWaitForUncryptService()Z

    move-result v0

    .line 1464
    .local v0, "available":Z
    const/4 v1, 0x0

    const-string v2, "RecoverySystemService"

    if-nez v0, :cond_18

    .line 1465
    const-string/jumbo v3, "uncrypt service is unavailable."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    return v1

    .line 1469
    :cond_18
    const-string v3, "ctl.start"

    if-eqz p1, :cond_25

    .line 1470
    iget-object v4, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    const-string/jumbo v5, "setup-bcb"

    invoke-virtual {v4, v3, v5}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->systemPropertiesSet(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    .line 1472
    :cond_25
    iget-object v4, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    const-string v5, "clear-bcb"

    invoke-virtual {v4, v3, v5}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->systemPropertiesSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 1476
    :goto_2c
    iget-object v3, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v3}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->connectService()Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;

    move-result-object v3

    .line 1477
    .local v3, "socket":Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;
    if-nez v3, :cond_3a

    .line 1478
    const-string v4, "Failed to connect to uncrypt socket"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    return v1

    .line 1484
    :cond_3a
    if-eqz p1, :cond_3f

    .line 1485
    :try_start_3c
    invoke-virtual {v3, p2}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->sendCommand(Ljava/lang/String;)V

    .line 1489
    :cond_3f
    invoke-virtual {v3}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->getPercentageUncrypted()I

    move-result v4

    .line 1493
    .local v4, "status":I
    invoke-virtual {v3}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->sendAck()V

    .line 1495
    const/16 v5, 0x64

    if-ne v4, v5, :cond_75

    .line 1496
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uncrypt "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_5c

    const-string/jumbo v6, "setup"

    goto :goto_5e

    :cond_5c
    const-string v6, "clear"

    :goto_5e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bcb successfully finished."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_6f} :catch_93
    .catchall {:try_start_3c .. :try_end_6f} :catchall_91

    .line 1507
    .end local v4    # "status":I
    invoke-virtual {v3}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    .line 1508
    nop

    .line 1510
    const/4 v1, 0x1

    return v1

    .line 1500
    .restart local v4    # "status":I
    :cond_75
    :try_start_75
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uncrypt failed with status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_8c} :catch_93
    .catchall {:try_start_75 .. :try_end_8c} :catchall_91

    .line 1501
    nop

    .line 1507
    invoke-virtual {v3}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    .line 1501
    return v1

    .line 1507
    .end local v4    # "status":I
    :catchall_91
    move-exception v1

    goto :goto_9e

    .line 1503
    :catch_93
    move-exception v4

    .line 1504
    .local v4, "e":Ljava/io/IOException;
    :try_start_94
    const-string v5, "IOException when communicating with uncrypt:"

    invoke-static {v2, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_99
    .catchall {:try_start_94 .. :try_end_99} :catchall_91

    .line 1505
    nop

    .line 1507
    invoke-virtual {v3}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    .line 1505
    return v1

    .line 1507
    .end local v4    # "e":Ljava/io/IOException;
    :goto_9e
    invoke-virtual {v3}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    .line 1508
    throw v1
.end method

.method private sharedMemoryToByteArray(Landroid/os/SharedMemory;)[B
    .registers 7
    .param p1, "sm"    # Landroid/os/SharedMemory;

    .line 811
    const/4 v0, 0x0

    const-string v1, "RecoverySystemService"

    if-nez p1, :cond_b

    .line 812
    const-string v2, "Shared Memory is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    return-object v0

    .line 817
    :cond_b
    :try_start_b
    invoke-virtual {p1}, Landroid/os/SharedMemory;->mapReadOnly()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 818
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    sub-int/2addr v3, v4

    .line 819
    .local v3, "len":I
    new-array v4, v3, [B

    .line 820
    .local v4, "content":[B
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 821
    invoke-static {v2}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    .line 822
    invoke-virtual {p1}, Landroid/os/SharedMemory;->close()V
    :try_end_23
    .catch Landroid/system/ErrnoException; {:try_start_b .. :try_end_23} :catch_24

    .line 824
    return-object v4

    .line 825
    .end local v2    # "buffer":Ljava/nio/ByteBuffer;
    .end local v3    # "len":I
    .end local v4    # "content":[B
    :catch_24
    move-exception v2

    .line 826
    .local v2, "e":Landroid/system/ErrnoException;
    const-string v3, "Shared Memory operate failed!"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 827
    return-object v0
.end method

.method private spliceData(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p1, "splicePath"    # Ljava/lang/String;
    .param p2, "splicedBlockPath"    # Ljava/lang/String;

    .line 564
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 565
    .local v0, "destPath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 566
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 568
    :cond_e
    invoke-static {p2}, Lcom/android/server/recoverysystem/RecoverySystemService$BlockData;->setDestPath(Ljava/lang/String;)V

    .line 569
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Lcom/android/server/recoverysystem/RecoverySystemService$BlockData;->setStartPoint(J)V

    .line 570
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/server/recoverysystem/RecoverySystemService;->scanAllFiles(Ljava/io/File;)Z

    .line 572
    invoke-static {}, Lcom/android/server/recoverysystem/RecoverySystemService$BlockData;->getStartPoint()J

    move-result-wide v3

    cmp-long v1, v3, v1

    const-string v2, "RecoverySystemService"

    const/4 v3, 0x0

    if-nez v1, :cond_2f

    .line 573
    const-string v1, "No apps need to keep."

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    return v3

    .line 577
    :cond_2f
    :try_start_2f
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v4, "rw"

    invoke-direct {v1, v0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_37} :catch_9c

    .line 579
    .local v1, "randomAccessFile":Ljava/io/RandomAccessFile;
    :try_start_37
    invoke-static {}, Lcom/android/server/recoverysystem/RecoverySystemService$BlockData;->getStartPoint()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 580
    invoke-virtual {v1, v3}, Ljava/io/RandomAccessFile;->write(I)V
    :try_end_44
    .catchall {:try_start_37 .. :try_end_44} :catchall_92

    .line 581
    :try_start_44
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_9c

    .line 584
    .end local v1    # "randomAccessFile":Ljava/io/RandomAccessFile;
    nop

    .line 586
    sget-object v1, Lcom/android/server/recoverysystem/RecoverySystemService;->blockDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_68

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/recoverysystem/RecoverySystemService$BlockData;

    .line 587
    .local v4, "blockData":Lcom/android/server/recoverysystem/RecoverySystemService$BlockData;
    new-instance v5, Ljava/lang/Thread;

    invoke-direct {v5, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 588
    .local v5, "thread":Ljava/lang/Thread;
    sget-object v6, Lcom/android/server/recoverysystem/RecoverySystemService;->splicingThreadList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 589
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 590
    .end local v4    # "blockData":Lcom/android/server/recoverysystem/RecoverySystemService$BlockData;
    .end local v5    # "thread":Ljava/lang/Thread;
    goto :goto_4e

    .line 592
    :cond_68
    sget-object v1, Lcom/android/server/recoverysystem/RecoverySystemService;->splicingThreadList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_86

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Thread;

    .line 594
    .local v4, "thread":Ljava/lang/Thread;
    :try_start_7a
    invoke-virtual {v4}, Ljava/lang/Thread;->join()V
    :try_end_7d
    .catch Ljava/lang/InterruptedException; {:try_start_7a .. :try_end_7d} :catch_7f

    .line 598
    nop

    .line 599
    .end local v4    # "thread":Ljava/lang/Thread;
    goto :goto_6e

    .line 595
    .restart local v4    # "thread":Ljava/lang/Thread;
    :catch_7f
    move-exception v1

    .line 596
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v5, "An exception occurred while splicing files (Thread): "

    invoke-static {v2, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 597
    return v3

    .line 600
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v4    # "thread":Ljava/lang/Thread;
    :cond_86
    sget-object v1, Lcom/android/server/recoverysystem/RecoverySystemService;->blockDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 601
    sget-object v1, Lcom/android/server/recoverysystem/RecoverySystemService;->splicingThreadList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 602
    const/4 v1, 0x1

    return v1

    .line 577
    .local v1, "randomAccessFile":Ljava/io/RandomAccessFile;
    :catchall_92
    move-exception v4

    :try_start_93
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_96
    .catchall {:try_start_93 .. :try_end_96} :catchall_97

    goto :goto_9b

    :catchall_97
    move-exception v5

    :try_start_98
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "destPath":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/recoverysystem/RecoverySystemService;
    .end local p1    # "splicePath":Ljava/lang/String;
    .end local p2    # "splicedBlockPath":Ljava/lang/String;
    :goto_9b
    throw v4
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9c} :catch_9c

    .line 581
    .end local v1    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v0    # "destPath":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/recoverysystem/RecoverySystemService;
    .restart local p1    # "splicePath":Ljava/lang/String;
    .restart local p2    # "splicedBlockPath":Ljava/lang/String;
    :catch_9c
    move-exception v1

    .line 582
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "An exception occurred when allocate storage space for 1217: "

    invoke-static {v2, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 583
    return v3
.end method

.method private toSplicing(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p1, "srcDir"    # Ljava/lang/String;
    .param p2, "destSplicedFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 607
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 608
    .local v0, "start":J
    invoke-direct {p0, p1, p2}, Lcom/android/server/recoverysystem/RecoverySystemService;->spliceData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const-string v3, "RecoverySystemService"

    if-nez v2, :cond_13

    .line 609
    const-string v2, "Splicing file failed!"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    const/4 v2, 0x0

    return v2

    .line 612
    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 613
    .local v4, "end":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Splicing of reserved apps completed, taking "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long v6, v4, v0

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " ms"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    const/4 v2, 0x1

    return v2
.end method

.method private declared-synchronized updateRoRPreparationStateOnClear(Ljava/lang/String;)I
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 1134
    :try_start_1
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 1136
    const-string v0, "RecoverySystemService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " hasn\'t prepared for resume on reboot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_4f

    .line 1137
    monitor-exit p0

    return v1

    .line 1139
    .end local p0    # "this":Lcom/android/server/recoverysystem/RecoverySystemService;
    :cond_2c
    :try_start_2c
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1140
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1143
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0
    :try_end_45
    .catchall {:try_start_2c .. :try_end_45} :catchall_4f

    if-eqz v0, :cond_48

    move v1, v2

    :cond_48
    move v0, v1

    .line 1144
    .local v0, "needClear":Z
    if-eqz v0, :cond_4c

    goto :goto_4d

    :cond_4c
    const/4 v2, 0x2

    :goto_4d
    monitor-exit p0

    return v2

    .line 1133
    .end local v0    # "needClear":Z
    .end local p1    # "packageName":Ljava/lang/String;
    :catchall_4f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized updateRoRPreparationStateOnNewRequest(Ljava/lang/String;Landroid/content/IntentSender;)I
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "intentSender"    # Landroid/content/IntentSender;

    monitor-enter p0

    .line 1013
    :try_start_1
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_31

    .line 1014
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1015
    const-string v0, "RecoverySystemService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RoR already has prepared for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    .end local p0    # "this":Lcom/android/server/recoverysystem/RecoverySystemService;
    :cond_29
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_63

    .line 1020
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 1023
    :cond_31
    :try_start_31
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    .line 1024
    .local v0, "needPreparation":Z
    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 1025
    const-string v1, "RecoverySystemService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate RoR preparation request for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    :cond_57
    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5c
    .catchall {:try_start_31 .. :try_end_5c} :catchall_63

    .line 1029
    if-eqz v0, :cond_60

    const/4 v1, 0x0

    goto :goto_61

    :cond_60
    const/4 v1, 0x2

    :goto_61
    monitor-exit p0

    return v1

    .line 1012
    .end local v0    # "needPreparation":Z
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "intentSender":Landroid/content/IntentSender;
    :catchall_63
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized updateRoRPreparationStateOnPreparedForReboot()V
    .registers 4

    monitor-enter p0

    .line 1071
    :try_start_1
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1072
    const-string v0, "RecoverySystemService"

    const-string/jumbo v1, "onPreparedForReboot called when some clients have prepared."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    .end local p0    # "this":Lcom/android/server/recoverysystem/RecoverySystemService;
    :cond_11
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1076
    const-string v0, "RecoverySystemService"

    const-string/jumbo v1, "onPreparedForReboot called but no client has requested."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    :cond_21
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_22
    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_45

    .line 1081
    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentSender;

    invoke-direct {p0, v1}, Lcom/android/server/recoverysystem/RecoverySystemService;->sendPreparedForRebootIntentIfNeeded(Landroid/content/IntentSender;)V

    .line 1082
    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1080
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 1084
    .end local v0    # "i":I
    :cond_45
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V
    :try_end_4a
    .catchall {:try_start_1 .. :try_end_4a} :catchall_4c

    .line 1085
    monitor-exit p0

    return-void

    .line 1070
    :catchall_4c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private useServerBasedRoR()Z
    .registers 6

    .line 1242
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1244
    .local v0, "origId":J
    :try_start_4
    const-string/jumbo v2, "ota"

    const-string/jumbo v3, "server_based_ror_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_13

    .line 1247
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1244
    return v2

    .line 1247
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1248
    throw v2
.end method

.method private verifySlotForNextBoot(Z)Z
    .registers 10
    .param p1, "slotSwitch"    # Z

    .line 1152
    invoke-direct {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->isAbDevice()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "RecoverySystemService"

    if-nez v0, :cond_f

    .line 1153
    const-string v0, "Device isn\'t a/b, skipping slot verification."

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    return v1

    .line 1159
    :cond_f
    const/4 v0, 0x0

    :try_start_10
    iget-object v3, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v3}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getBootControl()Landroid/hardware/boot/V1_2/IBootControl;

    move-result-object v3
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_16} :catch_7a

    .line 1163
    .local v3, "bootControl":Landroid/hardware/boot/V1_2/IBootControl;
    nop

    .line 1166
    if-nez v3, :cond_1f

    .line 1167
    const-string v0, "Cannot get the boot control HAL, skipping slot verification."

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    return v1

    .line 1174
    :cond_1f
    :try_start_1f
    invoke-interface {v3}, Landroid/hardware/boot/V1_2/IBootControl;->getCurrentSlot()I

    move-result v4

    .line 1175
    .local v4, "current_slot":I
    if-eqz v4, :cond_41

    if-ne v4, v1, :cond_28

    goto :goto_41

    .line 1176
    :cond_28
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current boot slot should be 0 or 1, got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v3    # "bootControl":Landroid/hardware/boot/V1_2/IBootControl;
    .end local p0    # "this":Lcom/android/server/recoverysystem/RecoverySystemService;
    .end local p1    # "slotSwitch":Z
    throw v1

    .line 1179
    .restart local v3    # "bootControl":Landroid/hardware/boot/V1_2/IBootControl;
    .restart local p0    # "this":Lcom/android/server/recoverysystem/RecoverySystemService;
    .restart local p1    # "slotSwitch":Z
    :cond_41
    :goto_41
    invoke-interface {v3}, Landroid/hardware/boot/V1_2/IBootControl;->getActiveBootSlot()I

    move-result v5
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_45} :catch_73

    .line 1183
    .local v5, "next_active_slot":I
    nop

    .line 1185
    move v6, v4

    .line 1186
    .local v6, "expected_active_slot":I
    if-eqz p1, :cond_4f

    .line 1187
    if-nez v4, :cond_4d

    move v7, v1

    goto :goto_4e

    :cond_4d
    move v7, v0

    :goto_4e
    move v6, v7

    .line 1189
    :cond_4f
    if-eq v5, v6, :cond_72

    .line 1190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The next active boot slot doesn\'t match the expected value, expected "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ", got "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    return v0

    .line 1194
    :cond_72
    return v1

    .line 1180
    .end local v4    # "current_slot":I
    .end local v5    # "next_active_slot":I
    .end local v6    # "expected_active_slot":I
    :catch_73
    move-exception v1

    .line 1181
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "Failed to query the active slots"

    invoke-static {v2, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1182
    return v0

    .line 1160
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "bootControl":Landroid/hardware/boot/V1_2/IBootControl;
    :catch_7a
    move-exception v1

    .line 1161
    .restart local v1    # "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get the boot control HAL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    return v0
.end method


# virtual methods
.method public allocateSpaceForUpdate(Ljava/lang/String;)Z
    .registers 8
    .param p1, "packageFile"    # Ljava/lang/String;

    .line 1380
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RECOVERY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    invoke-static {}, Lcom/android/server/recoverysystem/RecoverySystemService;->isUpdatableApexSupported()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "RecoverySystemService"

    if-nez v0, :cond_17

    .line 1382
    const-string v0, "Updatable Apex not supported, allocateSpaceForUpdate does nothing."

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    return v1

    .line 1386
    :cond_17
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1388
    .local v3, "token":J
    :try_start_1b
    invoke-static {p1}, Lcom/android/server/recoverysystem/RecoverySystemService;->getCompressedApexInfoList(Ljava/lang/String;)Landroid/apex/CompressedApexInfoList;

    move-result-object v0

    .line 1389
    .local v0, "apexInfoList":Landroid/apex/CompressedApexInfoList;
    if-nez v0, :cond_2b

    .line 1390
    const-string v5, "apex_info.pb not present in OTA package. Assuming device doesn\'t support compressedAPEX, continueing without allocating space."

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_26} :catch_41
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_26} :catch_39
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1b .. :try_end_26} :catch_39
    .catchall {:try_start_1b .. :try_end_26} :catchall_37

    .line 1393
    nop

    .line 1403
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1393
    return v1

    .line 1395
    :cond_2b
    :try_start_2b
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v5

    .line 1396
    .local v5, "apexManager":Lcom/android/server/pm/ApexManager;
    invoke-virtual {v5, v0}, Lcom/android/server/pm/ApexManager;->reserveSpaceForCompressedApex(Landroid/apex/CompressedApexInfoList;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_32} :catch_41
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_32} :catch_39
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2b .. :try_end_32} :catch_39
    .catchall {:try_start_2b .. :try_end_32} :catchall_37

    .line 1397
    nop

    .line 1403
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1397
    return v1

    .line 1403
    .end local v0    # "apexInfoList":Landroid/apex/CompressedApexInfoList;
    .end local v5    # "apexManager":Lcom/android/server/pm/ApexManager;
    :catchall_37
    move-exception v0

    goto :goto_4c

    .line 1400
    :catch_39
    move-exception v0

    .line 1401
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3a
    const-string v1, "Failed to reserve space for compressed apex: "

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1403
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_46

    .line 1398
    :catch_41
    move-exception v0

    .line 1399
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;
    :try_end_45
    .catchall {:try_start_3a .. :try_end_45} :catchall_37

    .line 1403
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_46
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1404
    nop

    .line 1405
    const/4 v0, 0x0

    return v0

    .line 1403
    :goto_4c
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1404
    throw v0
.end method

.method public clearBcb()Z
    .registers 4

    .line 728
    sget-object v0, Lcom/android/server/recoverysystem/RecoverySystemService;->sRequestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 729
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_5
    invoke-direct {p0, v1, v2}, Lcom/android/server/recoverysystem/RecoverySystemService;->setupOrClearBcb(ZLjava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 730
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public clearLskf(Ljava/lang/String;)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1099
    invoke-direct {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->enforcePermissionForResumeOnReboot()V

    .line 1100
    const/4 v0, 0x0

    const-string v1, "RecoverySystemService"

    if-nez p1, :cond_e

    .line 1101
    const-string v2, "Missing packageName when clearing lskf."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    return v0

    .line 1106
    :cond_e
    invoke-direct {p0, p1}, Lcom/android/server/recoverysystem/RecoverySystemService;->updateRoRPreparationStateOnClear(Ljava/lang/String;)I

    move-result v2

    .line 1107
    .local v2, "action":I
    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_6a

    .line 1128
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported action type on clear "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1112
    :pswitch_2f
    return v3

    .line 1114
    :pswitch_30
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1116
    .local v3, "origId":J
    :try_start_34
    iget-object v5, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v5}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getLockSettingsService()Lcom/android/internal/widget/LockSettingsInternal;

    move-result-object v5

    .line 1117
    .local v5, "lockSettings":Lcom/android/internal/widget/LockSettingsInternal;
    if-nez v5, :cond_46

    .line 1118
    const-string v6, "Failed to get lock settings service, skipping clearRebootEscrow"

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_34 .. :try_end_41} :catchall_4e

    .line 1120
    nop

    .line 1125
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1120
    return v0

    .line 1123
    :cond_46
    :try_start_46
    invoke-virtual {v5}, Lcom/android/internal/widget/LockSettingsInternal;->clearRebootEscrow()Z

    move-result v0
    :try_end_4a
    .catchall {:try_start_46 .. :try_end_4a} :catchall_4e

    .line 1125
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1123
    return v0

    .line 1125
    .end local v5    # "lockSettings":Lcom/android/internal/widget/LockSettingsInternal;
    :catchall_4e
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1126
    throw v0

    .line 1109
    .end local v3    # "origId":J
    :pswitch_53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RoR clear called before preparation for caller "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    return v3

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_53
        :pswitch_30
        :pswitch_2f
    .end packed-switch
.end method

.method public disableFactoryReset(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "isDisableFactoryReset"    # Z
    .param p2, "packageInfo"    # Ljava/lang/String;
    .param p3, "lastExtensionParametersPath"    # Ljava/lang/String;

    .line 862
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 863
    .local v0, "recoveryExtensionParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_a

    const-string v1, "1"

    goto :goto_c

    :cond_a
    const-string v1, "0"

    :goto_c
    const-string v2, "disable_factoryreset"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    if-nez p2, :cond_17

    const-string/jumbo v1, "system"

    goto :goto_18

    :cond_17
    move-object v1, p2

    :goto_18
    const-string v2, "disable_factoryreset_caller"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    invoke-direct {p0, v0, p3}, Lcom/android/server/recoverysystem/RecoverySystemService;->appendRecoveryParameters(Ljava/util/Map;Ljava/lang/String;)V

    .line 866
    return-void
.end method

.method public flashMiuiRom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "romPath"    # Ljava/lang/String;
    .param p2, "packageInfo"    # Ljava/lang/String;
    .param p3, "lastExtensionParametersPath"    # Ljava/lang/String;

    .line 870
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 871
    .local v0, "recoveryExtensionParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "airflash_caller"

    if-nez p2, :cond_d

    const-string/jumbo v2, "system"

    goto :goto_e

    :cond_d
    move-object v2, p2

    :goto_e
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    invoke-direct {p0, v0, p3}, Lcom/android/server/recoverysystem/RecoverySystemService;->appendRecoveryParameters(Ljava/util/Map;Ljava/lang/String;)V

    .line 873
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--airflash_rom_path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n--locale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n--reason=airflash"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 875
    .local v1, "command":Ljava/lang/String;
    sget-object v2, Lcom/android/server/recoverysystem/RecoverySystemService;->sRequestLock:Ljava/lang/Object;

    monitor-enter v2

    .line 876
    const/4 v3, 0x1

    :try_start_43
    invoke-direct {p0, v3, v1}, Lcom/android/server/recoverysystem/RecoverySystemService;->setupOrClearBcb(ZLjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4b

    .line 877
    monitor-exit v2

    return-void

    .line 881
    :cond_4b
    iget-object v3, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v3}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getPowerManager()Landroid/os/PowerManager;

    move-result-object v3

    .line 882
    .local v3, "pm":Landroid/os/PowerManager;
    const-string/jumbo v4, "recovery"

    invoke-virtual {v3, v4}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 883
    .end local v3    # "pm":Landroid/os/PowerManager;
    monitor-exit v2

    .line 884
    return-void

    .line 883
    :catchall_59
    move-exception v3

    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_43 .. :try_end_5b} :catchall_59

    throw v3
.end method

.method public isLskfCaptured(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1410
    invoke-direct {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->enforcePermissionForResumeOnReboot()V

    .line 1412
    monitor-enter p0

    .line 1413
    :try_start_4
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1414
    .local v0, "captured":Z
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_29

    .line 1416
    if-nez v0, :cond_27

    .line 1417
    const-string v1, "RecoverySystemService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reboot requested before prepare completed for caller "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    const/4 v1, 0x0

    return v1

    .line 1421
    :cond_27
    const/4 v1, 0x1

    return v1

    .line 1414
    .end local v0    # "captured":Z
    :catchall_29
    move-exception v0

    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public onPreparedForReboot(Z)V
    .registers 2
    .param p1, "ready"    # Z

    .line 1063
    if-nez p1, :cond_3

    .line 1064
    return-void

    .line 1066
    :cond_3
    invoke-direct {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->updateRoRPreparationStateOnPreparedForReboot()V

    .line 1067
    invoke-direct {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->reportMetricsOnPreparedForReboot()V

    .line 1068
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 19
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 1622
    invoke-direct {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->enforceShell()V

    .line 1623
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1625
    .local v1, "origId":J
    :try_start_7
    new-instance v3, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_21

    move-object v11, p0

    :try_start_a
    invoke-direct {v3, p0}, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;-><init>(Lcom/android/server/recoverysystem/RecoverySystemService;)V

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_1f

    .line 1628
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1629
    nop

    .line 1630
    return-void

    .line 1628
    :catchall_1f
    move-exception v0

    goto :goto_23

    :catchall_21
    move-exception v0

    move-object v11, p0

    :goto_23
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1629
    throw v0
.end method

.method onSystemServicesReady()V
    .registers 4

    .line 457
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v0}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getLockSettingsService()Lcom/android/internal/widget/LockSettingsInternal;

    move-result-object v0

    .line 458
    .local v0, "lockSettings":Lcom/android/internal/widget/LockSettingsInternal;
    if-nez v0, :cond_10

    .line 459
    const-string v1, "RecoverySystemService"

    const-string v2, "Failed to get lock settings service, skipping set RebootEscrowListener"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    return-void

    .line 463
    :cond_10
    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockSettingsInternal;->setRebootEscrowListener(Lcom/android/internal/widget/RebootEscrowListener;)V

    .line 464
    return-void
.end method

.method public readRescueFile(Ljava/lang/String;Ljava/lang/String;)Landroid/os/SharedMemory;
    .registers 9
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "appName"    # Ljava/lang/String;

    .line 888
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 889
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "RecoverySystemService"

    if-nez v1, :cond_25

    .line 890
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read rescue file not exists: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    return-object v2

    .line 893
    :cond_25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read Rescue File: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", operate app: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/recoverysystem/RecoverySystemService;->logRecoverySystemOperate(Ljava/lang/String;)V

    .line 894
    :try_start_45
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_4a} :catch_60

    .line 895
    .local v1, "in":Ljava/io/FileInputStream;
    :try_start_4a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->readAllBytes()[B

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/android/server/recoverysystem/RecoverySystemService;->byteArrayToSharedMemory(Ljava/lang/String;[B)Landroid/os/SharedMemory;

    move-result-object v4
    :try_end_52
    .catchall {:try_start_4a .. :try_end_52} :catchall_56

    .line 896
    :try_start_52
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_60

    .line 895
    return-object v4

    .line 894
    :catchall_56
    move-exception v4

    :try_start_57
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_5b

    goto :goto_5f

    :catchall_5b
    move-exception v5

    :try_start_5c
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "file":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/recoverysystem/RecoverySystemService;
    .end local p1    # "fileName":Ljava/lang/String;
    .end local p2    # "appName":Ljava/lang/String;
    :goto_5f
    throw v4
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_60} :catch_60

    .line 896
    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v0    # "file":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/recoverysystem/RecoverySystemService;
    .restart local p1    # "fileName":Ljava/lang/String;
    .restart local p2    # "appName":Ljava/lang/String;
    :catch_60
    move-exception v1

    .line 897
    .local v1, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read rescue file ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") failed!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 898
    return-object v2
.end method

.method public rebootRecoveryWithCommand(Ljava/lang/String;)V
    .registers 6
    .param p1, "command"    # Ljava/lang/String;

    .line 745
    const/4 v0, 0x1

    if-eqz p1, :cond_d

    const-string v1, "--wipe_data"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    move v1, v0

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    .line 746
    .local v1, "isForcedWipe":Z
    :goto_e
    sget-object v2, Lcom/android/server/recoverysystem/RecoverySystemService;->sRequestLock:Ljava/lang/Object;

    monitor-enter v2

    .line 747
    :try_start_11
    invoke-direct {p0, v0, p1}, Lcom/android/server/recoverysystem/RecoverySystemService;->setupOrClearBcb(ZLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 748
    monitor-exit v2

    return-void

    .line 751
    :cond_19
    if-eqz v1, :cond_1e

    .line 752
    invoke-static {}, Lcom/android/server/recoverysystem/RecoverySystemService;->deleteSecrets()V

    .line 756
    :cond_1e
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v0}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getPowerManager()Landroid/os/PowerManager;

    move-result-object v0

    .line 757
    .local v0, "pm":Landroid/os/PowerManager;
    const-string/jumbo v3, "recovery"

    invoke-virtual {v0, v3}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 758
    .end local v0    # "pm":Landroid/os/PowerManager;
    monitor-exit v2

    .line 759
    return-void

    .line 758
    :catchall_2c
    move-exception v0

    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_11 .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method public rebootWithLskf(Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "slotSwitch"    # Z

    .line 1324
    invoke-direct {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->enforcePermissionForResumeOnReboot()V

    .line 1325
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/recoverysystem/RecoverySystemService;->rebootWithLskfImpl(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public rebootWithLskfAssumeSlotSwitch(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .line 1317
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RECOVERY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/recoverysystem/RecoverySystemService;->rebootWithLskfImpl(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public removeRescueFile(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "appName"    # Ljava/lang/String;

    .line 927
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 928
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 929
    .local v1, "fileExists":Z
    const/4 v2, 0x0

    .line 930
    .local v2, "result":I
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 931
    const/4 v1, 0x1

    .line 932
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 934
    :cond_11
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, -0x2

    goto :goto_1a

    :cond_19
    const/4 v3, 0x0

    :goto_1a
    move v2, v3

    .line 935
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remove Rescue File: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", operate app: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", exists: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/recoverysystem/RecoverySystemService;->logRecoverySystemOperate(Ljava/lang/String;)V

    .line 937
    return v2
.end method

.method public requestLskf(Ljava/lang/String;Landroid/content/IntentSender;)Z
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "intentSender"    # Landroid/content/IntentSender;

    .line 969
    invoke-direct {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->enforcePermissionForResumeOnReboot()V

    .line 971
    const-string v0, "RecoverySystemService"

    const/4 v1, 0x0

    if-nez p1, :cond_e

    .line 972
    const-string v2, "Missing packageName when requesting lskf."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    return v1

    .line 976
    :cond_e
    invoke-direct {p0, p1, p2}, Lcom/android/server/recoverysystem/RecoverySystemService;->updateRoRPreparationStateOnNewRequest(Ljava/lang/String;Landroid/content/IntentSender;)I

    move-result v2

    .line 978
    .local v2, "action":I
    invoke-direct {p0, p1, v2}, Lcom/android/server/recoverysystem/RecoverySystemService;->reportMetricsOnRequestLskf(Ljava/lang/String;I)V

    .line 980
    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_66

    .line 1006
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported action type on new request "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 986
    :pswitch_32
    return v3

    .line 983
    :pswitch_33
    invoke-direct {p0, p2}, Lcom/android/server/recoverysystem/RecoverySystemService;->sendPreparedForRebootIntentIfNeeded(Landroid/content/IntentSender;)V

    .line 984
    return v3

    .line 988
    :pswitch_37
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 990
    .local v4, "origId":J
    :try_start_3b
    iget-object v6, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v6}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getLockSettingsService()Lcom/android/internal/widget/LockSettingsInternal;

    move-result-object v6

    .line 991
    .local v6, "lockSettings":Lcom/android/internal/widget/LockSettingsInternal;
    if-nez v6, :cond_4d

    .line 992
    const-string v3, "Failed to get lock settings service, skipping prepareRebootEscrow"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catchall {:try_start_3b .. :try_end_48} :catchall_60

    .line 994
    nop

    .line 1003
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 994
    return v1

    .line 997
    :cond_4d
    :try_start_4d
    invoke-virtual {v6}, Lcom/android/internal/widget/LockSettingsInternal;->prepareRebootEscrow()Z

    move-result v0

    if-nez v0, :cond_5b

    .line 998
    invoke-direct {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->clearRoRPreparationState()V
    :try_end_56
    .catchall {:try_start_4d .. :try_end_56} :catchall_60

    .line 999
    nop

    .line 1003
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 999
    return v1

    .line 1001
    :cond_5b
    nop

    .line 1003
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1001
    return v3

    .line 1003
    .end local v6    # "lockSettings":Lcom/android/internal/widget/LockSettingsInternal;
    :catchall_60
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1004
    throw v0

    nop

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_37
        :pswitch_33
        :pswitch_32
    .end packed-switch
.end method

.method public setupBcb(Ljava/lang/String;)Z
    .registers 4
    .param p1, "command"    # Ljava/lang/String;

    .line 736
    sget-object v0, Lcom/android/server/recoverysystem/RecoverySystemService;->sRequestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 737
    const/4 v1, 0x1

    :try_start_4
    invoke-direct {p0, v1, p1}, Lcom/android/server/recoverysystem/RecoverySystemService;->setupOrClearBcb(ZLjava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 738
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z
    .registers 12
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/os/IRecoverySystemProgressListener;

    .line 623
    const-string v0, "/data/miui/apps.block"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_53

    .line 624
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/miui/apps.block"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 625
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 626
    const-string v2, "RecoverySystemService"

    const-string v3, "/data/miui/apps.block already exists, delete the file now."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 630
    :cond_20
    const-string v2, "/data/miui/app"

    const-string v3, "/data/miui/apps.block"

    invoke-direct {p0, v2, v3}, Lcom/android/server/recoverysystem/RecoverySystemService;->toSplicing(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 631
    const-string v2, "RecoverySystemService"

    const-string v3, "Factory reset(1217): error splicing apps."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    return v1

    .line 635
    :cond_32
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_43

    goto :goto_4b

    .line 641
    :cond_43
    invoke-static {}, Lcom/android/server/recoverysystem/RecoverySystemServiceStub;->getInstance()Lcom/android/server/recoverysystem/RecoverySystemServiceStub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/recoverysystem/RecoverySystemServiceStub;->doWipeRescuePartition()V

    goto :goto_53

    .line 636
    :cond_4b
    :goto_4b
    const-string v2, "RecoverySystemService"

    const-string v3, "Factory reset(1217): no pre installed apps need to be retained."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    return v1

    .line 645
    .end local v0    # "file":Ljava/io/File;
    :cond_53
    :goto_53
    sget-object v0, Lcom/android/server/recoverysystem/RecoverySystemService;->sRequestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 646
    :try_start_56
    iget-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.RECOVERY"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    invoke-direct {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->checkAndWaitForUncryptService()Z

    move-result v2

    if-nez v2, :cond_6e

    .line 649
    const-string v2, "RecoverySystemService"

    const-string/jumbo v3, "uncrypt service is unavailable."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    monitor-exit v0

    return v1

    .line 655
    :cond_6e
    iget-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v2}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->uncryptPackageFileDelete()Z
    :try_end_73
    .catchall {:try_start_56 .. :try_end_73} :catchall_16b

    .line 657
    :try_start_73
    iget-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v2}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getUncryptPackageFileWriter()Ljava/io/FileWriter;

    move-result-object v2
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_79} :catch_144
    .catchall {:try_start_73 .. :try_end_79} :catchall_16b

    .line 658
    .local v2, "uncryptFile":Ljava/io/FileWriter;
    :try_start_79
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_8f
    .catchall {:try_start_79 .. :try_end_8f} :catchall_138

    .line 659
    if-eqz v2, :cond_94

    :try_start_91
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_144
    .catchall {:try_start_91 .. :try_end_94} :catchall_16b

    .line 663
    .end local v2    # "uncryptFile":Ljava/io/FileWriter;
    :cond_94
    nop

    .line 666
    :try_start_95
    iget-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    const-string v3, "ctl.start"

    const-string/jumbo v4, "uncrypt"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->systemPropertiesSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    iget-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v2}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->connectService()Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;

    move-result-object v2

    .line 670
    .local v2, "socket":Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;
    if-nez v2, :cond_b0

    .line 671
    const-string v3, "RecoverySystemService"

    const-string v4, "Failed to connect to uncrypt socket"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    monitor-exit v0
    :try_end_af
    .catchall {:try_start_95 .. :try_end_af} :catchall_16b

    return v1

    .line 677
    :cond_b0
    const/high16 v3, -0x80000000

    .line 679
    .local v3, "lastStatus":I
    :goto_b2
    :try_start_b2
    invoke-virtual {v2}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->getPercentageUncrypted()I

    move-result v4

    .line 681
    .local v4, "status":I
    if-ne v4, v3, :cond_bd

    const/high16 v5, -0x80000000

    if-eq v3, v5, :cond_bd

    .line 682
    goto :goto_b2

    .line 684
    :cond_bd
    move v3, v4

    .line 686
    if-ltz v4, :cond_101

    const/16 v5, 0x64

    if-gt v4, v5, :cond_101

    .line 688
    const-string v6, "RecoverySystemService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "uncrypt read status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_dd
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_dd} :catch_125
    .catchall {:try_start_b2 .. :try_end_dd} :catchall_123

    .line 689
    if-eqz p2, :cond_eb

    .line 691
    :try_start_df
    invoke-interface {p2, v4}, Landroid/os/IRecoverySystemProgressListener;->onProgress(I)V
    :try_end_e2
    .catch Landroid/os/RemoteException; {:try_start_df .. :try_end_e2} :catch_e3
    .catch Ljava/io/IOException; {:try_start_df .. :try_end_e2} :catch_125
    .catchall {:try_start_df .. :try_end_e2} :catchall_123

    .line 694
    goto :goto_eb

    .line 692
    :catch_e3
    move-exception v6

    .line 693
    .local v6, "ignored":Landroid/os/RemoteException;
    :try_start_e4
    const-string v7, "RecoverySystemService"

    const-string v8, "RemoteException when posting progress"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    .end local v6    # "ignored":Landroid/os/RemoteException;
    :cond_eb
    :goto_eb
    if-ne v4, v5, :cond_100

    .line 697
    const-string v5, "RecoverySystemService"

    const-string/jumbo v6, "uncrypt successfully finished."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    invoke-virtual {v2}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->sendAck()V
    :try_end_f8
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_f8} :catch_125
    .catchall {:try_start_e4 .. :try_end_f8} :catchall_123

    .line 702
    nop

    .line 718
    .end local v3    # "lastStatus":I
    .end local v4    # "status":I
    :try_start_f9
    invoke-virtual {v2}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    .line 719
    nop

    .line 721
    const/4 v1, 0x1

    monitor-exit v0
    :try_end_ff
    .catchall {:try_start_f9 .. :try_end_ff} :catchall_16b

    return v1

    .line 713
    .restart local v3    # "lastStatus":I
    :cond_100
    goto :goto_b2

    .line 706
    .restart local v4    # "status":I
    :cond_101
    :try_start_101
    const-string v5, "RecoverySystemService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "uncrypt failed with status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    invoke-virtual {v2}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->sendAck()V
    :try_end_11d
    .catch Ljava/io/IOException; {:try_start_101 .. :try_end_11d} :catch_125
    .catchall {:try_start_101 .. :try_end_11d} :catchall_123

    .line 711
    nop

    .line 718
    :try_start_11e
    invoke-virtual {v2}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    monitor-exit v0
    :try_end_122
    .catchall {:try_start_11e .. :try_end_122} :catchall_16b

    .line 711
    return v1

    .line 718
    .end local v3    # "lastStatus":I
    .end local v4    # "status":I
    :catchall_123
    move-exception v1

    goto :goto_133

    .line 714
    :catch_125
    move-exception v3

    .line 715
    .local v3, "e":Ljava/io/IOException;
    :try_start_126
    const-string v4, "RecoverySystemService"

    const-string v5, "IOException when reading status: "

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12d
    .catchall {:try_start_126 .. :try_end_12d} :catchall_123

    .line 716
    nop

    .line 718
    :try_start_12e
    invoke-virtual {v2}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    monitor-exit v0

    .line 716
    return v1

    .line 718
    .end local v3    # "e":Ljava/io/IOException;
    :goto_133
    invoke-virtual {v2}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    .line 719
    nop

    .end local p0    # "this":Lcom/android/server/recoverysystem/RecoverySystemService;
    .end local p1    # "filename":Ljava/lang/String;
    .end local p2    # "listener":Landroid/os/IRecoverySystemProgressListener;
    throw v1
    :try_end_138
    .catchall {:try_start_12e .. :try_end_138} :catchall_16b

    .line 657
    .local v2, "uncryptFile":Ljava/io/FileWriter;
    .restart local p0    # "this":Lcom/android/server/recoverysystem/RecoverySystemService;
    .restart local p1    # "filename":Ljava/lang/String;
    .restart local p2    # "listener":Landroid/os/IRecoverySystemProgressListener;
    :catchall_138
    move-exception v3

    if-eqz v2, :cond_143

    :try_start_13b
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_13e
    .catchall {:try_start_13b .. :try_end_13e} :catchall_13f

    goto :goto_143

    :catchall_13f
    move-exception v4

    :try_start_140
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/recoverysystem/RecoverySystemService;
    .end local p1    # "filename":Ljava/lang/String;
    .end local p2    # "listener":Landroid/os/IRecoverySystemProgressListener;
    :cond_143
    :goto_143
    throw v3
    :try_end_144
    .catch Ljava/io/IOException; {:try_start_140 .. :try_end_144} :catch_144
    .catchall {:try_start_140 .. :try_end_144} :catchall_16b

    .line 659
    .end local v2    # "uncryptFile":Ljava/io/FileWriter;
    .restart local p0    # "this":Lcom/android/server/recoverysystem/RecoverySystemService;
    .restart local p1    # "filename":Ljava/lang/String;
    .restart local p2    # "listener":Landroid/os/IRecoverySystemProgressListener;
    :catch_144
    move-exception v2

    .line 660
    .local v2, "e":Ljava/io/IOException;
    :try_start_145
    const-string v3, "RecoverySystemService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException when writing \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    .line 661
    invoke-virtual {v5}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getUncryptPackageFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 660
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 662
    monitor-exit v0

    return v1

    .line 722
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_16b
    move-exception v1

    monitor-exit v0
    :try_end_16d
    .catchall {:try_start_145 .. :try_end_16d} :catchall_16b

    throw v1
.end method

.method public writeRescueFile(Ljava/lang/String;Ljava/lang/String;Landroid/os/SharedMemory;)I
    .registers 11
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "sm"    # Landroid/os/SharedMemory;

    .line 904
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 905
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    .line 906
    .local v1, "fileExists":Z
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 907
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 909
    :cond_12
    invoke-direct {p0, p3}, Lcom/android/server/recoverysystem/RecoverySystemService;->sharedMemoryToByteArray(Landroid/os/SharedMemory;)[B

    move-result-object v2

    .line 910
    .local v2, "content":[B
    if-nez v2, :cond_1a

    .line 911
    const/4 v3, -0x5

    return v3

    .line 913
    :cond_1a
    :try_start_1a
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_20} :catch_6a

    .line 914
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_20
    invoke-virtual {v3, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 915
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 916
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Write Rescue File: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", operate app: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", override: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/recoverysystem/RecoverySystemService;->logRecoverySystemOperate(Ljava/lang/String;)V
    :try_end_5b
    .catchall {:try_start_20 .. :try_end_5b} :catchall_60

    .line 918
    nop

    .line 919
    :try_start_5c
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_6a

    .line 918
    return v4

    .line 913
    :catchall_60
    move-exception v4

    :try_start_61
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_65

    goto :goto_69

    :catchall_65
    move-exception v5

    :try_start_66
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "fileExists":Z
    .end local v2    # "content":[B
    .end local p0    # "this":Lcom/android/server/recoverysystem/RecoverySystemService;
    .end local p1    # "fileName":Ljava/lang/String;
    .end local p2    # "appName":Ljava/lang/String;
    .end local p3    # "sm":Landroid/os/SharedMemory;
    :goto_69
    throw v4
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_6a} :catch_6a

    .line 919
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "fileExists":Z
    .restart local v2    # "content":[B
    .restart local p0    # "this":Lcom/android/server/recoverysystem/RecoverySystemService;
    .restart local p1    # "fileName":Ljava/lang/String;
    .restart local p2    # "appName":Ljava/lang/String;
    .restart local p3    # "sm":Landroid/os/SharedMemory;
    :catch_6a
    move-exception v3

    .line 920
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Write rescue file ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") failed!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RecoverySystemService"

    invoke-static {v5, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 921
    const/4 v4, -0x2

    return v4
.end method
