.class public Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$1;
.super Landroid/database/ContentObserver;
.source "DeviceStateAutoRotateSettingManagerImpl.java"


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;Landroid/os/Handler;)V
    .registers 3

    .line 87
    iput-object p1, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$1;->this$0:Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 90
    iget-object p0, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$1;->this$0:Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;

    invoke-static {p0}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;->-$$Nest$mnotifyListeners(Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;)V

    return-void
.end method
