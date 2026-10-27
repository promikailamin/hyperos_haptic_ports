.class public Lmiui/contentcatcher/InterceptorProxy;
.super Ljava/lang/Object;
.source "InterceptorProxy.java"

# interfaces
.implements Lmiui/contentcatcher/IInterceptor;
.implements Lmiui/contentcatcher/IInterceptorContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/contentcatcher/InterceptorProxy$H;
    }
.end annotation


# static fields
.field static final blacklist DBG:Z

.field static final blacklist INTERCEPTOR_ENABLED:Z

.field private static final blacklist TAG:Ljava/lang/String; = "InterceptorProxy"

.field private static blacklist mMiuiApplicationThread:Lmiui/process/IMiuiApplicationThread;

.field private static final blacklist sActivityBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sPackageBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sSpecialContexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sUiHandler:Landroid/os/Handler;

.field private static volatile blacklist sWorkHandler:Landroid/os/Handler;

.field private static volatile blacklist sWorkerThread:Landroid/os/HandlerThread;


# instance fields
.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mInterceptor:Lmiui/contentcatcher/IInterceptor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmInterceptor(Lmiui/contentcatcher/InterceptorProxy;)Lmiui/contentcatcher/IInterceptor;
    .registers 1

    iget-object p0, p0, Lmiui/contentcatcher/InterceptorProxy;->mInterceptor:Lmiui/contentcatcher/IInterceptor;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 33
    const-string v0, "interceptor.debug.on"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/contentcatcher/InterceptorProxy;->DBG:Z

    .line 34
    const-string v0, "interceptor.enabled"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/contentcatcher/InterceptorProxy;->INTERCEPTOR_ENABLED:Z

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lmiui/contentcatcher/InterceptorProxy;->sUiHandler:Landroid/os/Handler;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmiui/contentcatcher/InterceptorProxy;->sActivityBlackList:Ljava/util/ArrayList;

    .line 45
    const-string v1, "com.miui.home.launcher.Launcher"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    const-string v1, "com.android.settings.FallbackHome"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    const-string v1, "com.android.settings.CryptKeeper"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    const-string v1, "com.miui.gallery.activity.HomePageActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmiui/contentcatcher/InterceptorProxy;->sPackageBlackList:Ljava/util/ArrayList;

    .line 52
    const-string v1, "com.android.camera"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmiui/contentcatcher/InterceptorProxy;->sSpecialContexts:Ljava/util/ArrayList;

    .line 56
    const-string v1, "com.tencent.tbs.common.resources.PluginContextWrapper"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    const/4 v0, 0x0

    sput-object v0, Lmiui/contentcatcher/InterceptorProxy;->mMiuiApplicationThread:Lmiui/process/IMiuiApplicationThread;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    sget-boolean v0, Lmiui/contentcatcher/InterceptorProxy;->DBG:Z

    if-eqz v0, :cond_e

    const-string v0, "InterceptorProxy"

    const-string v1, "InterceptorProxy create"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_e
    new-instance v0, Lmiui/contentcatcher/InterceptorProxy$H;

    invoke-static {}, Lmiui/contentcatcher/InterceptorProxy;->getWorkThread()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lmiui/contentcatcher/InterceptorProxy$H;-><init>(Landroid/os/Looper;Landroid/app/Activity;Lmiui/contentcatcher/IInterceptorContainer;)V

    iput-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mHandler:Landroid/os/Handler;

    .line 210
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 211
    return-void
.end method

.method public static whitelist addMiuiApplication()V
    .registers 1

    .line 80
    sget-object v0, Lmiui/contentcatcher/InterceptorProxy;->mMiuiApplicationThread:Lmiui/process/IMiuiApplicationThread;

    if-nez v0, :cond_e

    .line 81
    new-instance v0, Lmiui/process/MiuiApplicationThread;

    invoke-direct {v0}, Lmiui/process/MiuiApplicationThread;-><init>()V

    sput-object v0, Lmiui/contentcatcher/InterceptorProxy;->mMiuiApplicationThread:Lmiui/process/IMiuiApplicationThread;

    .line 82
    invoke-static {v0}, Lmiui/process/ProcessManager;->addMiuiApplicationThread(Lmiui/process/IMiuiApplicationThread;)V

    .line 84
    :cond_e
    return-void
.end method

.method public static whitelist checkAndInitWebView(Landroid/view/View;)Z
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 182
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiui/contentcatcher/InterceptorProxy;->checkAndInitWebView(Landroid/view/View;Landroid/os/Looper;)Z

    move-result v0

    return v0
.end method

.method public static whitelist checkAndInitWebView(Landroid/view/View;Landroid/os/Looper;)Z
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "looper"    # Landroid/os/Looper;

    .line 187
    :try_start_0
    invoke-static {p0}, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->isWebView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 188
    new-instance v0, Lmiui/contentcatcher/InterceptorProxy$1;

    invoke-direct {v0, p0}, Lmiui/contentcatcher/InterceptorProxy$1;-><init>(Landroid/view/View;)V

    invoke-static {v0, p1}, Lmiui/contentcatcher/InterceptorProxy;->postToUiHandler(Ljava/lang/Runnable;Landroid/os/Looper;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_11

    .line 199
    const/4 v0, 0x1

    return v0

    .line 203
    :cond_10
    goto :goto_2a

    .line 201
    :catch_11
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAndInitWebView-Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContentCatcher"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2a
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist create(Landroid/app/Activity;)Lmiui/contentcatcher/InterceptorProxy;
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;

    .line 62
    invoke-static {}, Lmiui/contentcatcher/InterceptorProxy;->addMiuiApplication()V

    .line 64
    sget-boolean v0, Lmiui/contentcatcher/InterceptorProxy;->INTERCEPTOR_ENABLED:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4c

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_4c

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_4c

    sget-object v0, Lmiui/contentcatcher/InterceptorProxy;->sActivityBlackList:Ljava/util/ArrayList;

    .line 65
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    sget-object v0, Lmiui/contentcatcher/InterceptorProxy;->sPackageBlackList:Ljava/util/ArrayList;

    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 67
    invoke-static {}, Lmiui/contentcatcher/InterceptorProxy;->getWorkThread()Landroid/os/HandlerThread;

    move-result-object v0

    .line 68
    .local v0, "workThread":Ljava/lang/Thread;
    if-eqz v0, :cond_44

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 69
    new-instance v1, Lmiui/contentcatcher/InterceptorProxy;

    invoke-direct {v1, p0}, Lmiui/contentcatcher/InterceptorProxy;-><init>(Landroid/app/Activity;)V

    return-object v1

    .line 71
    :cond_44
    const-string v2, "InterceptorProxy"

    const-string v3, "Failed to create InterceptorProxy!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-object v1

    .line 75
    .end local v0    # "workThread":Ljava/lang/Thread;
    :cond_4c
    return-object v1
.end method

.method public static whitelist getAttachedActivity(Landroid/view/View;)Landroid/app/Activity;
    .registers 8
    .param p0, "view"    # Landroid/view/View;

    .line 129
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 130
    return-object v0

    .line 132
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 133
    .local v1, "viewContext":Landroid/content/Context;
    :goto_8
    if-eqz v1, :cond_70

    instance-of v2, v1, Landroid/app/Activity;

    if-nez v2, :cond_70

    .line 134
    instance-of v2, v1, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_70

    .line 135
    move-object v2, v1

    .line 136
    .local v2, "preViewContext":Landroid/content/Context;
    move-object v3, v1

    check-cast v3, Landroid/content/ContextWrapper;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 137
    if-ne v2, v1, :cond_6f

    .line 138
    sget-object v3, Lmiui/contentcatcher/InterceptorProxy;->sSpecialContexts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 139
    const-class v3, Landroid/content/Context;

    .line 140
    const-string v4, "mBase"

    invoke-static {v1, v4, v3}, Lmiui/util/ReflectionUtils;->tryGetObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Lmiui/util/ObjectReference;

    move-result-object v3

    .line 141
    .local v3, "baseRef":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Landroid/content/Context;>;"
    if-eqz v3, :cond_3d

    invoke-virtual {v3}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    goto :goto_3e

    :cond_3d
    move-object v4, v0

    .line 142
    .local v4, "baseContext":Landroid/content/Context;
    :goto_3e
    if-eqz v4, :cond_6e

    if-eq v1, v4, :cond_6e

    .line 143
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get New base context : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and Cur base context is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 144
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 145
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 143
    const-string v6, "InterceptorProxy"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    move-object v1, v4

    .line 147
    goto :goto_70

    .line 150
    .end local v3    # "baseRef":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Landroid/content/Context;>;"
    .end local v4    # "baseContext":Landroid/content/Context;
    :cond_6e
    return-object v0

    .line 152
    .end local v2    # "preViewContext":Landroid/content/Context;
    :cond_6f
    goto :goto_8

    .line 156
    :cond_70
    :goto_70
    if-eqz v1, :cond_7a

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_7a

    .line 157
    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    return-object v0

    .line 159
    :cond_7a
    return-object v0
.end method

.method public static whitelist getWorkHandler()Landroid/os/Handler;
    .registers 3

    .line 101
    sget-object v0, Lmiui/contentcatcher/InterceptorProxy;->sWorkHandler:Landroid/os/Handler;

    if-nez v0, :cond_1f

    .line 102
    const-class v0, Lmiui/contentcatcher/InterceptorProxy;

    monitor-enter v0

    .line 103
    :try_start_7
    sget-object v1, Lmiui/contentcatcher/InterceptorProxy;->sWorkHandler:Landroid/os/Handler;

    if-nez v1, :cond_1a

    .line 104
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Lmiui/contentcatcher/InterceptorProxy;->getWorkThread()Landroid/os/HandlerThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lmiui/contentcatcher/InterceptorProxy;->sWorkHandler:Landroid/os/Handler;

    .line 106
    :cond_1a
    monitor-exit v0

    goto :goto_1f

    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v1

    .line 108
    :cond_1f
    :goto_1f
    sget-object v0, Lmiui/contentcatcher/InterceptorProxy;->sWorkHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static whitelist getWorkThread()Landroid/os/HandlerThread;
    .registers 4

    .line 87
    sget-object v0, Lmiui/contentcatcher/InterceptorProxy;->sWorkerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_1e

    .line 88
    const-class v0, Lmiui/contentcatcher/InterceptorProxy;

    monitor-enter v0

    .line 89
    :try_start_7
    sget-object v1, Lmiui/contentcatcher/InterceptorProxy;->sWorkerThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_19

    .line 90
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "Binder:interceptor"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 92
    .local v1, "workerThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 93
    sput-object v1, Lmiui/contentcatcher/InterceptorProxy;->sWorkerThread:Landroid/os/HandlerThread;

    .line 95
    .end local v1    # "workerThread":Landroid/os/HandlerThread;
    :cond_19
    monitor-exit v0

    goto :goto_1e

    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw v1

    .line 97
    :cond_1e
    :goto_1e
    sget-object v0, Lmiui/contentcatcher/InterceptorProxy;->sWorkerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method public static whitelist postToUiHandler(Ljava/lang/Runnable;JLandroid/os/Looper;)V
    .registers 6
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "delayMillis"    # J
    .param p3, "looper"    # Landroid/os/Looper;

    .line 171
    if-eqz p0, :cond_f

    .line 172
    sget-object v0, Lmiui/contentcatcher/InterceptorProxy;->sUiHandler:Landroid/os/Handler;

    .line 173
    .local v0, "handler":Landroid/os/Handler;
    if-eqz p3, :cond_c

    .line 174
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v0, v1

    .line 176
    :cond_c
    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 178
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_f
    return-void
.end method

.method public static whitelist postToUiHandler(Ljava/lang/Runnable;Landroid/os/Looper;)V
    .registers 4
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "looper"    # Landroid/os/Looper;

    .line 167
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1, p1}, Lmiui/contentcatcher/InterceptorProxy;->postToUiHandler(Ljava/lang/Runnable;JLandroid/os/Looper;)V

    .line 168
    return-void
.end method

.method public static whitelist postToWorkHandler(Ljava/lang/Runnable;)V
    .registers 3
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .line 112
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lmiui/contentcatcher/InterceptorProxy;->postToWorkHandler(Ljava/lang/Runnable;J)V

    .line 113
    return-void
.end method

.method public static whitelist postToWorkHandler(Ljava/lang/Runnable;J)V
    .registers 6
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "delayMillis"    # J

    .line 116
    if-eqz p0, :cond_29

    .line 118
    :try_start_2
    invoke-static {}, Lmiui/contentcatcher/InterceptorProxy;->getWorkHandler()Landroid/os/Handler;

    move-result-object v0

    .line 119
    .local v0, "workHandler":Landroid/os/Handler;
    if-eqz v0, :cond_b

    .line 120
    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_c

    .line 124
    .end local v0    # "workHandler":Landroid/os/Handler;
    :cond_b
    goto :goto_29

    .line 122
    :catch_c
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postToWorkHandler: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InterceptorProxy"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_29
    :goto_29
    return-void
.end method


# virtual methods
.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;Landroid/view/View;Landroid/app/Activity;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "attachedActivity"    # Landroid/app/Activity;

    .line 258
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mInterceptor:Lmiui/contentcatcher/IInterceptor;

    if-eqz v0, :cond_31

    .line 259
    sget-boolean v0, Lmiui/contentcatcher/InterceptorProxy;->DBG:Z

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchKeyEvent event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rootView "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InterceptorProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_2a
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mInterceptor:Lmiui/contentcatcher/IInterceptor;

    invoke-interface {v0, p1, p2, p3}, Lmiui/contentcatcher/IInterceptor;->dispatchKeyEvent(Landroid/view/KeyEvent;Landroid/view/View;Landroid/app/Activity;)Z

    move-result v0

    return v0

    .line 262
    :cond_31
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;Landroid/app/Activity;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "attachedActivity"    # Landroid/app/Activity;

    .line 251
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mInterceptor:Lmiui/contentcatcher/IInterceptor;

    if-eqz v0, :cond_9

    .line 252
    invoke-interface {v0, p1, p2, p3}, Lmiui/contentcatcher/IInterceptor;->dispatchTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;Landroid/app/Activity;)Z

    move-result v0

    return v0

    .line 254
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getInterceptor()Lmiui/contentcatcher/IInterceptor;
    .registers 2

    .line 297
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mInterceptor:Lmiui/contentcatcher/IInterceptor;

    return-object v0
.end method

.method public whitelist getUiHandler()Landroid/os/Handler;
    .registers 2

    .line 163
    sget-object v0, Lmiui/contentcatcher/InterceptorProxy;->sUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public whitelist notifyActivityCreate()V
    .registers 3

    .line 214
    sget-boolean v0, Lmiui/contentcatcher/InterceptorProxy;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "InterceptorProxy"

    const-string v1, "notifyActivityCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_b
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 216
    return-void
.end method

.method public whitelist notifyActivityDestroy()V
    .registers 3

    .line 239
    sget-boolean v0, Lmiui/contentcatcher/InterceptorProxy;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "InterceptorProxy"

    const-string v1, "notifyActivityDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_b
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 241
    return-void
.end method

.method public whitelist notifyActivityPause()V
    .registers 3

    .line 229
    sget-boolean v0, Lmiui/contentcatcher/InterceptorProxy;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "InterceptorProxy"

    const-string v1, "notifyActivityPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_b
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 231
    return-void
.end method

.method public whitelist notifyActivityResume()V
    .registers 3

    .line 224
    sget-boolean v0, Lmiui/contentcatcher/InterceptorProxy;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "InterceptorProxy"

    const-string v1, "notifyActivityResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_b
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 226
    return-void
.end method

.method public whitelist notifyActivityStart()V
    .registers 3

    .line 219
    sget-boolean v0, Lmiui/contentcatcher/InterceptorProxy;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "InterceptorProxy"

    const-string v1, "notifyActivityStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_b
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 221
    return-void
.end method

.method public whitelist notifyActivityStop()V
    .registers 3

    .line 234
    sget-boolean v0, Lmiui/contentcatcher/InterceptorProxy;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "InterceptorProxy"

    const-string v1, "notifyActivityStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_b
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 236
    return-void
.end method

.method public whitelist notifyContentChange()V
    .registers 2

    .line 245
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mInterceptor:Lmiui/contentcatcher/IInterceptor;

    if-eqz v0, :cond_7

    .line 246
    invoke-interface {v0}, Lmiui/contentcatcher/IInterceptor;->notifyContentChange()V

    .line 248
    :cond_7
    return-void
.end method

.method public whitelist notifyWebView(Landroid/view/View;Z)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isLoad"    # Z

    .line 284
    sget-boolean v0, Lmiui/contentcatcher/InterceptorProxy;->DBG:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyWebView "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InterceptorProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_1c
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mInterceptor:Lmiui/contentcatcher/IInterceptor;

    if-eqz v0, :cond_23

    .line 286
    invoke-interface {v0, p1, p2}, Lmiui/contentcatcher/IInterceptor;->notifyWebView(Landroid/view/View;Z)V

    .line 288
    :cond_23
    return-void
.end method

.method public whitelist setInterceptor(Lmiui/contentcatcher/IInterceptor;)V
    .registers 2
    .param p1, "interceptor"    # Lmiui/contentcatcher/IInterceptor;

    .line 292
    iput-object p1, p0, Lmiui/contentcatcher/InterceptorProxy;->mInterceptor:Lmiui/contentcatcher/IInterceptor;

    .line 293
    return-void
.end method

.method public whitelist setWebView(Landroid/view/View;Z)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isLoad"    # Z

    .line 267
    sget-boolean v0, Lmiui/contentcatcher/InterceptorProxy;->DBG:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWebView "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InterceptorProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_1c
    sget-object v0, Lmiui/contentcatcher/InterceptorProxy;->sUiHandler:Landroid/os/Handler;

    new-instance v1, Lmiui/contentcatcher/InterceptorProxy$2;

    invoke-direct {v1, p0, p2, p1}, Lmiui/contentcatcher/InterceptorProxy$2;-><init>(Lmiui/contentcatcher/InterceptorProxy;ZLandroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 280
    return-void
.end method
