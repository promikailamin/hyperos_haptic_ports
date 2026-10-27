.class public final Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;
.super Landroid/os/Binder;
.source "ActivityManagerService.java"


# instance fields
.field public final mKeyFields:Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;

.field public final mRef:Ljava/lang/ref/WeakReference;


# direct methods
.method public static synthetic $r8$lambda$iCC_HD38bZKMlcWa0bWj3mHK1QQ(Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;->completeFinalize()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmRef(Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;->mRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/content/Intent;)V
    .registers 6

    .line 19765
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19766
    new-instance v0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;-><init>(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/ActivityManagerService-IA;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;->mKeyFields:Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;

    .line 19767
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;->mRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static isValid(Landroid/content/Intent;)Z
    .registers 6

    .line 19784
    invoke-virtual {p0}, Landroid/content/Intent;->getCreatorToken()Landroid/os/IBinder;

    move-result-object v0

    .line 19786
    instance-of v1, v0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 19787
    check-cast v0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;

    goto :goto_d

    :cond_c
    move-object v0, v2

    :goto_d
    if-eqz v0, :cond_28

    .line 19789
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;->mKeyFields:Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;

    new-instance v3, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;

    invoke-static {v1}, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->-$$Nest$fgetmCreatorUid(Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;)I

    move-result v4

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;->mKeyFields:Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->-$$Nest$fgetmCreatorPackage(Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0, p0, v2}, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;-><init>(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/ActivityManagerService-IA;)V

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_28

    const/4 p0, 0x1

    return p0

    :cond_28
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final completeFinalize()V
    .registers 4

    .line 19805
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$sfgetsIntentCreatorTokenCache()Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 19806
    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$sfgetsIntentCreatorTokenCache()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;->mKeyFields:Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 19808
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;->mRef:Ljava/lang/ref/WeakReference;

    if-ne v1, v2, :cond_21

    .line 19809
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$sfgetsIntentCreatorTokenCache()Ljava/util/Map;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;->mKeyFields:Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    :catchall_1f
    move-exception p0

    goto :goto_23

    .line 19811
    :cond_21
    :goto_21
    monitor-exit v0

    return-void

    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_1f

    throw p0
.end method

.method public finalize()V
    .registers 3

    .line 19797
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$sfgetsCreatorTokenCacheCleaner()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_14

    .line 19800
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_14
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 19801
    throw v0
.end method

.method public getCreatorPackage()Ljava/lang/String;
    .registers 1

    .line 19775
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;->mKeyFields:Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;

    invoke-static {p0}, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->-$$Nest$fgetmCreatorPackage(Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCreatorUid()I
    .registers 1

    .line 19771
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;->mKeyFields:Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;

    invoke-static {p0}, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->-$$Nest$fgetmCreatorUid(Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;)I

    move-result p0

    return p0
.end method

.method public getKeyFields()Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;
    .registers 1

    .line 19780
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;->mKeyFields:Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;

    return-object p0
.end method
