.class public Lcom/android/server/wm/MiuiScreenProjectionServicesUtils;
.super Ljava/lang/Object;
.source "MiuiScreenProjectionServicesUtils.java"


# static fields
.field private static imp:Lcom/android/server/wm/IMiuiScreenProjectionServiceExStub;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 6
    invoke-static {}, Lcom/android/server/wm/IMiuiScreenProjectionServiceExStub;->getInstance()Lcom/android/server/wm/IMiuiScreenProjectionServiceExStub;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/MiuiScreenProjectionServicesUtils;->imp:Lcom/android/server/wm/IMiuiScreenProjectionServiceExStub;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onCastActivityResumed(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2
    .param p0, "ar"    # Lcom/android/server/wm/ActivityRecord;

    .line 8
    sget-object v0, Lcom/android/server/wm/MiuiScreenProjectionServicesUtils;->imp:Lcom/android/server/wm/IMiuiScreenProjectionServiceExStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/IMiuiScreenProjectionServiceExStub;->onCastActivityResumed(Lcom/android/server/wm/ActivityRecord;)V

    .line 9
    return-void
.end method

.method public static setAlertWindowTitle(Landroid/view/WindowManager$LayoutParams;)V
    .registers 2
    .param p0, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 12
    sget-object v0, Lcom/android/server/wm/MiuiScreenProjectionServicesUtils;->imp:Lcom/android/server/wm/IMiuiScreenProjectionServiceExStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/IMiuiScreenProjectionServiceExStub;->setAlertWindowTitle(Landroid/view/WindowManager$LayoutParams;)V

    .line 13
    return-void
.end method
