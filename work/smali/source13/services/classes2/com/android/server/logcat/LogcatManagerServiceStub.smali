.class public Lcom/android/server/logcat/LogcatManagerServiceStub;
.super Ljava/lang/Object;
.source "LogcatManagerServiceStub.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/logcat/LogcatManagerServiceStub;
    .registers 1

    .line 8
    const-class v0, Lcom/android/server/logcat/LogcatManagerServiceStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/logcat/LogcatManagerServiceStub;

    return-object v0
.end method


# virtual methods
.method public getStatusForRequest(IILjava/lang/String;)I
    .registers 5
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 12
    const/4 v0, 0x0

    return v0
.end method
