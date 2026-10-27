.class Landroid/media/AudioManager$CallInjectionModeChangedListener;
.super Ljava/lang/Object;
.source "AudioManager.java"

# interfaces
.implements Landroid/media/AudioManager$OnModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CallInjectionModeChangedListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/AudioManager;


# direct methods
.method constructor blacklist <init>(Landroid/media/AudioManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 9694
    iput-object p1, p0, Landroid/media/AudioManager$CallInjectionModeChangedListener;->this$0:Landroid/media/AudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onModeChanged(I)V
    .registers 9

    .line 9697
    iget-object v0, p0, Landroid/media/AudioManager$CallInjectionModeChangedListener;->this$0:Landroid/media/AudioManager;

    invoke-static {v0}, Landroid/media/AudioManager;->-$$Nest$fgetmCallRedirectionLock(Landroid/media/AudioManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 9698
    :try_start_7
    iget-object v1, p0, Landroid/media/AudioManager$CallInjectionModeChangedListener;->this$0:Landroid/media/AudioManager;

    invoke-static {v1}, Landroid/media/AudioManager;->-$$Nest$fgetmCallIRedirectionClients(Landroid/media/AudioManager;)Ljava/util/ArrayList;

    move-result-object v1

    .line 9699
    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 9700
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager$CallIRedirectionClientInfo;

    .line 9701
    iget-object v3, v2, Landroid/media/AudioManager$CallIRedirectionClientInfo;->trackOrRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    .line 9702
    if-eqz v3, :cond_5b

    .line 9703
    iget v4, v2, Landroid/media/AudioManager$CallIRedirectionClientInfo;->redirectMode:I

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-ne v4, v5, :cond_39

    if-eq p1, v6, :cond_39

    const/4 v4, 0x4

    if-eq p1, v4, :cond_39

    const/4 v4, 0x5

    if-ne p1, v4, :cond_43

    :cond_39
    iget v4, v2, Landroid/media/AudioManager$CallIRedirectionClientInfo;->redirectMode:I

    if-ne v4, v6, :cond_5b

    const/4 v4, 0x3

    if-eq p1, v4, :cond_5b

    const/4 v4, 0x6

    if-eq p1, v4, :cond_5b

    .line 9709
    :cond_43
    instance-of v4, v3, Landroid/media/AudioTrack;

    if-eqz v4, :cond_4d

    .line 9710
    check-cast v3, Landroid/media/AudioTrack;

    .line 9711
    invoke-virtual {v3}, Landroid/media/AudioTrack;->release()V

    .line 9712
    goto :goto_52

    .line 9713
    :cond_4d
    check-cast v3, Landroid/media/AudioRecord;

    .line 9714
    invoke-virtual {v3}, Landroid/media/AudioRecord;->release()V

    .line 9716
    :goto_52
    iget-object v3, p0, Landroid/media/AudioManager$CallInjectionModeChangedListener;->this$0:Landroid/media/AudioManager;

    invoke-static {v3}, Landroid/media/AudioManager;->-$$Nest$fgetmCallIRedirectionClients(Landroid/media/AudioManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9719
    :cond_5b
    goto :goto_17

    .line 9720
    :cond_5c
    iget-object p1, p0, Landroid/media/AudioManager$CallInjectionModeChangedListener;->this$0:Landroid/media/AudioManager;

    invoke-static {p1}, Landroid/media/AudioManager;->-$$Nest$fgetmCallIRedirectionClients(Landroid/media/AudioManager;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1
    :try_end_66
    .catchall {:try_start_7 .. :try_end_66} :catchall_b7

    if-eqz p1, :cond_b5

    .line 9722
    const/4 p1, 0x0

    :try_start_69
    iget-object v1, p0, Landroid/media/AudioManager$CallInjectionModeChangedListener;->this$0:Landroid/media/AudioManager;

    invoke-static {v1}, Landroid/media/AudioManager;->-$$Nest$fgetmCallRedirectionModeListener(Landroid/media/AudioManager;)Landroid/media/AudioManager$CallInjectionModeChangedListener;

    move-result-object v1

    if-eqz v1, :cond_7c

    .line 9723
    iget-object v1, p0, Landroid/media/AudioManager$CallInjectionModeChangedListener;->this$0:Landroid/media/AudioManager;

    iget-object v2, p0, Landroid/media/AudioManager$CallInjectionModeChangedListener;->this$0:Landroid/media/AudioManager;

    invoke-static {v2}, Landroid/media/AudioManager;->-$$Nest$fgetmCallRedirectionModeListener(Landroid/media/AudioManager;)Landroid/media/AudioManager$CallInjectionModeChangedListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->removeOnModeChangedListener(Landroid/media/AudioManager$OnModeChangedListener;)V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_7c} :catch_89
    .catchall {:try_start_69 .. :try_end_7c} :catchall_87

    .line 9728
    :cond_7c
    :try_start_7c
    iget-object v1, p0, Landroid/media/AudioManager$CallInjectionModeChangedListener;->this$0:Landroid/media/AudioManager;

    invoke-static {v1, p1}, Landroid/media/AudioManager;->-$$Nest$fputmCallRedirectionModeListener(Landroid/media/AudioManager;Landroid/media/AudioManager$CallInjectionModeChangedListener;)V

    .line 9729
    iget-object v1, p0, Landroid/media/AudioManager$CallInjectionModeChangedListener;->this$0:Landroid/media/AudioManager;

    :goto_83
    invoke-static {v1, p1}, Landroid/media/AudioManager;->-$$Nest$fputmCallIRedirectionClients(Landroid/media/AudioManager;Ljava/util/ArrayList;)V
    :try_end_86
    .catchall {:try_start_7c .. :try_end_86} :catchall_b7

    .line 9730
    goto :goto_b5

    .line 9728
    :catchall_87
    move-exception v1

    goto :goto_aa

    .line 9725
    :catch_89
    move-exception v1

    .line 9726
    :try_start_8a
    const-string v2, "AudioManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeOnModeChangedListener failed with exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a2
    .catchall {:try_start_8a .. :try_end_a2} :catchall_87

    .line 9728
    :try_start_a2
    iget-object v1, p0, Landroid/media/AudioManager$CallInjectionModeChangedListener;->this$0:Landroid/media/AudioManager;

    invoke-static {v1, p1}, Landroid/media/AudioManager;->-$$Nest$fputmCallRedirectionModeListener(Landroid/media/AudioManager;Landroid/media/AudioManager$CallInjectionModeChangedListener;)V

    .line 9729
    iget-object v1, p0, Landroid/media/AudioManager$CallInjectionModeChangedListener;->this$0:Landroid/media/AudioManager;

    goto :goto_83

    .line 9728
    :goto_aa
    iget-object v2, p0, Landroid/media/AudioManager$CallInjectionModeChangedListener;->this$0:Landroid/media/AudioManager;

    invoke-static {v2, p1}, Landroid/media/AudioManager;->-$$Nest$fputmCallRedirectionModeListener(Landroid/media/AudioManager;Landroid/media/AudioManager$CallInjectionModeChangedListener;)V

    .line 9729
    iget-object v2, p0, Landroid/media/AudioManager$CallInjectionModeChangedListener;->this$0:Landroid/media/AudioManager;

    invoke-static {v2, p1}, Landroid/media/AudioManager;->-$$Nest$fputmCallIRedirectionClients(Landroid/media/AudioManager;Ljava/util/ArrayList;)V

    .line 9730
    throw v1

    .line 9732
    :cond_b5
    :goto_b5
    monitor-exit v0

    .line 9733
    return-void

    .line 9732
    :catchall_b7
    move-exception p1

    monitor-exit v0
    :try_end_b9
    .catchall {:try_start_a2 .. :try_end_b9} :catchall_b7

    throw p1
.end method
