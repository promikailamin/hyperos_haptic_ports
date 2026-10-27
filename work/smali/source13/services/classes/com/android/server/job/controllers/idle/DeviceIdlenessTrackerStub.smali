.class public Lcom/android/server/job/controllers/idle/DeviceIdlenessTrackerStub;
.super Ljava/lang/Object;
.source "DeviceIdlenessTrackerStub.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/job/controllers/idle/DeviceIdlenessTrackerStub;
    .registers 1

    .line 12
    const-class v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTrackerStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTrackerStub;

    return-object v0
.end method


# virtual methods
.method public getIdleThreshold(Landroid/content/Context;Z)J
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mIsDexOptIdleTracking"    # Z

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0080

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
