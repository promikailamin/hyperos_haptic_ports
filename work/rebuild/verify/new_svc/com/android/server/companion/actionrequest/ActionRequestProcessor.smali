.class public Lcom/android/server/companion/actionrequest/ActionRequestProcessor;
.super Ljava/lang/Object;
.source "ActionRequestProcessor.java"

# interfaces
.implements Lcom/android/server/companion/association/AssociationStore$OnChangeListener;


# static fields
.field public static final STATEFUL_ACTIONS:Ljava/util/Set;


# instance fields
.field public final mActionResultListeners:Ljava/util/List;

.field public final mActiveActionServices:Ljava/util/Map;

.field public final mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

.field public final mCompanionAppBinder:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

.field public final mCompanionTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

.field public final mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;


# direct methods
.method public static synthetic $r8$lambda$IYXzjkQ7xWeGVb--_kSKwGYS2_Y(Ljava/lang/Integer;)Ljava/util/Set;
    .registers 1

    .line 261
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method public static synthetic $r8$lambda$SMkVKceC7CXMueBPawj2-efKgD8(Ljava/lang/Integer;)Ljava/util/Map;
    .registers 1

    .line 260
    new-instance p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object p0
.end method

.method public static synthetic $r8$lambda$U2l_Y1XCBfPvDeFZW4B8LqZ7nV0(Ljava/util/Set;Ljava/lang/Integer;)Z
    .registers 3

    .line 331
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23

    .line 332
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Transport for association "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " detached. Clearing active action requests."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CDM_ActionRequestProcessor"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_23
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$lGLhROCgRixZiQxGuz80tvkZrW0(Ljava/lang/String;Lcom/android/server/companion/actionrequest/ActionRequestProcessor$ActionResultListener;)Z
    .registers 2

    .line 150
    iget-object p1, p1, Lcom/android/server/companion/actionrequest/ActionRequestProcessor$ActionResultListener;->mServiceName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$lJgzr9nd9g5kHPbxllAO0pfBZLs(Ljava/lang/String;Lcom/android/server/companion/actionrequest/ActionRequestProcessor$ActionResultListener;)Z
    .registers 2

    .line 136
    iget-object p1, p1, Lcom/android/server/companion/actionrequest/ActionRequestProcessor$ActionResultListener;->mServiceName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhandleOnTransportsChanged(Lcom/android/server/companion/actionrequest/ActionRequestProcessor;Ljava/util/List;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/actionrequest/ActionRequestProcessor;->handleOnTransportsChanged(Ljava/util/List;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x0

    .line 80
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    .line 82
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 79
    invoke-static {v0, v1, v2}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/server/companion/actionrequest/ActionRequestProcessor;->STATEFUL_ACTIONS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/companion/association/AssociationStore;Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;Lcom/android/server/companion/devicepresence/CompanionAppBinder;Lcom/android/server/companion/transport/CompanionTransportManager;)V
    .registers 6

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/actionrequest/ActionRequestProcessor;->mActiveActionServices:Ljava/util/Map;

    .line 76
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/actionrequest/ActionRequestProcessor;->mActionResultListeners:Ljava/util/List;

    .line 91
    iput-object p1, p0, Lcom/android/server/companion/actionrequest/ActionRequestProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 92
    iput-object p2, p0, Lcom/android/server/companion/actionrequest/ActionRequestProcessor;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 93
    iput-object p3, p0, Lcom/android/server/companion/actionrequest/ActionRequestProcessor;->mCompanionAppBinder:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    .line 94
    iput-object p4, p0, Lcom/android/server/companion/actionrequest/ActionRequestProcessor;->mCompanionTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    .line 95
    invoke-virtual {p1, p0}, Lcom/android/server/companion/association/AssociationStore;->registerLocalListener(Lcom/android/server/companion/association/AssociationStore$OnChangeListener;)V

    .line 97
    new-instance p1, Lcom/android/server/companion/actionrequest/ActionRequestProcessor$1;

    invoke-direct {p1, p0}, Lcom/android/server/companion/actionrequest/ActionRequestProcessor$1;-><init>(Lcom/android/server/companion/actionrequest/ActionRequestProcessor;)V

    invoke-virtual {p4, p1}, Lcom/android/server/companion/transport/CompanionTransportManager;->addListener(Landroid/companion/IOnTransportsChangedListener;)V

    return-void
.end method


# virtual methods
.method public final broadcastActionRequestResult(ILandroid/companion/ActionResult;)V
    .registers 6

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Broadcasting ActionRequestResult to system listeners: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDM_ActionRequestProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object p0, p0, Lcom/android/server/companion/actionrequest/ActionRequestProcessor;->mActionResultListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catch_1c
    :cond_1c
    :goto_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/actionrequest/ActionRequestProcessor$ActionResultListener;

    .line 243
    iget-object v1, v0, Lcom/android/server/companion/actionrequest/ActionRequestProcessor$ActionResultListener;->mAssociationIdFilter:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 245
    :try_start_34
    iget-object v0, v0, Lcom/android/server/companion/actionrequest/ActionRequestProcessor$ActionResultListener;->mListener:Landroid/companion/IOnActionResultListener;

    invoke-interface {v0, p1, p2}, Landroid/companion/IOnActionResultListener;->onActionResult(ILandroid/companion/ActionResult;)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_39} :catch_1c

    goto :goto_1c

    :cond_3a
    return-void
.end method

.method public final getServiceConnectorForAssociation(Landroid/companion/AssociationInfo;)Lcom/android/server/companion/devicepresence/CompanionServiceConnector;
    .registers 5

    .line 302
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v0

    .line 303
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 305
    iget-object v2, p0, Lcom/android/server/companion/actionrequest/ActionRequestProcessor;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 306
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->isSelfManaged()Z

    move-result p1

    .line 305
    invoke-virtual {v2, v0, v1, p1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->bindApplicationIfNeeded(ILjava/lang/String;Z)V

    .line 308
    iget-object p0, p0, Lcom/android/server/companion/actionrequest/ActionRequestProcessor;->mCompanionAppBinder:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    .line 309
    invoke-virtual {p0, v0, v1}, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->getPrimaryServiceConnector(ILjava/lang/String;)Lcom/android/server/companion/devicepresence/CompanionServiceConnector;

    move-result-object p0

    if-nez p0, :cond_35

    .line 312
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Could not get a service connector for "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to post a task."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CDM_ActionRequestProcessor"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :cond_35
    return-object p0
.end method

.method public final handleActionRequest(Landroid/companion/AssociationInfo;Landroid/companion/ActionRequest;Ljava/lang/String;)V
    .registers 11

    .line 255
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result v0

    .line 256
    invoke-virtual {p2}, Landroid/companion/ActionRequest;->getAction()I

    move-result v1

    .line 257
    invoke-virtual {p2}, Landroid/companion/ActionRequest;->getOperation()I

    move-result v2

    .line 259
    iget-object v3, p0, Lcom/android/server/companion/actionrequest/ActionRequestProcessor;->mActiveActionServices:Ljava/util/Map;

    .line 260
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/android/server/companion/actionrequest/ActionRequestProcessor$$ExternalSyntheticLambda4;

    invoke-direct {v5}, Lcom/android/server/companion/actionrequest/ActionRequestProcessor$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 261
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/android/server/companion/actionrequest/ActionRequestProcessor$$ExternalSyntheticLambda5;

    invoke-direct {v5}, Lcom/android/server/companion/actionrequest/ActionRequestProcessor$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 263
    const-string v4, " for association "

    const-string v5, "CDM_ActionRequestProcessor"

    if-eqz v2, :cond_7c

    const/4 v6, 0x1

    if-eq v2, v6, :cond_4a

    .line 284
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unsupported operation: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 275
    :cond_4a
    invoke-interface {v3, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ad

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_ad

    .line 277
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Last service ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "]. Deactivating action="

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v5, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/actionrequest/ActionRequestProcessor;->postActionRequest(Landroid/companion/AssociationInfo;Landroid/companion/ActionRequest;)V

    return-void

    .line 265
    :cond_7c
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    .line 266
    invoke-interface {v3, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    if-eqz v2, :cond_ad

    .line 268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "First service ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "]. Activating action="

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v5, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/actionrequest/ActionRequestProcessor;->postActionRequest(Landroid/companion/AssociationInfo;Landroid/companion/ActionRequest;)V

    :cond_ad
    return-void
.end method

.method public final handleOnTransportsChanged(Ljava/util/List;)V
    .registers 3

    .line 324
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/server/companion/actionrequest/ActionRequestProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/companion/actionrequest/ActionRequestProcessor$$ExternalSyntheticLambda0;-><init>()V

    .line 325
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 326
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 330
    iget-object p0, p0, Lcom/android/server/companion/actionrequest/ActionRequestProcessor;->mActiveActionServices:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    new-instance v0, Lcom/android/server/companion/actionrequest/ActionRequestProcessor$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/companion/actionrequest/ActionRequestProcessor$$ExternalSyntheticLambda1;-><init>(Ljava/util/Set;)V

    invoke-interface {p0, v0}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public onAssociationRemoved(Landroid/companion/AssociationInfo;)V
    .registers 4

    .line 111
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result p1

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Association "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " was removed. Cleaning up active action services cache."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDM_ActionRequestProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/android/server/companion/actionrequest/ActionRequestProcessor;->mActiveActionServices:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object p0, p0, Lcom/android/server/companion/actionrequest/ActionRequestProcessor;->mActionResultListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/actionrequest/ActionRequestProcessor$ActionResultListener;

    .line 117
    iget-object v0, v0, Lcom/android/server/companion/actionrequest/ActionRequestProcessor$ActionResultListener;->mAssociationIdFilter:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2e

    :cond_44
    return-void
.end method

.method public final postActionRequest(Landroid/companion/AssociationInfo;Landroid/companion/ActionRequest;)V
    .registers 3

    .line 293
    invoke-virtual {p0, p1}, Lcom/android/server/companion/actionrequest/ActionRequestProcessor;->getServiceConnectorForAssociation(Landroid/companion/AssociationInfo;)Lcom/android/server/companion/devicepresence/CompanionServiceConnector;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 295
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->postOnActionRequested(Landroid/companion/AssociationInfo;Landroid/companion/ActionRequest;)V

    :cond_9
    return-void
.end method

.method public processActionResult(ILandroid/companion/ActionResult;)V
    .registers 5

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Processing action result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDM_ActionRequestProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/android/server/companion/actionrequest/ActionRequestProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v0, p1}, Lcom/android/server/companion/association/AssociationStore;->getAssociationById(I)Landroid/companion/AssociationInfo;

    move-result-object v0

    if-nez v0, :cond_33

    .line 191
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Action result for non-existent association "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 194
    :cond_33
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->isSelfManaged()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 200
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/actionrequest/ActionRequestProcessor;->broadcastActionRequestResult(ILandroid/companion/ActionResult;)V

    return-void

    .line 195
    :cond_3d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Association id=["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] is not self-managed. Cannot report action results."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeOnActionResultListener(Ljava/lang/String;)V
    .registers 4

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing action result listener for service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDM_ActionRequestProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object p0, p0, Lcom/android/server/companion/actionrequest/ActionRequestProcessor;->mActionResultListeners:Ljava/util/List;

    new-instance v0, Lcom/android/server/companion/actionrequest/ActionRequestProcessor$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/android/server/companion/actionrequest/ActionRequestProcessor$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public requestAction(Landroid/companion/ActionRequest;Ljava/lang/String;[I)V
    .registers 10

    .line 159
    const-string/jumbo v0, "request cannot be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 160
    const-string/jumbo v0, "serviceName cannot be null."

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 161
    const-string v0, "associationIds cannot be null."

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 163
    invoke-virtual {p1}, Landroid/companion/ActionRequest;->getAction()I

    move-result v0

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestAction() from service=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] for ActionRequest=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "] on associations="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 165
    const-string v2, "CDM_ActionRequestProcessor"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    sget-object v1, Lcom/android/server/companion/actionrequest/ActionRequestProcessor;->STATEFUL_ACTIONS:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_66

    .line 169
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Action "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not a supported action."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 172
    :cond_66
    array-length v0, p3

    const/4 v1, 0x0

    :goto_68
    if-ge v1, v0, :cond_8f

    aget v3, p3, v1

    .line 173
    iget-object v4, p0, Lcom/android/server/companion/actionrequest/ActionRequestProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v4, v3}, Lcom/android/server/companion/association/AssociationStore;->getAssociationById(I)Landroid/companion/AssociationInfo;

    move-result-object v4

    if-nez v4, :cond_89

    .line 175
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping requestAction for non-existent association "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8c

    .line 179
    :cond_89
    invoke-virtual {p0, v4, p1, p2}, Lcom/android/server/companion/actionrequest/ActionRequestProcessor;->handleActionRequest(Landroid/companion/AssociationInfo;Landroid/companion/ActionRequest;Ljava/lang/String;)V

    :goto_8c
    add-int/lit8 v1, v1, 0x1

    goto :goto_68

    :cond_8f
    return-void
.end method

.method public setOnActionResultListener([ILjava/lang/String;Landroid/companion/IOnActionResultListener;)V
    .registers 7

    .line 126
    array-length v0, p1

    if-eqz v0, :cond_56

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding action result listener for service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDM_ActionRequestProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    new-instance v0, Ljava/util/HashSet;

    .line 133
    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 135
    iget-object p1, p0, Lcom/android/server/companion/actionrequest/ActionRequestProcessor;->mActionResultListeners:Ljava/util/List;

    new-instance v2, Lcom/android/server/companion/actionrequest/ActionRequestProcessor$$ExternalSyntheticLambda2;

    invoke-direct {v2, p2}, Lcom/android/server/companion/actionrequest/ActionRequestProcessor$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_4b

    .line 138
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removed previous listener for service: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_4b
    iget-object p0, p0, Lcom/android/server/companion/actionrequest/ActionRequestProcessor;->mActionResultListeners:Ljava/util/List;

    new-instance p1, Lcom/android/server/companion/actionrequest/ActionRequestProcessor$ActionResultListener;

    invoke-direct {p1, p2, p3, v0}, Lcom/android/server/companion/actionrequest/ActionRequestProcessor$ActionResultListener;-><init>(Ljava/lang/String;Landroid/companion/IOnActionResultListener;Ljava/util/Set;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 127
    :cond_56
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "associationIds must be a non-empty array."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
