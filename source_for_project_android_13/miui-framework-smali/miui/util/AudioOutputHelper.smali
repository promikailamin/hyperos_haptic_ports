.class public Lmiui/util/AudioOutputHelper;
.super Ljava/lang/Object;
.source "AudioOutputHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/AudioOutputHelper$CompatCollector;,
        Lmiui/util/AudioOutputHelper$LPCollector;,
        Lmiui/util/AudioOutputHelper$TrackCollector;,
        Lmiui/util/AudioOutputHelper$Result;,
        Lmiui/util/AudioOutputHelper$DUMP_TAG;,
        Lmiui/util/AudioOutputHelper$AudioOutputClient;
    }
.end annotation


# static fields
.field private static blacklist COLLECTOR:Lmiui/util/AudioOutputHelper$TrackCollector; = null

.field private static final blacklist COLLECTOR_COMPAT:Lmiui/util/AudioOutputHelper$TrackCollector;

.field private static final blacklist COLLECTOR_LP:Lmiui/util/AudioOutputHelper$TrackCollector;

.field private static final blacklist DEFAULT_TEMP_FILE:Ljava/lang/String; = "audio_flinger_%d_%d_%d.dump"

.field private static final blacklist TAG:Ljava/lang/String;

.field static final blacklist UNHANDLED:Lmiui/util/AudioOutputHelper$Result;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 33
    const-class v0, Lmiui/util/AudioOutputHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/util/AudioOutputHelper;->TAG:Ljava/lang/String;

    .line 339
    const/4 v0, 0x0

    sput-object v0, Lmiui/util/AudioOutputHelper;->COLLECTOR:Lmiui/util/AudioOutputHelper$TrackCollector;

    .line 340
    new-instance v1, Lmiui/util/AudioOutputHelper$LPCollector;

    invoke-direct {v1}, Lmiui/util/AudioOutputHelper$LPCollector;-><init>()V

    sput-object v1, Lmiui/util/AudioOutputHelper;->COLLECTOR_LP:Lmiui/util/AudioOutputHelper$TrackCollector;

    .line 341
    new-instance v1, Lmiui/util/AudioOutputHelper$CompatCollector;

    invoke-direct {v1}, Lmiui/util/AudioOutputHelper$CompatCollector;-><init>()V

    sput-object v1, Lmiui/util/AudioOutputHelper;->COLLECTOR_COMPAT:Lmiui/util/AudioOutputHelper$TrackCollector;

    .line 353
    new-instance v1, Lmiui/util/AudioOutputHelper$Result;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lmiui/util/AudioOutputHelper$Result;-><init>(ZLjava/lang/String;)V

    sput-object v1, Lmiui/util/AudioOutputHelper;->UNHANDLED:Lmiui/util/AudioOutputHelper$Result;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist collectSessions(Ljava/io/BufferedReader;Ljava/util/Map;)Ljava/lang/String;
    .registers 8
    .param p0, "reader"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    .local p1, "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 77
    .local v0, "content":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    if-eqz v1, :cond_3b

    .line 78
    sget-object v1, Lmiui/util/AudioOutputHelper$DUMP_TAG;->SESSIONS_CONTENT_FINDER:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 79
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_15

    .line 80
    goto :goto_3b

    .line 83
    :cond_15
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 84
    .local v2, "sessionId":I
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 85
    .local v3, "pid":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    .end local v2    # "sessionId":I
    .end local v3    # "pid":I
    goto :goto_1

    .line 88
    :cond_3b
    :goto_3b
    return-object v0
.end method

.method public static blacklist getActiveClientProcessList(Ljava/util/List;Landroid/content/Context;Z)Ljava/util/List;
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "addMainProc"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    .line 242
    .local p0, "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 243
    return-object v0

    .line 246
    :cond_4
    invoke-static {p1}, Lmiui/util/AudioOutputHelper;->parseAudioFlingerDump(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 247
    .local v1, "clients":Ljava/util/List;, "Ljava/util/List<Lmiui/util/AudioOutputHelper$AudioOutputClient;>;"
    if-nez v1, :cond_b

    .line 248
    return-object v0

    .line 251
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .local v0, "actives":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/util/AudioOutputHelper$AudioOutputClient;

    .line 253
    .local v3, "c":Lmiui/util/AudioOutputHelper$AudioOutputClient;
    iget-boolean v4, v3, Lmiui/util/AudioOutputHelper$AudioOutputClient;->mActive:Z

    if-eqz v4, :cond_3e

    .line 254
    iget v4, v3, Lmiui/util/AudioOutputHelper$AudioOutputClient;->mProcessId:I

    .line 255
    .local v4, "pid":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 256
    .local v6, "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v7, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v7, v4, :cond_3d

    .line 257
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    .end local v6    # "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_3d
    goto :goto_2a

    .line 261
    .end local v3    # "c":Lmiui/util/AudioOutputHelper$AudioOutputClient;
    .end local v4    # "pid":I
    :cond_3e
    goto :goto_14

    .line 263
    :cond_3f
    if-eqz p2, :cond_48

    .line 266
    invoke-static {v0, p0}, Lmiui/util/AudioOutputHelper;->getMainProcessNames(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 267
    .local v2, "mainProc":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 270
    .end local v2    # "mainProc":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_48
    return-object v0
.end method

.method public static blacklist getActiveReceiverNameList(Landroid/content/Context;)Ljava/util/List;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 280
    const/4 v0, 0x0

    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 281
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 283
    .local v1, "receivers":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_7a

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_21

    goto :goto_7a

    .line 288
    :cond_21
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    .line 287
    invoke-static {v3, p0, v4}, Lmiui/util/AudioOutputHelper;->getActiveClientProcessList(Ljava/util/List;Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v3

    .line 289
    .local v3, "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v3, :cond_79

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_37

    goto :goto_79

    .line 293
    :cond_37
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_40
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_78

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 295
    .local v6, "p":Landroid/app/ActivityManager$RunningAppProcessInfo;
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_54
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_77

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 296
    .local v8, "info":Landroid/content/pm/ResolveInfo;
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_76

    iget-object v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 297
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_76

    .line 298
    iget-object v7, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_75
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_75} :catch_7b

    .line 299
    goto :goto_77

    .line 301
    .end local v8    # "info":Landroid/content/pm/ResolveInfo;
    :cond_76
    goto :goto_54

    .line 302
    .end local v6    # "p":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_77
    :goto_77
    goto :goto_40

    .line 304
    :cond_78
    return-object v4

    .line 290
    .end local v4    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_79
    :goto_79
    return-object v0

    .line 284
    .end local v3    # "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_7a
    :goto_7a
    return-object v0

    .line 305
    .end local v1    # "receivers":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_7b
    move-exception v1

    .line 308
    return-object v0
.end method

.method private static blacklist getMainProcessNames(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    .line 323
    .local p0, "actives":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .local p1, "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 324
    .local v0, "mainProcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 325
    .local v2, "active":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 326
    .local v3, "colonIndex":I
    if-lez v3, :cond_42

    .line 327
    iget-object v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 328
    .local v4, "mainName":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_42

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 329
    .local v6, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v7, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_41

    .line 330
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    .end local v6    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_41
    goto :goto_2a

    .line 334
    .end local v2    # "active":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v3    # "colonIndex":I
    .end local v4    # "mainName":Ljava/lang/String;
    :cond_42
    goto :goto_9

    .line 336
    :cond_43
    return-object v0
.end method

.method public static blacklist hasActiveReceivers(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 317
    invoke-static {p0}, Lmiui/util/AudioOutputHelper;->getActiveReceiverNameList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 318
    .local v0, "processes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method private static blacklist isStandBy(Ljava/lang/String;)Z
    .registers 5
    .param p0, "str"    # Ljava/lang/String;

    .line 229
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_a} :catch_e

    if-eqz v2, :cond_d

    move v0, v1

    :cond_d
    return v0

    .line 230
    :catch_e
    move-exception v2

    .line 231
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_21

    const-string v3, "yes"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    :cond_21
    move v0, v1

    :cond_22
    return v0
.end method

.method public static blacklist parseAudioFlingerDump(Landroid/content/Context;)Ljava/util/List;
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lmiui/util/AudioOutputHelper$AudioOutputClient;",
            ">;"
        }
    .end annotation

    .line 98
    const/4 v0, 0x0

    .line 100
    .local v0, "dir":Ljava/io/File;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_7

    move-object v0, v1

    .line 102
    goto :goto_8

    .line 101
    :catch_7
    move-exception v1

    .line 104
    :goto_8
    if-nez v0, :cond_12

    .line 105
    new-instance v1, Ljava/io/File;

    const-string v2, "/cache"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 108
    :cond_12
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 109
    .local v1, "pid":I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    .line 110
    .local v2, "tid":J
    const/4 v4, 0x0

    .line 111
    .local v4, "i":I
    new-instance v5, Ljava/io/File;

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v10, 0x1

    aput-object v8, v7, v10

    add-int/lit8 v8, v4, 0x1

    .end local v4    # "i":I
    .local v8, "i":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v11, 0x2

    aput-object v4, v7, v11

    const-string v4, "audio_flinger_%d_%d_%d.dump"

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 112
    .local v5, "dumpFile":Ljava/io/File;
    :goto_44
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_6c

    .line 113
    new-instance v7, Ljava/io/File;

    new-array v12, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v12, v10

    add-int/lit8 v13, v8, 0x1

    .end local v8    # "i":I
    .local v13, "i":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v12, v11

    invoke-static {v4, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v5, v7

    move v8, v13

    goto :goto_44

    .line 116
    .end local v13    # "i":I
    .restart local v8    # "i":I
    :cond_6c
    invoke-static {v5}, Lmiui/util/AudioOutputHelper;->parseAudioFlingerDumpInternal(Ljava/io/File;)Ljava/util/List;

    move-result-object v4

    .line 117
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Lmiui/util/AudioOutputHelper$AudioOutputClient;>;"
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 119
    return-object v4
.end method

.method private static blacklist parseAudioFlingerDumpInternal(Ljava/io/File;)Ljava/util/List;
    .registers 15
    .param p0, "tempFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lmiui/util/AudioOutputHelper$AudioOutputClient;",
            ">;"
        }
    .end annotation

    .line 123
    const/4 v0, 0x0

    .line 125
    .local v0, "os":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v2

    .line 126
    const-string v2, "media.audio_flinger"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_15} :catch_52
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_15} :catch_41
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_15} :catch_30
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_1f
    .catchall {:try_start_2 .. :try_end_15} :catchall_1c

    .line 136
    nop

    .line 138
    :try_start_16
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1a

    .line 140
    :goto_19
    goto :goto_63

    .line 139
    :catch_1a
    move-exception v2

    goto :goto_19

    .line 136
    :catchall_1c
    move-exception v1

    goto/16 :goto_131

    .line 133
    :catch_1f
    move-exception v2

    .line 134
    .local v2, "e":Ljava/lang/Exception;
    :try_start_20
    sget-object v3, Lmiui/util/AudioOutputHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_1c

    .line 136
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_63

    .line 138
    :try_start_2c
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_1a

    goto :goto_19

    .line 131
    :catch_30
    move-exception v2

    .line 132
    .local v2, "e":Ljava/io/IOException;
    :try_start_31
    sget-object v3, Lmiui/util/AudioOutputHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_1c

    .line 136
    nop

    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_63

    .line 138
    :try_start_3d
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_1a

    goto :goto_19

    .line 129
    :catch_41
    move-exception v2

    .line 130
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_42
    sget-object v3, Lmiui/util/AudioOutputHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catchall {:try_start_42 .. :try_end_4b} :catchall_1c

    .line 136
    nop

    .end local v2    # "e":Landroid/os/RemoteException;
    if-eqz v0, :cond_63

    .line 138
    :try_start_4e
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_1a

    goto :goto_19

    .line 127
    :catch_52
    move-exception v2

    .line 128
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_53
    sget-object v3, Lmiui/util/AudioOutputHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catchall {:try_start_53 .. :try_end_5c} :catchall_1c

    .line 136
    nop

    .end local v2    # "e":Ljava/io/FileNotFoundException;
    if-eqz v0, :cond_63

    .line 138
    :try_start_5f
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_1a

    goto :goto_19

    .line 144
    :cond_63
    :goto_63
    const/4 v2, 0x0

    .line 146
    .local v2, "in":Ljava/io/InputStream;
    :try_start_64
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_69
    .catch Ljava/io/FileNotFoundException; {:try_start_64 .. :try_end_69} :catch_6b

    move-object v2, v3

    .line 148
    goto :goto_6c

    .line 147
    :catch_6b
    move-exception v3

    .line 150
    :goto_6c
    if-nez v2, :cond_6f

    .line 151
    return-object v1

    .line 154
    :cond_6f
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 156
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_79
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v4, "clients":Ljava/util/List;, "Ljava/util/List<Lmiui/util/AudioOutputHelper$AudioOutputClient;>;"
    const/4 v5, 0x0

    .line 158
    .local v5, "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    .line 160
    .local v6, "standby":Z
    const/4 v7, 0x0

    .line 161
    .local v7, "content":Ljava/lang/String;
    const/4 v8, 0x0

    .line 163
    .local v8, "skipped":Ljava/lang/String;
    :goto_82
    if-eqz v8, :cond_87

    .line 164
    move-object v7, v8

    .line 165
    const/4 v8, 0x0

    goto :goto_9b

    .line 167
    :cond_87
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_8b} :catch_110
    .catchall {:try_start_79 .. :try_end_8b} :catchall_10e

    move-object v7, v9

    .line 168
    if-nez v7, :cond_9b

    .line 169
    nop

    .line 210
    nop

    .line 215
    :try_start_90
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_94

    .line 217
    goto :goto_95

    .line 216
    :catch_94
    move-exception v1

    .line 219
    :goto_95
    :try_start_95
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_99

    .line 221
    goto :goto_9a

    .line 220
    :catch_99
    move-exception v1

    .line 210
    :goto_9a
    return-object v4

    .line 173
    :cond_9b
    :goto_9b
    :try_start_9b
    sget-object v9, Lmiui/util/AudioOutputHelper$DUMP_TAG;->SESSIONS_HEAD_FINDER:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_b5

    .line 174
    if-nez v5, :cond_af

    .line 175
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    move-object v5, v9

    .line 177
    :cond_af
    invoke-static {v3, v5}, Lmiui/util/AudioOutputHelper;->collectSessions(Ljava/io/BufferedReader;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 178
    goto :goto_82

    .line 181
    :cond_b5
    sget-object v9, Lmiui/util/AudioOutputHelper$DUMP_TAG;->STANDBY_FINDER:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 182
    .local v9, "standbyMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_d0

    .line 183
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 184
    .local v10, "str":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lmiui/util/AudioOutputHelper;->isStandBy(Ljava/lang/String;)Z

    move-result v11

    move v6, v11

    .line 185
    goto :goto_82

    .line 188
    .end local v10    # "str":Ljava/lang/String;
    :cond_d0
    if-nez v6, :cond_10c

    .line 189
    sget-object v10, Lmiui/util/AudioOutputHelper;->COLLECTOR:Lmiui/util/AudioOutputHelper$TrackCollector;

    .line 190
    .local v10, "collector":Lmiui/util/AudioOutputHelper$TrackCollector;
    if-eqz v10, :cond_de

    .line 191
    invoke-interface {v10, v3, v7, v4, v5}, Lmiui/util/AudioOutputHelper$TrackCollector;->collectTracks(Ljava/io/BufferedReader;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Lmiui/util/AudioOutputHelper$Result;

    move-result-object v11

    iget-object v11, v11, Lmiui/util/AudioOutputHelper$Result;->mSkipped:Ljava/lang/String;

    move-object v8, v11

    goto :goto_10c

    .line 193
    :cond_de
    sget-object v11, Lmiui/util/AudioOutputHelper;->COLLECTOR_LP:Lmiui/util/AudioOutputHelper$TrackCollector;

    invoke-interface {v11, v3, v7, v4, v5}, Lmiui/util/AudioOutputHelper$TrackCollector;->collectTracks(Ljava/io/BufferedReader;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Lmiui/util/AudioOutputHelper$Result;

    move-result-object v12

    .line 194
    .local v12, "r":Lmiui/util/AudioOutputHelper$Result;
    iget-boolean v13, v12, Lmiui/util/AudioOutputHelper$Result;->mHandled:Z

    if-eqz v13, :cond_f5

    .line 195
    iget-object v13, v12, Lmiui/util/AudioOutputHelper$Result;->mSkipped:Ljava/lang/String;

    move-object v8, v13

    .line 196
    sput-object v11, Lmiui/util/AudioOutputHelper;->COLLECTOR:Lmiui/util/AudioOutputHelper$TrackCollector;

    .line 197
    sget-object v11, Lmiui/util/AudioOutputHelper;->TAG:Ljava/lang/String;

    const-string v13, "collector=lp"

    invoke-static {v11, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10c

    .line 199
    :cond_f5
    sget-object v11, Lmiui/util/AudioOutputHelper;->COLLECTOR_COMPAT:Lmiui/util/AudioOutputHelper$TrackCollector;

    invoke-interface {v11, v3, v7, v4, v5}, Lmiui/util/AudioOutputHelper$TrackCollector;->collectTracks(Ljava/io/BufferedReader;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Lmiui/util/AudioOutputHelper$Result;

    move-result-object v13

    move-object v12, v13

    .line 200
    iget-boolean v13, v12, Lmiui/util/AudioOutputHelper$Result;->mHandled:Z

    if-eqz v13, :cond_10c

    .line 201
    iget-object v13, v12, Lmiui/util/AudioOutputHelper$Result;->mSkipped:Ljava/lang/String;

    move-object v8, v13

    .line 202
    sput-object v11, Lmiui/util/AudioOutputHelper;->COLLECTOR:Lmiui/util/AudioOutputHelper$TrackCollector;

    .line 203
    sget-object v11, Lmiui/util/AudioOutputHelper;->TAG:Ljava/lang/String;

    const-string v13, "collector=compat"

    invoke-static {v11, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10c
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_10c} :catch_110
    .catchall {:try_start_9b .. :try_end_10c} :catchall_10e

    .line 208
    .end local v9    # "standbyMatcher":Ljava/util/regex/Matcher;
    .end local v10    # "collector":Lmiui/util/AudioOutputHelper$TrackCollector;
    .end local v12    # "r":Lmiui/util/AudioOutputHelper$Result;
    :cond_10c
    :goto_10c
    goto/16 :goto_82

    .line 214
    .end local v4    # "clients":Ljava/util/List;, "Ljava/util/List<Lmiui/util/AudioOutputHelper$AudioOutputClient;>;"
    .end local v5    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v6    # "standby":Z
    .end local v7    # "content":Ljava/lang/String;
    .end local v8    # "skipped":Ljava/lang/String;
    :catchall_10e
    move-exception v1

    goto :goto_126

    .line 211
    :catch_110
    move-exception v4

    .line 212
    .local v4, "e":Ljava/lang/Exception;
    :try_start_111
    sget-object v5, Lmiui/util/AudioOutputHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11a
    .catchall {:try_start_111 .. :try_end_11a} :catchall_10e

    .line 215
    .end local v4    # "e":Ljava/lang/Exception;
    :try_start_11a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_11d
    .catch Ljava/io/IOException; {:try_start_11a .. :try_end_11d} :catch_11e

    .line 217
    goto :goto_11f

    .line 216
    :catch_11e
    move-exception v4

    .line 219
    :goto_11f
    :try_start_11f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_122
    .catch Ljava/io/IOException; {:try_start_11f .. :try_end_122} :catch_123

    .line 221
    goto :goto_125

    .line 220
    :catch_123
    move-exception v4

    .line 222
    nop

    .line 224
    :goto_125
    return-object v1

    .line 215
    :goto_126
    :try_start_126
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_129
    .catch Ljava/io/IOException; {:try_start_126 .. :try_end_129} :catch_12a

    .line 217
    goto :goto_12b

    .line 216
    :catch_12a
    move-exception v4

    .line 219
    :goto_12b
    :try_start_12b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_12e
    .catch Ljava/io/IOException; {:try_start_12b .. :try_end_12e} :catch_12f

    .line 221
    goto :goto_130

    .line 220
    :catch_12f
    move-exception v4

    .line 222
    :goto_130
    throw v1

    .line 136
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    :goto_131
    if-eqz v0, :cond_138

    .line 138
    :try_start_133
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_136
    .catch Ljava/io/IOException; {:try_start_133 .. :try_end_136} :catch_137

    .line 140
    goto :goto_138

    .line 139
    :catch_137
    move-exception v2

    .line 142
    :cond_138
    :goto_138
    throw v1
.end method
