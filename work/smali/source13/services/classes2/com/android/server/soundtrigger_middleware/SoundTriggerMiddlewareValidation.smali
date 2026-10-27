.class public Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;
.super Ljava/lang/Object;
.source "SoundTriggerMiddlewareValidation.java"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;
.implements Lcom/android/server/soundtrigger_middleware/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;,
        Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;,
        Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleState;,
        Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SoundTriggerMiddlewareValidation"


# instance fields
.field private final mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

.field private mModules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmModules(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->mModules:Ljava/util/Map;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;)V
    .registers 2
    .param p1, "delegate"    # Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    .line 128
    return-void
.end method

.method static handleException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;
    .registers 4
    .param p0, "e"    # Ljava/lang/Exception;

    .line 147
    instance-of v0, p0, Lcom/android/server/soundtrigger_middleware/RecoverableException;

    if-eqz v0, :cond_13

    .line 148
    new-instance v0, Landroid/os/ServiceSpecificException;

    move-object v1, p0

    check-cast v1, Lcom/android/server/soundtrigger_middleware/RecoverableException;

    iget v1, v1, Lcom/android/server/soundtrigger_middleware/RecoverableException;->errorCode:I

    .line 149
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 152
    :cond_13
    const-string v0, "SoundTriggerMiddlewareValidation"

    const-string v1, "Unexpected exception"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    new-instance v0, Landroid/os/ServiceSpecificException;

    const/4 v1, 0x5

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public attach(ILandroid/media/soundtrigger_middleware/ISoundTriggerCallback;)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
    .registers 6
    .param p1, "handle"    # I
    .param p2, "callback"    # Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    .line 195
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    invoke-interface {p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    monitor-enter p0

    .line 200
    :try_start_b
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->mModules:Ljava/util/Map;

    if-eqz v0, :cond_4c

    .line 204
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_54

    if-eqz v0, :cond_33

    .line 210
    :try_start_19
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;ILandroid/media/soundtrigger_middleware/ISoundTriggerCallback;)V

    .line 211
    .local v0, "session":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->getCallbackWrapper()Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;->attach(ILandroid/media/soundtrigger_middleware/ISoundTriggerCallback;)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->attach(Landroid/media/soundtrigger_middleware/ISoundTriggerModule;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2b} :catch_2d
    .catchall {:try_start_19 .. :try_end_2b} :catchall_54

    .line 212
    :try_start_2b
    monitor-exit p0

    return-object v0

    .line 213
    .end local v0    # "session":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    :catch_2d
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->handleException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v1

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;
    .end local p1    # "handle":I
    .end local p2    # "callback":Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
    throw v1

    .line 205
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;
    .restart local p1    # "handle":I
    .restart local p2    # "callback":Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid handle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;
    .end local p1    # "handle":I
    .end local p2    # "callback":Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
    throw v0

    .line 201
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;
    .restart local p1    # "handle":I
    .restart local p2    # "callback":Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
    :cond_4c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Client must call listModules() prior to attaching."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;
    .end local p1    # "handle":I
    .end local p2    # "callback":Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
    throw v0

    .line 216
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;
    .restart local p1    # "handle":I
    .restart local p2    # "callback":Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
    :catchall_54
    move-exception v0

    monitor-exit p0
    :try_end_56
    .catchall {:try_start_2b .. :try_end_56} :catchall_54

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 227
    monitor-enter p0

    .line 228
    :try_start_1
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->mModules:Ljava/util/Map;

    if-eqz v0, :cond_65

    .line 229
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 230
    .local v1, "handle":I
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->mModules:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleState;

    .line 231
    .local v2, "module":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleState;
    const-string v3, "========================================="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 232
    const-string v3, "Module %d\n%s\n"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleState;->properties:Landroid/media/soundtrigger/Properties;

    const/16 v7, 0x10

    .line 233
    invoke-static {v6, v7}, Lcom/android/server/soundtrigger_middleware/ObjectPrinter;->print(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 232
    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 234
    const-string v3, "========================================="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 235
    iget-object v3, v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleState;->sessions:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_53
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_63

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    .line 236
    .local v4, "session":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    invoke-virtual {v4, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->dump(Ljava/io/PrintWriter;)V

    .line 237
    .end local v4    # "session":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    goto :goto_53

    .line 238
    .end local v1    # "handle":I
    .end local v2    # "module":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleState;
    :cond_63
    goto :goto_d

    :cond_64
    goto :goto_6a

    .line 240
    :cond_65
    const-string v0, "Modules have not yet been enumerated."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 242
    :goto_6a
    monitor-exit p0
    :try_end_6b
    .catchall {:try_start_1 .. :try_end_6b} :catchall_7a

    .line 243
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 245
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    instance-of v1, v0, Lcom/android/server/soundtrigger_middleware/Dumpable;

    if-eqz v1, :cond_79

    .line 246
    check-cast v0, Lcom/android/server/soundtrigger_middleware/Dumpable;

    invoke-interface {v0, p1}, Lcom/android/server/soundtrigger_middleware/Dumpable;->dump(Ljava/io/PrintWriter;)V

    .line 248
    :cond_79
    return-void

    .line 242
    :catchall_7a
    move-exception v0

    :try_start_7b
    monitor-exit p0
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    throw v0
.end method

.method public listModules()[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    .registers 10

    .line 160
    monitor-enter p0

    .line 165
    :try_start_1
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    invoke-interface {v0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;->listModules()[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;

    move-result-object v0

    .line 166
    .local v0, "result":[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->mModules:Ljava/util/Map;

    const/4 v2, 0x0

    if-nez v1, :cond_30

    .line 167
    new-instance v1, Ljava/util/HashMap;

    array-length v3, v0

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->mModules:Ljava/util/Map;

    .line 168
    array-length v1, v0

    :goto_15
    if-ge v2, v1, :cond_67

    aget-object v3, v0, v2

    .line 169
    .local v3, "desc":Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    iget-object v4, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->mModules:Ljava/util/Map;

    iget v5, v3, Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;->handle:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleState;

    iget-object v7, v3, Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;->properties:Landroid/media/soundtrigger/Properties;

    const/4 v8, 0x0

    invoke-direct {v6, p0, v7, v8}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleState;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;Landroid/media/soundtrigger/Properties;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleState-IA;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    nop

    .end local v3    # "desc":Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 172
    :cond_30
    array-length v3, v0

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v3, v1, :cond_69

    .line 176
    array-length v1, v0

    :goto_38
    if-ge v2, v1, :cond_67

    aget-object v3, v0, v2

    .line 177
    .restart local v3    # "desc":Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    iget-object v4, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->mModules:Ljava/util/Map;

    iget v5, v3, Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;->handle:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 181
    iget-object v4, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->mModules:Ljava/util/Map;

    iget v5, v3, Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;->handle:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleState;

    iget-object v5, v3, Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;->properties:Landroid/media/soundtrigger/Properties;

    iput-object v5, v4, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleState;->properties:Landroid/media/soundtrigger/Properties;

    .line 176
    .end local v3    # "desc":Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 178
    .restart local v3    # "desc":Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    :cond_5f
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "listModules must always return the same result."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;
    throw v1
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_67} :catch_73
    .catchall {:try_start_1 .. :try_end_67} :catchall_71

    .line 184
    .end local v3    # "desc":Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;
    :cond_67
    :try_start_67
    monitor-exit p0
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_71

    return-object v0

    .line 173
    :cond_69
    :try_start_69
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "listModules must always return the same result."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;
    throw v1
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_71} :catch_73
    .catchall {:try_start_69 .. :try_end_71} :catchall_71

    .line 188
    .end local v0    # "result":[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;
    :catchall_71
    move-exception v0

    goto :goto_79

    .line 185
    :catch_73
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    :try_start_74
    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->handleException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v1

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;
    throw v1

    .line 188
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;
    :goto_79
    monitor-exit p0
    :try_end_7a
    .catchall {:try_start_74 .. :try_end_7a} :catchall_71

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 222
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
