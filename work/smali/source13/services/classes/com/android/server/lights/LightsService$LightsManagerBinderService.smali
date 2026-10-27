.class final Lcom/android/server/lights/LightsService$LightsManagerBinderService;
.super Landroid/hardware/lights/ILightsManager$Stub;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LightsManagerBinderService"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;
    }
.end annotation


# instance fields
.field private final mSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method private constructor <init>(Lcom/android/server/lights/LightsService;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    invoke-direct {p0}, Landroid/hardware/lights/ILightsManager$Stub;-><init>()V

    .line 105
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->mSessions:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/LightsService$LightsManagerBinderService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/lights/LightsService$LightsManagerBinderService;-><init>(Lcom/android/server/lights/LightsService;)V

    return-void
.end method

.method private checkRequestIsValid([I)V
    .registers 10
    .param p1, "lightIds"    # [I

    .line 240
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_35

    aget v3, p1, v2

    .line 241
    .local v3, "lightId":I
    iget-object v4, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v4, v4, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/lights/LightsService$LightImpl;

    .line 242
    .local v4, "light":Lcom/android/server/lights/LightsService$LightImpl;
    if-eqz v4, :cond_1b

    invoke-static {v4}, Lcom/android/server/lights/LightsService$LightImpl;->-$$Nest$misSystemLight(Lcom/android/server/lights/LightsService$LightImpl;)Z

    move-result v5

    if-nez v5, :cond_1b

    const/4 v5, 0x1

    goto :goto_1c

    :cond_1b
    move v5, v1

    :goto_1c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid lightId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 240
    .end local v3    # "lightId":I
    .end local v4    # "light":Lcom/android/server/lights/LightsService$LightImpl;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 245
    :cond_35
    return-void
.end method

.method private closeSessionInternal(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;

    .line 230
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    monitor-enter v0

    .line 231
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->getSessionLocked(Landroid/os/IBinder;)Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;

    move-result-object v1

    .line 232
    .local v1, "session":Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;
    if-eqz v1, :cond_11

    .line 233
    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->mSessions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 234
    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->invalidateLightStatesLocked()V

    .line 236
    .end local v1    # "session":Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;
    :cond_11
    monitor-exit v0

    .line 237
    return-void

    .line 236
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method private getSessionLocked(Landroid/os/IBinder;)Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 274
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->mSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 275
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->mSessions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;

    iget-object v1, v1, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 276
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->mSessions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;

    return-object v1

    .line 274
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 279
    .end local v0    # "i":I
    :cond_25
    const/4 v0, 0x0

    return-object v0
.end method

.method private invalidateLightStatesLocked()V
    .registers 7

    .line 253
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 254
    .local v0, "states":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/hardware/lights/LightState;>;"
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->mSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_d
    if-ltz v1, :cond_37

    .line 255
    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->mSessions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;

    iget-object v2, v2, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mRequests:Landroid/util/SparseArray;

    .line 256
    .local v2, "requests":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/lights/LightState;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1a
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_34

    .line 257
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/lights/LightState;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 254
    .end local v2    # "requests":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/lights/LightState;>;"
    .end local v3    # "j":I
    :cond_34
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 260
    .end local v1    # "i":I
    :cond_37
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_38
    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v2, v2, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_70

    .line 261
    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v2, v2, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/lights/LightsService$LightImpl;

    .line 262
    .local v2, "light":Lcom/android/server/lights/LightsService$LightImpl;
    invoke-static {v2}, Lcom/android/server/lights/LightsService$LightImpl;->-$$Nest$misSystemLight(Lcom/android/server/lights/LightsService$LightImpl;)Z

    move-result v3

    if-nez v3, :cond_6d

    .line 263
    iget-object v3, v2, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    iget v3, v3, Landroid/hardware/light/HwLight;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/lights/LightState;

    .line 264
    .local v3, "state":Landroid/hardware/lights/LightState;
    if-eqz v3, :cond_6a

    .line 265
    invoke-virtual {v3}, Landroid/hardware/lights/LightState;->getColor()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/lights/LightsService$LightImpl;->setColor(I)V

    goto :goto_6d

    .line 267
    :cond_6a
    invoke-virtual {v2}, Lcom/android/server/lights/LightsService$LightImpl;->turnOff()V

    .line 260
    .end local v2    # "light":Lcom/android/server/lights/LightsService$LightImpl;
    .end local v3    # "state":Landroid/hardware/lights/LightState;
    :cond_6d
    :goto_6d
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 271
    .end local v1    # "i":I
    :cond_70
    return-void
.end method


# virtual methods
.method public closeSession(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;

    .line 190
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    invoke-virtual {v0}, Lcom/android/server/lights/LightsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DEVICE_LIGHTS"

    const-string v2, "closeSession requires CONTROL_DEVICE_LIGHTS permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    invoke-direct {p0, p1}, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->closeSessionInternal(Landroid/os/IBinder;)V

    .line 194
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 14
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 198
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    invoke-virtual {v0}, Lcom/android/server/lights/LightsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "LightsService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 201
    :cond_f
    sget-boolean v0, Lcom/android/server/display/DisplayDebugConfig;->DEBUG_LDA:Z

    sput-boolean v0, Lcom/android/server/lights/LightsService;->DEBUG:Z

    .line 203
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    monitor-enter v0

    .line 204
    :try_start_16
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v1}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmVintfLights(Lcom/android/server/lights/LightsService;)Ljava/util/function/Supplier;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service: aidl ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v2}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmVintfLights(Lcom/android/server/lights/LightsService;)Ljava/util/function/Supplier;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4a

    .line 207
    :cond_45
    const-string v1, "Service: hidl"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 210
    :goto_4a
    const-string v1, "Lights:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_50
    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v2, v2, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v1, v2, :cond_94

    .line 212
    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v2, v2, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/lights/LightsService$LightImpl;

    .line 213
    .local v2, "light":Lcom/android/server/lights/LightsService$LightImpl;
    const-string v6, "  Light id=%d ordinal=%d color=%08x"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, v2, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    iget v8, v8, Landroid/hardware/light/HwLight;->id:I

    .line 214
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    iget-object v4, v2, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    iget v4, v4, Landroid/hardware/light/HwLight;->ordinal:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v5

    invoke-static {v2}, Lcom/android/server/lights/LightsService$LightImpl;->-$$Nest$mgetColor(Lcom/android/server/lights/LightsService$LightImpl;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v3

    .line 213
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    .end local v2    # "light":Lcom/android/server/lights/LightsService$LightImpl;
    add-int/lit8 v1, v1, 0x1

    goto :goto_50

    .line 217
    .end local v1    # "i":I
    :cond_94
    const-string v1, "Session clients:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->mSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;

    .line 219
    .local v2, "session":Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Session token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mToken:Landroid/os/IBinder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 220
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_c4
    iget-object v7, v2, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mRequests:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_f8

    .line 221
    const-string v7, "    Request id=%d color=%08x"

    new-array v8, v3, [Ljava/lang/Object;

    iget-object v9, v2, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mRequests:Landroid/util/SparseArray;

    .line 222
    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    iget-object v9, v2, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mRequests:Landroid/util/SparseArray;

    .line 223
    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/lights/LightState;

    invoke-virtual {v9}, Landroid/hardware/lights/LightState;->getColor()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    .line 221
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 220
    add-int/lit8 v6, v6, 0x1

    goto :goto_c4

    .line 225
    .end local v2    # "session":Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;
    .end local v6    # "i":I
    :cond_f8
    goto :goto_9f

    .line 226
    :cond_f9
    monitor-exit v0

    .line 227
    return-void

    .line 226
    :catchall_fb
    move-exception v1

    monitor-exit v0
    :try_end_fd
    .catchall {:try_start_16 .. :try_end_fd} :catchall_fb

    throw v1
.end method

.method public getLightState(I)Landroid/hardware/lights/LightState;
    .registers 7
    .param p1, "lightId"    # I

    .line 157
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    invoke-virtual {v0}, Lcom/android/server/lights/LightsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DEVICE_LIGHTS"

    const-string v2, "getLightState(@TestApi) requires CONTROL_DEVICE_LIGHTS permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    monitor-enter v0

    .line 161
    :try_start_10
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v1, v1, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/lights/LightsService$LightImpl;

    .line 162
    .local v1, "light":Lcom/android/server/lights/LightsService$LightImpl;
    if-eqz v1, :cond_2d

    invoke-static {v1}, Lcom/android/server/lights/LightsService$LightImpl;->-$$Nest$misSystemLight(Lcom/android/server/lights/LightsService$LightImpl;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 165
    new-instance v2, Landroid/hardware/lights/LightState;

    invoke-static {v1}, Lcom/android/server/lights/LightsService$LightImpl;->-$$Nest$mgetColor(Lcom/android/server/lights/LightsService$LightImpl;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/hardware/lights/LightState;-><init>(I)V

    monitor-exit v0

    return-object v2

    .line 163
    :cond_2d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid light: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/lights/LightsService$LightsManagerBinderService;
    .end local p1    # "lightId":I
    throw v2

    .line 166
    .end local v1    # "light":Lcom/android/server/lights/LightsService$LightImpl;
    .restart local p0    # "this":Lcom/android/server/lights/LightsService$LightsManagerBinderService;
    .restart local p1    # "lightId":I
    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_10 .. :try_end_48} :catchall_46

    throw v1
.end method

.method public getLights()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/lights/Light;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    invoke-virtual {v0}, Lcom/android/server/lights/LightsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DEVICE_LIGHTS"

    const-string v2, "getLights requires CONTROL_DEVICE_LIGHTS_PERMISSION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    monitor-enter v0

    .line 118
    :try_start_10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v1, "lights":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/lights/Light;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    iget-object v3, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v3, v3, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4d

    .line 120
    iget-object v3, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v3, v3, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/lights/LightsService$LightImpl;

    invoke-static {v3}, Lcom/android/server/lights/LightsService$LightImpl;->-$$Nest$misSystemLight(Lcom/android/server/lights/LightsService$LightImpl;)Z

    move-result v3

    if-nez v3, :cond_4a

    .line 121
    iget-object v3, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v3, v3, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/lights/LightsService$LightImpl;

    iget-object v3, v3, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    .line 122
    .local v3, "hwLight":Landroid/hardware/light/HwLight;
    new-instance v4, Landroid/hardware/lights/Light;

    iget v5, v3, Landroid/hardware/light/HwLight;->id:I

    iget v6, v3, Landroid/hardware/light/HwLight;->ordinal:I

    iget-byte v7, v3, Landroid/hardware/light/HwLight;->type:B

    invoke-direct {v4, v5, v6, v7}, Landroid/hardware/lights/Light;-><init>(III)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    .end local v3    # "hwLight":Landroid/hardware/light/HwLight;
    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 125
    .end local v2    # "i":I
    :cond_4d
    monitor-exit v0

    return-object v1

    .line 126
    .end local v1    # "lights":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/lights/Light;>;"
    :catchall_4f
    move-exception v1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_10 .. :try_end_51} :catchall_4f

    throw v1
.end method

.method synthetic lambda$openSession$0$com-android-server-lights-LightsService$LightsManagerBinderService(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 178
    invoke-direct {p0, p1}, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->closeSessionInternal(Landroid/os/IBinder;)V

    return-void
.end method

.method public openSession(Landroid/os/IBinder;I)V
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "priority"    # I

    .line 171
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    invoke-virtual {v0}, Lcom/android/server/lights/LightsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DEVICE_LIGHTS"

    const-string/jumbo v2, "openSession requires CONTROL_DEVICE_LIGHTS permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    monitor-enter v0

    .line 176
    :try_start_14
    invoke-direct {p0, p1}, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->getSessionLocked(Landroid/os/IBinder;)Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1d

    const/4 v1, 0x1

    goto :goto_1e

    :cond_1d
    move v1, v2

    :goto_1e
    const-string v3, "already registered"

    invoke-static {v1, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_4d

    .line 178
    :try_start_23
    new-instance v1, Lcom/android/server/lights/LightsService$LightsManagerBinderService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/lights/LightsService$LightsManagerBinderService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/lights/LightsService$LightsManagerBinderService;Landroid/os/IBinder;)V

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 179
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->mSessions:Ljava/util/List;

    new-instance v2, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;-><init>(Lcom/android/server/lights/LightsService$LightsManagerBinderService;Landroid/os/IBinder;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->mSessions:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_3a} :catch_3d
    .catchall {:try_start_23 .. :try_end_3a} :catchall_4d

    .line 184
    nop

    .line 185
    :try_start_3b
    monitor-exit v0

    .line 186
    return-void

    .line 181
    :catch_3d
    move-exception v1

    .line 182
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "LightsService"

    const-string v3, "Couldn\'t open session, client already died"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Client is already dead."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/lights/LightsService$LightsManagerBinderService;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "priority":I
    throw v2

    .line 185
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Lcom/android/server/lights/LightsService$LightsManagerBinderService;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "priority":I
    :catchall_4d
    move-exception v1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_3b .. :try_end_4f} :catchall_4d

    throw v1
.end method

.method public setLightStates(Landroid/os/IBinder;[I[Landroid/hardware/lights/LightState;)V
    .registers 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "lightIds"    # [I
    .param p3, "lightStates"    # [Landroid/hardware/lights/LightState;

    .line 138
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    invoke-virtual {v0}, Lcom/android/server/lights/LightsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DEVICE_LIGHTS"

    const-string/jumbo v2, "setLightStates requires CONTROL_DEVICE_LIGHTS permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    array-length v0, p2

    array-length v1, p3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_16

    move v0, v3

    goto :goto_17

    :cond_16
    move v0, v2

    :goto_17
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 142
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    monitor-enter v0

    .line 143
    :try_start_1d
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->getSessionLocked(Landroid/os/IBinder;)Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;

    move-result-object v1

    .line 144
    .local v1, "session":Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;
    if-eqz v1, :cond_2a

    move v2, v3

    :cond_2a
    const-string/jumbo v3, "not registered"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 146
    invoke-direct {p0, p2}, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->checkRequestIsValid([I)V

    .line 148
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_34
    array-length v3, p2

    if-ge v2, v3, :cond_41

    .line 149
    aget v3, p2, v2

    aget-object v4, p3, v2

    invoke-virtual {v1, v3, v4}, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->setRequest(ILandroid/hardware/lights/LightState;)V

    .line 148
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 151
    .end local v2    # "i":I
    :cond_41
    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->invalidateLightStatesLocked()V

    .line 152
    .end local v1    # "session":Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;
    monitor-exit v0

    .line 153
    return-void

    .line 152
    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_1d .. :try_end_48} :catchall_46

    throw v1
.end method
