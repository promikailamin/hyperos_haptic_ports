.class Lcom/miui/whetstone/server/WhetstoneActivityManagerService$2;
.super Landroid/location/GnssStatus$Callback;
.source "WhetstoneActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/server/WhetstoneActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;


# direct methods
.method constructor blacklist <init>(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    .line 234
    iput-object p1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$2;->this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    invoke-direct {p0}, Landroid/location/GnssStatus$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onFirstFix(I)V
    .registers 2
    .param p1, "ttffMillis"    # I

    .line 258
    return-void
.end method

.method public whitelist onSatelliteStatusChanged(Landroid/location/GnssStatus;)V
    .registers 6
    .param p1, "status"    # Landroid/location/GnssStatus;

    .line 238
    invoke-super {p0, p1}, Landroid/location/GnssStatus$Callback;->onSatelliteStatusChanged(Landroid/location/GnssStatus;)V

    .line 239
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$2;->this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->-$$Nest$fputmSnr(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;I)V

    .line 240
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    invoke-virtual {p1}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result v1

    if-ge v0, v1, :cond_22

    .line 241
    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$2;->this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    invoke-static {v1}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->-$$Nest$fgetmSnr(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)I

    move-result v2

    invoke-virtual {p1, v0}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->-$$Nest$fputmSnr(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;I)V

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 243
    .end local v0    # "i":I
    :cond_22
    return-void
.end method

.method public whitelist onStarted()V
    .registers 1

    .line 248
    return-void
.end method

.method public whitelist onStopped()V
    .registers 1

    .line 253
    return-void
.end method
