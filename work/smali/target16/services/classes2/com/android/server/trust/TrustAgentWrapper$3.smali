.class public Lcom/android/server/trust/TrustAgentWrapper$3;
.super Landroid/os/Handler;
.source "TrustAgentWrapper.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/trust/TrustAgentWrapper;


# direct methods
.method public static synthetic $r8$lambda$HDqz9V2YUFxU5k82UDiihJxnkw8(Lcom/android/server/trust/TrustAgentWrapper$3;Landroid/service/trust/GrantTrustResult;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustAgentWrapper$3;->lambda$handleMessage$0(Landroid/service/trust/GrantTrustResult;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/trust/TrustAgentWrapper;)V
    .registers 2

    .line 143
    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 146
    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    const-string v4, "escrow_token"

    const-string v5, "handle"

    const/4 v6, 0x0

    const-string/jumbo v7, "user_id"

    const/4 v8, 0x1

    const-string v9, "TrustAgentWrapper"

    const/4 v10, 0x0

    packed-switch v2, :pswitch_data_3ea

    goto/16 :goto_205

    .line 309
    :pswitch_18
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0, v10}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fputmTrusted(Lcom/android/server/trust/TrustAgentWrapper;Z)V

    .line 310
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0, v10}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fputmTrustable(Lcom/android/server/trust/TrustAgentWrapper;Z)V

    .line 311
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmTrustManagerService(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v2}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmUserId(Lcom/android/server/trust/TrustAgentWrapper;)I

    move-result v2

    invoke-virtual {v0, v2, v10}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    .line 312
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmTrustManagerService(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    iget-object v2, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v2}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmUserId(Lcom/android/server/trust/TrustAgentWrapper;)I

    move-result v2

    iget-object v3, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v3}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmName(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/server/trust/TrustArchive;->logUserLocked(ILandroid/content/ComponentName;)V

    .line 313
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmTrustManagerService(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v0

    iget-object v1, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmUserId(Lcom/android/server/trust/TrustAgentWrapper;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/trust/TrustManagerService;->lockUser(I)V

    return-void

    .line 304
    :pswitch_58
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "message"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 305
    iget-object v1, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmTrustManagerService(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/trust/TrustManagerService;->showKeyguardErrorMessage(Ljava/lang/CharSequence;)V

    return-void

    .line 297
    :pswitch_6d
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 298
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 299
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 300
    iget-object v1, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmTrustManagerService(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v1

    invoke-virtual {v1, v2, v3, v0, v5}, Lcom/android/server/trust/TrustManagerService;->unlockUserWithToken(J[BI)V

    return-void

    .line 269
    :pswitch_8f
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 270
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 271
    iget-object v4, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v4}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmTrustManagerService(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v0}, Lcom/android/server/trust/TrustManagerService;->isEscrowTokenActive(JI)Z

    move-result v0

    .line 273
    :try_start_a9
    iget-object v4, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v4}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmTrustAgentService(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/service/trust/ITrustAgentService;

    move-result-object v4

    if-eqz v4, :cond_205

    .line 274
    iget-object v4, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v4}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmTrustAgentService(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/service/trust/ITrustAgentService;

    move-result-object v4

    invoke-interface {v4, v2, v3, v0}, Landroid/service/trust/ITrustAgentService;->onTokenStateReceived(JI)V
    :try_end_ba
    .catch Landroid/os/RemoteException; {:try_start_a9 .. :try_end_ba} :catch_bb

    return-void

    :catch_bb
    move-exception v0

    .line 279
    iget-object v1, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v1, v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$monError(Lcom/android/server/trust/TrustAgentWrapper;Ljava/lang/Exception;)V

    goto/16 :goto_205

    .line 284
    :pswitch_c3
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 285
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 286
    iget-object v4, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v4}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmTrustManagerService(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v0}, Lcom/android/server/trust/TrustManagerService;->removeEscrowToken(JI)Z

    move-result v0

    .line 288
    :try_start_dd
    iget-object v4, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v4}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmTrustAgentService(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/service/trust/ITrustAgentService;

    move-result-object v4

    if-eqz v4, :cond_205

    .line 289
    iget-object v4, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v4}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmTrustAgentService(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/service/trust/ITrustAgentService;

    move-result-object v4

    invoke-interface {v4, v2, v3, v0}, Landroid/service/trust/ITrustAgentService;->onEscrowTokenRemoved(JZ)V
    :try_end_ee
    .catch Landroid/os/RemoteException; {:try_start_dd .. :try_end_ee} :catch_ef

    return-void

    :catch_ef
    move-exception v0

    .line 292
    iget-object v1, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v1, v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$monError(Lcom/android/server/trust/TrustAgentWrapper;Ljava/lang/Exception;)V

    goto/16 :goto_205

    .line 249
    :pswitch_f7
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 250
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 251
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmTrustManagerService(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/trust/TrustManagerService;->addEscrowToken([BI)J

    move-result-wide v4

    .line 254
    :try_start_111
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmTrustAgentService(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/service/trust/ITrustAgentService;

    move-result-object v0

    if-eqz v0, :cond_12d

    .line 255
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmTrustAgentService(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/service/trust/ITrustAgentService;

    move-result-object v0

    .line 256
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    .line 255
    invoke-interface {v0, v2, v4, v5, v6}, Landroid/service/trust/ITrustAgentService;->onEscrowTokenAdded([BJLandroid/os/UserHandle;)V
    :try_end_126
    .catch Landroid/os/RemoteException; {:try_start_111 .. :try_end_126} :catch_127

    return-void

    :catch_127
    move-exception v0

    .line 260
    iget-object v2, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v2, v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$monError(Lcom/android/server/trust/TrustAgentWrapper;Ljava/lang/Exception;)V

    .line 264
    :cond_12d
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmTrustManagerService(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v0

    invoke-virtual {v0, v4, v5, v3}, Lcom/android/server/trust/TrustManagerService;->removeEscrowToken(JI)Z

    goto/16 :goto_205

    .line 239
    :pswitch_138
    iget-object v2, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    iget v0, v0, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_13f

    goto :goto_140

    :cond_13f
    move v8, v10

    :goto_140
    invoke-static {v2, v8}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fputmManagingTrust(Lcom/android/server/trust/TrustAgentWrapper;Z)V

    .line 240
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmManagingTrust(Lcom/android/server/trust/TrustAgentWrapper;)Z

    move-result v0

    if-nez v0, :cond_15a

    .line 241
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0, v10}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fputmTrusted(Lcom/android/server/trust/TrustAgentWrapper;Z)V

    .line 242
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0, v10}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fputmDisplayTrustGrantedMessage(Lcom/android/server/trust/TrustAgentWrapper;Z)V

    .line 243
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0, v6}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fputmMessage(Lcom/android/server/trust/TrustAgentWrapper;Ljava/lang/CharSequence;)V

    .line 245
    :cond_15a
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmTrustManagerService(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    iget-object v2, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v2}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmUserId(Lcom/android/server/trust/TrustAgentWrapper;)I

    move-result v2

    iget-object v3, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v3}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmName(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v4}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmManagingTrust(Lcom/android/server/trust/TrustAgentWrapper;)Z

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/trust/TrustArchive;->logManagingTrust(ILandroid/content/ComponentName;Z)V

    .line 246
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmTrustManagerService(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v0

    iget-object v1, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmUserId(Lcom/android/server/trust/TrustAgentWrapper;)I

    move-result v1

    invoke-virtual {v0, v1, v10}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    return-void

    .line 223
    :pswitch_187
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    .line 224
    iget v0, v0, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_190

    goto :goto_191

    :cond_190
    move v8, v10

    .line 225
    :goto_191
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmSetTrustAgentFeaturesToken(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, v2, :cond_1e1

    .line 226
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0, v6}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fputmSetTrustAgentFeaturesToken(Lcom/android/server/trust/TrustAgentWrapper;Landroid/os/IBinder;)V

    .line 227
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmTrustDisabledByDpm(Lcom/android/server/trust/TrustAgentWrapper;)Z

    move-result v0

    if-eqz v0, :cond_205

    if-eqz v8, :cond_205

    .line 228
    invoke-static {}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_1cc

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Re-enabling agent because it acknowledged enabled features: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v2}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmName(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;

    move-result-object v2

    .line 229
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_1cc
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0, v10}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fputmTrustDisabledByDpm(Lcom/android/server/trust/TrustAgentWrapper;Z)V

    .line 231
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmTrustManagerService(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v0

    iget-object v1, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmUserId(Lcom/android/server/trust/TrustAgentWrapper;)I

    move-result v1

    invoke-virtual {v0, v1, v10}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    return-void

    .line 234
    :cond_1e1
    invoke-static {}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_205

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring MSG_SET_TRUST_AGENT_FEATURES_COMPLETED with obsolete token: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmName(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;

    move-result-object v1

    .line 235
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 234
    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_205
    :goto_205
    return-void

    .line 217
    :pswitch_206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection attempt to agent "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v2}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmName(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " timed out, rebinding"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v0}, Lcom/android/server/trust/TrustAgentWrapper;->destroy()V

    .line 220
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmTrustManagerService(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v2}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmName(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;

    move-result-object v2

    iget-object v1, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmUserId(Lcom/android/server/trust/TrustAgentWrapper;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/android/server/trust/TrustManagerService;->resetAgent(Landroid/content/ComponentName;I)V

    return-void

    .line 200
    :pswitch_244
    invoke-static {}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$sfgetDEBUG()Z

    move-result v2

    if-eqz v2, :cond_268

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trust timed out : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v4}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmName(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_268
    iget-object v2, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v2}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmTrustManagerService(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    iget-object v4, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v4}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmUserId(Lcom/android/server/trust/TrustAgentWrapper;)I

    move-result v4

    iget-object v5, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v5}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmName(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/server/trust/TrustArchive;->logTrustTimeout(ILandroid/content/ComponentName;)V

    .line 202
    iget-object v2, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v2}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$monTrustTimeout(Lcom/android/server/trust/TrustAgentWrapper;)V

    .line 205
    :pswitch_284
    iget-object v2, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v2, v10}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fputmTrusted(Lcom/android/server/trust/TrustAgentWrapper;Z)V

    .line 206
    iget-object v2, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v2, v10}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fputmTrustable(Lcom/android/server/trust/TrustAgentWrapper;Z)V

    .line 207
    iget-object v2, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v2, v10}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fputmWaitingForTrustableDowngrade(Lcom/android/server/trust/TrustAgentWrapper;Z)V

    .line 208
    iget-object v2, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v2, v10}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fputmDisplayTrustGrantedMessage(Lcom/android/server/trust/TrustAgentWrapper;Z)V

    .line 209
    iget-object v2, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v2, v6}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fputmMessage(Lcom/android/server/trust/TrustAgentWrapper;Ljava/lang/CharSequence;)V

    .line 210
    iget-object v2, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v2}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmHandler(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/Handler;

    move-result-object v2

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 211
    iget v0, v0, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_2c2

    .line 212
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmTrustManagerService(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    iget-object v2, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v2}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmUserId(Lcom/android/server/trust/TrustAgentWrapper;)I

    move-result v2

    iget-object v3, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v3}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmName(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/server/trust/TrustArchive;->logRevokeTrust(ILandroid/content/ComponentName;)V

    .line 214
    :cond_2c2
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmTrustManagerService(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v0

    iget-object v1, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmUserId(Lcom/android/server/trust/TrustAgentWrapper;)I

    move-result v1

    invoke-virtual {v0, v1, v10}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    return-void

    .line 148
    :pswitch_2d2
    iget-object v2, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v2}, Lcom/android/server/trust/TrustAgentWrapper;->isConnected()Z

    move-result v2

    if-nez v2, :cond_2f9

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Agent is not connected, cannot grant trust: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmName(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;

    move-result-object v1

    .line 150
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 153
    :cond_2f9
    iget-object v2, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v2, v8}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fputmTrusted(Lcom/android/server/trust/TrustAgentWrapper;Z)V

    .line 154
    iget-object v2, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v2, v10}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fputmTrustable(Lcom/android/server/trust/TrustAgentWrapper;Z)V

    .line 155
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/util/Pair;

    .line 156
    iget-object v4, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v4, v5}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fputmMessage(Lcom/android/server/trust/TrustAgentWrapper;Ljava/lang/CharSequence;)V

    .line 157
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    .line 158
    iget v4, v0, Landroid/os/Message;->arg1:I

    .line 159
    iget-object v5, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    and-int/lit8 v7, v4, 0x8

    if-eqz v7, :cond_31e

    move v7, v8

    goto :goto_31f

    :cond_31e
    move v7, v10

    :goto_31f
    invoke-static {v5, v7}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fputmDisplayTrustGrantedMessage(Lcom/android/server/trust/TrustAgentWrapper;Z)V

    and-int/lit8 v5, v4, 0x4

    if-eqz v5, :cond_334

    .line 161
    iget-object v5, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v5, v8}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fputmWaitingForTrustableDowngrade(Lcom/android/server/trust/TrustAgentWrapper;Z)V

    .line 162
    new-instance v5, Lcom/android/server/trust/TrustAgentWrapper$3$$ExternalSyntheticLambda0;

    invoke-direct {v5, v1}, Lcom/android/server/trust/TrustAgentWrapper$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/trust/TrustAgentWrapper$3;)V

    invoke-virtual {v2, v5}, Lcom/android/internal/infra/AndroidFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    goto :goto_339

    .line 170
    :cond_334
    iget-object v5, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v5, v10}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fputmWaitingForTrustableDowngrade(Lcom/android/server/trust/TrustAgentWrapper;Z)V

    .line 172
    :goto_339
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v5, "duration"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    const-wide/16 v11, 0x0

    cmp-long v0, v7, v11

    if-lez v0, :cond_3aa

    .line 175
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmMaximumTimeToLock(Lcom/android/server/trust/TrustAgentWrapper;)J

    move-result-wide v13

    cmp-long v0, v13, v11

    if-eqz v0, :cond_380

    .line 180
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmMaximumTimeToLock(Lcom/android/server/trust/TrustAgentWrapper;)J

    move-result-wide v11

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    .line 181
    invoke-static {}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_381

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DPM lock timeout in effect. Timeout adjusted from "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_381

    :cond_380
    move-wide v11, v7

    .line 188
    :cond_381
    :goto_381
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    add-long/2addr v13, v11

    .line 189
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmContext(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/Context;

    move-result-object v5

    iget-object v9, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v9}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmAlarmIntent(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/Intent;

    move-result-object v9

    const/high16 v11, 0x12000000

    invoke-static {v5, v10, v9, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fputmAlarmPendingIntent(Lcom/android/server/trust/TrustAgentWrapper;Landroid/app/PendingIntent;)V

    .line 191
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmAlarmManager(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v5, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v5}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmAlarmPendingIntent(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v0, v3, v13, v14, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 194
    :cond_3aa
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmTrustManagerService(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v0

    iget-object v11, v0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmUserId(Lcom/android/server/trust/TrustAgentWrapper;)I

    move-result v12

    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmName(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;

    move-result-object v13

    .line 195
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmMessage(Lcom/android/server/trust/TrustAgentWrapper;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_3d0

    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmMessage(Lcom/android/server/trust/TrustAgentWrapper;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_3d0
    move/from16 v17, v4

    move-object v14, v6

    move-wide v15, v7

    .line 194
    invoke-virtual/range {v11 .. v17}, Lcom/android/server/trust/TrustArchive;->logGrantTrust(ILandroid/content/ComponentName;Ljava/lang/String;JI)V

    move/from16 v0, v17

    .line 197
    iget-object v3, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v3}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmTrustManagerService(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v3

    iget-object v1, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmUserId(Lcom/android/server/trust/TrustAgentWrapper;)I

    move-result v1

    invoke-virtual {v3, v1, v0, v2}, Lcom/android/server/trust/TrustManagerService;->updateTrust(IILcom/android/internal/infra/AndroidFuture;)V

    return-void

    nop

    :pswitch_data_3ea
    .packed-switch 0x1
        :pswitch_2d2
        :pswitch_284
        :pswitch_244
        :pswitch_206
        :pswitch_187
        :pswitch_138
        :pswitch_f7
        :pswitch_c3
        :pswitch_8f
        :pswitch_6d
        :pswitch_58
        :pswitch_18
    .end packed-switch
.end method

.method public final synthetic lambda$handleMessage$0(Landroid/service/trust/GrantTrustResult;)V
    .registers 3

    .line 163
    invoke-virtual {p1}, Landroid/service/trust/GrantTrustResult;->getStatus()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_c

    .line 166
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {p0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$msetSecurityWindowTimer(Lcom/android/server/trust/TrustAgentWrapper;)V

    :cond_c
    return-void
.end method
