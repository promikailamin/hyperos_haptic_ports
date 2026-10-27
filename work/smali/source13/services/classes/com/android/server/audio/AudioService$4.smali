.class Lcom/android/server/audio/AudioService$4;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Lcom/android/server/audio/AudioPlayBackTrigger$PlaybackTriggerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/audio/AudioService;-><init>(Landroid/content/Context;Lcom/android/server/audio/AudioSystemAdapter;Lcom/android/server/audio/SystemServerAdapter;Lcom/android/server/audio/SettingsAdapter;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;

    .line 1289
    iput-object p1, p0, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInsertPlaybackMsToHealth()V
    .registers 10

    .line 1339
    invoke-static {}, Lcom/android/server/audio/AudioServiceStub;->get()Lcom/android/server/audio/AudioServiceStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/audio/AudioServiceStub;->isAudioPlaybackTriggerSupported()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1340
    return-void

    .line 1342
    :cond_b
    invoke-static {}, Lcom/android/server/audio/AudioServiceStub;->get()Lcom/android/server/audio/AudioServiceStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/server/audio/AudioServiceStub;->insertPlaybackMsToHealth(Landroid/content/Context;)Z

    move-result v0

    .line 1343
    .local v0, "successed":Z
    if-nez v0, :cond_37

    iget-object v1, p0, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmReadPlaybackMsSettingsAttempts(Lcom/android/server/audio/AudioService;)I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->-$$Nest$fputmReadPlaybackMsSettingsAttempts(Lcom/android/server/audio/AudioService;I)V

    if-lez v2, :cond_37

    .line 1344
    iget-object v1, p0, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v2

    const/16 v3, 0xbbf

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3e8

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->-$$Nest$smsendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1347
    :cond_37
    return-void
.end method

.method public onQueueCallback(Z)V
    .registers 11
    .param p1, "fromTrigger"    # Z

    .line 1302
    invoke-static {}, Lcom/android/server/audio/AudioServiceStub;->get()Lcom/android/server/audio/AudioServiceStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/audio/AudioServiceStub;->isAudioPlaybackTriggerSupported()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1303
    return-void

    .line 1305
    :cond_b
    const/4 v0, 0x1

    if-eqz p1, :cond_2b

    iget-object v1, p0, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v1

    const/16 v2, 0xbbb

    .line 1306
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 1307
    invoke-static {}, Lcom/android/server/audio/AudioServiceStub;->get()Lcom/android/server/audio/AudioServiceStub;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/server/audio/AudioServiceStub;->updatePlaybackTime(Z)V

    .line 1308
    const-string v1, "AS.AudioService"

    const-string/jumbo v2, "onQueueCallback start trigger "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    :cond_2b
    iget-object v1, p0, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v2

    const/16 v3, 0xbbb

    .line 1311
    if-eqz p1, :cond_36

    goto :goto_37

    :cond_36
    const/4 v0, 0x2

    :goto_37
    move v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v8, 0xea60

    .line 1310
    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->-$$Nest$smsendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1314
    return-void
.end method

.method public onReadPlaybackMsSettings()V
    .registers 9

    .line 1329
    invoke-static {}, Lcom/android/server/audio/AudioServiceStub;->get()Lcom/android/server/audio/AudioServiceStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/audio/AudioServiceStub;->isAudioPlaybackTriggerSupported()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1330
    return-void

    .line 1332
    :cond_b
    invoke-static {}, Lcom/android/server/audio/AudioServiceStub;->get()Lcom/android/server/audio/AudioServiceStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/server/audio/AudioServiceStub;->readPlaybackMsSettings(Landroid/content/Context;)V

    .line 1333
    iget-object v0, p0, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v1

    const/16 v2, 0xbbf

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e8

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->-$$Nest$smsendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1335
    return-void
.end method

.method public onTriggerCallback(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 1292
    .local p1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    invoke-static {}, Lcom/android/server/audio/AudioServiceStub;->get()Lcom/android/server/audio/AudioServiceStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/audio/AudioServiceStub;->isAudioPlaybackTriggerSupported()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1293
    return-void

    .line 1295
    :cond_b
    iget-object v0, p0, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v1

    const/16 v2, 0xbbc

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v6, p1

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->-$$Nest$smsendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1298
    return-void
.end method

.method public onTriggerTimeToThreshold()V
    .registers 9

    .line 1318
    invoke-static {}, Lcom/android/server/audio/AudioServiceStub;->get()Lcom/android/server/audio/AudioServiceStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/audio/AudioServiceStub;->isAudioPlaybackTriggerSupported()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1319
    return-void

    .line 1321
    :cond_b
    invoke-static {}, Lcom/android/server/audio/AudioServiceStub;->get()Lcom/android/server/audio/AudioServiceStub;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/server/audio/AudioServiceStub;->updateCumulativePlaybackTime(Z)V

    .line 1322
    const-string v0, "AS.AudioService"

    const-string/jumbo v1, "onTriggerTimeToThreshold"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    iget-object v0, p0, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v1

    const/16 v2, 0xbbd

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->-$$Nest$smsendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1325
    return-void
.end method
