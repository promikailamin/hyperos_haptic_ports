.class Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoDispatchingListener;
.super Landroid/hardware/usb/IDisplayPortAltModeInfoListener$Stub;
.source "UsbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/UsbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisplayPortAltModeInfoDispatchingListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/usb/UsbManager;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/usb/UsbManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 815
    iput-object p1, p0, Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoDispatchingListener;->this$0:Landroid/hardware/usb/UsbManager;

    invoke-direct {p0}, Landroid/hardware/usb/IDisplayPortAltModeInfoListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoDispatchingListener;-><init>(Landroid/hardware/usb/UsbManager;)V

    return-void
.end method

.method static synthetic blacklist lambda$onDisplayPortAltModeInfoChanged$0(Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoListener;Ljava/lang/String;Landroid/hardware/usb/DisplayPortAltModeInfo;)V
    .registers 3

    .line 827
    invoke-interface {p0, p1, p2}, Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoListener;->onDisplayPortAltModeInfoChanged(Ljava/lang/String;Landroid/hardware/usb/DisplayPortAltModeInfo;)V

    return-void
.end method


# virtual methods
.method public blacklist onDisplayPortAltModeInfoChanged(Ljava/lang/String;Landroid/hardware/usb/DisplayPortAltModeInfo;)V
    .registers 12

    .line 820
    iget-object v0, p0, Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoDispatchingListener;->this$0:Landroid/hardware/usb/UsbManager;

    invoke-static {v0}, Landroid/hardware/usb/UsbManager;->-$$Nest$fgetmDisplayPortListenersLock(Landroid/hardware/usb/UsbManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 822
    :try_start_7
    iget-object v1, p0, Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoDispatchingListener;->this$0:Landroid/hardware/usb/UsbManager;

    invoke-static {v1}, Landroid/hardware/usb/UsbManager;->-$$Nest$fgetmDisplayPortListeners(Landroid/hardware/usb/UsbManager;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 823
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 824
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoListener;

    .line 825
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_60

    .line 827
    :try_start_31
    new-instance v6, Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoDispatchingListener$$ExternalSyntheticLambda0;

    invoke-direct {v6, v2, p1, p2}, Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoDispatchingListener$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoListener;Ljava/lang/String;Landroid/hardware/usb/DisplayPortAltModeInfo;)V

    invoke-interface {v3, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_39} :catch_3f
    .catchall {:try_start_31 .. :try_end_39} :catchall_3d

    .line 833
    :goto_39
    :try_start_39
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_60

    .line 834
    goto :goto_59

    .line 833
    :catchall_3d
    move-exception p1

    goto :goto_5a

    .line 829
    :catch_3f
    move-exception v2

    .line 830
    :try_start_40
    const-string v6, "UsbManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception during onDisplayPortAltModeInfoChanged from executor: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_58
    .catchall {:try_start_40 .. :try_end_58} :catchall_3d

    goto :goto_39

    .line 835
    :goto_59
    goto :goto_15

    .line 833
    :goto_5a
    :try_start_5a
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 834
    throw p1

    .line 836
    :cond_5e
    monitor-exit v0

    .line 837
    return-void

    .line 836
    :catchall_60
    move-exception p1

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_5a .. :try_end_62} :catchall_60

    throw p1
.end method
