.class Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;
.super Landroid/companion/virtual/IVirtualDeviceManager$Stub;
.source "VirtualDeviceManagerService.java"

# interfaces
.implements Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/companion/virtual/VirtualDeviceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VirtualDeviceManagerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 211
    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-direct {p0}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;-><init>()V

    return-void
.end method

.method private getAssociationInfo(Ljava/lang/String;I)Landroid/companion/AssociationInfo;
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "associationId"    # I

    .line 319
    invoke-static {}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 320
    .local v0, "callingUserId":I
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {v1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmAllAssociations(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    .line 321
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 322
    .local v1, "associations":Ljava/util/List;, "Ljava/util/List<Landroid/companion/AssociationInfo;>;"
    if-eqz v1, :cond_38

    .line 323
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 324
    .local v2, "associationSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1f
    if-ge v3, v2, :cond_37

    .line 325
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/companion/AssociationInfo;

    .line 326
    .local v4, "associationInfo":Landroid/companion/AssociationInfo;
    invoke-virtual {v4, v0, p1}, Landroid/companion/AssociationInfo;->belongsToPackage(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 327
    invoke-virtual {v4}, Landroid/companion/AssociationInfo;->getId()I

    move-result v5

    if-ne p2, v5, :cond_34

    .line 328
    return-object v4

    .line 324
    .end local v4    # "associationInfo":Landroid/companion/AssociationInfo;
    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 331
    .end local v2    # "associationSize":I
    .end local v3    # "i":I
    :cond_37
    goto :goto_50

    .line 332
    :cond_38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No associations for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VirtualDeviceManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :goto_50
    const/4 v2, 0x0

    return-object v2
.end method

.method static synthetic lambda$createVirtualDevice$0(Lcom/android/server/companion/virtual/CameraAccessController;Landroid/util/ArraySet;)V
    .registers 2
    .param p0, "cameraAccessController"    # Lcom/android/server/companion/virtual/CameraAccessController;
    .param p1, "runningUids"    # Landroid/util/ArraySet;

    .line 260
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/CameraAccessController;->blockCameraAccessIfNeeded(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public createVirtualDevice(Landroid/os/IBinder;Ljava/lang/String;ILandroid/companion/virtual/VirtualDeviceParams;Landroid/companion/virtual/IVirtualDeviceActivityListener;)Landroid/companion/virtual/IVirtualDevice;
    .registers 25
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "associationId"    # I
    .param p4, "params"    # Landroid/companion/virtual/VirtualDeviceParams;
    .param p5, "activityListener"    # Landroid/companion/virtual/IVirtualDeviceActivityListener;

    .line 221
    move-object/from16 v11, p0

    move-object/from16 v12, p2

    move/from16 v13, p3

    iget-object v0, v11, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CREATE_VIRTUAL_DEVICE"

    const-string v2, "createVirtualDevice"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-static {}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->getCallingUid()I

    move-result v14

    .line 225
    .local v14, "callingUid":I
    iget-object v0, v11, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v12}, Lcom/android/server/companion/virtual/PermissionUtils;->validateCallingPackageName(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_da

    .line 230
    invoke-direct {v11, v12, v13}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->getAssociationInfo(Ljava/lang/String;I)Landroid/companion/AssociationInfo;

    move-result-object v15

    .line 231
    .local v15, "associationInfo":Landroid/companion/AssociationInfo;
    if-eqz v15, :cond_c1

    .line 234
    iget-object v0, v11, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmVirtualDeviceManagerLock(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Ljava/lang/Object;

    move-result-object v16

    monitor-enter v16

    .line 235
    :try_start_30
    iget-object v0, v11, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmVirtualDevices(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_9f

    .line 240
    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 241
    .local v0, "userId":I
    iget-object v1, v11, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {v1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmCameraAccessControllers(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    .line 242
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/companion/virtual/CameraAccessController;

    move-object v10, v1

    .line 243
    .local v10, "cameraAccessController":Lcom/android/server/companion/virtual/CameraAccessController;
    new-instance v17, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    iget-object v1, v11, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-virtual {v1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v6, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl$1;

    invoke-direct {v6, v11, v10, v0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl$1;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;Lcom/android/server/companion/virtual/CameraAccessController;I)V

    new-instance v9, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v9, v10}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/virtual/CameraAccessController;)V

    move-object/from16 v1, v17

    move-object v3, v15

    move-object/from16 v4, p1

    move v5, v14

    move-object/from16 v7, p0

    move-object/from16 v8, p5

    move-object/from16 v18, v10

    .end local v10    # "cameraAccessController":Lcom/android/server/companion/virtual/CameraAccessController;
    .local v18, "cameraAccessController":Lcom/android/server/companion/virtual/CameraAccessController;
    move-object/from16 v10, p4

    invoke-direct/range {v1 .. v10}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;-><init>(Landroid/content/Context;Landroid/companion/AssociationInfo;Landroid/os/IBinder;ILcom/android/server/companion/virtual/VirtualDeviceImpl$OnDeviceCloseListener;Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;Landroid/companion/virtual/IVirtualDeviceActivityListener;Ljava/util/function/Consumer;Landroid/companion/virtual/VirtualDeviceParams;)V

    move-object/from16 v1, v17

    .line 263
    .local v1, "virtualDevice":Lcom/android/server/companion/virtual/VirtualDeviceImpl;
    if-eqz v18, :cond_78

    .line 264
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/companion/virtual/CameraAccessController;->startObservingIfNeeded()V

    goto :goto_90

    .line 266
    :cond_78
    const-string v2, "VirtualDeviceManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cameraAccessController not found for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :goto_90
    iget-object v2, v11, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {v2}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmVirtualDevices(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v15}, Landroid/companion/AssociationInfo;->getId()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 269
    monitor-exit v16

    return-object v1

    .line 236
    .end local v0    # "userId":I
    .end local v1    # "virtualDevice":Lcom/android/server/companion/virtual/VirtualDeviceImpl;
    .end local v18    # "cameraAccessController":Lcom/android/server/companion/virtual/CameraAccessController;
    :cond_9f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Virtual device for association ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already exists"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v14    # "callingUid":I
    .end local v15    # "associationInfo":Landroid/companion/AssociationInfo;
    .end local p0    # "this":Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "associationId":I
    .end local p4    # "params":Landroid/companion/virtual/VirtualDeviceParams;
    .end local p5    # "activityListener":Landroid/companion/virtual/IVirtualDeviceActivityListener;
    throw v0

    .line 270
    .restart local v14    # "callingUid":I
    .restart local v15    # "associationInfo":Landroid/companion/AssociationInfo;
    .restart local p0    # "this":Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "associationId":I
    .restart local p4    # "params":Landroid/companion/virtual/VirtualDeviceParams;
    .restart local p5    # "activityListener":Landroid/companion/virtual/IVirtualDeviceActivityListener;
    :catchall_be
    move-exception v0

    monitor-exit v16
    :try_end_c0
    .catchall {:try_start_30 .. :try_end_c0} :catchall_be

    throw v0

    .line 232
    :cond_c1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No association with ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    .end local v15    # "associationInfo":Landroid/companion/AssociationInfo;
    :cond_da
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not belong to calling uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/companion/virtual/IVirtualDevice;Ljava/lang/String;)I
    .registers 20
    .param p1, "virtualDisplayConfig"    # Landroid/hardware/display/VirtualDisplayConfig;
    .param p2, "callback"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p3, "virtualDevice"    # Landroid/companion/virtual/IVirtualDevice;
    .param p4, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 277
    move-object v1, p0

    move-object/from16 v8, p4

    invoke-static {}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->getCallingUid()I

    move-result v9

    .line 278
    .local v9, "callingUid":I
    iget-object v0, v1, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/android/server/companion/virtual/PermissionUtils;->validateCallingPackageName(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 284
    iget-object v0, v1, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmVirtualDeviceManagerLock(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 285
    :try_start_1a
    iget-object v0, v1, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmVirtualDevices(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-interface/range {p3 .. p3}, Landroid/companion/virtual/IVirtualDevice;->getAssociationId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    move-object v10, v0

    .line 286
    .local v10, "virtualDeviceImpl":Lcom/android/server/companion/virtual/VirtualDeviceImpl;
    if-eqz v10, :cond_92

    .line 289
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_1a .. :try_end_2e} :catchall_9a

    .line 290
    invoke-virtual {v10}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getOwnerUid()I

    move-result v0

    if-ne v0, v9, :cond_72

    .line 296
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 298
    .local v11, "token":J
    :try_start_38
    invoke-virtual {v10}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->createWindowPolicyController()Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    move-result-object v0
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_6c

    move-object v13, v0

    .line 300
    .local v13, "gwpc":Lcom/android/server/companion/virtual/GenericWindowPolicyController;
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 301
    nop

    .line 303
    iget-object v0, v1, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    const-class v2, Landroid/hardware/display/DisplayManagerInternal;

    # invokes: Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->access$000(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/hardware/display/DisplayManagerInternal;

    .line 305
    .local v14, "displayManager":Landroid/hardware/display/DisplayManagerInternal;
    move-object v2, v14

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v6, v13

    move-object/from16 v7, p4

    invoke-virtual/range {v2 .. v7}, Landroid/hardware/display/DisplayManagerInternal;->createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/companion/virtual/IVirtualDevice;Landroid/window/DisplayWindowPolicyController;Ljava/lang/String;)I

    move-result v2

    .line 308
    .local v2, "displayId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 310
    .local v3, "tokenTwo":J
    :try_start_5e
    invoke-virtual {v10, v13, v2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->onVirtualDisplayCreatedLocked(Lcom/android/server/companion/virtual/GenericWindowPolicyController;I)V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_66

    .line 311
    nop

    .line 313
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 311
    return v2

    .line 313
    :catchall_66
    move-exception v0

    move-object v5, v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 314
    throw v5

    .line 300
    .end local v2    # "displayId":I
    .end local v3    # "tokenTwo":J
    .end local v13    # "gwpc":Lcom/android/server/companion/virtual/GenericWindowPolicyController;
    .end local v14    # "displayManager":Landroid/hardware/display/DisplayManagerInternal;
    :catchall_6c
    move-exception v0

    move-object v2, v0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 301
    throw v2

    .line 291
    .end local v11    # "token":J
    :cond_72
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not the owner of the supplied VirtualDevice"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_92
    :try_start_92
    new-instance v0, Ljava/lang/SecurityException;

    const-string v3, "Invalid VirtualDevice"

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v9    # "callingUid":I
    .end local p0    # "this":Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;
    .end local p1    # "virtualDisplayConfig":Landroid/hardware/display/VirtualDisplayConfig;
    .end local p2    # "callback":Landroid/hardware/display/IVirtualDisplayCallback;
    .end local p3    # "virtualDevice":Landroid/companion/virtual/IVirtualDevice;
    .end local p4    # "packageName":Ljava/lang/String;
    throw v0

    .line 289
    .end local v10    # "virtualDeviceImpl":Lcom/android/server/companion/virtual/VirtualDeviceImpl;
    .restart local v9    # "callingUid":I
    .restart local p0    # "this":Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;
    .restart local p1    # "virtualDisplayConfig":Landroid/hardware/display/VirtualDisplayConfig;
    .restart local p2    # "callback":Landroid/hardware/display/IVirtualDisplayCallback;
    .restart local p3    # "virtualDevice":Landroid/companion/virtual/IVirtualDevice;
    .restart local p4    # "packageName":Ljava/lang/String;
    :catchall_9a
    move-exception v0

    monitor-exit v2
    :try_end_9c
    .catchall {:try_start_92 .. :try_end_9c} :catchall_9a

    throw v0

    .line 279
    :cond_9d
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not belong to calling uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 352
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "VirtualDeviceManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 353
    return-void

    .line 355
    :cond_f
    const-string v0, "Created virtual devices: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmVirtualDeviceManagerLock(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 357
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1c
    :try_start_1c
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {v2}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmVirtualDevices(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3a

    .line 358
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {v2}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmVirtualDevices(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 357
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 360
    .end local v1    # "i":I
    :cond_3a
    monitor-exit v0

    .line 361
    return-void

    .line 360
    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_1c .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 341
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return v0

    .line 342
    :catchall_5
    move-exception v0

    .line 343
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "VirtualDeviceManagerService"

    const-string v2, "Error during IPC"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 344
    const-class v1, Landroid/os/RemoteException;

    invoke-static {v0, v1}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public startWaitingForPendingTrampoline(Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;)V
    .registers 6
    .param p1, "pendingTrampoline"    # Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;

    .line 365
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmPendingTrampolines(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;->mPendingIntent:Landroid/app/PendingIntent;

    .line 366
    invoke-virtual {v1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v1

    .line 365
    invoke-virtual {v0, v1, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;->put(Ljava/lang/String;Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;)Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;

    move-result-object v0

    .line 368
    .local v0, "existing":Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;
    if-eqz v0, :cond_19

    .line 369
    iget-object v1, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;->mResultReceiver:Landroid/os/ResultReceiver;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 372
    :cond_19
    return-void
.end method

.method public stopWaitingForPendingTrampoline(Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;)V
    .registers 4
    .param p1, "pendingTrampoline"    # Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;

    .line 376
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmPendingTrampolines(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;->remove(Ljava/lang/String;)Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;

    .line 377
    return-void
.end method
