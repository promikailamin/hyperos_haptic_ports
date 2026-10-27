.class public Lcom/android/server/BinaryTransparencyService$2;
.super Landroid/hardware/face/IFaceAuthenticatorsRegisteredCallback$Stub;
.source "BinaryTransparencyService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/BinaryTransparencyService;


# direct methods
.method public constructor <init>(Lcom/android/server/BinaryTransparencyService;)V
    .registers 2

    .line 1557
    iput-object p1, p0, Lcom/android/server/BinaryTransparencyService$2;->this$0:Lcom/android/server/BinaryTransparencyService;

    invoke-direct {p0}, Landroid/hardware/face/IFaceAuthenticatorsRegisteredCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllAuthenticatorsRegistered(Ljava/util/List;)V
    .registers 6

    .line 1566
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 1568
    invoke-static {v0}, Landroid/hardware/face/FaceSensorProperties;->from(Landroid/hardware/face/FaceSensorPropertiesInternal;)Landroid/hardware/face/FaceSensorProperties;

    move-result-object v0

    .line 1569
    iget-object v1, p0, Lcom/android/server/BinaryTransparencyService$2;->this$0:Lcom/android/server/BinaryTransparencyService;

    .line 1571
    invoke-virtual {v0}, Landroid/hardware/face/FaceSensorProperties;->getSensorType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/BinaryTransparencyService;->-$$Nest$mtoFaceSensorType(Lcom/android/server/BinaryTransparencyService;I)I

    move-result v2

    const/4 v3, 0x4

    .line 1569
    invoke-static {v1, v0, v3, v2}, Lcom/android/server/BinaryTransparencyService;->-$$Nest$mlogBiometricProperties(Lcom/android/server/BinaryTransparencyService;Landroid/hardware/biometrics/SensorProperties;II)V

    goto :goto_4

    :cond_23
    return-void
.end method
