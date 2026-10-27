.class Lcom/android/server/companion/virtual/VirtualDeviceImpl$1;
.super Ljava/lang/Object;
.source "VirtualDeviceImpl.java"

# interfaces
.implements Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/companion/virtual/VirtualDeviceImpl;->createListenerAdapter()Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    .line 113
    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$1;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayEmpty(I)V
    .registers 5
    .param p1, "displayId"    # I

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$1;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    invoke-static {v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->-$$Nest$fgetmActivityListener(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)Landroid/companion/virtual/IVirtualDeviceActivityListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/companion/virtual/IVirtualDeviceActivityListener;->onDisplayEmpty(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 130
    goto :goto_12

    .line 128
    :catch_a
    move-exception v0

    .line 129
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VirtualDeviceImpl"

    const-string v2, "Unable to call mActivityListener"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method public onTopActivityChanged(ILandroid/content/ComponentName;)V
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "topActivity"    # Landroid/content/ComponentName;

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$1;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    invoke-static {v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->-$$Nest$fgetmActivityListener(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)Landroid/companion/virtual/IVirtualDeviceActivityListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/companion/virtual/IVirtualDeviceActivityListener;->onTopActivityChanged(ILandroid/content/ComponentName;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 121
    goto :goto_12

    .line 119
    :catch_a
    move-exception v0

    .line 120
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VirtualDeviceImpl"

    const-string v2, "Unable to call mActivityListener"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method
