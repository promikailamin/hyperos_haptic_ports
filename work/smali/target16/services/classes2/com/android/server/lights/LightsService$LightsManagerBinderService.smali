.class public final Lcom/android/server/lights/LightsService$LightsManagerBinderService;
.super Landroid/hardware/lights/ILightsManager$Stub;
.source "LightsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mSessions:Ljava/util/List;

.field public final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method public constructor <init>(Lcom/android/server/lights/LightsService;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    .line 77
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/hardware/lights/ILightsManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 73
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->mSessions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 1

    .line 0
    return-void
.end method

.method public binderDied(Landroid/os/IBinder;)V
    .registers 2

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->closeSessionInternal(Landroid/os/IBinder;)V

    return-void
.end method

.method public final checkRequestIsValid([I)V
    .registers 9

    .line 222
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_35

    aget v3, p1, v2

    .line 223
    iget-object v4, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v4}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmLightsById(Lcom/android/server/lights/LightsService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/lights/LightsService$LightImpl;

    if-eqz v4, :cond_1d

    .line 224
    invoke-static {v4}, Lcom/android/server/lights/LightsService$LightImpl;->-$$Nest$misSystemLight(Lcom/android/server/lights/LightsService$LightImpl;)Z

    move-result v4

    if-nez v4, :cond_1d

    const/4 v4, 0x1

    goto :goto_1e

    :cond_1d
    move v4, v1

    :goto_1e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid lightId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_35
    return-void
.end method

.method public closeSession(Landroid/os/IBinder;)V
    .registers 2

    .line 175
    invoke-virtual {p0}, Landroid/hardware/lights/ILightsManager$Stub;->closeSession_enforcePermission()V

    .line 176
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-virtual {p0, p1}, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->closeSessionInternal(Landroid/os/IBinder;)V

    return-void
.end method

.method public final closeSessionInternal(Landroid/os/IBinder;)V
    .registers 5

    .line 211
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    monitor-enter v0

    .line 212
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->getSessionLocked(Landroid/os/IBinder;)Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 214
    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->mSessions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 215
    invoke-virtual {p0}, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->invalidateLightStatesLocked()V

    const/4 v1, 0x0

    .line 216
    invoke-interface {p1, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_18

    :catchall_16
    move-exception p0

    goto :goto_1a

    .line 218
    :cond_18
    :goto_18
    monitor-exit v0

    return-void

    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_16

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    .line 182
    iget-object p1, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p3, "LightsService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_f

    return-void

    .line 184
    :cond_f
    iget-object p1, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    monitor-enter p1

    .line 185
    :try_start_12
    iget-object p3, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {p3}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmVintfLights(Lcom/android/server/lights/LightsService;)Ljava/util/function/Supplier;

    move-result-object p3

    if-eqz p3, :cond_41

    .line 186
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Service: aidl ("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v0}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmVintfLights(Lcom/android/server/lights/LightsService;)Ljava/util/function/Supplier;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_46

    :catchall_3e
    move-exception p0

    goto/16 :goto_f3

    .line 188
    :cond_41
    const-string p3, "Service: hidl"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 191
    :goto_46
    const-string p3, "Lights:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p3, 0x0

    move v0, p3

    .line 192
    :goto_4d
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v1}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmLightsById(Lcom/android/server/lights/LightsService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_91

    .line 193
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v1}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmLightsById(Lcom/android/server/lights/LightsService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/lights/LightsService$LightImpl;

    .line 194
    const-string v2, "  Light id=%d ordinal=%d color=%08x"

    invoke-static {v1}, Lcom/android/server/lights/LightsService$LightImpl;->-$$Nest$fgetmHwLight(Lcom/android/server/lights/LightsService$LightImpl;)Landroid/hardware/light/HwLight;

    move-result-object v3

    iget v3, v3, Landroid/hardware/light/HwLight;->id:I

    .line 195
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Lcom/android/server/lights/LightsService$LightImpl;->-$$Nest$fgetmHwLight(Lcom/android/server/lights/LightsService$LightImpl;)Landroid/hardware/light/HwLight;

    move-result-object v4

    iget v4, v4, Landroid/hardware/light/HwLight;->ordinal:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Lcom/android/server/lights/LightsService$LightImpl;->-$$Nest$mgetColor(Lcom/android/server/lights/LightsService$LightImpl;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v3, v4, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 194
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    .line 198
    :cond_91
    const-string v0, "Session clients:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 199
    iget-object p0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->mSessions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Session token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, p3

    .line 201
    :goto_bf
    iget-object v2, v0, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mRequests:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_9c

    .line 202
    const-string v2, "    Request id=%d color=%08x"

    iget-object v3, v0, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mRequests:Landroid/util/SparseArray;

    .line 203
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mRequests:Landroid/util/SparseArray;

    .line 204
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/lights/LightState;

    invoke-virtual {v4}, Landroid/hardware/lights/LightState;->getColor()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 202
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_bf

    .line 207
    :cond_f1
    monitor-exit p1

    return-void

    :goto_f3
    monitor-exit p1
    :try_end_f4
    .catchall {:try_start_12 .. :try_end_f4} :catchall_3e

    throw p0
.end method

.method public getLightState(I)Landroid/hardware/lights/LightState;
    .registers 5

    .line 142
    invoke-virtual {p0}, Landroid/hardware/lights/ILightsManager$Stub;->getLightState_enforcePermission()V

    .line 144
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    monitor-enter v0

    .line 145
    :try_start_6
    iget-object p0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {p0}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmLightsById(Lcom/android/server/lights/LightsService;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/lights/LightsService$LightImpl;

    if-eqz p0, :cond_27

    .line 146
    invoke-static {p0}, Lcom/android/server/lights/LightsService$LightImpl;->-$$Nest$misSystemLight(Lcom/android/server/lights/LightsService$LightImpl;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 149
    new-instance p1, Landroid/hardware/lights/LightState;

    invoke-static {p0}, Lcom/android/server/lights/LightsService$LightImpl;->-$$Nest$mgetColor(Lcom/android/server/lights/LightsService$LightImpl;)I

    move-result p0

    invoke-direct {p1, p0}, Landroid/hardware/lights/LightState;-><init>(I)V

    monitor-exit v0

    return-object p1

    :catchall_25
    move-exception p0

    goto :goto_3e

    .line 147
    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid light: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 150
    :goto_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_6 .. :try_end_3f} :catchall_25

    throw p0
.end method

.method public getLights()Ljava/util/List;
    .registers 8

    .line 99
    invoke-virtual {p0}, Landroid/hardware/lights/ILightsManager$Stub;->getLights_enforcePermission()V

    .line 101
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    monitor-enter v0

    .line 102
    :try_start_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 103
    :goto_c
    iget-object v3, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v3}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmLightsById(Lcom/android/server/lights/LightsService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4e

    .line 104
    iget-object v3, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v3}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmLightsById(Lcom/android/server/lights/LightsService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/lights/LightsService$LightImpl;

    invoke-static {v3}, Lcom/android/server/lights/LightsService$LightImpl;->-$$Nest$misSystemLight(Lcom/android/server/lights/LightsService$LightImpl;)Z

    move-result v3

    if-nez v3, :cond_4b

    .line 105
    iget-object v3, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v3}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmLightsById(Lcom/android/server/lights/LightsService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/lights/LightsService$LightImpl;

    invoke-static {v3}, Lcom/android/server/lights/LightsService$LightImpl;->-$$Nest$fgetmHwLight(Lcom/android/server/lights/LightsService$LightImpl;)Landroid/hardware/light/HwLight;

    move-result-object v3

    .line 106
    new-instance v4, Landroid/hardware/lights/Light;

    iget v5, v3, Landroid/hardware/light/HwLight;->id:I

    iget v6, v3, Landroid/hardware/light/HwLight;->ordinal:I

    iget-byte v3, v3, Landroid/hardware/light/HwLight;->type:B

    invoke-direct {v4, v5, v6, v3}, Landroid/hardware/lights/Light;-><init>(III)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    :catchall_49
    move-exception p0

    goto :goto_50

    :cond_4b
    :goto_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 109
    :cond_4e
    monitor-exit v0

    return-object v1

    .line 110
    :goto_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_6 .. :try_end_51} :catchall_49

    throw p0
.end method

.method public final getSessionLocked(Landroid/os/IBinder;)Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;
    .registers 4

    const/4 v0, 0x0

    .line 256
    :goto_1
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->mSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 257
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->mSessions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;

    iget-object v1, v1, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mToken:Landroid/os/IBinder;

    invoke-interface {p1, v1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 258
    iget-object p0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->mSessions:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;

    return-object p0

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_25
    const/4 p0, 0x0

    return-object p0
.end method

.method public final invalidateLightStatesLocked()V
    .registers 7

    .line 235
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 236
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->mSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_d
    const/4 v2, 0x0

    if-ltz v1, :cond_37

    .line 237
    iget-object v3, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->mSessions:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;

    iget-object v3, v3, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mRequests:Landroid/util/SparseArray;

    .line 238
    :goto_1a
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_34

    .line 239
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/lights/LightState;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_34
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 242
    :cond_37
    :goto_37
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v1}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmLightsById(Lcom/android/server/lights/LightsService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v2, v1, :cond_75

    .line 243
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v1}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmLightsById(Lcom/android/server/lights/LightsService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/lights/LightsService$LightImpl;

    .line 244
    invoke-static {v1}, Lcom/android/server/lights/LightsService$LightImpl;->-$$Nest$misSystemLight(Lcom/android/server/lights/LightsService$LightImpl;)Z

    move-result v3

    if-nez v3, :cond_72

    .line 245
    invoke-static {v1}, Lcom/android/server/lights/LightsService$LightImpl;->-$$Nest$fgetmHwLight(Lcom/android/server/lights/LightsService$LightImpl;)Landroid/hardware/light/HwLight;

    move-result-object v3

    iget v3, v3, Landroid/hardware/light/HwLight;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/lights/LightState;

    if-eqz v3, :cond_6f

    .line 247
    invoke-virtual {v3}, Landroid/hardware/lights/LightState;->getColor()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/lights/LightsService$LightImpl;->setColor(I)V

    goto :goto_72

    .line 249
    :cond_6f
    invoke-virtual {v1}, Lcom/android/server/lights/LightsService$LightImpl;->turnOff()V

    :cond_72
    :goto_72
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    :cond_75
    return-void
.end method

.method public openSession(Landroid/os/IBinder;I)V
    .registers 7

    .line 156
    invoke-virtual {p0}, Landroid/hardware/lights/ILightsManager$Stub;->openSession_enforcePermission()V

    .line 157
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    monitor-enter v0

    .line 160
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->getSessionLocked(Landroid/os/IBinder;)Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    move v1, v2

    :goto_13
    const-string v3, "already registered"

    invoke-static {v1, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_2c

    .line 162
    :try_start_18
    invoke-interface {p1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 163
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->mSessions:Ljava/util/List;

    new-instance v2, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;-><init>(Lcom/android/server/lights/LightsService$LightsManagerBinderService;Landroid/os/IBinder;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object p0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->mSessions:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_2a} :catch_2e
    .catchall {:try_start_18 .. :try_end_2a} :catchall_2c

    .line 169
    :try_start_2a
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p0

    goto :goto_3e

    :catch_2e
    move-exception p0

    .line 166
    const-string p1, "LightsService"

    const-string p2, "Couldn\'t open session, client already died"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Client is already dead."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 169
    :goto_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_2a .. :try_end_3f} :catchall_2c

    throw p0
.end method

.method public setLightStates(Landroid/os/IBinder;[I[Landroid/hardware/lights/LightState;)V
    .registers 8

    .line 123
    invoke-virtual {p0}, Landroid/hardware/lights/ILightsManager$Stub;->setLightStates_enforcePermission()V

    .line 124
    array-length v0, p2

    array-length v1, p3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_b

    move v0, v3

    goto :goto_c

    :cond_b
    move v0, v2

    :goto_c
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 126
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    monitor-enter v0

    .line 127
    :try_start_12
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    invoke-virtual {p0, p1}, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->getSessionLocked(Landroid/os/IBinder;)Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;

    move-result-object p1

    if-eqz p1, :cond_1f

    goto :goto_20

    :cond_1f
    move v3, v2

    .line 128
    :goto_20
    const-string/jumbo v1, "not registered"

    invoke-static {v3, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 130
    invoke-virtual {p0, p2}, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->checkRequestIsValid([I)V

    .line 132
    :goto_29
    array-length v1, p2

    if-ge v2, v1, :cond_38

    .line 133
    aget v1, p2, v2

    aget-object v3, p3, v2

    invoke-virtual {p1, v1, v3}, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->setRequest(ILandroid/hardware/lights/LightState;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    :catchall_36
    move-exception p0

    goto :goto_3d

    .line 135
    :cond_38
    invoke-virtual {p0}, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->invalidateLightStatesLocked()V

    .line 136
    monitor-exit v0

    return-void

    :goto_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_12 .. :try_end_3e} :catchall_36

    throw p0
.end method
