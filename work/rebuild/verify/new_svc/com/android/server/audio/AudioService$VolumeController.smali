.class public Lcom/android/server/audio/AudioService$VolumeController;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Lcom/android/server/audio/AudioService$ISafeHearingVolumeController;


# instance fields
.field public mController:Landroid/media/IVolumeController;

.field public mLongPressTimeout:I

.field public mNextLongPress:J

.field public mVisible:Z

.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2

    .line 13851
    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeController;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 13932
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService$VolumeController;->binder(Landroid/media/IVolumeController;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public final binder(Landroid/media/IVolumeController;)Landroid/os/IBinder;
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 13936
    :cond_4
    invoke-interface {p1}, Landroid/media/IVolumeController;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public getController()Landroid/media/IVolumeController;
    .registers 1

    .line 13865
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    return-object p0
.end method

.method public isSameBinder(Landroid/media/IVolumeController;)Z
    .registers 3

    .line 13928
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeController;->binder(Landroid/media/IVolumeController;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public loadSettings(Landroid/content/ContentResolver;)V
    .registers 6

    .line 13869
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSettings(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/SettingsAdapter;

    move-result-object v0

    const/16 v1, 0x1f4

    const/4 v2, -0x2

    const-string/jumbo v3, "long_press_timeout"

    invoke-virtual {v0, p1, v3, v1, v2}, Lcom/android/server/audio/SettingsAdapter;->getSecureIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mLongPressTimeout:I

    return-void
.end method

.method public postDismiss()V
    .registers 3

    .line 14001
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez p0, :cond_5

    return-void

    .line 14004
    :cond_5
    :try_start_5
    invoke-interface {p0}, Landroid/media/IVolumeController;->dismiss()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 14006
    const-string v0, "VolumeController"

    const-string v1, "Error calling dismiss"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public postDisplayCsdWarning(II)V
    .registers 5

    .line 13959
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    const-string v0, "VolumeController"

    if-nez p0, :cond_c

    .line 13960
    const-string p0, "Unable to display CSD warning, no controller"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 13964
    :cond_c
    :try_start_c
    invoke-interface {p0, p1, p2}, Landroid/media/IVolumeController;->displayCsdWarning(II)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p0

    .line 13966
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error calling displayCsdWarning for warning "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public postDisplaySafeVolumeWarning(I)V
    .registers 3

    .line 13946
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez p0, :cond_5

    return-void

    :cond_5
    or-int/lit8 p1, p1, 0x1

    .line 13950
    :try_start_7
    invoke-interface {p0, p1}, Landroid/media/IVolumeController;->displaySafeVolumeWarning(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p0

    .line 13952
    const-string p1, "VolumeController"

    const-string v0, "Error calling displaySafeVolumeWarning"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public postMasterMuteChanged(I)V
    .registers 3

    .line 13981
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez p0, :cond_5

    return-void

    .line 13984
    :cond_5
    :try_start_5
    invoke-interface {p0, p1}, Landroid/media/IVolumeController;->masterMuteChanged(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 13986
    const-string p1, "VolumeController"

    const-string v0, "Error calling masterMuteChanged"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public postVolumeChanged(II)V
    .registers 3

    .line 13971
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez p0, :cond_5

    return-void

    .line 13974
    :cond_5
    :try_start_5
    invoke-interface {p0, p1, p2}, Landroid/media/IVolumeController;->volumeChanged(II)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 13976
    const-string p1, "VolumeController"

    const-string p2, "Error calling volumeChanged"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public setA11yMode(I)V
    .registers 3

    .line 14011
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez p0, :cond_5

    return-void

    .line 14014
    :cond_5
    :try_start_5
    invoke-interface {p0, p1}, Landroid/media/IVolumeController;->setA11yMode(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 14016
    const-string p1, "VolumeController"

    const-string v0, "Error calling setA11Mode"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public setController(Landroid/media/IVolumeController;)V
    .registers 2

    .line 13860
    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    const/4 p1, 0x0

    .line 13861
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mVisible:Z

    return-void
.end method

.method public setLayoutDirection(I)V
    .registers 3

    .line 13991
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez p0, :cond_5

    return-void

    .line 13994
    :cond_5
    :try_start_5
    invoke-interface {p0, p1}, Landroid/media/IVolumeController;->setLayoutDirection(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 13996
    const-string p1, "VolumeController"

    const-string v0, "Error calling setLayoutDirection"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public setVisible(Z)V
    .registers 2

    .line 13924
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mVisible:Z

    return-void
.end method

.method public suppressAdjustment(IIZ)Z
    .registers 10

    const/4 v0, 0x0

    if-eqz p3, :cond_4

    return v0

    :cond_4
    const/4 p3, 0x3

    if-ne p1, p3, :cond_51

    .line 13892
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-eqz v1, :cond_51

    if-ne p1, p3, :cond_1c

    .line 13894
    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeController;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioSystem(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioSystemAdapter;

    move-result-object p1

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mLongPressTimeout:I

    .line 13895
    invoke-virtual {p1, p3, v1}, Lcom/android/server/audio/AudioSystemAdapter;->isStreamActive(II)Z

    move-result p1

    if-eqz p1, :cond_1c

    return v0

    .line 13901
    :cond_1c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 p1, 0x1

    and-int/2addr p2, p1

    if-eqz p2, :cond_41

    .line 13902
    iget-boolean p2, p0, Lcom/android/server/audio/AudioService$VolumeController;->mVisible:Z

    if-nez p2, :cond_41

    .line 13904
    iget-wide p2, p0, Lcom/android/server/audio/AudioService$VolumeController;->mNextLongPress:J

    cmp-long p2, p2, v1

    if-gez p2, :cond_40

    .line 13906
    iget-object p2, p0, Lcom/android/server/audio/AudioService$VolumeController;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmVolumeControllerLongPressEnabled(Lcom/android/server/audio/AudioService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_3c

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mLongPressTimeout:I

    :cond_3c
    int-to-long p2, v0

    add-long/2addr v1, p2

    .line 13907
    iput-wide v1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mNextLongPress:J

    :cond_40
    return p1

    .line 13910
    :cond_41
    iget-wide p2, p0, Lcom/android/server/audio/AudioService$VolumeController;->mNextLongPress:J

    const-wide/16 v3, 0x0

    cmp-long v5, p2, v3

    if-lez v5, :cond_51

    cmp-long p2, v1, p2

    if-lez p2, :cond_50

    .line 13913
    iput-wide v3, p0, Lcom/android/server/audio/AudioService$VolumeController;->mNextLongPress:J

    return v0

    :cond_50
    return p1

    :cond_51
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 13941
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VolumeController("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeController;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mVisible:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
