.class Landroid/media/MiuiAudioRecord$AudioRecordClient;
.super Ljava/lang/Object;
.source "MiuiAudioRecord.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MiuiAudioRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioRecordClient"
.end annotation


# instance fields
.field private blacklist mCb:Landroid/os/IBinder;

.field final synthetic blacklist this$0:Landroid/media/MiuiAudioRecord;


# direct methods
.method constructor blacklist <init>(Landroid/media/MiuiAudioRecord;Landroid/os/IBinder;)V
    .registers 7
    .param p2, "cb"    # Landroid/os/IBinder;

    .line 68
    const-string v0, " binder death"

    iput-object p1, p0, Landroid/media/MiuiAudioRecord$AudioRecordClient;->this$0:Landroid/media/MiuiAudioRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    if-eqz p2, :cond_4c

    .line 71
    :try_start_9
    invoke-static {}, Landroid/media/MiuiAudioRecord;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioRecordClient link to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 p1, 0x0

    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_2b} :catch_2c

    .line 77
    goto :goto_4c

    .line 73
    :catch_2c
    move-exception p1

    .line 75
    .local p1, "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/media/MiuiAudioRecord;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioRecordClient could not link to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/4 p2, 0x0

    .line 79
    .end local p1    # "e":Landroid/os/RemoteException;
    :cond_4c
    :goto_4c
    iput-object p2, p0, Landroid/media/MiuiAudioRecord$AudioRecordClient;->mCb:Landroid/os/IBinder;

    .line 80
    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .registers 3

    .line 83
    invoke-static {}, Landroid/media/MiuiAudioRecord;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "detect AudioRecordClient binderDied"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Landroid/media/MiuiAudioRecord$AudioRecordClient;->this$0:Landroid/media/MiuiAudioRecord;

    invoke-virtual {v0}, Landroid/media/MiuiAudioRecord;->stop()Z

    .line 85
    return-void
.end method

.method public blacklist release()V
    .registers 3

    .line 88
    iget-object v0, p0, Landroid/media/MiuiAudioRecord$AudioRecordClient;->mCb:Landroid/os/IBinder;

    if-eqz v0, :cond_16

    .line 89
    invoke-static {}, Landroid/media/MiuiAudioRecord;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioRecordClient unlink to binder death"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Landroid/media/MiuiAudioRecord$AudioRecordClient;->mCb:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MiuiAudioRecord$AudioRecordClient;->mCb:Landroid/os/IBinder;

    .line 93
    :cond_16
    return-void
.end method
