.class Lcom/android/server/wm/WindowContextListenerController;
.super Ljava/lang/Object;
.source "WindowContextListenerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;
    }
.end annotation


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
.method constructor <init>()V
    .registers 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method assertCallerCanModifyListener(Landroid/os/IBinder;ZI)Z
    .registers 10
    .param p1, "clientToken"    # Landroid/os/IBinder;
    .param p2, "callerCanManageAppTokens"    # Z
    .param p3, "callingUid"    # I

    .line 140
    iget-object v0, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    .line 141
    .local v0, "listener":Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;
    if-nez v0, :cond_1c

    .line 142
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1b

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0x43bd1e81

    const/4 v4, 0x0

    move-object v5, v4

    check-cast v5, [Ljava/lang/Object;

    invoke-static {v1, v3, v2, v4, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 143
    :cond_1b
    return v2

    .line 145
    :cond_1c
    const/4 v1, 0x1

    if-eqz p2, :cond_20

    .line 146
    return v1

    .line 148
    :cond_20
    invoke-static {v0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$fgetmOwnerUid(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)I

    move-result v2

    if-ne p3, v2, :cond_27

    .line 152
    return v1

    .line 149
    :cond_27
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uid mismatch. Caller uid is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", while the listener\'s owner is from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$fgetmOwnerUid(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method dispatchPendingConfigurationIfNeeded(I)V
    .registers 5
    .param p1, "displayId"    # I

    .line 125
    iget-object v0, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_2c

    .line 126
    iget-object v1, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    .line 127
    .local v1, "listener":Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->getWindowContainer()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    if-ne v2, p1, :cond_29

    invoke-static {v1}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$fgetmHasPendingConfiguration(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 129
    invoke-static {v1}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$mreportConfigToWindowTokenClient(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)V

    .line 125
    .end local v1    # "listener":Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;
    :cond_29
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 132
    .end local v0    # "i":I
    :cond_2c
    return-void
.end method

.method getContainer(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;
    .registers 4
    .param p1, "clientToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    .line 171
    .local v0, "listener":Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;
    if-eqz v0, :cond_f

    invoke-static {v0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$fgetmContainer(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return-object v1
.end method

.method getOptions(Landroid/os/IBinder;)Landroid/os/Bundle;
    .registers 4
    .param p1, "clientToken"    # Landroid/os/IBinder;

    .line 165
    iget-object v0, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    .line 166
    .local v0, "listener":Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;
    if-eqz v0, :cond_f

    invoke-static {v0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$fgetmOptions(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return-object v1
.end method

.method getWindowType(Landroid/os/IBinder;)I
    .registers 4
    .param p1, "clientToken"    # Landroid/os/IBinder;

    .line 160
    iget-object v0, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    .line 161
    .local v0, "listener":Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;
    if-eqz v0, :cond_f

    invoke-static {v0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$fgetmType(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)I

    move-result v1

    goto :goto_10

    :cond_f
    const/4 v1, -0x1

    :goto_10
    return v1
.end method

.method hasListener(Landroid/os/IBinder;)Z
    .registers 3
    .param p1, "clientToken"    # Landroid/os/IBinder;

    .line 156
    iget-object v0, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method registerWindowContainerListener(Landroid/os/IBinder;Lcom/android/server/wm/WindowContainer;IILandroid/os/Bundle;)V
    .registers 13
    .param p1, "clientToken"    # Landroid/os/IBinder;
    .param p3, "ownerUid"    # I
    .param p4, "type"    # I
    .param p5, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;II",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 77
    .local p2, "container":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/WindowContextListenerController;->registerWindowContainerListener(Landroid/os/IBinder;Lcom/android/server/wm/WindowContainer;IILandroid/os/Bundle;Z)V

    .line 79
    return-void
.end method

.method registerWindowContainerListener(Landroid/os/IBinder;Lcom/android/server/wm/WindowContainer;IILandroid/os/Bundle;Z)V
    .registers 19
    .param p1, "clientToken"    # Landroid/os/IBinder;
    .param p3, "ownerUid"    # I
    .param p4, "type"    # I
    .param p5, "options"    # Landroid/os/Bundle;
    .param p6, "shouDispatchConfigWhenRegistering"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;II",
            "Landroid/os/Bundle;",
            "Z)V"
        }
    .end annotation

    .line 100
    .local p2, "container":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    move-object v8, p0

    iget-object v0, v8, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    move-object v9, p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    .line 101
    .local v10, "listener":Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;
    if-nez v10, :cond_24

    .line 102
    new-instance v11, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    const/4 v7, 0x0

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;-><init>(Lcom/android/server/wm/WindowContextListenerController;Landroid/os/IBinder;Lcom/android/server/wm/WindowContainer;IILandroid/os/Bundle;Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl-IA;)V

    move-object v10, v11

    .line 104
    move/from16 v0, p6

    invoke-static {v10, v0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$mregister(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;Z)V

    move-object v1, p2

    goto :goto_2a

    .line 106
    :cond_24
    move/from16 v0, p6

    move-object v1, p2

    invoke-static {v10, p2}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$mupdateContainer(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;Lcom/android/server/wm/WindowContainer;)V

    .line 108
    :goto_2a
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WindowContextListenerController{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "mListeners=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    iget-object v1, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    .line 180
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    if-ge v2, v1, :cond_2e

    .line 181
    iget-object v3, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 182
    add-int/lit8 v3, v1, -0x1

    if-eq v2, v3, :cond_2b

    .line 183
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 186
    .end local v2    # "i":I
    :cond_2e
    const-string v2, "]}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method unregisterWindowContainerListener(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "clientToken"    # Landroid/os/IBinder;

    .line 111
    iget-object v0, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    .line 115
    .local v0, "listener":Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;
    if-nez v0, :cond_b

    .line 116
    return-void

    .line 118
    :cond_b
    invoke-static {v0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$munregister(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)V

    .line 119
    invoke-static {v0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$fgetmDeathRecipient(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 120
    invoke-static {v0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$fgetmDeathRecipient(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;->unlinkToDeath()V

    .line 122
    :cond_1b
    return-void
.end method
