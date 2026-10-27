.class Landroid/hardware/location/GeofenceHardwareImpl$Reaper;
.super Ljava/lang/Object;
.source "GeofenceHardwareImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/GeofenceHardwareImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Reaper"
.end annotation


# instance fields
.field private greylist-max-o mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

.field private greylist-max-o mMonitorCallback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

.field private greylist-max-o mMonitoringType:I

.field final synthetic blacklist this$0:Landroid/hardware/location/GeofenceHardwareImpl;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/hardware/location/GeofenceHardwareImpl$Reaper;)Landroid/hardware/location/IGeofenceHardwareCallback;
    .registers 1

    iget-object p0, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$munlinkToDeath(Landroid/hardware/location/GeofenceHardwareImpl$Reaper;)Z
    .registers 1

    invoke-direct {p0}, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->unlinkToDeath()Z

    move-result p0

    return p0
.end method

.method constructor blacklist <init>(Landroid/hardware/location/GeofenceHardwareImpl;Landroid/hardware/location/IGeofenceHardwareCallback;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 845
    iput-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 846
    iput-object p2, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    .line 847
    iput p3, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitoringType:I

    .line 848
    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/location/GeofenceHardwareImpl;Landroid/hardware/location/IGeofenceHardwareMonitorCallback;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 850
    iput-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 851
    iput-object p2, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitorCallback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    .line 852
    iput p3, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitoringType:I

    .line 853
    return-void
.end method

.method private greylist-max-o binderEquals(Landroid/os/IInterface;Landroid/os/IInterface;)Z
    .registers 5

    .line 897
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_9

    .line 898
    if-nez p2, :cond_7

    goto :goto_8

    :cond_7
    move v0, v1

    :goto_8
    return v0

    .line 900
    :cond_9
    if-nez p2, :cond_d

    :cond_b
    move v0, v1

    goto :goto_17

    :cond_d
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    if-ne p1, p2, :cond_b

    :goto_17
    return v0
.end method

.method private greylist-max-o callbackEquals(Landroid/hardware/location/IGeofenceHardwareCallback;)Z
    .registers 3

    .line 917
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    invoke-interface {v0}, Landroid/hardware/location/IGeofenceHardwareCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1}, Landroid/hardware/location/IGeofenceHardwareCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    if-ne v0, p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method private greylist-max-o unlinkToDeath()Z
    .registers 3

    .line 908
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitorCallback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 909
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitorCallback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    invoke-interface {v0}, Landroid/hardware/location/IGeofenceHardwareMonitorCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    move-result v0

    return v0

    .line 910
    :cond_10
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    if-eqz v0, :cond_1f

    .line 911
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    invoke-interface {v0}, Landroid/hardware/location/IGeofenceHardwareCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    move-result v0

    return v0

    .line 913
    :cond_1f
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public whitelist binderDied()V
    .registers 4

    .line 858
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    if-eqz v0, :cond_1f

    .line 859
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmGeofenceHandler(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 860
    iget v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitoringType:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 861
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmGeofenceHandler(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3d

    .line 862
    :cond_1f
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitorCallback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    if-eqz v0, :cond_3d

    .line 863
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmCallbacksHandler(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitorCallback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 864
    iget v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitoringType:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 865
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmCallbacksHandler(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 867
    :cond_3d
    :goto_3d
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmReaperHandler(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 868
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->-$$Nest$fgetmReaperHandler(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 869
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 883
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 884
    :cond_4
    const/4 v1, 0x1

    if-ne p1, p0, :cond_8

    return v1

    .line 886
    :cond_8
    check-cast p1, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;

    .line 887
    iget-object v2, p1, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    iget-object v3, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    invoke-direct {p0, v2, v3}, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->binderEquals(Landroid/os/IInterface;Landroid/os/IInterface;)Z

    move-result v2

    if-eqz v2, :cond_26

    iget-object v2, p1, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitorCallback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    iget-object v3, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitorCallback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    .line 888
    invoke-direct {p0, v2, v3}, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->binderEquals(Landroid/os/IInterface;Landroid/os/IInterface;)Z

    move-result v2

    if-eqz v2, :cond_26

    iget p1, p1, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitoringType:I

    iget v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitoringType:I

    if-ne p1, v2, :cond_26

    move v0, v1

    goto :goto_27

    :cond_26
    nop

    .line 887
    :goto_27
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 873
    nop

    .line 874
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    invoke-interface {v0}, Landroid/hardware/location/IGeofenceHardwareCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->hashCode()I

    move-result v0

    goto :goto_12

    :cond_11
    move v0, v1

    :goto_12
    const/16 v2, 0x20f

    add-int/2addr v2, v0

    .line 875
    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitorCallback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    if-eqz v0, :cond_26

    .line 876
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitorCallback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    invoke-interface {v0}, Landroid/hardware/location/IGeofenceHardwareMonitorCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->hashCode()I

    move-result v1

    goto :goto_27

    :cond_26
    nop

    :goto_27
    add-int/2addr v2, v1

    .line 877
    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitoringType:I

    add-int/2addr v2, v0

    .line 878
    return v2
.end method
