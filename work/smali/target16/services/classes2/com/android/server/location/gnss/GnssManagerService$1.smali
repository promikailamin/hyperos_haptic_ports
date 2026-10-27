.class public Lcom/android/server/location/gnss/GnssManagerService$1;
.super Landroid/location/provider/IGnssAssistanceCallback$Stub;
.source "GnssManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/GnssManagerService;)V
    .registers 2

    .line 351
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssManagerService$1;->this$0:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-direct {p0}, Landroid/location/provider/IGnssAssistanceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .registers 2

    .line 354
    const-string p0, "GnssManager"

    const-string v0, "GnssAssistanceCallback.onError"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResult(Landroid/location/GnssAssistance;)V
    .registers 4

    .line 359
    const-string v0, "GnssManager"

    const-string v1, "GnssAssistanceCallback.onResult"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssManagerService$1;->this$0:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-static {p0}, Lcom/android/server/location/gnss/GnssManagerService;->-$$Nest$fgetmGnssNative(Lcom/android/server/location/gnss/GnssManagerService;)Lcom/android/server/location/gnss/hal/GnssNative;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->injectGnssAssistance(Landroid/location/GnssAssistance;)V

    return-void
.end method
