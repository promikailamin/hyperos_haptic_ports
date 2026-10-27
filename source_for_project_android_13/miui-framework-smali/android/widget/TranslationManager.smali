.class public Landroid/widget/TranslationManager;
.super Ljava/lang/Object;
.source "TranslationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TranslationManager$TranslateTask;,
        Landroid/widget/TranslationManager$TranslationConnection;,
        Landroid/widget/TranslationManager$TranslationRemoteCallback;
    }
.end annotation


# static fields
.field public static final whitelist MSG_QUERY_FAIL:I = 0x1

.field public static final whitelist MSG_QUERY_SUCCESS:I = 0x0

.field private static final blacklist STATE_DESTROYING:I = 0x3

.field private static final blacklist STATE_ERROR:I = -0x1

.field private static final blacklist STATE_INIT:I = 0x0

.field private static final blacklist STATE_INITIALIZING:I = 0x1

.field private static final blacklist STATE_TRANSLATING:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "TranslationManager"

.field private static final blacklist TRANSLATION_SERVICE_CLASS:Ljava/lang/String; = "com.miui.translationservice.TranslationService"

.field private static final blacklist TRANSLATION_SERVICE_PACKAGE:Ljava/lang/String; = "com.miui.translationservice"


# instance fields
.field private blacklist mConnection:Landroid/content/ServiceConnection;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mMainHandler:Landroid/os/Handler;

.field private blacklist mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

.field private blacklist mService:Lcom/miui/translationservice/ITranslation;

.field private blacklist mState:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConnection(Landroid/widget/TranslationManager;)Landroid/content/ServiceConnection;
    .registers 1

    iget-object p0, p0, Landroid/widget/TranslationManager;->mConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/widget/TranslationManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/widget/TranslationManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMainHandler(Landroid/widget/TranslationManager;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/widget/TranslationManager;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$monDestroyed(Landroid/widget/TranslationManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/TranslationManager;->onDestroyed()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDisconnected(Landroid/widget/TranslationManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/TranslationManager;->onDisconnected()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monInitialized(Landroid/widget/TranslationManager;Lcom/miui/translationservice/ITranslation;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/TranslationManager;->onInitialized(Lcom/miui/translationservice/ITranslation;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monTranslateDone(Landroid/widget/TranslationManager;Landroid/widget/TranslationManager$TranslateTask;Lcom/miui/translationservice/provider/TranslationResult;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/TranslationManager;->onTranslateDone(Landroid/widget/TranslationManager$TranslateTask;Lcom/miui/translationservice/provider/TranslationResult;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TranslationManager;->mService:Lcom/miui/translationservice/ITranslation;

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/widget/TranslationManager;->mMainHandler:Landroid/os/Handler;

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TranslationManager;->mState:I

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TranslationManager;->mContext:Landroid/content/Context;

    .line 50
    if-nez v0, :cond_1e

    .line 51
    iput-object p1, p0, Landroid/widget/TranslationManager;->mContext:Landroid/content/Context;

    .line 53
    :cond_1e
    iput-object p2, p0, Landroid/widget/TranslationManager;->mHandler:Landroid/os/Handler;

    .line 54
    return-void
.end method

.method private blacklist deliverResult(Lcom/miui/translationservice/provider/TranslationResult;)V
    .registers 6
    .param p1, "result"    # Lcom/miui/translationservice/provider/TranslationResult;

    .line 177
    iget-object v0, p0, Landroid/widget/TranslationManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 179
    if-nez p1, :cond_10

    .line 180
    iget-object v0, p0, Landroid/widget/TranslationManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    goto :goto_17

    .line 182
    .end local v0    # "msg":Landroid/os/Message;
    :cond_10
    iget-object v0, p0, Landroid/widget/TranslationManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 184
    .restart local v0    # "msg":Landroid/os/Message;
    :goto_17
    iget-object v1, p0, Landroid/widget/TranslationManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 185
    return-void
.end method

.method private blacklist doDestroy()V
    .registers 4

    .line 89
    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/TranslationManager;->mState:I

    .line 90
    new-instance v0, Landroid/widget/TranslationManager$2;

    invoke-direct {v0, p0}, Landroid/widget/TranslationManager$2;-><init>(Landroid/widget/TranslationManager;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 101
    invoke-virtual {v0, v1, v2}, Landroid/widget/TranslationManager$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 102
    return-void
.end method

.method private blacklist doInitialize()V
    .registers 4

    .line 65
    const-string v0, "TranslationManager"

    const-string v1, "try to bind translation service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TranslationManager;->mState:I

    .line 68
    iget-object v0, p0, Landroid/widget/TranslationManager;->mConnection:Landroid/content/ServiceConnection;

    if-nez v0, :cond_16

    .line 69
    new-instance v0, Landroid/widget/TranslationManager$TranslationConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/TranslationManager$TranslationConnection;-><init>(Landroid/widget/TranslationManager;Landroid/widget/TranslationManager$TranslationConnection-IA;)V

    iput-object v0, p0, Landroid/widget/TranslationManager;->mConnection:Landroid/content/ServiceConnection;

    .line 71
    :cond_16
    new-instance v0, Landroid/widget/TranslationManager$1;

    invoke-direct {v0, p0}, Landroid/widget/TranslationManager$1;-><init>(Landroid/widget/TranslationManager;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 85
    invoke-virtual {v0, v1, v2}, Landroid/widget/TranslationManager$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 86
    return-void
.end method

.method private blacklist doTranslate()V
    .registers 7

    .line 105
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TranslationManager;->mState:I

    .line 107
    :try_start_3
    iget-object v0, p0, Landroid/widget/TranslationManager;->mService:Lcom/miui/translationservice/ITranslation;

    iget-object v1, p0, Landroid/widget/TranslationManager;->mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

    iget-object v1, v1, Landroid/widget/TranslationManager$TranslateTask;->mSource:Ljava/lang/String;

    iget-object v2, p0, Landroid/widget/TranslationManager;->mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

    iget-object v2, v2, Landroid/widget/TranslationManager$TranslateTask;->mTarget:Ljava/lang/String;

    iget-object v3, p0, Landroid/widget/TranslationManager;->mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

    iget-object v3, v3, Landroid/widget/TranslationManager$TranslateTask;->mWord:Ljava/lang/String;

    new-instance v4, Landroid/widget/TranslationManager$TranslationRemoteCallback;

    iget-object v5, p0, Landroid/widget/TranslationManager;->mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

    invoke-direct {v4, p0, v5}, Landroid/widget/TranslationManager$TranslationRemoteCallback;-><init>(Landroid/widget/TranslationManager;Landroid/widget/TranslationManager$TranslateTask;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/miui/translationservice/ITranslation;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/translationservice/ITranslationRemoteCallback;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1b} :catch_1c

    .line 113
    goto :goto_2a

    .line 110
    :catch_1c
    move-exception v0

    .line 111
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TranslationManager"

    const-string v2, "bind translation service failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    iget-object v1, p0, Landroid/widget/TranslationManager;->mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/widget/TranslationManager;->onTranslateDone(Landroid/widget/TranslationManager$TranslateTask;Lcom/miui/translationservice/provider/TranslationResult;)V

    .line 114
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2a
    return-void
.end method

.method private blacklist onDestroyed()V
    .registers 3

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TranslationManager;->mService:Lcom/miui/translationservice/ITranslation;

    .line 157
    iput-object v0, p0, Landroid/widget/TranslationManager;->mConnection:Landroid/content/ServiceConnection;

    .line 159
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TranslationManager;->mState:I

    .line 160
    iget-object v0, p0, Landroid/widget/TranslationManager;->mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

    if-eqz v0, :cond_16

    .line 161
    const-string v0, "TranslationManager"

    const-string v1, "new task received when destroying"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-direct {p0}, Landroid/widget/TranslationManager;->doInitialize()V

    .line 164
    :cond_16
    return-void
.end method

.method private blacklist onDisconnected()V
    .registers 3

    .line 167
    iget v0, p0, Landroid/widget/TranslationManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_17

    .line 168
    const-string v0, "TranslationManager"

    const-string v1, "disconnected during translating"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TranslationManager;->mService:Lcom/miui/translationservice/ITranslation;

    .line 170
    invoke-direct {p0, v0}, Landroid/widget/TranslationManager;->deliverResult(Lcom/miui/translationservice/provider/TranslationResult;)V

    .line 171
    iput-object v0, p0, Landroid/widget/TranslationManager;->mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

    .line 172
    invoke-direct {p0}, Landroid/widget/TranslationManager;->doDestroy()V

    .line 174
    :cond_17
    return-void
.end method

.method private blacklist onInitialized(Lcom/miui/translationservice/ITranslation;)V
    .registers 4
    .param p1, "service"    # Lcom/miui/translationservice/ITranslation;

    .line 117
    const-string v0, "TranslationManager"

    if-eqz p1, :cond_1c

    .line 118
    iput-object p1, p0, Landroid/widget/TranslationManager;->mService:Lcom/miui/translationservice/ITranslation;

    .line 119
    iget-object v1, p0, Landroid/widget/TranslationManager;->mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

    if-eqz v1, :cond_13

    .line 120
    const-string v1, "translate pending task"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-direct {p0}, Landroid/widget/TranslationManager;->doTranslate()V

    goto :goto_30

    .line 123
    :cond_13
    const-string v1, "no pending task, unbind service directly"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-direct {p0}, Landroid/widget/TranslationManager;->doDestroy()V

    goto :goto_30

    .line 127
    :cond_1c
    const-string v1, "bind service failed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TranslationManager;->mConnection:Landroid/content/ServiceConnection;

    .line 129
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/TranslationManager;->mState:I

    .line 130
    iget-object v1, p0, Landroid/widget/TranslationManager;->mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

    if-eqz v1, :cond_30

    .line 131
    iput-object v0, p0, Landroid/widget/TranslationManager;->mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

    .line 132
    invoke-direct {p0, v0}, Landroid/widget/TranslationManager;->deliverResult(Lcom/miui/translationservice/provider/TranslationResult;)V

    .line 135
    :cond_30
    :goto_30
    return-void
.end method

.method private blacklist onTranslateDone(Landroid/widget/TranslationManager$TranslateTask;Lcom/miui/translationservice/provider/TranslationResult;)V
    .registers 6
    .param p1, "task"    # Landroid/widget/TranslationManager$TranslateTask;
    .param p2, "result"    # Lcom/miui/translationservice/provider/TranslationResult;

    .line 138
    iget-object v0, p0, Landroid/widget/TranslationManager;->mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

    invoke-static {v0, p1}, Landroid/widget/TranslationManager$TranslateTask;->equals(Landroid/widget/TranslationManager$TranslateTask;Landroid/widget/TranslationManager$TranslateTask;)Z

    move-result v0

    const-string v1, "TranslationManager"

    if-eqz v0, :cond_15

    .line 139
    const-string v0, "translate task done"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-direct {p0, p2}, Landroid/widget/TranslationManager;->deliverResult(Lcom/miui/translationservice/provider/TranslationResult;)V

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TranslationManager;->mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

    .line 144
    :cond_15
    iget v0, p0, Landroid/widget/TranslationManager;->mState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2f

    .line 145
    iget-object v0, p0, Landroid/widget/TranslationManager;->mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

    if-nez v0, :cond_27

    .line 146
    const-string v0, "no pending task found. release service"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-direct {p0}, Landroid/widget/TranslationManager;->doDestroy()V

    goto :goto_2f

    .line 149
    :cond_27
    const-string v0, "task changed"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-direct {p0}, Landroid/widget/TranslationManager;->doTranslate()V

    .line 153
    :cond_2f
    :goto_2f
    return-void
.end method


# virtual methods
.method public whitelist translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "word"    # Ljava/lang/String;

    .line 57
    new-instance v0, Landroid/widget/TranslationManager$TranslateTask;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/TranslationManager$TranslateTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/widget/TranslationManager;->mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

    .line 59
    iget v0, p0, Landroid/widget/TranslationManager;->mState:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_f

    .line 60
    invoke-direct {p0}, Landroid/widget/TranslationManager;->doInitialize()V

    .line 62
    :cond_f
    return-void
.end method
