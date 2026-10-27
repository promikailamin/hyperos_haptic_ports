.class public Lcom/android/server/wm/WindowContextListenerController;
.super Ljava/lang/Object;
.source "WindowContextListenerController.java"


# instance fields
.field final mListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$24jGmfG5tVE-803xzg0rSQqjJ2I(ILcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)V
    .registers 3

    .line 143
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->getDisplayId()I

    move-result v0

    if-ne v0, p0, :cond_f

    invoke-static {p1}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$fgetmHasPendingConfiguration(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)Z

    move-result p0

    if-eqz p0, :cond_f

    .line 144
    invoke-static {p1}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$mdispatchWindowContextInfoChange(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)V

    :cond_f
    return-void
.end method

.method public static synthetic $r8$lambda$CbYVlFh3xoAzxYqRgUPsvMddRAA(ILcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)V
    .registers 3

    .line 156
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->getDisplayId()I

    move-result v0

    if-ne v0, p0, :cond_9

    .line 157
    invoke-static {p1}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$mhandleDisplayRemoved(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)V

    :cond_9
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public assertCallerCanModifyListener(Landroid/os/IBinder;ZI)Z
    .registers 5

    .line 174
    iget-object p0, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    if-nez p0, :cond_1e

    .line 176
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    const/4 p1, 0x2

    aget-boolean p0, p0, p1

    const/4 p1, 0x0

    if-eqz p0, :cond_1d

    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide p2, 0x1e07d3211d823694L    # 5.171544319701256E-164

    const/4 v0, 0x0

    invoke-static {p0, p2, p3, p1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_1d
    return p1

    :cond_1e
    const/4 p1, 0x1

    if-eqz p2, :cond_22

    return p1

    .line 182
    :cond_22
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->getUid()I

    move-result p2

    if-ne p3, p2, :cond_29

    return p1

    .line 183
    :cond_29
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Uid mismatch. Caller uid is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", while the listener\'s owner is from "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->getUid()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public assertCallerCanReparentListener(Landroid/os/IBinder;ZII)Z
    .registers 5

    .line 191
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContextListenerController;->assertCallerCanModifyListener(Landroid/os/IBinder;ZI)Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_8

    return p3

    .line 195
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContextListenerController;->getContainer(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    if-eqz p0, :cond_2f

    .line 196
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    if-eqz p1, :cond_2f

    .line 197
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne p0, p4, :cond_2f

    .line 198
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    const/4 p1, 0x2

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_2e

    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide p1, 0x30ae9add50a6314cL    # 3.3831605265370928E-74

    const/4 p4, 0x0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_2e
    return p3

    :cond_2f
    const/4 p0, 0x1

    return p0
.end method

.method public dispatchDisplayRemoval(I)V
    .registers 3

    .line 155
    new-instance v0, Lcom/android/server/wm/WindowContextListenerController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/wm/WindowContextListenerController$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContextListenerController;->forAllListeners(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public dispatchPendingConfigurationIfNeeded(I)V
    .registers 3

    .line 142
    new-instance v0, Lcom/android/server/wm/WindowContextListenerController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/wm/WindowContextListenerController$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContextListenerController;->forAllListeners(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final forAllListeners(Ljava/util/function/Consumer;)V
    .registers 4

    .line 163
    iget-object v0, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 164
    iget-object v1, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method public getContainer(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;
    .registers 2

    .line 237
    iget-object p0, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    if-eqz p0, :cond_f

    .line 238
    invoke-static {p0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$fgetmContainer(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public getOptions(Landroid/os/IBinder;)Landroid/os/Bundle;
    .registers 2

    .line 232
    iget-object p0, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    if-eqz p0, :cond_f

    .line 233
    invoke-static {p0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$fgetmOptions(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWindowType(Landroid/os/IBinder;)I
    .registers 2

    .line 227
    iget-object p0, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    if-eqz p0, :cond_f

    .line 228
    invoke-static {p0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$fgetmType(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)I

    move-result p0

    return p0

    :cond_f
    const/4 p0, -0x1

    return p0
.end method

.method public hasListener(Landroid/os/IBinder;)Z
    .registers 2

    .line 223
    iget-object p0, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public registerWindowContainerListener(Lcom/android/server/wm/WindowProcessController;Landroid/os/IBinder;Lcom/android/server/wm/WindowContainer;IZLandroid/os/Bundle;)V
    .registers 15

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 79
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/WindowContextListenerController;->registerWindowContainerListener(Lcom/android/server/wm/WindowProcessController;Landroid/os/IBinder;Lcom/android/server/wm/WindowContainer;IZLandroid/os/Bundle;Z)V

    return-void
.end method

.method public registerWindowContainerListener(Lcom/android/server/wm/WindowProcessController;Landroid/os/IBinder;Lcom/android/server/wm/WindowContainer;IZLandroid/os/Bundle;Z)V
    .registers 17

    .line 105
    iget-object v0, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    if-nez v0, :cond_1e

    .line 107
    new-instance v0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;-><init>(Lcom/android/server/wm/WindowContextListenerController;Lcom/android/server/wm/WindowProcessController;Landroid/os/IBinder;Lcom/android/server/wm/WindowContainer;IZLandroid/os/Bundle;Lcom/android/server/wm/WindowContextListenerController-IA;)V

    move-object v1, v0

    move/from16 v0, p7

    .line 109
    invoke-static {v1, v0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$mregister(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;Z)V

    return-void

    .line 111
    :cond_1e
    invoke-virtual {p0, p2, p3}, Lcom/android/server/wm/WindowContextListenerController;->updateContainerForWindowContextListener(Landroid/os/IBinder;Lcom/android/server/wm/WindowContainer;)V

    return-void
.end method

.method public reparentToDisplayArea(Landroid/os/IBinder;Lcom/android/server/wm/DisplayContent;)Z
    .registers 5

    .line 213
    iget-object p0, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    if-nez p0, :cond_1e

    .line 215
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    const/4 p1, 0x2

    aget-boolean p0, p0, p1

    const/4 p1, 0x0

    if-eqz p0, :cond_1d

    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v0, 0x1e07d3211d823694L    # 5.171544319701256E-164

    const/4 p2, 0x0

    invoke-static {p0, v0, v1, p1, p2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_1d
    return p1

    .line 218
    :cond_1e
    invoke-static {p0, p2}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$mreparentToDisplayArea(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;Lcom/android/server/wm/DisplayContent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WindowContextListenerController{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 244
    const-string v1, "mListeners=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    iget-object v1, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v1, :cond_2e

    .line 248
    iget-object v3, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, -0x1

    if-eq v2, v3, :cond_2b

    .line 250
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 253
    :cond_2e
    const-string p0, "]}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unregisterWindowContainerListener(Landroid/os/IBinder;)V
    .registers 2

    .line 128
    iget-object p0, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    if-nez p0, :cond_b

    goto :goto_1b

    .line 135
    :cond_b
    invoke-static {p0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$munregister(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)V

    .line 136
    invoke-static {p0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$fgetmDeathRecipient(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 137
    invoke-static {p0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$fgetmDeathRecipient(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;->unlinkToDeath()V

    :cond_1b
    :goto_1b
    return-void
.end method

.method public updateContainerForWindowContextListener(Landroid/os/IBinder;Lcom/android/server/wm/WindowContainer;)V
    .registers 4

    .line 120
    iget-object p0, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    if-eqz p0, :cond_e

    .line 124
    invoke-static {p0, p2}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$mupdateContainer(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;Lcom/android/server/wm/WindowContainer;)V

    return-void

    .line 122
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t find listener for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
