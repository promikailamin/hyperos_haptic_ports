.class public Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl;
.super Ljava/lang/Object;
.source "MediaRouterService.java"

# interfaces
.implements Lcom/android/server/media/AudioPlayerStateMonitor$OnAudioPlayerActiveStateChangedListener;


# instance fields
.field public final mRestoreBluetoothA2dpRunnable:Ljava/lang/Runnable;

.field public final synthetic this$0:Lcom/android/server/media/MediaRouterService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaRouterService;)V
    .registers 3

    .line 2091
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2095
    new-instance v0, Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/MediaRouterService;)V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl;->mRestoreBluetoothA2dpRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/MediaRouterService;Lcom/android/server/media/MediaRouterService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl;-><init>(Lcom/android/server/media/MediaRouterService;)V

    return-void
.end method


# virtual methods
.method public onAudioPlayerActiveStateChanged(Landroid/media/AudioPlaybackConfiguration;Z)V
    .registers 9

    const/4 v0, 0x1

    if-nez p2, :cond_b

    .line 2101
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    move-result p2

    if-eqz p2, :cond_b

    move p2, v0

    goto :goto_c

    :cond_b
    const/4 p2, 0x0

    .line 2102
    :goto_c
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v1

    .line 2104
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {v2}, Lcom/android/server/media/MediaRouterService;->-$$Nest$fgetmActivePlayerMinPriorityQueue(Lcom/android/server/media/MediaRouterService;)Landroid/util/IntArray;

    move-result-object v2

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/IntArray;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_32

    .line 2107
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {v3}, Lcom/android/server/media/MediaRouterService;->-$$Nest$fgetmActivePlayerMinPriorityQueue(Lcom/android/server/media/MediaRouterService;)Landroid/util/IntArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/IntArray;->remove(I)V

    .line 2108
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {v3}, Lcom/android/server/media/MediaRouterService;->-$$Nest$fgetmActivePlayerUidMinPriorityQueue(Lcom/android/server/media/MediaRouterService;)Landroid/util/IntArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/IntArray;->remove(I)V

    :cond_32
    if-eqz p2, :cond_4c

    .line 2113
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {v0}, Lcom/android/server/media/MediaRouterService;->-$$Nest$fgetmActivePlayerMinPriorityQueue(Lcom/android/server/media/MediaRouterService;)Landroid/util/IntArray;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V

    .line 2114
    iget-object p1, p0, Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {p1}, Lcom/android/server/media/MediaRouterService;->-$$Nest$fgetmActivePlayerUidMinPriorityQueue(Lcom/android/server/media/MediaRouterService;)Landroid/util/IntArray;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/util/IntArray;->add(I)V

    move p1, v1

    goto :goto_6f

    .line 2116
    :cond_4c
    iget-object p1, p0, Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {p1}, Lcom/android/server/media/MediaRouterService;->-$$Nest$fgetmActivePlayerUidMinPriorityQueue(Lcom/android/server/media/MediaRouterService;)Landroid/util/IntArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result p1

    if-lez p1, :cond_6e

    .line 2117
    iget-object p1, p0, Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {p1}, Lcom/android/server/media/MediaRouterService;->-$$Nest$fgetmActivePlayerUidMinPriorityQueue(Lcom/android/server/media/MediaRouterService;)Landroid/util/IntArray;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {v2}, Lcom/android/server/media/MediaRouterService;->-$$Nest$fgetmActivePlayerUidMinPriorityQueue(Lcom/android/server/media/MediaRouterService;)Landroid/util/IntArray;

    move-result-object v2

    .line 2119
    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v2

    sub-int/2addr v2, v0

    .line 2118
    invoke-virtual {p1, v2}, Landroid/util/IntArray;->get(I)I

    move-result p1

    goto :goto_6f

    :cond_6e
    const/4 p1, -0x1

    .line 2122
    :goto_6f
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {v0}, Lcom/android/server/media/MediaRouterService;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaRouterService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl;->mRestoreBluetoothA2dpRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2123
    const-string v0, ", active="

    const-string/jumbo v2, "onAudioPlayerActiveStateChanged: uid="

    const-string v3, "MediaRouterService"

    if-ltz p1, :cond_af

    .line 2124
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRouterService;->restoreRoute(I)V

    .line 2125
    invoke-static {}, Lcom/android/server/media/MediaRouterService;->-$$Nest$sfgetDEBUG()Z

    move-result p0

    if-eqz p0, :cond_df

    .line 2126
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", restoreUid="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2137
    :cond_af
    iget-object p1, p0, Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {p1}, Lcom/android/server/media/MediaRouterService;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaRouterService;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl;->mRestoreBluetoothA2dpRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {p1, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2138
    invoke-static {}, Lcom/android/server/media/MediaRouterService;->-$$Nest$sfgetDEBUG()Z

    move-result p0

    if-eqz p0, :cond_df

    .line 2139
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", delaying"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_df
    return-void
.end method
