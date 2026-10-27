.class public Lcom/android/server/profcollect/ProfcollectForwardingService$4;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "ProfcollectForwardingService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/profcollect/ProfcollectForwardingService;


# direct methods
.method public constructor <init>(Lcom/android/server/profcollect/ProfcollectForwardingService;)V
    .registers 2

    .line 450
    iput-object p1, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$4;->this$0:Lcom/android/server/profcollect/ProfcollectForwardingService;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraOpened(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 457
    const-string p1, "client.pid"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_3c

    .line 461
    :cond_9
    iget-object p0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$4;->this$0:Lcom/android/server/profcollect/ProfcollectForwardingService;

    .line 462
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x10700c0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 464
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_25

    goto :goto_3c

    .line 467
    :cond_25
    const-string p0, "camera_trace_freq"

    const/16 p1, 0xa

    invoke-static {p0, p1}, Lcom/android/server/profcollect/Utils;->withFrequency(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_3c

    .line 468
    invoke-static {}, Lcom/android/server/profcollect/ProfcollectForwardingService;->-$$Nest$sfgetsIProfcollect()Lcom/android/server/profcollect/IProfCollectd;

    move-result-object p0

    const-string p1, "android.hardware.camera.provider"

    const/16 p2, 0x1388

    const-string v0, "camera"

    invoke-static {p0, v0, p1, p2}, Lcom/android/server/profcollect/Utils;->traceProcess(Lcom/android/server/profcollect/IProfCollectd;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_3c
    :goto_3c
    return-void
.end method
