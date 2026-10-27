.class public Landroid/view/SurfaceControlImpl;
.super Ljava/lang/Object;
.source "SurfaceControlImpl.java"

# interfaces
.implements Landroid/view/SurfaceControlStub;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceControlImpl$Action;
    }
.end annotation


# static fields
.field private static final blacklist FILE_DUMP_PREFIX:Ljava/lang/String; = "layers_leak_"

.field private static final blacklist HPROF_FILE_DIR:Ljava/lang/String; = "/data/miuilog/stability/resleak/layersleak/hprof"

.field private static final blacklist LAYER_LEAK:Ljava/lang/String; = "layersleak"

.field private static final blacklist MAX_DUMPS:I = 0x2

.field private static final blacklist MAX_LEAK_FILE:I = 0x3

.field private static final blacklist MQSASD:Ljava/lang/String; = "miui.mqsas.IMQSNative"

.field private static final blacklist RESLEAK_FILE_DIR:Ljava/lang/String; = "/data/miuilog/stability/resleak"

.field private static final blacklist SURFACE_FILE_DIR:Ljava/lang/String; = "/data/miuilog/stability/resleak/layersleak"

.field private static final blacklist TAG:Ljava/lang/String; = "SurfaceControlImpl"

.field private static blacklist mDaemon:Lmiui/mqsas/IMQSNative;


# instance fields
.field private final blacklist ENABLED_SCOUT:Z

.field private blacklist hasDumpLeakedLayers:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$RQGkMh-WlchAulyLe7MvTnVD958(Landroid/view/SurfaceControlImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/SurfaceControlImpl;->dumpLeakedLayersLog()V

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    nop

    .line 32
    const-string v0, "persist.sys.miui_scout_enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/SurfaceControlImpl;->ENABLED_SCOUT:Z

    .line 45
    iput-boolean v1, p0, Landroid/view/SurfaceControlImpl;->hasDumpLeakedLayers:Z

    return-void
.end method

.method private static blacklist captureLog(Ljava/lang/String;Ljava/lang/String;Landroid/view/SurfaceControlImpl$Action;ZIZLjava/lang/String;)V
    .registers 21
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "headline"    # Ljava/lang/String;
    .param p2, "action"    # Landroid/view/SurfaceControlImpl$Action;
    .param p3, "offline"    # Z
    .param p4, "id"    # I
    .param p5, "upload"    # Z
    .param p6, "where"    # Ljava/lang/String;

    .line 93
    invoke-static {}, Landroid/view/SurfaceControlImpl;->getmDaemon()Lmiui/mqsas/IMQSNative;

    move-result-object v12

    .line 94
    .local v12, "mClient":Lmiui/mqsas/IMQSNative;
    const-string v13, "SurfaceControlImpl"

    if-nez v12, :cond_e

    .line 95
    const-string v0, "CaptureLog no mqsasd!"

    invoke-static {v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void

    .line 99
    :cond_e
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4b

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_4b

    .line 103
    :cond_1b
    if-nez p6, :cond_23

    .line 104
    const-string v0, "CaptureLog where is null!"

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void

    .line 108
    :cond_23
    :try_start_23
    invoke-static/range {p2 .. p2}, Landroid/view/SurfaceControlImpl$Action;->-$$Nest$fgetactions(Landroid/view/SurfaceControlImpl$Action;)Ljava/util/List;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Landroid/view/SurfaceControlImpl$Action;->-$$Nest$fgetparams(Landroid/view/SurfaceControlImpl$Action;)Ljava/util/List;

    move-result-object v5

    invoke-static/range {p2 .. p2}, Landroid/view/SurfaceControlImpl$Action;->-$$Nest$fgetincludeFiles(Landroid/view/SurfaceControlImpl$Action;)Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    move-object v1, v12

    move-object v2, p0

    move-object v3, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-interface/range {v1 .. v11}, Lmiui/mqsas/IMQSNative;->captureLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZIZLjava/lang/String;Ljava/util/List;Z)V

    .line 110
    const-string v0, "CaptureLog success."

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_43} :catch_44

    .line 113
    goto :goto_4a

    .line 111
    :catch_44
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CaptureLog failed!"

    invoke-static {v13, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4a
    return-void

    .line 100
    :cond_4b
    :goto_4b
    const-string v0, "CaptureLog type or headline is null!"

    invoke-static {v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method

.method private static blacklist dumpHprof(I)V
    .registers 9
    .param p0, "pid"    # I

    .line 117
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/miuilog/stability/resleak/layersleak/hprof"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, "hprofDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, "SurfaceControlImpl"

    if-nez v2, :cond_1b

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 119
    const-string v1, "Failed to mkdir."

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-void

    .line 122
    :cond_1b
    const/16 v2, 0x1ff

    const/4 v4, -0x1

    invoke-static {v0, v2, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    move-result v2

    .line 124
    .local v2, "errno":I
    if-eqz v2, :cond_45

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to update hprof dir perms: path = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", errno="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-void

    .line 129
    :cond_45
    const/4 v5, 0x2

    const-string v6, ".hprof"

    invoke-static {v1, v6, v5}, Landroid/view/SurfaceControlImpl;->removeHistoricalDumps(Ljava/lang/String;Ljava/lang/String;I)V

    .line 132
    :try_start_4b
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "date":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "/system_sever_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 134
    .local v5, "path":Ljava/lang/String;
    invoke-static {v5}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V

    .line 135
    const/16 v6, 0x1b4

    invoke-static {v5, v6, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 138
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dumpHprof success : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_a2} :catch_a4

    .line 141
    nop

    .end local v1    # "date":Ljava/lang/String;
    .end local v5    # "path":Ljava/lang/String;
    goto :goto_aa

    .line 139
    :catch_a4
    move-exception v1

    .line 140
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "dumpHprof failed: "

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_aa
    return-void
.end method

.method private blacklist dumpLeakedLayersLog()V
    .registers 2

    .line 62
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/SurfaceControlImpl;->dumpSurfaceFlinger(I)V

    .line 63
    invoke-static {}, Lmiui/mqsas/scout/ScoutUtils;->isLibraryTest()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 64
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/view/SurfaceControlImpl;->dumpHprof(I)V

    .line 66
    :cond_14
    return-void
.end method

.method private blacklist dumpSurfaceFlinger(I)V
    .registers 16
    .param p1, "pid"    # I

    .line 69
    invoke-static {}, Landroid/view/SurfaceControlImpl;->getSurfaceDir()Ljava/io/File;

    move-result-object v0

    .line 70
    .local v0, "surfaceDir":Ljava/io/File;
    const-string v1, "SurfaceControlImpl"

    if-nez v0, :cond_e

    .line 71
    const-string v2, "file is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-void

    .line 75
    :cond_e
    const/4 v2, 0x3

    const-string v3, "/data/miuilog/stability/resleak/layersleak"

    const-string v4, ".zip"

    invoke-static {v3, v4, v2}, Landroid/view/SurfaceControlImpl;->removeHistoricalDumps(Ljava/lang/String;Ljava/lang/String;I)V

    .line 77
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "yyyy-MM-dd-HH-mm-ss-SSS"

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 78
    .local v2, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, "formattedDate":Ljava/lang/String;
    new-instance v4, Landroid/view/SurfaceControlImpl$Action;

    invoke-direct {v4}, Landroid/view/SurfaceControlImpl$Action;-><init>()V

    .line 80
    .local v4, "action":Landroid/view/SurfaceControlImpl$Action;
    const-string v5, "dumpsys"

    const-string v6, "SurfaceFlinger"

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControlImpl$Action;->addActionAndParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v6, "activity"

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControlImpl$Action;->addActionAndParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v6, "window"

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControlImpl$Action;->addActionAndParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v6, "display"

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControlImpl$Action;->addActionAndParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "layers_leak_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 86
    .local v12, "headline":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 87
    .local v13, "where":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dumpSurfaceFlinger: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string v5, "layersleak"

    move-object v6, v12

    move-object v7, v4

    move-object v11, v13

    invoke-static/range {v5 .. v11}, Landroid/view/SurfaceControlImpl;->captureLog(Ljava/lang/String;Ljava/lang/String;Landroid/view/SurfaceControlImpl$Action;ZIZLjava/lang/String;)V

    .line 89
    return-void
.end method

.method private static blacklist getSurfaceDir()Ljava/io/File;
    .registers 7

    .line 160
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/miuilog/stability/resleak"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    .local v0, "resLeadDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "SurfaceControlImpl"

    const/16 v4, 0x1ff

    const/4 v5, -0x1

    if-nez v1, :cond_27

    .line 162
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 163
    const-string v1, "Cannot create res dir"

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-object v2

    .line 166
    :cond_1f
    nop

    .line 167
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-static {v1, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 172
    :cond_27
    new-instance v1, Ljava/io/File;

    const-string v6, "layersleak"

    invoke-direct {v1, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 173
    .local v1, "surfaceDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_48

    .line 174
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_40

    .line 175
    const-string v4, "Cannot create surface dir"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-object v2

    .line 178
    :cond_40
    nop

    .line 179
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-static {v2, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 184
    :cond_48
    return-object v1
.end method

.method private static blacklist getmDaemon()Lmiui/mqsas/IMQSNative;
    .registers 2

    .line 188
    sget-object v0, Landroid/view/SurfaceControlImpl;->mDaemon:Lmiui/mqsas/IMQSNative;

    if-nez v0, :cond_19

    .line 189
    const-string v0, "miui.mqsas.IMQSNative"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/mqsas/IMQSNative$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/mqsas/IMQSNative;

    move-result-object v0

    sput-object v0, Landroid/view/SurfaceControlImpl;->mDaemon:Lmiui/mqsas/IMQSNative;

    .line 190
    if-nez v0, :cond_19

    .line 191
    const-string v0, "SurfaceControlImpl"

    const-string v1, "mqsasd not available!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_19
    sget-object v0, Landroid/view/SurfaceControlImpl;->mDaemon:Lmiui/mqsas/IMQSNative;

    return-object v0
.end method

.method static synthetic blacklist lambda$removeHistoricalDumps$0(Ljava/lang/String;Ljava/io/File;)Z
    .registers 3
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "file"    # Ljava/io/File;

    .line 145
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$removeHistoricalDumps$1(Ljava/io/File;Ljava/io/File;)I
    .registers 6
    .param p0, "o1"    # Ljava/io/File;
    .param p1, "o2"    # Ljava/io/File;

    .line 150
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private static blacklist removeHistoricalDumps(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "maxNum"    # I

    .line 145
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/view/SurfaceControlImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroid/view/SurfaceControlImpl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 146
    .local v0, "historicalDumps":[Ljava/io/File;
    if-eqz v0, :cond_46

    array-length v1, v0

    if-ge v1, p2, :cond_14

    goto :goto_46

    .line 150
    :cond_14
    :try_start_14
    new-instance v1, Landroid/view/SurfaceControlImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/view/SurfaceControlImpl$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    :try_end_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_1c} :catch_1d

    .line 153
    goto :goto_36

    .line 151
    :catch_1d
    move-exception v1

    .line 152
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Comparate file failed! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SurfaceControlImpl"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_36
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_39
    add-int/lit8 v2, p2, -0x1

    if-lt v1, v2, :cond_45

    .line 155
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 154
    add-int/lit8 v1, v1, -0x1

    goto :goto_39

    .line 157
    .end local v1    # "i":I
    :cond_45
    return-void

    .line 147
    :cond_46
    :goto_46
    return-void
.end method


# virtual methods
.method public blacklist reportOORException(Z)V
    .registers 5
    .param p1, "sync"    # Z

    .line 49
    iget-boolean v0, p0, Landroid/view/SurfaceControlImpl;->ENABLED_SCOUT:Z

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Landroid/view/SurfaceControlImpl;->hasDumpLeakedLayers:Z

    if-eqz v0, :cond_9

    goto :goto_22

    .line 53
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceControlImpl;->hasDumpLeakedLayers:Z

    .line 54
    if-eqz p1, :cond_12

    .line 55
    invoke-direct {p0}, Landroid/view/SurfaceControlImpl;->dumpLeakedLayersLog()V

    goto :goto_21

    .line 57
    :cond_12
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/view/SurfaceControlImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/view/SurfaceControlImpl$$ExternalSyntheticLambda2;-><init>(Landroid/view/SurfaceControlImpl;)V

    const-string v2, "SurfaceControlImpl"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 59
    :goto_21
    return-void

    .line 50
    :cond_22
    :goto_22
    return-void
.end method
