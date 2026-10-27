.class Landroid/telecom/ConnectionService$2;
.super Landroid/os/Handler;
.source "ConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telecom/ConnectionService;


# direct methods
.method constructor blacklist <init>(Landroid/telecom/ConnectionService;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Landroid/telecom/ConnectionService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 860
    iput-object p1, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 24
    .param p1, "msg"    # Landroid/os/Message;

    .line 863
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    iget v0, v11, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const-string v2, "createConnectionFailed %s"

    const-string v3, "Enqueueing pre-init conference request %s"

    const-string v4, "H.CS.crCoC"

    const-string v5, "H.CS.crCoF"

    const-string v6, "H.CS.crCo"

    const-string v7, "H.CS.r"

    const-string v12, "Enqueueing pre-init request %s"

    const/4 v13, 0x0

    const/4 v14, 0x1

    packed-switch v0, :pswitch_data_8a8

    :pswitch_1a
    goto/16 :goto_8a7

    .line 1298
    :pswitch_1c
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1299
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.tBNUS"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1302
    :try_start_2a
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1303
    .local v0, "callId":Ljava/lang/String;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1304
    .local v2, "isTracked":Z
    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3, v0, v2}, Landroid/telecom/ConnectionService;->-$$Nest$monTrackedByNonUiService(Landroid/telecom/ConnectionService;Ljava/lang/String;Z)V
    :try_end_3b
    .catchall {:try_start_2a .. :try_end_3b} :catchall_44

    .line 1306
    .end local v0    # "callId":Ljava/lang/String;
    .end local v2    # "isTracked":Z
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1307
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1308
    nop

    .line 1309
    goto/16 :goto_8a7

    .line 1306
    :catchall_44
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1307
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1308
    throw v0

    .line 1284
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_4c
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1285
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.uAU"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1288
    :try_start_5a
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1289
    .restart local v0    # "callId":Ljava/lang/String;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1290
    .local v2, "isUsingAlternativeUi":Z
    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3, v0, v2}, Landroid/telecom/ConnectionService;->-$$Nest$monUsingAlternativeUi(Landroid/telecom/ConnectionService;Ljava/lang/String;Z)V
    :try_end_6b
    .catchall {:try_start_5a .. :try_end_6b} :catchall_74

    .line 1292
    .end local v0    # "callId":Ljava/lang/String;
    .end local v2    # "isUsingAlternativeUi":Z
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1293
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1294
    nop

    .line 1295
    goto/16 :goto_8a7

    .line 1292
    :catchall_74
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1293
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1294
    throw v0

    .line 1440
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_7c
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1442
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_81
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.oCFC"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1444
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1445
    .restart local v0    # "callId":Ljava/lang/String;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/telecom/Connection$CallFilteringCompletionInfo;

    .line 1447
    .local v2, "completionInfo":Landroid/telecom/Connection$CallFilteringCompletionInfo;
    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3, v0, v2}, Landroid/telecom/ConnectionService;->-$$Nest$monCallFilteringCompleted(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/Connection$CallFilteringCompletionInfo;)V
    :try_end_97
    .catchall {:try_start_81 .. :try_end_97} :catchall_a0

    .line 1449
    .end local v0    # "callId":Ljava/lang/String;
    .end local v2    # "completionInfo":Landroid/telecom/Connection$CallFilteringCompletionInfo;
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1450
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1451
    nop

    .line 1452
    goto/16 :goto_8a7

    .line 1449
    :catchall_a0
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1450
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1451
    throw v0

    .line 1214
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_a8
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1215
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.cTrans"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1218
    :try_start_b6
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v2, v3}, Landroid/telecom/ConnectionService;->-$$Nest$mconsultativeTransfer(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c3
    .catchall {:try_start_b6 .. :try_end_c3} :catchall_cc

    .line 1220
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1221
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1222
    nop

    .line 1223
    goto/16 :goto_8a7

    .line 1220
    :catchall_cc
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1221
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1222
    throw v0

    .line 1202
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_d4
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1203
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.trans"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1205
    :try_start_e2
    iget v0, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-ne v0, v14, :cond_e7

    move v13, v14

    :cond_e7
    move v0, v13

    .line 1206
    .local v0, "isConfirmationRequired":Z
    iget-object v2, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/net/Uri;

    invoke-static {v2, v3, v4, v0}, Landroid/telecom/ConnectionService;->-$$Nest$mtransfer(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/net/Uri;Z)V
    :try_end_f5
    .catchall {:try_start_e2 .. :try_end_f5} :catchall_fe

    .line 1208
    .end local v0    # "isConfirmationRequired":Z
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1209
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1210
    nop

    .line 1211
    goto/16 :goto_8a7

    .line 1208
    :catchall_fe
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1209
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1210
    throw v0

    .line 1386
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_106
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1388
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_10b
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.aP"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1390
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-static {v0, v2, v3}, Landroid/telecom/ConnectionService;->-$$Nest$maddConferenceParticipants(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/util/List;)V
    :try_end_121
    .catchall {:try_start_10b .. :try_end_121} :catchall_12a

    .line 1392
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1393
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1394
    nop

    .line 1395
    goto/16 :goto_8a7

    .line 1392
    :catchall_12a
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1393
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1394
    throw v0

    .line 1179
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_132
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1180
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    invoke-static {v0, v7}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1182
    :try_start_13e
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v3, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-static {v0, v2, v3}, Landroid/telecom/ConnectionService;->-$$Nest$mreject(Landroid/telecom/ConnectionService;Ljava/lang/String;I)V
    :try_end_149
    .catchall {:try_start_13e .. :try_end_149} :catchall_152

    .line 1184
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1185
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1186
    nop

    .line 1187
    goto/16 :goto_8a7

    .line 1184
    :catchall_152
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1185
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1186
    throw v0

    .line 1056
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_15a
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Lcom/android/internal/os/SomeArgs;

    .line 1057
    .local v9, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v9, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    invoke-static {v0, v5}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1060
    :try_start_166
    iget-object v0, v9, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1061
    .local v0, "id":Ljava/lang/String;
    iget-object v1, v9, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/ConnectionRequest;

    move-object v12, v1

    .line 1062
    .local v12, "request":Landroid/telecom/ConnectionRequest;
    iget v1, v9, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-ne v1, v14, :cond_175

    move v1, v14

    goto :goto_176

    :cond_175
    move v1, v13

    :goto_176
    move v15, v1

    .line 1063
    .local v15, "isIncoming":Z
    iget-object v1, v9, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    move-object v8, v1

    .line 1065
    .local v8, "connectionMgrPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    iget-object v1, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmAreAccountsInitialized(Landroid/telecom/ConnectionService;)Z

    move-result v1

    if-nez v1, :cond_1a9

    .line 1066
    new-array v1, v14, [Ljava/lang/Object;

    aput-object v0, v1, v13

    invoke-static {v10, v3, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1067
    iget-object v1, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmPreInitializationConnectionRequests(Landroid/telecom/ConnectionService;)Ljava/util/List;

    move-result-object v13

    new-instance v14, Landroid/telecom/ConnectionService$2$6;

    const-string v3, "H.CS.crConfF.pIConfR"

    const/4 v4, 0x0

    move-object v1, v14

    move-object/from16 v2, p0

    move-object v5, v8

    move-object v6, v0

    move-object v7, v12

    move-object v11, v8

    .end local v8    # "connectionMgrPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .local v11, "connectionMgrPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    move v8, v15

    invoke-direct/range {v1 .. v8}, Landroid/telecom/ConnectionService$2$6;-><init>(Landroid/telecom/ConnectionService$2;Ljava/lang/String;Ljava/lang/Object;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Z)V

    .line 1077
    invoke-virtual {v14}, Landroid/telecom/ConnectionService$2$6;->prepare()Ljava/lang/Runnable;

    move-result-object v1

    .line 1067
    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b8

    .line 1079
    .end local v11    # "connectionMgrPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .restart local v8    # "connectionMgrPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    :cond_1a9
    move-object v11, v8

    .end local v8    # "connectionMgrPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .restart local v11    # "connectionMgrPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    const-string v1, "createConferenceFailed %s"

    new-array v2, v14, [Ljava/lang/Object;

    aput-object v0, v2, v13

    invoke-static {v10, v1, v2}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1080
    iget-object v1, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1, v11, v0, v12, v15}, Landroid/telecom/ConnectionService;->-$$Nest$mcreateConferenceFailed(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Z)V
    :try_end_1b8
    .catchall {:try_start_166 .. :try_end_1b8} :catchall_1c3

    .line 1084
    .end local v0    # "id":Ljava/lang/String;
    .end local v11    # "connectionMgrPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .end local v12    # "request":Landroid/telecom/ConnectionRequest;
    .end local v15    # "isIncoming":Z
    :goto_1b8
    invoke-virtual {v9}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1085
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1086
    nop

    .line 1087
    move-object/from16 v11, p1

    goto/16 :goto_8a7

    .line 1084
    :catchall_1c3
    move-exception v0

    invoke-virtual {v9}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1085
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1086
    throw v0

    .line 1029
    .end local v9    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_1cb
    move-object/from16 v11, p1

    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1030
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    invoke-static {v0, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1033
    :try_start_1d9
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1034
    .restart local v0    # "id":Ljava/lang/String;
    iget-object v4, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v4}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmAreAccountsInitialized(Landroid/telecom/ConnectionService;)Z

    move-result v4

    if-nez v4, :cond_201

    .line 1035
    new-array v4, v14, [Ljava/lang/Object;

    aput-object v0, v4, v13

    invoke-static {v10, v3, v4}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1036
    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmPreInitializationConnectionRequests(Landroid/telecom/ConnectionService;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Landroid/telecom/ConnectionService$2$5;

    const-string v5, "H.CS.crConfC.pIConfR"

    invoke-direct {v4, v10, v5, v1, v0}, Landroid/telecom/ConnectionService$2$5;-><init>(Landroid/telecom/ConnectionService$2;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1045
    invoke-virtual {v4}, Landroid/telecom/ConnectionService$2$5;->prepare()Ljava/lang/Runnable;

    move-result-object v1

    .line 1036
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_206

    .line 1047
    :cond_201
    iget-object v1, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1, v0}, Landroid/telecom/ConnectionService;->-$$Nest$mnotifyCreateConferenceComplete(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_206
    .catchall {:try_start_1d9 .. :try_end_206} :catchall_20f

    .line 1050
    .end local v0    # "id":Ljava/lang/String;
    :goto_206
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1051
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1052
    nop

    .line 1053
    goto/16 :goto_8a7

    .line 1050
    :catchall_20f
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1051
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1052
    throw v0

    .line 991
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_217
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Lcom/android/internal/os/SomeArgs;

    .line 992
    .local v12, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    invoke-static {v0, v6}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 994
    :try_start_223
    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/telecom/PhoneAccountHandle;

    .line 996
    .local v5, "connectionManagerPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 997
    .restart local v0    # "id":Ljava/lang/String;
    iget-object v1, v12, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Landroid/telecom/ConnectionRequest;

    .line 998
    .local v7, "request":Landroid/telecom/ConnectionRequest;
    iget v1, v12, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-ne v1, v14, :cond_237

    move v8, v14

    goto :goto_238

    :cond_237
    move v8, v13

    .line 999
    .local v8, "isIncoming":Z
    :goto_238
    iget v1, v12, Lcom/android/internal/os/SomeArgs;->argi2:I

    if-ne v1, v14, :cond_23e

    move v9, v14

    goto :goto_23f

    :cond_23e
    move v9, v13

    .line 1000
    .local v9, "isUnknown":Z
    :goto_23f
    iget-object v1, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmAreAccountsInitialized(Landroid/telecom/ConnectionService;)Z

    move-result v1

    if-nez v1, :cond_26a

    .line 1001
    const-string v1, "Enqueueing pre-initconference request %s"

    new-array v2, v14, [Ljava/lang/Object;

    aput-object v0, v2, v13

    invoke-static {v10, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1002
    iget-object v1, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmPreInitializationConnectionRequests(Landroid/telecom/ConnectionService;)Ljava/util/List;

    move-result-object v13

    new-instance v14, Landroid/telecom/ConnectionService$2$4;

    const-string v3, "H.CS.crConf.pIConfR"

    const/4 v4, 0x0

    move-object v1, v14

    move-object/from16 v2, p0

    move-object v6, v0

    invoke-direct/range {v1 .. v9}, Landroid/telecom/ConnectionService$2$4;-><init>(Landroid/telecom/ConnectionService$2;Ljava/lang/String;Ljava/lang/Object;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V

    .line 1014
    invoke-virtual {v14}, Landroid/telecom/ConnectionService$2$4;->prepare()Ljava/lang/Runnable;

    move-result-object v1

    .line 1002
    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_279

    .line 1016
    :cond_26a
    iget-object v15, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v16, v5

    move-object/from16 v17, v0

    move-object/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v9

    invoke-static/range {v15 .. v20}, Landroid/telecom/ConnectionService;->-$$Nest$mcreateConference(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    :try_end_279
    .catchall {:try_start_223 .. :try_end_279} :catchall_282

    .line 1023
    .end local v0    # "id":Ljava/lang/String;
    .end local v5    # "connectionManagerPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .end local v7    # "request":Landroid/telecom/ConnectionRequest;
    .end local v8    # "isIncoming":Z
    .end local v9    # "isUnknown":Z
    :goto_279
    invoke-virtual {v12}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1024
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1025
    nop

    .line 1026
    goto/16 :goto_8a7

    .line 1023
    :catchall_282
    move-exception v0

    invoke-virtual {v12}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1024
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1025
    throw v0

    .line 1157
    .end local v12    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_28a
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1158
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.def"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1160
    :try_start_298
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/net/Uri;

    invoke-static {v0, v2, v3}, Landroid/telecom/ConnectionService;->-$$Nest$mdeflect(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_2a5
    .catchall {:try_start_298 .. :try_end_2a5} :catchall_2ae

    .line 1162
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1163
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1164
    nop

    .line 1165
    goto/16 :goto_8a7

    .line 1162
    :catchall_2ae
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1163
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1164
    throw v0

    .line 1455
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_2b6
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1457
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_2bb
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.hC"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1459
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1460
    .local v0, "callId":Ljava/lang/String;
    iget-object v2, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v2, v0}, Landroid/telecom/ConnectionService;->-$$Nest$mnotifyHandoverComplete(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_2cd
    .catchall {:try_start_2bb .. :try_end_2cd} :catchall_2d6

    .line 1462
    .end local v0    # "callId":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1463
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1464
    nop

    .line 1465
    goto/16 :goto_8a7

    .line 1462
    :catchall_2d6
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1463
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1464
    throw v0

    .line 1091
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_2de
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    .line 1092
    .local v8, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v8, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v1, "H.CS.haF"

    invoke-static {v0, v1}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1095
    :try_start_2ec
    iget-object v0, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1096
    .local v0, "id":Ljava/lang/String;
    iget-object v1, v8, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/ConnectionRequest;

    move-object v9, v1

    .line 1097
    .local v9, "request":Landroid/telecom/ConnectionRequest;
    iget-object v1, v8, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v15, v1

    .line 1098
    .local v15, "reason":I
    iget-object v1, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmAreAccountsInitialized(Landroid/telecom/ConnectionService;)Z

    move-result v1

    if-nez v1, :cond_329

    .line 1099
    new-array v1, v14, [Ljava/lang/Object;

    aput-object v0, v1, v13

    invoke-static {v10, v12, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1100
    iget-object v1, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmPreInitializationConnectionRequests(Landroid/telecom/ConnectionService;)Ljava/util/List;

    move-result-object v12

    new-instance v13, Landroid/telecom/ConnectionService$2$7;

    const-string v3, "H.CS.haF.pICR"

    const/4 v4, 0x0

    move-object v1, v13

    move-object/from16 v2, p0

    move-object v5, v0

    move-object v6, v9

    move v7, v15

    invoke-direct/range {v1 .. v7}, Landroid/telecom/ConnectionService$2$7;-><init>(Landroid/telecom/ConnectionService$2;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Landroid/telecom/ConnectionRequest;I)V

    .line 1109
    invoke-virtual {v13}, Landroid/telecom/ConnectionService$2$7;->prepare()Ljava/lang/Runnable;

    move-result-object v1

    .line 1100
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_335

    .line 1111
    :cond_329
    new-array v1, v14, [Ljava/lang/Object;

    aput-object v0, v1, v13

    invoke-static {v10, v2, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1112
    iget-object v1, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1, v0, v9, v15}, Landroid/telecom/ConnectionService;->-$$Nest$mhandoverFailed(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/ConnectionRequest;I)V
    :try_end_335
    .catchall {:try_start_2ec .. :try_end_335} :catchall_33e

    .line 1115
    .end local v0    # "id":Ljava/lang/String;
    .end local v9    # "request":Landroid/telecom/ConnectionRequest;
    .end local v15    # "reason":I
    :goto_335
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1116
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1117
    nop

    .line 1118
    goto/16 :goto_8a7

    .line 1115
    :catchall_33e
    move-exception v0

    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1116
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1117
    throw v0

    .line 1525
    .end local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_346
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-virtual {v0}, Landroid/telecom/ConnectionService;->onConnectionServiceFocusGained()V

    .line 1526
    goto/16 :goto_8a7

    .line 1528
    :pswitch_34d
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-virtual {v0}, Landroid/telecom/ConnectionService;->onConnectionServiceFocusLost()V

    .line 1529
    goto/16 :goto_8a7

    .line 931
    :pswitch_354
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 932
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    invoke-static {v0, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 935
    :try_start_360
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 936
    .restart local v0    # "id":Ljava/lang/String;
    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmAreAccountsInitialized(Landroid/telecom/ConnectionService;)Z

    move-result v3

    if-nez v3, :cond_388

    .line 937
    new-array v3, v14, [Ljava/lang/Object;

    aput-object v0, v3, v13

    invoke-static {v10, v12, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 938
    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmPreInitializationConnectionRequests(Landroid/telecom/ConnectionService;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Landroid/telecom/ConnectionService$2$2;

    const-string v5, "H.CS.crCoC.pICR"

    invoke-direct {v4, v10, v5, v1, v0}, Landroid/telecom/ConnectionService$2$2;-><init>(Landroid/telecom/ConnectionService$2;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 947
    invoke-virtual {v4}, Landroid/telecom/ConnectionService$2$2;->prepare()Ljava/lang/Runnable;

    move-result-object v1

    .line 938
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_38d

    .line 949
    :cond_388
    iget-object v1, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1, v0}, Landroid/telecom/ConnectionService;->-$$Nest$mnotifyCreateConnectionComplete(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_38d
    .catchall {:try_start_360 .. :try_end_38d} :catchall_396

    .line 952
    .end local v0    # "id":Ljava/lang/String;
    :goto_38d
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 953
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 954
    nop

    .line 955
    goto/16 :goto_8a7

    .line 952
    :catchall_396
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 953
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 954
    throw v0

    .line 1510
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_39e
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1512
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_3a3
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.rTRUR"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1514
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1515
    .local v0, "callId":Ljava/lang/String;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/telecom/Connection$RttTextStream;

    .line 1517
    .local v2, "rttTextStream":Landroid/telecom/Connection$RttTextStream;
    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3, v0, v2}, Landroid/telecom/ConnectionService;->-$$Nest$mhandleRttUpgradeResponse(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/Connection$RttTextStream;)V
    :try_end_3b9
    .catchall {:try_start_3a3 .. :try_end_3b9} :catchall_3c2

    .line 1519
    .end local v0    # "callId":Ljava/lang/String;
    .end local v2    # "rttTextStream":Landroid/telecom/Connection$RttTextStream;
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1520
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1521
    nop

    .line 1522
    goto/16 :goto_8a7

    .line 1519
    :catchall_3c2
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1520
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1521
    throw v0

    .line 1497
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_3ca
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1499
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_3cf
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.-RTT"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1501
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1502
    .restart local v0    # "callId":Ljava/lang/String;
    iget-object v2, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v2, v0}, Landroid/telecom/ConnectionService;->-$$Nest$mstopRtt(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_3e1
    .catchall {:try_start_3cf .. :try_end_3e1} :catchall_3ea

    .line 1504
    .end local v0    # "callId":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1505
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1506
    nop

    .line 1507
    goto/16 :goto_8a7

    .line 1504
    :catchall_3ea
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1505
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1506
    throw v0

    .line 1482
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_3f2
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1484
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_3f7
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.+RTT"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1486
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1487
    .restart local v0    # "callId":Ljava/lang/String;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/telecom/Connection$RttTextStream;

    .line 1489
    .restart local v2    # "rttTextStream":Landroid/telecom/Connection$RttTextStream;
    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3, v0, v2}, Landroid/telecom/ConnectionService;->-$$Nest$mstartRtt(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/Connection$RttTextStream;)V
    :try_end_40d
    .catchall {:try_start_3f7 .. :try_end_40d} :catchall_416

    .line 1491
    .end local v0    # "callId":Ljava/lang/String;
    .end local v2    # "rttTextStream":Landroid/telecom/Connection$RttTextStream;
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1492
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1493
    nop

    .line 1494
    goto/16 :goto_8a7

    .line 1491
    :catchall_416
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1492
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1493
    throw v0

    .line 958
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_41e
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Lcom/android/internal/os/SomeArgs;

    .line 959
    .local v9, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v9, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    invoke-static {v0, v5}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 962
    :try_start_42a
    iget-object v0, v9, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 963
    .local v0, "id":Ljava/lang/String;
    iget-object v1, v9, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/ConnectionRequest;

    move-object v15, v1

    .line 964
    .local v15, "request":Landroid/telecom/ConnectionRequest;
    iget v1, v9, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-ne v1, v14, :cond_439

    move v1, v14

    goto :goto_43a

    :cond_439
    move v1, v13

    :goto_43a
    move v8, v1

    .line 965
    .local v8, "isIncoming":Z
    iget-object v1, v9, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    move-object v7, v1

    .line 967
    .local v7, "connectionMgrPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    iget-object v1, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmAreAccountsInitialized(Landroid/telecom/ConnectionService;)Z

    move-result v1

    if-nez v1, :cond_46e

    .line 968
    new-array v1, v14, [Ljava/lang/Object;

    aput-object v0, v1, v13

    invoke-static {v10, v12, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 969
    iget-object v1, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmPreInitializationConnectionRequests(Landroid/telecom/ConnectionService;)Ljava/util/List;

    move-result-object v12

    new-instance v13, Landroid/telecom/ConnectionService$2$3;

    const-string v3, "H.CS.crCoF.pICR"

    const/4 v4, 0x0

    move-object v1, v13

    move-object/from16 v2, p0

    move-object v5, v7

    move-object v6, v0

    move-object v14, v7

    .end local v7    # "connectionMgrPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .local v14, "connectionMgrPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    move-object v7, v15

    move/from16 v16, v8

    .end local v8    # "isIncoming":Z
    .local v16, "isIncoming":Z
    invoke-direct/range {v1 .. v8}, Landroid/telecom/ConnectionService$2$3;-><init>(Landroid/telecom/ConnectionService$2;Ljava/lang/String;Ljava/lang/Object;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Z)V

    .line 978
    invoke-virtual {v13}, Landroid/telecom/ConnectionService$2$3;->prepare()Ljava/lang/Runnable;

    move-result-object v1

    .line 969
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_47f

    .line 980
    .end local v14    # "connectionMgrPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .end local v16    # "isIncoming":Z
    .restart local v7    # "connectionMgrPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .restart local v8    # "isIncoming":Z
    :cond_46e
    move-object v1, v7

    move/from16 v16, v8

    .end local v7    # "connectionMgrPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .end local v8    # "isIncoming":Z
    .local v1, "connectionMgrPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .restart local v16    # "isIncoming":Z
    new-array v3, v14, [Ljava/lang/Object;

    aput-object v0, v3, v13

    invoke-static {v10, v2, v3}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 981
    iget-object v2, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move/from16 v3, v16

    .end local v16    # "isIncoming":Z
    .local v3, "isIncoming":Z
    invoke-static {v2, v1, v0, v15, v3}, Landroid/telecom/ConnectionService;->-$$Nest$mcreateConnectionFailed(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Z)V
    :try_end_47f
    .catchall {:try_start_42a .. :try_end_47f} :catchall_488

    .line 985
    .end local v0    # "id":Ljava/lang/String;
    .end local v1    # "connectionMgrPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .end local v3    # "isIncoming":Z
    .end local v15    # "request":Landroid/telecom/ConnectionRequest;
    :goto_47f
    invoke-virtual {v9}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 986
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 987
    nop

    .line 988
    goto/16 :goto_8a7

    .line 985
    :catchall_488
    move-exception v0

    invoke-virtual {v9}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 986
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 987
    throw v0

    .line 1468
    .end local v9    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_490
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1470
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_495
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.oEC"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1472
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1473
    .local v0, "callId":Ljava/lang/String;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 1474
    .local v2, "extras":Landroid/os/Bundle;
    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3, v0, v2}, Landroid/telecom/ConnectionService;->-$$Nest$mhandleExtrasChanged(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_4ab
    .catchall {:try_start_495 .. :try_end_4ab} :catchall_4b4

    .line 1476
    .end local v0    # "callId":Ljava/lang/String;
    .end local v2    # "extras":Landroid/os/Bundle;
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1477
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1478
    nop

    .line 1479
    goto/16 :goto_8a7

    .line 1476
    :catchall_4b4
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1477
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1478
    throw v0

    .line 1425
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_4bc
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1427
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_4c1
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.sCE"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1429
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1430
    .restart local v0    # "callId":Ljava/lang/String;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 1431
    .local v2, "event":Ljava/lang/String;
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 1432
    .local v3, "extras":Landroid/os/Bundle;
    iget-object v4, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v4, v0, v2, v3}, Landroid/telecom/ConnectionService;->-$$Nest$msendCallEvent(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_4db
    .catchall {:try_start_4c1 .. :try_end_4db} :catchall_4e4

    .line 1434
    .end local v0    # "callId":Ljava/lang/String;
    .end local v2    # "event":Ljava/lang/String;
    .end local v3    # "extras":Landroid/os/Bundle;
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1435
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1436
    nop

    .line 1437
    goto/16 :goto_8a7

    .line 1434
    :catchall_4e4
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1435
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1436
    throw v0

    .line 1413
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_4ec
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1415
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_4f1
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.pEC"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1417
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/telecom/ConnectionService;->-$$Nest$mpullExternalCall(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_503
    .catchall {:try_start_4f1 .. :try_end_503} :catchall_50c

    .line 1419
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1420
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1421
    nop

    .line 1422
    goto/16 :goto_8a7

    .line 1419
    :catchall_50c
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1420
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1421
    throw v0

    .line 1237
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_514
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1238
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.s"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1240
    :try_start_522
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/telecom/ConnectionService;->-$$Nest$msilence(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_52b
    .catchall {:try_start_522 .. :try_end_52b} :catchall_534

    .line 1242
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1243
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1244
    nop

    .line 1245
    goto/16 :goto_8a7

    .line 1242
    :catchall_534
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1243
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1244
    throw v0

    .line 1190
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_53c
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1191
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.rWM"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1194
    :try_start_54a
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v2, v3}, Landroid/telecom/ConnectionService;->-$$Nest$mreject(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_557
    .catchall {:try_start_54a .. :try_end_557} :catchall_560

    .line 1196
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1197
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1198
    nop

    .line 1199
    goto/16 :goto_8a7

    .line 1196
    :catchall_560
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1197
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1198
    throw v0

    .line 1374
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_568
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1376
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_56d
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.sC"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1378
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/telecom/ConnectionService;->-$$Nest$mswapConference(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_57f
    .catchall {:try_start_56d .. :try_end_57f} :catchall_588

    .line 1380
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1381
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1382
    nop

    .line 1383
    goto/16 :goto_8a7

    .line 1380
    :catchall_588
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1381
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1382
    throw v0

    .line 1362
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_590
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1364
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_595
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.mC"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1366
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/telecom/ConnectionService;->-$$Nest$mmergeConference(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_5a7
    .catchall {:try_start_595 .. :try_end_5a7} :catchall_5b0

    .line 1368
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1369
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1370
    nop

    .line 1371
    goto/16 :goto_8a7

    .line 1368
    :catchall_5b0
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1369
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1370
    throw v0

    .line 1143
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_5b8
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1144
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.anV"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1147
    :try_start_5c6
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1148
    .restart local v0    # "callId":Ljava/lang/String;
    iget v2, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1149
    .local v2, "videoState":I
    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-virtual {v3, v0, v2}, Landroid/telecom/ConnectionService;->answerVideo(Ljava/lang/String;I)V
    :try_end_5d1
    .catchall {:try_start_5c6 .. :try_end_5d1} :catchall_5da

    .line 1151
    .end local v0    # "callId":Ljava/lang/String;
    .end local v2    # "videoState":I
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1152
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1153
    nop

    .line 1154
    goto/16 :goto_8a7

    .line 1151
    :catchall_5da
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1152
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1153
    throw v0

    .line 879
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_5e2
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 881
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_5e7
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.rCSA"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 883
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmAdapter(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v0

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    invoke-virtual {v0, v2}, Landroid/telecom/ConnectionServiceAdapter;->removeAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V
    :try_end_5fd
    .catchall {:try_start_5e7 .. :try_end_5fd} :catchall_606

    .line 885
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 886
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 887
    nop

    .line 888
    goto/16 :goto_8a7

    .line 885
    :catchall_606
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 886
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 887
    throw v0

    .line 1399
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_60e
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1401
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_613
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.oPDC"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1403
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1404
    .restart local v0    # "callId":Ljava/lang/String;
    iget v2, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-ne v2, v14, :cond_625

    move v13, v14

    :cond_625
    move v2, v13

    .line 1405
    .local v2, "proceed":Z
    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3, v0, v2}, Landroid/telecom/ConnectionService;->-$$Nest$monPostDialContinue(Landroid/telecom/ConnectionService;Ljava/lang/String;Z)V
    :try_end_62b
    .catchall {:try_start_613 .. :try_end_62b} :catchall_634

    .line 1407
    .end local v0    # "callId":Ljava/lang/String;
    .end local v2    # "proceed":Z
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1408
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1409
    nop

    .line 1410
    goto/16 :goto_8a7

    .line 1407
    :catchall_634
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1408
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1409
    throw v0

    .line 1350
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_63c
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1352
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_641
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.sFC"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1354
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/telecom/ConnectionService;->-$$Nest$msplitFromConference(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_653
    .catchall {:try_start_641 .. :try_end_653} :catchall_65c

    .line 1356
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1357
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1358
    nop

    .line 1359
    goto/16 :goto_8a7

    .line 1356
    :catchall_65c
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1357
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1358
    throw v0

    .line 1336
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_664
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1338
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_669
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.c"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1340
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1341
    .local v0, "callId1":Ljava/lang/String;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 1342
    .local v2, "callId2":Ljava/lang/String;
    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3, v0, v2}, Landroid/telecom/ConnectionService;->-$$Nest$mconference(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_67f
    .catchall {:try_start_669 .. :try_end_67f} :catchall_688

    .line 1344
    .end local v0    # "callId1":Ljava/lang/String;
    .end local v2    # "callId2":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1345
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1346
    nop

    .line 1347
    goto/16 :goto_8a7

    .line 1344
    :catchall_688
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1345
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1346
    throw v0

    .line 1324
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_690
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1326
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_695
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.sDT"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1328
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/telecom/ConnectionService;->-$$Nest$mstopDtmfTone(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_6a7
    .catchall {:try_start_695 .. :try_end_6a7} :catchall_6b0

    .line 1330
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1331
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1332
    nop

    .line 1333
    goto/16 :goto_8a7

    .line 1330
    :catchall_6b0
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1331
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1332
    throw v0

    .line 1312
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_6b8
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1314
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_6bd
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.pDT"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1316
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    invoke-static {v0, v2, v3}, Landroid/telecom/ConnectionService;->-$$Nest$mplayDtmfTone(Landroid/telecom/ConnectionService;Ljava/lang/String;C)V
    :try_end_6d7
    .catchall {:try_start_6bd .. :try_end_6d7} :catchall_6e0

    .line 1318
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1319
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1320
    nop

    .line 1321
    goto/16 :goto_8a7

    .line 1318
    :catchall_6e0
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1319
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1320
    throw v0

    .line 1270
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_6e8
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1271
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.cASC"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1274
    :try_start_6f6
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1275
    .local v0, "callId":Ljava/lang/String;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/telecom/CallAudioState;

    .line 1276
    .local v2, "audioState":Landroid/telecom/CallAudioState;
    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    new-instance v4, Landroid/telecom/CallAudioState;

    invoke-direct {v4, v2}, Landroid/telecom/CallAudioState;-><init>(Landroid/telecom/CallAudioState;)V

    invoke-static {v3, v0, v4}, Landroid/telecom/ConnectionService;->-$$Nest$monCallAudioStateChanged(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/CallAudioState;)V
    :try_end_708
    .catchall {:try_start_6f6 .. :try_end_708} :catchall_711

    .line 1278
    .end local v0    # "callId":Ljava/lang/String;
    .end local v2    # "audioState":Landroid/telecom/CallAudioState;
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1279
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1280
    nop

    .line 1281
    goto/16 :goto_8a7

    .line 1278
    :catchall_711
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1279
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1280
    throw v0

    .line 1259
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_719
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1260
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.u"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1262
    :try_start_727
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/telecom/ConnectionService;->unhold(Ljava/lang/String;)V
    :try_end_730
    .catchall {:try_start_727 .. :try_end_730} :catchall_739

    .line 1264
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1265
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1266
    nop

    .line 1267
    goto/16 :goto_8a7

    .line 1264
    :catchall_739
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1265
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1266
    throw v0

    .line 1248
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_741
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1249
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    invoke-static {v0, v7}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1251
    :try_start_74d
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/telecom/ConnectionService;->hold(Ljava/lang/String;)V
    :try_end_756
    .catchall {:try_start_74d .. :try_end_756} :catchall_75f

    .line 1253
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1254
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1255
    nop

    .line 1256
    goto/16 :goto_8a7

    .line 1253
    :catchall_75f
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1254
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1255
    throw v0

    .line 1226
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_767
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1227
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.d"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1229
    :try_start_775
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/telecom/ConnectionService;->-$$Nest$mdisconnect(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_77e
    .catchall {:try_start_775 .. :try_end_77e} :catchall_787

    .line 1231
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1232
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1233
    nop

    .line 1234
    goto/16 :goto_8a7

    .line 1231
    :catchall_787
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1232
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1233
    throw v0

    .line 1168
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_78f
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1169
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    invoke-static {v0, v7}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1171
    :try_start_79b
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/telecom/ConnectionService;->-$$Nest$mreject(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_7a4
    .catchall {:try_start_79b .. :try_end_7a4} :catchall_7ad

    .line 1173
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1174
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1175
    nop

    .line 1176
    goto/16 :goto_8a7

    .line 1173
    :catchall_7ad
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1174
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1175
    throw v0

    .line 1132
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_7b5
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1133
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.an"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1135
    :try_start_7c3
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/telecom/ConnectionService;->answer(Ljava/lang/String;)V
    :try_end_7cc
    .catchall {:try_start_7c3 .. :try_end_7cc} :catchall_7d5

    .line 1137
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1138
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1139
    nop

    .line 1140
    goto/16 :goto_8a7

    .line 1137
    :catchall_7d5
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1138
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1139
    throw v0

    .line 1121
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_7dd
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1122
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.ab"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1124
    :try_start_7eb
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/telecom/ConnectionService;->-$$Nest$mabort(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_7f4
    .catchall {:try_start_7eb .. :try_end_7f4} :catchall_7fd

    .line 1126
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1127
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1128
    nop

    .line 1129
    goto/16 :goto_8a7

    .line 1126
    :catchall_7fd
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1127
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1128
    throw v0

    .line 891
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_805
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Lcom/android/internal/os/SomeArgs;

    .line 892
    .local v15, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v15, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    invoke-static {v0, v6}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 894
    :try_start_811
    iget-object v0, v15, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/telecom/PhoneAccountHandle;

    .line 896
    .restart local v5    # "connectionManagerPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    iget-object v0, v15, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 897
    .local v0, "id":Ljava/lang/String;
    iget-object v1, v15, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Landroid/telecom/ConnectionRequest;

    .line 898
    .local v7, "request":Landroid/telecom/ConnectionRequest;
    iget v1, v15, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-ne v1, v14, :cond_825

    move v8, v14

    goto :goto_826

    :cond_825
    move v8, v13

    .line 899
    .restart local v8    # "isIncoming":Z
    :goto_826
    iget v1, v15, Lcom/android/internal/os/SomeArgs;->argi2:I

    if-ne v1, v14, :cond_82c

    move v9, v14

    goto :goto_82d

    :cond_82c
    move v9, v13

    .line 900
    .local v9, "isUnknown":Z
    :goto_82d
    iget-object v1, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmAreAccountsInitialized(Landroid/telecom/ConnectionService;)Z

    move-result v1

    if-nez v1, :cond_856

    .line 901
    new-array v1, v14, [Ljava/lang/Object;

    aput-object v0, v1, v13

    invoke-static {v10, v12, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 902
    iget-object v1, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmPreInitializationConnectionRequests(Landroid/telecom/ConnectionService;)Ljava/util/List;

    move-result-object v12

    new-instance v13, Landroid/telecom/ConnectionService$2$1;

    const-string v3, "H.CS.crCo.pICR"

    const/4 v4, 0x0

    move-object v1, v13

    move-object/from16 v2, p0

    move-object v6, v0

    invoke-direct/range {v1 .. v9}, Landroid/telecom/ConnectionService$2$1;-><init>(Landroid/telecom/ConnectionService$2;Ljava/lang/String;Ljava/lang/Object;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V

    .line 915
    invoke-virtual {v13}, Landroid/telecom/ConnectionService$2$1;->prepare()Ljava/lang/Runnable;

    move-result-object v1

    .line 902
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_867

    .line 917
    :cond_856
    iget-object v1, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v16, v1

    move-object/from16 v17, v5

    move-object/from16 v18, v0

    move-object/from16 v19, v7

    move/from16 v20, v8

    move/from16 v21, v9

    invoke-static/range {v16 .. v21}, Landroid/telecom/ConnectionService;->-$$Nest$mcreateConnection(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    :try_end_867
    .catchall {:try_start_811 .. :try_end_867} :catchall_86f

    .line 925
    .end local v0    # "id":Ljava/lang/String;
    .end local v5    # "connectionManagerPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .end local v7    # "request":Landroid/telecom/ConnectionRequest;
    .end local v8    # "isIncoming":Z
    .end local v9    # "isUnknown":Z
    :goto_867
    invoke-virtual {v15}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 926
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 927
    nop

    .line 928
    goto :goto_8a7

    .line 925
    :catchall_86f
    move-exception v0

    invoke-virtual {v15}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 926
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 927
    throw v0

    .line 865
    .end local v15    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_877
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 867
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_87c
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 868
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.aCSA"

    invoke-static {v2, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 870
    iget-object v2, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v2}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmAdapter(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/telecom/ConnectionServiceAdapter;->addAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V

    .line 871
    iget-object v2, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v2}, Landroid/telecom/ConnectionService;->-$$Nest$monAdapterAttached(Landroid/telecom/ConnectionService;)V
    :try_end_897
    .catchall {:try_start_87c .. :try_end_897} :catchall_89f

    .line 873
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 874
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 875
    nop

    .line 876
    goto :goto_8a7

    .line 873
    :catchall_89f
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 874
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 875
    throw v0

    .line 1533
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :goto_8a7
    return-void

    :pswitch_data_8a8
    .packed-switch 0x1
        :pswitch_877
        :pswitch_805
        :pswitch_7dd
        :pswitch_7b5
        :pswitch_78f
        :pswitch_767
        :pswitch_741
        :pswitch_719
        :pswitch_6e8
        :pswitch_6b8
        :pswitch_690
        :pswitch_664
        :pswitch_63c
        :pswitch_60e
        :pswitch_1a
        :pswitch_5e2
        :pswitch_5b8
        :pswitch_590
        :pswitch_568
        :pswitch_53c
        :pswitch_514
        :pswitch_4ec
        :pswitch_4bc
        :pswitch_490
        :pswitch_41e
        :pswitch_3f2
        :pswitch_3ca
        :pswitch_39e
        :pswitch_354
        :pswitch_34d
        :pswitch_346
        :pswitch_2de
        :pswitch_2b6
        :pswitch_28a
        :pswitch_217
        :pswitch_1cb
        :pswitch_15a
        :pswitch_132
        :pswitch_106
        :pswitch_d4
        :pswitch_a8
        :pswitch_7c
        :pswitch_4c
        :pswitch_1c
    .end packed-switch
.end method
