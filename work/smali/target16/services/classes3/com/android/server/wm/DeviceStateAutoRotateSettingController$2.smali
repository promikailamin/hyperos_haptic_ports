.class public Lcom/android/server/wm/DeviceStateAutoRotateSettingController$2;
.super Landroid/database/ContentObserver;
.source "DeviceStateAutoRotateSettingController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/DeviceStateAutoRotateSettingController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DeviceStateAutoRotateSettingController;Landroid/os/Handler;)V
    .registers 3

    .line 205
    iput-object p1, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$2;->this$0:Lcom/android/server/wm/DeviceStateAutoRotateSettingController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 208
    iget-object p0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$2;->this$0:Lcom/android/server/wm/DeviceStateAutoRotateSettingController;

    sget-object p1, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event$PersistedSettingUpdate;->INSTANCE:Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event$PersistedSettingUpdate;

    invoke-static {p0, p1}, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->-$$Nest$mpostUpdate(Lcom/android/server/wm/DeviceStateAutoRotateSettingController;Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event;)V

    return-void
.end method
