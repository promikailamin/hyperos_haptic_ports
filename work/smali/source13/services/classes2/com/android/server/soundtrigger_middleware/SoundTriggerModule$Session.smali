.class Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;
.super Ljava/lang/Object;
.source "SoundTriggerModule.java"

# interfaces
.implements Landroid/media/soundtrigger_middleware/ISoundTriggerModule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Session"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;
    }
.end annotation


# instance fields
.field private mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

.field private final mLoadedModels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;)Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLoadedModels(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->mLoadedModels:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mmoduleDied(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;)Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->moduleDied()Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;)V
    .registers 3
    .param p2, "callback"    # Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    .line 228
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->mLoadedModels:Ljava/util/Map;

    .line 229
    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    .line 230
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;)V

    return-void
.end method

.method private checkValid()V
    .registers 3

    .line 361
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    if-eqz v0, :cond_5

    .line 364
    return-void

    .line 362
    :cond_5
    new-instance v0, Lcom/android/server/soundtrigger_middleware/RecoverableException;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/server/soundtrigger_middleware/RecoverableException;-><init>(I)V

    throw v0
.end method

.method private moduleDied()Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
    .registers 3

    .line 355
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    .line 356
    .local v0, "callback":Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    .line 357
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 3

    .line 369
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This implementation is not intended to be used directly with Binder."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public detach()V
    .registers 3

    .line 234
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    monitor-enter v0

    .line 235
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    if-nez v1, :cond_9

    .line 236
    monitor-exit v0

    return-void

    .line 238
    :cond_9
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    invoke-static {v1, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->-$$Nest$mremoveSession(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;)V

    .line 239
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    .line 240
    monitor-exit v0

    .line 241
    return-void

    .line 240
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public forceRecognitionEvent(I)V
    .registers 5
    .param p1, "modelHandle"    # I

    .line 319
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    monitor-enter v0

    .line 320
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->checkValid()V

    .line 321
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->mLoadedModels:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->-$$Nest$mforceRecognitionEvent(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;)V

    .line 322
    monitor-exit v0

    .line 323
    return-void

    .line 322
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public getModelParameter(II)I
    .registers 6
    .param p1, "modelHandle"    # I
    .param p2, "modelParam"    # I

    .line 335
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    monitor-enter v0

    .line 336
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->checkValid()V

    .line 337
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->mLoadedModels:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;

    invoke-static {v1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->-$$Nest$mgetParameter(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 338
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public loadModel(Landroid/media/soundtrigger/SoundModel;)I
    .registers 8
    .param p1, "model"    # Landroid/media/soundtrigger/SoundModel;

    .line 245
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    monitor-enter v0

    .line 246
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->-$$Nest$fgetmAudioSessionProvider(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;)Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;

    move-result-object v1

    .line 247
    invoke-virtual {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;->acquireSession()Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;

    move-result-object v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_33

    .line 249
    .local v1, "audioSession":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;
    :try_start_d
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->checkValid()V

    .line 250
    new-instance v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model-IA;)V

    .line 251
    .local v2, "loadedModel":Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;
    invoke-static {v2, p1, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->-$$Nest$mload(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;Landroid/media/soundtrigger/SoundModel;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;)I

    move-result v3
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1a} :catch_1c
    .catchall {:try_start_d .. :try_end_1a} :catchall_33

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_33

    return v3

    .line 252
    .end local v2    # "loadedModel":Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;
    :catch_1c
    move-exception v2

    .line 256
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1d
    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    invoke-static {v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->-$$Nest$fgetmAudioSessionProvider(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;)Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;

    move-result-object v3

    iget v4, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;->mSessionHandle:I

    invoke-virtual {v3, v4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;->releaseSession(I)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_28} :catch_29
    .catchall {:try_start_1d .. :try_end_28} :catchall_33

    .line 259
    goto :goto_31

    .line 257
    :catch_29
    move-exception v3

    .line 258
    .local v3, "ee":Ljava/lang/Exception;
    :try_start_2a
    const-string v4, "SoundTriggerModule"

    const-string v5, "Failed to release session."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 260
    .end local v3    # "ee":Ljava/lang/Exception;
    :goto_31
    nop

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;
    .end local p1    # "model":Landroid/media/soundtrigger/SoundModel;
    throw v2

    .line 262
    .end local v1    # "audioSession":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;
    .restart local p1    # "model":Landroid/media/soundtrigger/SoundModel;
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_2a .. :try_end_35} :catchall_33

    throw v1
.end method

.method public loadPhraseModel(Landroid/media/soundtrigger/PhraseSoundModel;)I
    .registers 11
    .param p1, "model"    # Landroid/media/soundtrigger/PhraseSoundModel;

    .line 267
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    monitor-enter v0

    .line 268
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->-$$Nest$fgetmAudioSessionProvider(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;)Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;

    move-result-object v1

    .line 269
    invoke-virtual {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;->acquireSession()Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;

    move-result-object v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_48

    .line 271
    .local v1, "audioSession":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;
    :try_start_d
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->checkValid()V

    .line 272
    new-instance v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model-IA;)V

    .line 273
    .local v2, "loadedModel":Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;
    invoke-static {v2, p1, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->-$$Nest$mload(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;Landroid/media/soundtrigger/PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;)I

    move-result v3

    .line 274
    .local v3, "result":I
    const-string v4, "SoundTriggerModule"

    const-string v5, "loadPhraseModel()->%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_2f} :catch_31
    .catchall {:try_start_d .. :try_end_2f} :catchall_48

    .line 275
    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_48

    return v3

    .line 276
    .end local v2    # "loadedModel":Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;
    .end local v3    # "result":I
    :catch_31
    move-exception v2

    .line 280
    .local v2, "e":Ljava/lang/Exception;
    :try_start_32
    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    invoke-static {v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->-$$Nest$fgetmAudioSessionProvider(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;)Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;

    move-result-object v3

    iget v4, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;->mSessionHandle:I

    invoke-virtual {v3, v4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;->releaseSession(I)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3d} :catch_3e
    .catchall {:try_start_32 .. :try_end_3d} :catchall_48

    .line 283
    goto :goto_46

    .line 281
    :catch_3e
    move-exception v3

    .line 282
    .local v3, "ee":Ljava/lang/Exception;
    :try_start_3f
    const-string v4, "SoundTriggerModule"

    const-string v5, "Failed to release session."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 284
    .end local v3    # "ee":Ljava/lang/Exception;
    :goto_46
    nop

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;
    .end local p1    # "model":Landroid/media/soundtrigger/PhraseSoundModel;
    throw v2

    .line 286
    .end local v1    # "audioSession":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;
    .restart local p1    # "model":Landroid/media/soundtrigger/PhraseSoundModel;
    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_3f .. :try_end_4a} :catchall_48

    throw v1
.end method

.method public queryModelParameterSupport(II)Landroid/media/soundtrigger/ModelParameterRange;
    .registers 6
    .param p1, "modelHandle"    # I
    .param p2, "modelParam"    # I

    .line 344
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    monitor-enter v0

    .line 345
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->checkValid()V

    .line 346
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->mLoadedModels:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;

    invoke-static {v1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->-$$Nest$mqueryModelParameterSupport(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;I)Landroid/media/soundtrigger/ModelParameterRange;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 347
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public setModelParameter(III)V
    .registers 7
    .param p1, "modelHandle"    # I
    .param p2, "modelParam"    # I
    .param p3, "value"    # I

    .line 327
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    monitor-enter v0

    .line 328
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->checkValid()V

    .line 329
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->mLoadedModels:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;

    invoke-static {v1, p2, p3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->-$$Nest$msetParameter(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;II)V

    .line 330
    monitor-exit v0

    .line 331
    return-void

    .line 330
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public startRecognition(ILandroid/media/soundtrigger/RecognitionConfig;)V
    .registers 6
    .param p1, "modelHandle"    # I
    .param p2, "config"    # Landroid/media/soundtrigger/RecognitionConfig;

    .line 301
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    monitor-enter v0

    .line 302
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->checkValid()V

    .line 303
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->mLoadedModels:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;

    invoke-static {v1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->-$$Nest$mstartRecognition(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;Landroid/media/soundtrigger/RecognitionConfig;)V

    .line 304
    monitor-exit v0

    .line 305
    return-void

    .line 304
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public stopRecognition(I)V
    .registers 5
    .param p1, "modelHandle"    # I

    .line 310
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    monitor-enter v0

    .line 311
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->checkValid()V

    .line 312
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->mLoadedModels:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;

    .line 313
    .local v1, "model":Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_17

    .line 314
    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->-$$Nest$mstopRecognition(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;)V

    .line 315
    return-void

    .line 313
    .end local v1    # "model":Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public unloadModel(I)V
    .registers 5
    .param p1, "modelHandle"    # I

    .line 291
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    monitor-enter v0

    .line 293
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->checkValid()V

    .line 294
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->mLoadedModels:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->-$$Nest$munload(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;)I

    move-result v1

    .line 295
    .local v1, "sessionId":I
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->-$$Nest$fgetmAudioSessionProvider(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;)Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;->releaseSession(I)V

    .line 296
    .end local v1    # "sessionId":I
    monitor-exit v0

    .line 297
    return-void

    .line 296
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method
