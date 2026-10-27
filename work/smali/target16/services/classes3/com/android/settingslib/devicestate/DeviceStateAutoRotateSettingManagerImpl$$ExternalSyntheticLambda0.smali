.class public final synthetic Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;

.field public final synthetic f$1:Landroid/database/ContentObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;Landroid/database/ContentObserver;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;

    iput-object p2, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$$ExternalSyntheticLambda0;->f$1:Landroid/database/ContentObserver;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;

    iget-object p0, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$$ExternalSyntheticLambda0;->f$1:Landroid/database/ContentObserver;

    invoke-static {v0, p0}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;->$r8$lambda$pb7f9VKPAup95VaVkUmRdKNZoxw(Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;Landroid/database/ContentObserver;)V

    return-void
.end method
