.class public Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;
.super Landroid/companion/IOnTransportsChangedListener$Stub;
.source "CrossDeviceSyncController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;)V
    .registers 2

    .line 104
    iput-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    invoke-direct {p0}, Landroid/companion/IOnTransportsChangedListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransportsChanged(Ljava/util/List;)V
    .registers 14

    .line 107
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 109
    :try_start_4
    const-string v2, "enable_context_sync_telecom"

    invoke-static {v2}, Lcom/android/server/companion/CompanionDeviceConfig;->isEnabled(Ljava/lang/String;)Z

    move-result v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_19d

    if-nez v2, :cond_10

    .line 114
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_10
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    invoke-static {v1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->-$$Nest$fgetmConnectedAssociations(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 118
    iget-object v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    invoke-static {v1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->-$$Nest$fgetmConnectedAssociations(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 119
    iget-object v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    invoke-static {v1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->-$$Nest$fgetmConnectedAssociations(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 120
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_34
    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "CrossDeviceSyncController"

    if-eqz v2, :cond_9d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/AssociationInfo;

    .line 121
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_34

    .line 123
    invoke-static {v2}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->-$$Nest$smisAssociationBlocked(Landroid/companion/AssociationInfo;)Z

    move-result v6

    if-nez v6, :cond_86

    .line 125
    iget-object v6, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    invoke-static {v6}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->-$$Nest$fgetmInCallServiceCallbackRef(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;)Ljava/lang/ref/WeakReference;

    move-result-object v6

    if-eqz v6, :cond_64

    .line 126
    iget-object v4, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    invoke-static {v4}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->-$$Nest$fgetmInCallServiceCallbackRef(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;

    :cond_64
    if-eqz v4, :cond_71

    .line 129
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v5

    .line 128
    invoke-virtual {v4, v5, v3}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;->updateNumberOfActiveSyncAssociations(IZ)V

    .line 130
    invoke-virtual {v4, v2}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;->requestCrossDeviceSync(Landroid/companion/AssociationInfo;)V

    goto :goto_34

    .line 132
    :cond_71
    const-string v3, "No callback to report new transport"

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v3, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getId()I

    move-result v2

    iget-object v4, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 134
    invoke-static {v4}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->-$$Nest$mcreateFacilitatorMessage(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;)[B

    move-result-object v4

    .line 133
    invoke-virtual {v3, v2, v4}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->syncMessageToDevice(I[B)V

    goto :goto_34

    .line 137
    :cond_86
    iget-object v3, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    invoke-static {v3}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->-$$Nest$fgetmBlocklist(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    const-string v2, "New association was blocked from context syncing"

    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 142
    :cond_9d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v6, v2

    :cond_a3
    :goto_a3
    if-ge v6, v1, :cond_19c

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Landroid/companion/AssociationInfo;

    .line 143
    invoke-interface {p1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_ff

    .line 145
    iget-object v8, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    invoke-static {v8}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->-$$Nest$fgetmBlocklist(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;)Ljava/util/Set;

    move-result-object v8

    invoke-virtual {v7}, Landroid/companion/AssociationInfo;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 146
    iget-object v8, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    invoke-virtual {v7}, Landroid/companion/AssociationInfo;->getId()I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->-$$Nest$misAssociationBlockedLocal(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;I)Z

    move-result v8

    if-nez v8, :cond_f5

    .line 148
    iget-object v8, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    invoke-static {v8}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->-$$Nest$fgetmInCallServiceCallbackRef(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;)Ljava/lang/ref/WeakReference;

    move-result-object v8

    if-eqz v8, :cond_e5

    .line 149
    iget-object v8, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    invoke-static {v8}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->-$$Nest$fgetmInCallServiceCallbackRef(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;)Ljava/lang/ref/WeakReference;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;

    goto :goto_e6

    :cond_e5
    move-object v8, v4

    :goto_e6
    if-eqz v8, :cond_f0

    .line 152
    invoke-virtual {v7}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v9

    .line 151
    invoke-virtual {v8, v9, v2}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;->updateNumberOfActiveSyncAssociations(IZ)V

    goto :goto_f5

    .line 154
    :cond_f0
    const-string v8, "No callback to report removed transport"

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_f5
    :goto_f5
    iget-object v8, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    invoke-virtual {v7}, Landroid/companion/AssociationInfo;->getId()I

    move-result v7

    invoke-static {v8, v7}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->-$$Nest$mclearInProgressCalls(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;I)V

    goto :goto_a3

    .line 160
    :cond_ff
    invoke-static {v7}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->-$$Nest$smisAssociationBlocked(Landroid/companion/AssociationInfo;)Z

    move-result v8

    .line 161
    iget-object v9, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    invoke-virtual {v7}, Landroid/companion/AssociationInfo;->getId()I

    move-result v10

    invoke-static {v9, v10}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->-$$Nest$misAssociationBlockedLocal(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;I)Z

    move-result v9

    if-eq v9, v8, :cond_a3

    .line 164
    iget-object v9, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    invoke-static {v9}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->-$$Nest$fgetmInCallServiceCallbackRef(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;)Ljava/lang/ref/WeakReference;

    move-result-object v9

    if-eqz v9, :cond_124

    .line 165
    iget-object v9, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    invoke-static {v9}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->-$$Nest$fgetmInCallServiceCallbackRef(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;)Ljava/lang/ref/WeakReference;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;

    goto :goto_125

    :cond_124
    move-object v9, v4

    .line 166
    :goto_125
    const-string v10, "No callback to report changed transport"

    if-nez v8, :cond_161

    .line 167
    const-string v8, "Unblocking existing association for context sync"

    invoke-static {v5, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v8, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    invoke-static {v8}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->-$$Nest$fgetmBlocklist(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;)Ljava/util/Set;

    move-result-object v8

    invoke-virtual {v7}, Landroid/companion/AssociationInfo;->getId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    if-eqz v9, :cond_14d

    .line 171
    invoke-virtual {v7}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v8

    .line 170
    invoke-virtual {v9, v8, v3}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;->updateNumberOfActiveSyncAssociations(IZ)V

    .line 172
    invoke-virtual {v9, v7}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;->requestCrossDeviceSync(Landroid/companion/AssociationInfo;)V

    goto/16 :goto_a3

    .line 174
    :cond_14d
    invoke-static {v5, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v8, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    invoke-virtual {v7}, Landroid/companion/AssociationInfo;->getId()I

    move-result v7

    iget-object v9, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    .line 176
    invoke-static {v9}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->-$$Nest$mcreateFacilitatorMessage(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;)[B

    move-result-object v9

    .line 175
    invoke-virtual {v8, v7, v9}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->syncMessageToDevice(I[B)V

    goto/16 :goto_a3

    .line 179
    :cond_161
    const-string v8, "Blocking existing association for context sync"

    invoke-static {v5, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v8, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    invoke-static {v8}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->-$$Nest$fgetmBlocklist(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;)Ljava/util/Set;

    move-result-object v8

    invoke-virtual {v7}, Landroid/companion/AssociationInfo;->getId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz v9, :cond_181

    .line 183
    invoke-virtual {v7}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v8

    .line 182
    invoke-virtual {v9, v8, v2}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;->updateNumberOfActiveSyncAssociations(IZ)V

    goto :goto_184

    .line 185
    :cond_181
    invoke-static {v5, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :goto_184
    iget-object v8, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    invoke-virtual {v7}, Landroid/companion/AssociationInfo;->getId()I

    move-result v9

    .line 190
    invoke-static {}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->createEmptyMessage()[B

    move-result-object v10

    .line 189
    invoke-virtual {v8, v9, v10}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->syncMessageToDevice(I[B)V

    .line 191
    iget-object v8, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    invoke-virtual {v7}, Landroid/companion/AssociationInfo;->getId()I

    move-result v7

    invoke-static {v8, v7}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->-$$Nest$mclearInProgressCalls(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;I)V

    goto/16 :goto_a3

    :cond_19c
    return-void

    :catchall_19d
    move-exception p0

    .line 114
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 115
    throw p0
.end method
