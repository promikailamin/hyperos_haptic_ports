.class public Lcom/android/server/wm/AppContinuityRouterStub;
.super Ljava/lang/Object;
.source "AppContinuityRouterStub.java"


# annotations
.annotation runtime Lcom/miui/base/annotations/MiuiStubHead;
    classPath = "/system_ext/framework/miui-appcompat.appcontinuity.jar"
    internal = true
    manifestName = "com.android.server.wm.AppContinuityRouterStubManifest$$"
.end annotation


# static fields
.field public static final NOTIFICATION_POLICY_MAP_NAME:Ljava/lang/String; = "NotificationPolicy"


# instance fields
.field mService:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    const-class v0, Lcom/android/server/wm/AppContinuityRouterStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubRegistry;->init(Ljava/lang/Class;)V

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/android/server/wm/AppContinuityRouterStub;
    .registers 1

    .line 21
    const-class v0, Lcom/android/server/wm/AppContinuityRouterStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AppContinuityRouterStub;

    return-object v0
.end method


# virtual methods
.method public handleAppDiedReport(Ljava/lang/String;)V
    .registers 2
    .param p1, "processName"    # Ljava/lang/String;

    .line 32
    return-void
.end method

.method init(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 2
    .param p1, "activityTaskManagerService"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 25
    iput-object p1, p0, Lcom/android/server/wm/AppContinuityRouterStub;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 26
    return-void
.end method

.method public notifyActivityStart(Lcom/android/server/wm/AppCompatTask;)V
    .registers 2
    .param p1, "appContinuityTask"    # Lcom/android/server/wm/AppCompatTask;

    .line 29
    return-void
.end method

.method public onSplitToFullScreenChanged(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2
    .param p1, "activityRecord"    # Lcom/android/server/wm/ActivityRecord;

    .line 35
    return-void
.end method
