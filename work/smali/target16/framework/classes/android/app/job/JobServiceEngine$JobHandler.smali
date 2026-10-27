.class Landroid/app/job/JobServiceEngine$JobHandler;
.super Landroid/os/Handler;
.source "JobServiceEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/job/JobServiceEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "JobHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/job/JobServiceEngine;


# direct methods
.method constructor blacklist <init>(Landroid/app/job/JobServiceEngine;Landroid/os/Looper;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 174
    iput-object p1, p0, Landroid/app/job/JobServiceEngine$JobHandler;->this$0:Landroid/app/job/JobServiceEngine;

    .line 175
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 176
    return-void
.end method

.method private blacklist ackGetTransferredDownloadBytesMessage(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;J)V
    .registers 7

    .line 342
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getCallback()Landroid/app/job/IJobCallback;

    move-result-object v0

    .line 343
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p1

    .line 344
    if-nez p2, :cond_c

    const/4 p2, -0x1

    goto :goto_10

    :cond_c
    invoke-virtual {p2}, Landroid/app/job/JobWorkItem;->getWorkId()I

    move-result p2

    .line 345
    :goto_10
    const-string v1, "JobServiceEngine"

    if-eqz v0, :cond_1f

    .line 347
    :try_start_14
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/job/IJobCallback;->acknowledgeGetTransferredDownloadBytesMessage(IIJ)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_18

    .line 350
    :goto_17
    goto :goto_2b

    .line 348
    :catch_18
    move-exception p1

    .line 349
    const-string p1, "System unreachable for returning progress."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 351
    :cond_1f
    const/4 p1, 0x3

    invoke-static {v1, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 352
    const-string p1, "Attempting to ack a job that has already been processed."

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_2b
    :goto_2b
    return-void
.end method

.method private blacklist ackGetTransferredUploadBytesMessage(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;J)V
    .registers 7

    .line 358
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getCallback()Landroid/app/job/IJobCallback;

    move-result-object v0

    .line 359
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p1

    .line 360
    if-nez p2, :cond_c

    const/4 p2, -0x1

    goto :goto_10

    :cond_c
    invoke-virtual {p2}, Landroid/app/job/JobWorkItem;->getWorkId()I

    move-result p2

    .line 361
    :goto_10
    const-string v1, "JobServiceEngine"

    if-eqz v0, :cond_1f

    .line 363
    :try_start_14
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/job/IJobCallback;->acknowledgeGetTransferredUploadBytesMessage(IIJ)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_18

    .line 366
    :goto_17
    goto :goto_2b

    .line 364
    :catch_18
    move-exception p1

    .line 365
    const-string p1, "System unreachable for returning progress."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 367
    :cond_1f
    const/4 p1, 0x3

    invoke-static {v1, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 368
    const-string p1, "Attempting to ack a job that has already been processed."

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_2b
    :goto_2b
    return-void
.end method

.method private greylist-max-o ackStartMessage(Landroid/app/job/JobParameters;Z)V
    .registers 5

    .line 373
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getCallback()Landroid/app/job/IJobCallback;

    move-result-object v0

    .line 374
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p1

    .line 375
    const-string v1, "JobServiceEngine"

    if-eqz v0, :cond_17

    .line 377
    :try_start_c
    invoke-interface {v0, p1, p2}, Landroid/app/job/IJobCallback;->acknowledgeStartMessage(IZ)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    .line 380
    :goto_f
    goto :goto_23

    .line 378
    :catch_10
    move-exception p1

    .line 379
    const-string p1, "System unreachable for starting job."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 382
    :cond_17
    const/4 p1, 0x3

    invoke-static {v1, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 383
    const-string p1, "Attempting to ack a job that has already been processed."

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_23
    :goto_23
    return-void
.end method

.method private greylist-max-o ackStopMessage(Landroid/app/job/JobParameters;Z)V
    .registers 5

    .line 389
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getCallback()Landroid/app/job/IJobCallback;

    move-result-object v0

    .line 390
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p1

    .line 391
    const-string v1, "JobServiceEngine"

    if-eqz v0, :cond_17

    .line 393
    :try_start_c
    invoke-interface {v0, p1, p2}, Landroid/app/job/IJobCallback;->acknowledgeStopMessage(IZ)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    .line 396
    :goto_f
    goto :goto_23

    .line 394
    :catch_10
    move-exception p1

    .line 395
    const-string p1, "System unreachable for stopping job."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 398
    :cond_17
    const/4 p1, 0x3

    invoke-static {v1, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 399
    const-string p1, "Attempting to ack a job that has already been processed."

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_23
    :goto_23
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 14

    .line 180
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "Error while executing job: "

    const-wide/16 v2, -0x1

    const-string v4, "JobServiceEngine"

    packed-switch v0, :pswitch_data_1e6

    .line 335
    const-string p1, "Unrecognised message received."

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e5

    .line 325
    :pswitch_12
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/job/JobParameters;

    .line 327
    :try_start_16
    iget-object v0, p0, Landroid/app/job/JobServiceEngine$JobHandler;->this$0:Landroid/app/job/JobServiceEngine;

    invoke-virtual {v0, p1}, Landroid/app/job/JobServiceEngine;->onNetworkChanged(Landroid/app/job/JobParameters;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1b} :catch_1d

    .line 331
    goto/16 :goto_1e5

    .line 328
    :catch_1d
    move-exception v0

    .line 329
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 307
    :pswitch_3c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 308
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/app/job/JobParameters;

    .line 309
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/app/Notification;

    .line 310
    invoke-virtual {v0}, Landroid/app/job/JobParameters;->getCallback()Landroid/app/job/IJobCallback;

    move-result-object v2

    .line 311
    if-eqz v2, :cond_61

    .line 313
    :try_start_4e
    invoke-virtual {v0}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    iget v3, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v5, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    invoke-interface {v2, v0, v3, v1, v5}, Landroid/app/job/IJobCallback;->setNotification(IILandroid/app/Notification;I)V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_59} :catch_5a

    goto :goto_60

    .line 315
    :catch_5a
    move-exception v0

    .line 316
    const-string v0, "Error providing notification: binder has gone away."

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :goto_60
    goto :goto_67

    .line 319
    :cond_61
    const-string/jumbo v0, "setNotification() called for a nonexistent job."

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :goto_67
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 322
    goto/16 :goto_1e5

    .line 288
    :pswitch_6c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 289
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/app/job/JobParameters;

    .line 290
    invoke-virtual {v0}, Landroid/app/job/JobParameters;->getCallback()Landroid/app/job/IJobCallback;

    move-result-object v5

    .line 291
    if-eqz v5, :cond_92

    .line 293
    :try_start_7a
    invoke-virtual {v0}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v6

    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Landroid/app/job/JobWorkItem;

    iget-wide v8, p1, Lcom/android/internal/os/SomeArgs;->argl1:J

    iget-wide v10, p1, Lcom/android/internal/os/SomeArgs;->argl2:J

    invoke-interface/range {v5 .. v11}, Landroid/app/job/IJobCallback;->updateEstimatedNetworkBytes(ILandroid/app/job/JobWorkItem;JJ)V
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_7a .. :try_end_8a} :catch_8b

    goto :goto_91

    .line 295
    :catch_8b
    move-exception v0

    .line 296
    const-string v0, "Error updating estimated transfer size to system: binder has gone away."

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :goto_91
    goto :goto_98

    .line 300
    :cond_92
    const-string/jumbo v0, "updateEstimatedNetworkBytes() called for a nonexistent job id."

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :goto_98
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 304
    goto/16 :goto_1e5

    .line 270
    :pswitch_9d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 271
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/app/job/JobParameters;

    .line 272
    invoke-virtual {v0}, Landroid/app/job/JobParameters;->getCallback()Landroid/app/job/IJobCallback;

    move-result-object v5

    .line 273
    if-eqz v5, :cond_c3

    .line 275
    :try_start_ab
    invoke-virtual {v0}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v6

    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Landroid/app/job/JobWorkItem;

    iget-wide v8, p1, Lcom/android/internal/os/SomeArgs;->argl1:J

    iget-wide v10, p1, Lcom/android/internal/os/SomeArgs;->argl2:J

    invoke-interface/range {v5 .. v11}, Landroid/app/job/IJobCallback;->updateTransferredNetworkBytes(ILandroid/app/job/JobWorkItem;JJ)V
    :try_end_bb
    .catch Landroid/os/RemoteException; {:try_start_ab .. :try_end_bb} :catch_bc

    goto :goto_c2

    .line 277
    :catch_bc
    move-exception v0

    .line 278
    const-string v0, "Error updating data transfer progress to system: binder has gone away."

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :goto_c2
    goto :goto_c9

    .line 282
    :cond_c3
    const-string/jumbo v0, "updateDataTransferProgress() called for a nonexistent job id."

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :goto_c9
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 285
    goto/16 :goto_1e5

    .line 256
    :pswitch_ce
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 257
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/app/job/JobParameters;

    .line 258
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/app/job/JobWorkItem;

    .line 260
    :try_start_da
    iget-object v2, p0, Landroid/app/job/JobServiceEngine$JobHandler;->this$0:Landroid/app/job/JobServiceEngine;

    invoke-virtual {v2, v0, v1}, Landroid/app/job/JobServiceEngine;->getTransferredUploadBytes(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;)J

    move-result-wide v2

    .line 261
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/app/job/JobServiceEngine$JobHandler;->ackGetTransferredUploadBytesMessage(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;J)V
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_e3} :catch_e9

    .line 265
    nop

    .line 266
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 267
    goto/16 :goto_1e5

    .line 262
    :catch_e9
    move-exception v0

    move-object p1, v0

    .line 263
    const-string v0, "Application unable to handle getTransferredUploadBytes."

    invoke-static {v4, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 242
    :pswitch_f6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 243
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/app/job/JobParameters;

    .line 244
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/app/job/JobWorkItem;

    .line 246
    :try_start_102
    iget-object v2, p0, Landroid/app/job/JobServiceEngine$JobHandler;->this$0:Landroid/app/job/JobServiceEngine;

    invoke-virtual {v2, v0, v1}, Landroid/app/job/JobServiceEngine;->getTransferredDownloadBytes(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;)J

    move-result-wide v2

    .line 247
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/app/job/JobServiceEngine$JobHandler;->ackGetTransferredDownloadBytesMessage(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;J)V
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_10b} :catch_111

    .line 251
    nop

    .line 252
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 253
    goto/16 :goto_1e5

    .line 248
    :catch_111
    move-exception v0

    move-object p1, v0

    .line 249
    const-string v0, "Application unable to handle getTransferredDownloadBytes."

    invoke-static {v4, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 250
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 225
    :pswitch_11e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/job/JobParameters;

    .line 226
    iget p1, p1, Landroid/os/Message;->arg2:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_128

    goto :goto_129

    :cond_128
    const/4 v1, 0x0

    .line 227
    :goto_129
    invoke-virtual {v0}, Landroid/app/job/JobParameters;->getCallback()Landroid/app/job/IJobCallback;

    move-result-object p1

    .line 228
    if-eqz p1, :cond_142

    .line 230
    :try_start_12f
    invoke-virtual {v0}, Landroid/app/job/JobParameters;->disableCleaner()V

    .line 231
    invoke-virtual {v0}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    invoke-interface {p1, v0, v1}, Landroid/app/job/IJobCallback;->jobFinished(IZ)V
    :try_end_139
    .catch Landroid/os/RemoteException; {:try_start_12f .. :try_end_139} :catch_13a

    goto :goto_140

    .line 232
    :catch_13a
    move-exception v0

    .line 233
    const-string p1, "Error reporting job finish to system: binder has goneaway."

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :goto_140
    goto/16 :goto_1e5

    .line 237
    :cond_142
    const-string p1, "finishJob() called for a nonexistent job id."

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    goto/16 :goto_1e5

    .line 206
    :pswitch_149
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/job/JobParameters;

    .line 207
    nop

    .line 208
    invoke-static {}, Landroid/app/job/JobServiceEngine;->-$$Nest$sfgetDEBUG_STORE_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_15c

    .line 209
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/os/DebugStore;->recordStopJob(I)J

    move-result-wide v2

    .line 212
    :cond_15c
    :try_start_15c
    iget-object v0, p0, Landroid/app/job/JobServiceEngine$JobHandler;->this$0:Landroid/app/job/JobServiceEngine;

    invoke-virtual {v0, p1}, Landroid/app/job/JobServiceEngine;->onStopJob(Landroid/app/job/JobParameters;)Z

    move-result v0

    .line 213
    invoke-direct {p0, p1, v0}, Landroid/app/job/JobServiceEngine$JobHandler;->ackStopMessage(Landroid/app/job/JobParameters;Z)V
    :try_end_165
    .catch Ljava/lang/Exception; {:try_start_15c .. :try_end_165} :catch_173
    .catchall {:try_start_15c .. :try_end_165} :catchall_170

    .line 218
    invoke-static {}, Landroid/app/job/JobServiceEngine;->-$$Nest$sfgetDEBUG_STORE_ENABLED()Z

    move-result p1

    if-eqz p1, :cond_16e

    .line 219
    invoke-static {v2, v3}, Lcom/android/internal/os/DebugStore;->recordEventEnd(J)V

    .line 222
    :cond_16e
    goto/16 :goto_1e5

    .line 218
    :catchall_170
    move-exception v0

    move-object p1, v0

    goto :goto_180

    .line 214
    :catch_173
    move-exception v0

    move-object p1, v0

    .line 215
    :try_start_175
    const-string v0, "Application unable to handle onStopJob."

    invoke-static {v4, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_180
    .catchall {:try_start_175 .. :try_end_180} :catchall_170

    .line 218
    :goto_180
    invoke-static {}, Landroid/app/job/JobServiceEngine;->-$$Nest$sfgetDEBUG_STORE_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_189

    .line 219
    invoke-static {v2, v3}, Lcom/android/internal/os/DebugStore;->recordEventEnd(J)V

    .line 221
    :cond_189
    throw p1

    .line 182
    :pswitch_18a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/job/JobParameters;

    .line 183
    nop

    .line 184
    invoke-static {}, Landroid/app/job/JobServiceEngine;->-$$Nest$sfgetDEBUG_STORE_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_19e

    .line 185
    nop

    .line 186
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/os/DebugStore;->recordStartJob(I)J

    move-result-wide v2

    .line 189
    :cond_19e
    :try_start_19e
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->enableCleaner()V

    .line 190
    iget-object v0, p0, Landroid/app/job/JobServiceEngine$JobHandler;->this$0:Landroid/app/job/JobServiceEngine;

    invoke-virtual {v0, p1}, Landroid/app/job/JobServiceEngine;->onStartJob(Landroid/app/job/JobParameters;)Z

    move-result v0

    .line 191
    if-nez v0, :cond_1ac

    .line 192
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->disableCleaner()V

    .line 194
    :cond_1ac
    invoke-direct {p0, p1, v0}, Landroid/app/job/JobServiceEngine$JobHandler;->ackStartMessage(Landroid/app/job/JobParameters;Z)V
    :try_end_1af
    .catch Ljava/lang/Exception; {:try_start_19e .. :try_end_1af} :catch_1bc
    .catchall {:try_start_19e .. :try_end_1af} :catchall_1b9

    .line 199
    invoke-static {}, Landroid/app/job/JobServiceEngine;->-$$Nest$sfgetDEBUG_STORE_ENABLED()Z

    move-result p1

    if-eqz p1, :cond_1b8

    .line 200
    invoke-static {v2, v3}, Lcom/android/internal/os/DebugStore;->recordEventEnd(J)V

    .line 203
    :cond_1b8
    goto :goto_1e5

    .line 199
    :catchall_1b9
    move-exception v0

    move-object p1, v0

    goto :goto_1db

    .line 195
    :catch_1bc
    move-exception v0

    .line 196
    :try_start_1bd
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_1db
    .catchall {:try_start_1bd .. :try_end_1db} :catchall_1b9

    .line 199
    :goto_1db
    invoke-static {}, Landroid/app/job/JobServiceEngine;->-$$Nest$sfgetDEBUG_STORE_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_1e4

    .line 200
    invoke-static {v2, v3}, Lcom/android/internal/os/DebugStore;->recordEventEnd(J)V

    .line 202
    :cond_1e4
    throw p1

    .line 338
    :goto_1e5
    return-void

    :pswitch_data_1e6
    .packed-switch 0x0
        :pswitch_18a
        :pswitch_149
        :pswitch_11e
        :pswitch_f6
        :pswitch_ce
        :pswitch_9d
        :pswitch_6c
        :pswitch_3c
        :pswitch_12
    .end packed-switch
.end method
