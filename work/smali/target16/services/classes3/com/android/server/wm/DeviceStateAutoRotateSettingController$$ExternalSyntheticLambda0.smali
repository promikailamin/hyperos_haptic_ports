.class public final synthetic Lcom/android/server/wm/DeviceStateAutoRotateSettingController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/wm/DeviceStateController$DeviceStateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DeviceStateAutoRotateSettingController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DeviceStateAutoRotateSettingController;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/DeviceStateAutoRotateSettingController;

    return-void
.end method


# virtual methods
.method public final onDeviceStateChanged(Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;Landroid/hardware/devicestate/DeviceState;)V
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/DeviceStateAutoRotateSettingController;

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->$r8$lambda$7yZWLboBhIAjzXcdzgAWp9Firjo(Lcom/android/server/wm/DeviceStateAutoRotateSettingController;Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;Landroid/hardware/devicestate/DeviceState;)V

    return-void
.end method
