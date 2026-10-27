.class Lcom/android/server/trust/TrustAgentWrapper$3;
.super Landroid/os/Handler;
.source "TrustAgentWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustAgentWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/trust/TrustAgentWrapper;


# direct methods
.method constructor <init>(Lcom/android/server/trust/TrustAgentWrapper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/trust/TrustAgentWrapper;

    .line 144
    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 20
    .param p1, "msg"    # Landroid/os/Message;

    .line 147
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    const-string v3, "escrow_token"

    const/4 v4, 0x2

    const-string v5, "handle"

    const-string/jumbo v6, "user_id"

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v9, "TrustAgentWrapper"

    const/4 v10, 0x0

    packed-switch v0, :pswitch_data_3f4

    goto/16 :goto_3f3

    .line 303
    :pswitch_18
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0, v10}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fputmTrusted(Lcom/android/server/trust/TrustAgentWrapper;Z)V

    .line 304
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0, v10}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fputmTrustable(Lcom/android/server/trust/TrustAgentWrapper;Z)V

    .line 305
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmTrustManagerService(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v3}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmUserId(Lcom/android/server/trust/TrustAgentWrapper;)I

    move-result v3

    invoke-virtual {v0, v3, v10}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    .line 306
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmTrustManagerService(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v3}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmUserId(Lcom/android/server/trust/TrustAgentWrapper;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/trust/TrustManagerService;->lockUser(I)V

    goto/16 :goto_3f3

    .line 298
    :pswitch_42
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "message"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 299
    .local v0, "message":Ljava/lang/CharSequence;
    iget-object v3, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v3}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmTrustManagerService(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/trust/TrustManagerService;->showKeyguardErrorMessage(Ljava/lang/CharSequence;)V

    .line 300
    goto/16 :goto_3f3

    .line 291
    .end local v0    # "message":Ljava/lang/CharSequence;
    :pswitch_58
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 292
    .local v4, "handle":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 293
    .local v0, "userId":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 294
    .local v3, "eToken":[B
    iget-object v6, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v6}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmTrustManagerService(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v6

    invoke-virtual {v6, v4, v5, v3, v0}, Lcom/android/server/trust/TrustManagerService;->unlockUserWithToken(J[BI)V

    .line 295
    goto/16 :goto_3f3

    .line 263
    .end local v0    # "userId":I
    .end local v3    # "eToken":[B
    .end local v4    # "handle":J
    :pswitch_7b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 264
    .local v3, "handle":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 265
    .local v5, "userId":I
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmTrustManagerService(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/trust/TrustManagerService;->isEscrowTokenActive(JI)Z

    move-result v6

    .line 267
    .local v6, "active":Z
    :try_start_95
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmTrustAgentService(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/service/trust/ITrustAgentService;

    move-result-object v0

    if-eqz v0, :cond_aa

    .line 268
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmTrustAgentService(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/service/trust/ITrustAgentService;

    move-result-object v0

    .line 269
    if-eqz v6, :cond_a6

    goto :goto_a7

    .line 270
    :cond_a6
    move v8, v10

    .line 268
    :goto_a7
    invoke-interface {v0, v3, v4, v8}, Landroid/service/trust/ITrustAgentService;->onTokenStateReceived(JI)V
    :try_end_aa
    .catch Landroid/os/RemoteException; {:try_start_95 .. :try_end_aa} :catch_ac

    .line 274
    :cond_aa
    goto/16 :goto_3f3

    .line 272
    :catch_ac
    move-exception v0

    .line 273
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v7, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v7, v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$monError(Lcom/android/server/trust/TrustAgentWrapper;Ljava/lang/Exception;)V

    .line 275
    .end local v0    # "e":Landroid/os/RemoteException;
    goto/16 :goto_3f3

    .line 278
    .end local v3    # "handle":J
    .end local v5    # "userId":I
    .end local v6    # "active":Z
    :pswitch_b4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 279
    .restart local v3    # "handle":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 280
    .restart local v5    # "userId":I
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmTrustManagerService(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/trust/TrustManagerService;->removeEscrowToken(JI)Z

    move-result v6

    .line 282
    .local v6, "success":Z
    :try_start_ce
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmTrustAgentService(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/service/trust/ITrustAgentService;

    move-result-object v0

    if-eqz v0, :cond_df

    .line 283
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmTrustAgentService(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/service/trust/ITrustAgentService;

    move-result-object v0

    invoke-interface {v0, v3, v4, v6}, Landroid/service/trust/ITrustAgentService;->onEscrowTokenRemoved(JZ)V
    :try_end_df
    .catch Landroid/os/RemoteException; {:try_start_ce .. :try_end_df} :catch_e1

    .line 287
    :cond_df
    goto/16 :goto_3f3

    .line 285
    :catch_e1
    move-exception v0

    .line 286
    .restart local v0    # "e":Landroid/os/RemoteException;
    iget-object v7, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v7, v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$monError(Lcom/android/server/trust/TrustAgentWrapper;Ljava/lang/Exception;)V

    .line 288
    .end local v0    # "e":Landroid/os/RemoteException;
    goto/16 :goto_3f3

    .line 243
    .end local v3    # "handle":J
    .end local v5    # "userId":I
    .end local v6    # "success":Z
    :pswitch_e9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 244
    .local v3, "eToken":[B
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 245
    .local v4, "userId":I
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmTrustManagerService(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/trust/TrustManagerService;->addEscrowToken([BI)J

    move-result-wide v5

    .line 246
    .local v5, "handle":J
    const/4 v7, 0x0

    .line 248
    .local v7, "resultDeliverred":Z
    :try_start_104
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmTrustAgentService(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/service/trust/ITrustAgentService;

    move-result-object v0

    if-eqz v0, :cond_11b

    .line 249
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmTrustAgentService(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/service/trust/ITrustAgentService;

    move-result-object v0

    .line 250
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    .line 249
    invoke-interface {v0, v3, v5, v6, v8}, Landroid/service/trust/ITrustAgentService;->onEscrowTokenAdded([BJLandroid/os/UserHandle;)V
    :try_end_119
    .catch Landroid/os/RemoteException; {:try_start_104 .. :try_end_119} :catch_11c

    .line 251
    const/4 v0, 0x1

    move v7, v0

    .line 255
    :cond_11b
    goto :goto_122

    .line 253
    :catch_11c
    move-exception v0

    .line 254
    .restart local v0    # "e":Landroid/os/RemoteException;
    iget-object v8, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v8, v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$monError(Lcom/android/server/trust/TrustAgentWrapper;Ljava/lang/Exception;)V

    .line 257
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_122
    if-nez v7, :cond_3f3

    .line 258
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmTrustManagerService(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v0

    invoke-virtual {v0, v5, v6, v4}, Lcom/android/server/trust/TrustManagerService;->removeEscrowToken(JI)Z

    goto/16 :goto_3f3

    .line 233
    .end local v3    # "eToken":[B
    .end local v4    # "userId":I
    .end local v5    # "handle":J
    .end local v7    # "resultDeliverred":Z
    :pswitch_12f
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    iget v3, v2, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_136

    goto :goto_137

    :cond_136
    move v8, v10

    :goto_137
    invoke-static {v0, v8}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fputmManagingTrust(Lcom/android/server/trust/TrustAgentWrapper;Z)V

    .line 234
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmManagingTrust(Lcom/android/server/trust/TrustAgentWrapper;)Z

    move-result v0

    if-nez v0, :cond_151

    .line 235
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0, v10}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fputmTrusted(Lcom/android/server/trust/TrustAgentWrapper;Z)V

    .line 236
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0, v10}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fputmDisplayTrustGrantedMessage(Lcom/android/server/trust/TrustAgentWrapper;Z)V

    .line 237
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0, v7}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fputmMessage(Lcom/android/server/trust/TrustAgentWrapper;Ljava/lang/CharSequence;)V

    .line 239
    :cond_151
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmTrustManagerService(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    iget-object v3, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v3}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmUserId(Lcom/android/server/trust/TrustAgentWrapper;)I

    move-result v3

    iget-object v4, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v4}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmName(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v5}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmManagingTrust(Lcom/android/server/trust/TrustAgentWrapper;)Z

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/trust/TrustArchive;->logManagingTrust(ILandroid/content/ComponentName;Z)V

    .line 240
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmTrustManagerService(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v3}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmUserId(Lcom/android/server/trust/TrustAgentWrapper;)I

    move-result v3

    invoke-virtual {v0, v3, v10}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    .line 241
    goto/16 :goto_3f3

    .line 217
    :pswitch_17f
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    .line 218
    .local v0, "token":Landroid/os/IBinder;
    iget v3, v2, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_188

    goto :goto_189

    :cond_188
    move v8, v10

    :goto_189
    move v3, v8

    .line 219
    .local v3, "result":Z
    iget-object v4, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v4}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmSetTrustAgentFeaturesToken(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, v0, :cond_1dd

    .line 220
    iget-object v4, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v4, v7}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fputmSetTrustAgentFeaturesToken(Lcom/android/server/trust/TrustAgentWrapper;Landroid/os/IBinder;)V

    .line 221
    iget-object v4, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v4}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmTrustDisabledByDpm(Lcom/android/server/trust/TrustAgentWrapper;)Z

    move-result v4

    if-eqz v4, :cond_3f3

    if-eqz v3, :cond_3f3

    .line 222
    invoke-static {}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$sfgetDEBUG()Z

    move-result v4

    if-eqz v4, :cond_1c7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Re-enabling agent because it acknowledged enabled features: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v5}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmName(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;

    move-result-object v5

    .line 223
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 222
    invoke-static {v9, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_1c7
    iget-object v4, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v4, v10}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fputmTrustDisabledByDpm(Lcom/android/server/trust/TrustAgentWrapper;Z)V

    .line 225
    iget-object v4, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v4}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmTrustManagerService(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v5}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmUserId(Lcom/android/server/trust/TrustAgentWrapper;)I

    move-result v5

    invoke-virtual {v4, v5, v10}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    goto/16 :goto_3f3

    .line 228
    :cond_1dd
    invoke-static {}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$sfgetDEBUG()Z

    move-result v4

    if-eqz v4, :cond_3f3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring MSG_SET_TRUST_AGENT_FEATURES_COMPLETED with obsolete token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v5}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmName(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;

    move-result-object v5

    .line 229
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 228
    invoke-static {v9, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3f3

    .line 211
    .end local v0    # "token":Landroid/os/IBinder;
    .end local v3    # "result":Z
    :pswitch_205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection attempt to agent "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v3}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmName(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " timed out, rebinding"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v0}, Lcom/android/server/trust/TrustAgentWrapper;->destroy()V

    .line 214
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmTrustManagerService(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v3}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmName(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v4}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmUserId(Lcom/android/server/trust/TrustAgentWrapper;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/android/server/trust/TrustManagerService;->resetAgent(Landroid/content/ComponentName;I)V

    .line 215
    goto/16 :goto_3f3

    .line 194
    :pswitch_247
    invoke-static {}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_26d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trust timed out : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v3}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmName(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_26d
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmTrustManagerService(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    iget-object v3, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v3}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmUserId(Lcom/android/server/trust/TrustAgentWrapper;)I

    move-result v3

    iget-object v5, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v5}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmName(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/android/server/trust/TrustArchive;->logTrustTimeout(ILandroid/content/ComponentName;)V

    .line 196
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$monTrustTimeout(Lcom/android/server/trust/TrustAgentWrapper;)V

    .line 199
    :pswitch_289
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0, v10}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fputmTrusted(Lcom/android/server/trust/TrustAgentWrapper;Z)V

    .line 200
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0, v10}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fputmTrustable(Lcom/android/server/trust/TrustAgentWrapper;Z)V

    .line 201
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0, v10}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fputmWaitingForTrustableDowngrade(Lcom/android/server/trust/TrustAgentWrapper;Z)V

    .line 202
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0, v10}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fputmDisplayTrustGrantedMessage(Lcom/android/server/trust/TrustAgentWrapper;Z)V

    .line 203
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0, v7}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fputmMessage(Lcom/android/server/trust/TrustAgentWrapper;Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmHandler(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 205
    iget v0, v2, Landroid/os/Message;->what:I

    if-ne v0, v4, :cond_2c7

    .line 206
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmTrustManagerService(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    iget-object v3, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v3}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmUserId(Lcom/android/server/trust/TrustAgentWrapper;)I

    move-result v3

    iget-object v4, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v4}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmName(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/server/trust/TrustArchive;->logRevokeTrust(ILandroid/content/ComponentName;)V

    .line 208
    :cond_2c7
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmTrustManagerService(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v3}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmUserId(Lcom/android/server/trust/TrustAgentWrapper;)I

    move-result v3

    invoke-virtual {v0, v3, v10}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    .line 209
    goto/16 :goto_3f3

    .line 149
    :pswitch_2d8
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v0}, Lcom/android/server/trust/TrustAgentWrapper;->isConnected()Z

    move-result v0

    if-nez v0, :cond_301

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Agent is not connected, cannot grant trust: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v3}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmName(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;

    move-result-object v3

    .line 151
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void

    .line 154
    :cond_301
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0, v8}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fputmTrusted(Lcom/android/server/trust/TrustAgentWrapper;Z)V

    .line 155
    iget-object v0, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0, v10}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fputmTrustable(Lcom/android/server/trust/TrustAgentWrapper;Z)V

    .line 156
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 157
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/CharSequence;Lcom/android/internal/infra/AndroidFuture<Landroid/service/trust/GrantTrustResult;>;>;"
    iget-object v3, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v3, v5}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fputmMessage(Lcom/android/server/trust/TrustAgentWrapper;Ljava/lang/CharSequence;)V

    .line 158
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/infra/AndroidFuture;

    .line 159
    .local v3, "resultCallback":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/service/trust/GrantTrustResult;>;"
    iget v5, v2, Landroid/os/Message;->arg1:I

    .line 160
    .local v5, "flags":I
    iget-object v6, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    and-int/lit8 v11, v5, 0x8

    if-eqz v11, :cond_326

    move v11, v8

    goto :goto_327

    :cond_326
    move v11, v10

    :goto_327
    invoke-static {v6, v11}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fputmDisplayTrustGrantedMessage(Lcom/android/server/trust/TrustAgentWrapper;Z)V

    .line 161
    and-int/lit8 v6, v5, 0x4

    if-eqz v6, :cond_334

    .line 162
    iget-object v6, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v6, v8}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fputmWaitingForTrustableDowngrade(Lcom/android/server/trust/TrustAgentWrapper;Z)V

    goto :goto_339

    .line 164
    :cond_334
    iget-object v6, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v6, v10}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fputmWaitingForTrustableDowngrade(Lcom/android/server/trust/TrustAgentWrapper;Z)V

    .line 166
    :goto_339
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v8, "duration"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 167
    .local v14, "durationMs":J
    const-wide/16 v11, 0x0

    cmp-long v6, v14, v11

    if-lez v6, :cond_3af

    .line 169
    iget-object v6, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v6}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmMaximumTimeToLock(Lcom/android/server/trust/TrustAgentWrapper;)J

    move-result-wide v16

    cmp-long v6, v16, v11

    if-eqz v6, :cond_384

    .line 174
    iget-object v6, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v6}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmMaximumTimeToLock(Lcom/android/server/trust/TrustAgentWrapper;)J

    move-result-wide v11

    invoke-static {v14, v15, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    .line 175
    .local v11, "duration":J
    invoke-static {}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$sfgetDEBUG()Z

    move-result v6

    if-eqz v6, :cond_385

    .line 176
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DPM lock timeout in effect. Timeout adjusted from "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " to "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_385

    .line 180
    .end local v11    # "duration":J
    :cond_384
    move-wide v11, v14

    .line 182
    .restart local v11    # "duration":J
    :cond_385
    :goto_385
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    add-long/2addr v8, v11

    .line 183
    .local v8, "expiration":J
    iget-object v6, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v6}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmContext(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/Context;

    move-result-object v13

    iget-object v7, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v7}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmAlarmIntent(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/Intent;

    move-result-object v7

    const/high16 v4, 0x12000000

    invoke-static {v13, v10, v7, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fputmAlarmPendingIntent(Lcom/android/server/trust/TrustAgentWrapper;Landroid/app/PendingIntent;)V

    .line 185
    iget-object v4, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v4}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmAlarmManager(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/app/AlarmManager;

    move-result-object v4

    iget-object v6, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v6}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmAlarmPendingIntent(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/app/PendingIntent;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v4, v7, v8, v9, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 188
    .end local v8    # "expiration":J
    .end local v11    # "duration":J
    :cond_3af
    iget-object v4, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v4}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmTrustManagerService(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v4

    iget-object v11, v4, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    iget-object v4, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v4}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmUserId(Lcom/android/server/trust/TrustAgentWrapper;)I

    move-result v12

    iget-object v4, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v4}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmName(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;

    move-result-object v13

    .line 189
    iget-object v4, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v4}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmMessage(Lcom/android/server/trust/TrustAgentWrapper;)Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_3d8

    iget-object v4, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v4}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmMessage(Lcom/android/server/trust/TrustAgentWrapper;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v16, v7

    goto :goto_3da

    :cond_3d8
    const/16 v16, 0x0

    .line 188
    :goto_3da
    move-wide v6, v14

    .end local v14    # "durationMs":J
    .local v6, "durationMs":J
    move-object/from16 v14, v16

    move-wide v15, v6

    move/from16 v17, v5

    invoke-virtual/range {v11 .. v17}, Lcom/android/server/trust/TrustArchive;->logGrantTrust(ILandroid/content/ComponentName;Ljava/lang/String;JI)V

    .line 191
    iget-object v4, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v4}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmTrustManagerService(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v4

    iget-object v8, v1, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v8}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmUserId(Lcom/android/server/trust/TrustAgentWrapper;)I

    move-result v8

    invoke-virtual {v4, v8, v5, v3}, Lcom/android/server/trust/TrustManagerService;->updateTrust(IILcom/android/internal/infra/AndroidFuture;)V

    .line 192
    nop

    .line 310
    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/CharSequence;Lcom/android/internal/infra/AndroidFuture<Landroid/service/trust/GrantTrustResult;>;>;"
    .end local v3    # "resultCallback":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/service/trust/GrantTrustResult;>;"
    .end local v5    # "flags":I
    .end local v6    # "durationMs":J
    :cond_3f3
    :goto_3f3
    return-void

    :pswitch_data_3f4
    .packed-switch 0x1
        :pswitch_2d8
        :pswitch_289
        :pswitch_247
        :pswitch_205
        :pswitch_17f
        :pswitch_12f
        :pswitch_e9
        :pswitch_b4
        :pswitch_7b
        :pswitch_58
        :pswitch_42
        :pswitch_18
    .end packed-switch
.end method
