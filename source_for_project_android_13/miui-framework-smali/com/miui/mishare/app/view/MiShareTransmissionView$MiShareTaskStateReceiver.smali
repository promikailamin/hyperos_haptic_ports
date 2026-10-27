.class final Lcom/miui/mishare/app/view/MiShareTransmissionView$MiShareTaskStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MiShareTransmissionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/mishare/app/view/MiShareTransmissionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MiShareTaskStateReceiver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;


# direct methods
.method private constructor blacklist <init>(Lcom/miui/mishare/app/view/MiShareTransmissionView;)V
    .registers 2

    .line 981
    iput-object p1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$MiShareTaskStateReceiver;->this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/miui/mishare/app/view/MiShareTransmissionView;Lcom/miui/mishare/app/view/MiShareTransmissionView$MiShareTaskStateReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/mishare/app/view/MiShareTransmissionView$MiShareTaskStateReceiver;-><init>(Lcom/miui/mishare/app/view/MiShareTransmissionView;)V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 985
    if-eqz p2, :cond_46

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.miui.mishare.connectivity.TASK_STATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 986
    const-string v0, "device_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 987
    .local v0, "deviceId":Ljava/lang/String;
    const/4 v1, 0x1

    const-string v2, "state"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 989
    .local v1, "state":I
    const/4 v2, 0x0

    const-string v3, "showProgress"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 990
    .local v2, "showProgress":Z
    const-string v3, "current"

    const-wide/16 v4, 0x0

    invoke-virtual {p2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 991
    .local v6, "current":J
    const-string v3, "total"

    invoke-virtual {p2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 992
    .local v8, "total":J
    const/4 v3, 0x0

    .line 993
    .local v3, "percent":F
    cmp-long v10, v6, v4

    if-lez v10, :cond_3d

    cmp-long v4, v8, v4

    if-lez v4, :cond_3d

    .line 994
    long-to-float v4, v6

    long-to-float v5, v8

    div-float v3, v4, v5

    .line 996
    :cond_3d
    iget-object v4, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$MiShareTaskStateReceiver;->this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    invoke-static {v4}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->-$$Nest$fgetmAdapter(Lcom/miui/mishare/app/view/MiShareTransmissionView;)Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->setDeviceState(Ljava/lang/String;IZF)V

    .line 998
    .end local v0    # "deviceId":Ljava/lang/String;
    .end local v1    # "state":I
    .end local v2    # "showProgress":Z
    .end local v3    # "percent":F
    .end local v6    # "current":J
    .end local v8    # "total":J
    :cond_46
    return-void
.end method
