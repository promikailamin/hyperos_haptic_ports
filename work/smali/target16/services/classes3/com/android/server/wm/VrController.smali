.class public final Lcom/android/server/wm/VrController;
.super Ljava/lang/Object;
.source "VrController.java"


# static fields
.field public static ORIG_ENUMS:[I

.field public static PROTO_ENUMS:[I


# instance fields
.field public final mGlobalAmLock:Ljava/lang/Object;

.field public final mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

.field public mVrRenderThreadTid:I

.field public volatile mVrState:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmGlobalAmLock(Lcom/android/server/wm/VrController;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/VrController;->mGlobalAmLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVrState(Lcom/android/server/wm/VrController;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/wm/VrController;->mVrState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmVrState(Lcom/android/server/wm/VrController;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/wm/VrController;->mVrState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetPersistentVrRenderThreadLocked(Lcom/android/server/wm/VrController;IZ)I
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/VrController;->setPersistentVrRenderThreadLocked(IZ)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetVrRenderThreadLocked(Lcom/android/server/wm/VrController;IIZ)I
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/VrController;->setVrRenderThreadLocked(IIZ)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    .line 59
    filled-new-array {v0, v1, v2}, [I

    move-result-object v3

    sput-object v3, Lcom/android/server/wm/VrController;->ORIG_ENUMS:[I

    .line 64
    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/VrController;->PROTO_ENUMS:[I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 104
    iput v0, p0, Lcom/android/server/wm/VrController;->mVrState:I

    .line 107
    iput v0, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    .line 111
    new-instance v0, Lcom/android/server/wm/VrController$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/VrController$1;-><init>(Lcom/android/server/wm/VrController;)V

    iput-object v0, p0, Lcom/android/server/wm/VrController;->mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

    .line 138
    iput-object p1, p0, Lcom/android/server/wm/VrController;->mGlobalAmLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final clearVrRenderThreadLocked(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 422
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/VrController;->updateVrRenderThreadLocked(IZ)I

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 12

    .line 457
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 458
    iget v0, p0, Lcom/android/server/wm/VrController;->mVrState:I

    int-to-long v4, v0

    sget-object v6, Lcom/android/server/wm/VrController;->ORIG_ENUMS:[I

    sget-object v7, Lcom/android/server/wm/VrController;->PROTO_ENUMS:[I

    const-wide v2, 0x20e00000001L

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->writeBitWiseFlagsToProtoEnum(Landroid/util/proto/ProtoOutputStream;JJ[I[I)V

    const-wide v2, 0x10500000002L

    .line 460
    iget p0, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    invoke-virtual {v1, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 461
    invoke-virtual {v1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final enforceThreadInProcess(II)V
    .registers 3

    .line 430
    invoke-static {p2, p1}, Landroid/os/Process;->isThreadInProcess(II)Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 431
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "VR thread does not belong to process"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final hasPersistentVrFlagSet()Z
    .registers 1

    .line 448
    iget p0, p0, Lcom/android/server/wm/VrController;->mVrState:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public final inVrMode()Z
    .registers 2

    .line 439
    iget p0, p0, Lcom/android/server/wm/VrController;->mVrState:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public isInterestingToSchedGroup()Z
    .registers 1

    .line 157
    iget p0, p0, Lcom/android/server/wm/VrController;->mVrState:I

    and-int/lit8 p0, p0, 0x3

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public onSystemReady()V
    .registers 1

    .line 145
    const-class p0, Lcom/android/server/vr/VrManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/HardwarePropertiesManagerService$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    return-void
.end method

.method public onTopProcChangedLocked(Lcom/android/server/wm/WindowProcessController;)V
    .registers 5

    .line 169
    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->getCurrentSchedulingGroup()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v1, :cond_e

    .line 171
    iget p1, p1, Lcom/android/server/wm/WindowProcessController;->mVrThreadTid:I

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/wm/VrController;->setVrRenderThreadLocked(IIZ)I

    return-void

    .line 173
    :cond_e
    iget p1, p1, Lcom/android/server/wm/WindowProcessController;->mVrThreadTid:I

    iget v0, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    if-ne p1, v0, :cond_17

    .line 174
    invoke-virtual {p0, v2}, Lcom/android/server/wm/VrController;->clearVrRenderThreadLocked(Z)V

    :cond_17
    return-void
.end method

.method public final setPersistentVrRenderThreadLocked(IZ)I
    .registers 4

    .line 372
    invoke-virtual {p0}, Lcom/android/server/wm/VrController;->hasPersistentVrFlagSet()Z

    move-result v0

    if-nez v0, :cond_12

    if-nez p2, :cond_f

    .line 374
    const-string p1, "VrController"

    const-string p2, "Failed to set persistent VR thread, system not in persistent VR mode."

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_f
    iget p0, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    return p0

    .line 379
    :cond_12
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/VrController;->updateVrRenderThreadLocked(IZ)I

    move-result p0

    return p0
.end method

.method public setPersistentVrThreadLocked(IILcom/android/server/wm/WindowProcessController;)V
    .registers 6

    .line 269
    invoke-virtual {p0}, Lcom/android/server/wm/VrController;->hasPersistentVrFlagSet()Z

    move-result v0

    const-string v1, "VrController"

    if-nez v0, :cond_e

    .line 270
    const-string p0, "Persistent VR thread may only be set in persistent VR mode!"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    if-nez p3, :cond_16

    .line 274
    const-string p0, "Persistent VR thread not set, calling process doesn\'t exist!"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_16
    if-eqz p1, :cond_1b

    .line 278
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/VrController;->enforceThreadInProcess(II)V

    :cond_1b
    const/4 p2, 0x0

    .line 280
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/VrController;->setPersistentVrRenderThreadLocked(IZ)I

    return-void
.end method

.method public final setVrRenderThreadLocked(IIZ)I
    .registers 7

    .line 398
    invoke-virtual {p0}, Lcom/android/server/wm/VrController;->inVrMode()Z

    move-result v0

    .line 399
    invoke-virtual {p0}, Lcom/android/server/wm/VrController;->hasPersistentVrFlagSet()Z

    move-result v1

    if-eqz v0, :cond_15

    if-nez v1, :cond_15

    const/4 v2, 0x3

    if-eq p2, v2, :cond_10

    goto :goto_15

    .line 412
    :cond_10
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/VrController;->updateVrRenderThreadLocked(IZ)I

    move-result p0

    return p0

    :cond_15
    :goto_15
    if-nez p3, :cond_39

    if-nez v0, :cond_1c

    .line 404
    const-string p1, "system not in VR mode."

    goto :goto_23

    :cond_1c
    if-eqz v1, :cond_21

    .line 406
    const-string p1, "system in persistent VR mode."

    goto :goto_23

    .line 405
    :cond_21
    const-string p1, "caller is not the current top application."

    .line 408
    :goto_23
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to set VR thread, "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VrController"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_39
    iget p0, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    return p0
.end method

.method public setVrThreadLocked(IILcom/android/server/wm/WindowProcessController;)V
    .registers 6

    .line 235
    invoke-virtual {p0}, Lcom/android/server/wm/VrController;->hasPersistentVrFlagSet()Z

    move-result v0

    const-string v1, "VrController"

    if-eqz v0, :cond_e

    .line 236
    const-string p0, "VR thread cannot be set in persistent VR mode!"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    if-nez p3, :cond_16

    .line 240
    const-string p0, "Persistent VR thread not set, calling process doesn\'t exist!"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_16
    if-eqz p1, :cond_1b

    .line 244
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/VrController;->enforceThreadInProcess(II)V

    .line 246
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/wm/VrController;->inVrMode()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_28

    .line 247
    const-string p0, "VR thread cannot be set when not in VR mode!"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 249
    :cond_28
    invoke-virtual {p3}, Lcom/android/server/wm/WindowProcessController;->getCurrentSchedulingGroup()I

    move-result p2

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/VrController;->setVrRenderThreadLocked(IIZ)I

    :goto_2f
    if-lez p1, :cond_32

    goto :goto_33

    :cond_32
    move p1, v0

    .line 251
    :goto_33
    iput p1, p3, Lcom/android/server/wm/WindowProcessController;->mVrThreadTid:I

    return-void
.end method

.method public shouldDisableNonVrUiLocked()Z
    .registers 1

    .line 289
    iget p0, p0, Lcom/android/server/wm/VrController;->mVrState:I

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 453
    iget v0, p0, Lcom/android/server/wm/VrController;->mVrState:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p0, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "[VrState=0x%x,VrRenderThreadTid=%d]"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateVrRenderThreadLocked(IZ)I
    .registers 4

    .line 342
    iget v0, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    if-ne v0, p1, :cond_5

    return v0

    :cond_5
    if-lez v0, :cond_d

    .line 347
    invoke-static {v0, p2}, Lcom/android/server/am/ActivityManagerService;->scheduleAsRegularPriority(IZ)Z

    const/4 v0, 0x0

    .line 348
    iput v0, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    :cond_d
    if-lez p1, :cond_14

    .line 352
    iput p1, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    .line 353
    invoke-static {p1, p2}, Lcom/android/server/am/ActivityManagerService;->scheduleAsFifoPriority(IZ)Z

    .line 355
    :cond_14
    iget p0, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    return p0
.end method
