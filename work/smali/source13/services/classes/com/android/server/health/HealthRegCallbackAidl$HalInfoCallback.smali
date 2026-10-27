.class Lcom/android/server/health/HealthRegCallbackAidl$HalInfoCallback;
.super Landroid/hardware/health/IHealthInfoCallback$Stub;
.source "HealthRegCallbackAidl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/health/HealthRegCallbackAidl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HalInfoCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/health/HealthRegCallbackAidl;


# direct methods
.method private constructor <init>(Lcom/android/server/health/HealthRegCallbackAidl;)V
    .registers 2

    .line 113
    iput-object p1, p0, Lcom/android/server/health/HealthRegCallbackAidl$HalInfoCallback;->this$0:Lcom/android/server/health/HealthRegCallbackAidl;

    invoke-direct {p0}, Landroid/hardware/health/IHealthInfoCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/health/HealthRegCallbackAidl;Lcom/android/server/health/HealthRegCallbackAidl$HalInfoCallback-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/health/HealthRegCallbackAidl$HalInfoCallback;-><init>(Lcom/android/server/health/HealthRegCallbackAidl;)V

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 120
    const-string v0, "94e77215594f8ad98ab33a769263d48fdabed92e"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .registers 2

    .line 124
    const/4 v0, 0x1

    return v0
.end method

.method public healthInfoChanged(Landroid/hardware/health/HealthInfo;)V
    .registers 3
    .param p1, "healthInfo"    # Landroid/hardware/health/HealthInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/android/server/health/HealthRegCallbackAidl$HalInfoCallback;->this$0:Lcom/android/server/health/HealthRegCallbackAidl;

    invoke-static {v0}, Lcom/android/server/health/HealthRegCallbackAidl;->-$$Nest$fgetmServiceInfoCallback(Lcom/android/server/health/HealthRegCallbackAidl;)Lcom/android/server/health/HealthInfoCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/health/HealthInfoCallback;->update(Landroid/hardware/health/HealthInfo;)V

    .line 117
    return-void
.end method
