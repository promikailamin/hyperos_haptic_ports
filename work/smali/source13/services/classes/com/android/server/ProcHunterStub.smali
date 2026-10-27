.class public Lcom/android/server/ProcHunterStub;
.super Ljava/lang/Object;
.source "ProcHunterStub.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/ProcHunterStub;
    .registers 1

    .line 8
    const-class v0, Lcom/android/server/ProcHunterStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ProcHunterStub;

    return-object v0
.end method


# virtual methods
.method public notifyScreenState(Z)V
    .registers 2
    .param p1, "state"    # Z

    .line 16
    return-void
.end method

.method public start()V
    .registers 1

    .line 12
    return-void
.end method
