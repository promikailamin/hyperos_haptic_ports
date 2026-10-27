.class interface abstract Lcom/android/server/notification/ZenModeStub;
.super Ljava/lang/Object;
.source "ZenModeStub.java"


# direct methods
.method public static get()Lcom/android/server/notification/ZenModeStub;
    .registers 1

    .line 10
    const-class v0, Lcom/android/server/notification/ZenModeStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/ZenModeStub;

    return-object v0
.end method


# virtual methods
.method public getRingerModeAffectedStreams(Landroid/content/Context;II)I
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "streams"    # I
    .param p3, "zenMode"    # I

    .line 22
    const/4 v0, -0x1

    return v0
.end method

.method public hideTelNumbers(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p1, "str"    # Ljava/lang/String;

    .line 18
    return-object p1
.end method

.method public isXSpaceUserId(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public shouldInterceptWhenUnLocked(Landroid/content/Context;Z)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isForce"    # Z

    .line 14
    const/4 v0, 0x1

    return v0
.end method

.method public zenContentObserver(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reason"    # Ljava/lang/String;

    .line 30
    return-void
.end method
