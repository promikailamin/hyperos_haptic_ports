.class public Lcom/android/server/wm/AppCompatTaskContainerStub;
.super Ljava/lang/Object;
.source "AppCompatTaskContainerStub.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/android/server/wm/AppCompatTaskContainerStub;
    .registers 1

    .line 10
    const-class v0, Lcom/android/server/wm/AppCompatTaskContainerStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AppCompatTaskContainerStub;

    return-object v0
.end method


# virtual methods
.method public getAppCompatTask(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wm/AppCompatTask;
    .registers 4
    .param p1, "policyName"    # Ljava/lang/String;
    .param p2, "pakcgaeName"    # Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public putAppCompatTask(Ljava/lang/String;Lcom/android/server/wm/AppCompatTask;)V
    .registers 3
    .param p1, "policyName"    # Ljava/lang/String;
    .param p2, "appCompatTask"    # Lcom/android/server/wm/AppCompatTask;

    .line 14
    return-void
.end method

.method public putAppCompatTask(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wm/AppCompatTask;)V
    .registers 4
    .param p1, "policyName"    # Ljava/lang/String;
    .param p2, "pakcgaeName"    # Ljava/lang/String;
    .param p3, "appCompatTask"    # Lcom/android/server/wm/AppCompatTask;

    .line 19
    return-void
.end method

.method public removeAppCompatTask(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "policyName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public removeAppCompatTask(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wm/AppCompatTask;)Z
    .registers 5
    .param p1, "policyName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "appContinuityTask"    # Lcom/android/server/wm/AppCompatTask;

    .line 32
    const/4 v0, 0x0

    return v0
.end method
