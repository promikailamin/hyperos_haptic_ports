.class public Lcom/android/server/wm/WindowStateJuiStub;
.super Ljava/lang/Object;
.source "WindowStateJuiStub.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/wm/WindowStateJuiStub;
    .registers 1

    .line 12
    const-class v0, Lcom/android/server/wm/WindowStateJuiStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowStateJuiStub;

    return-object v0
.end method


# virtual methods
.method public isGamePadController(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    return v0
.end method
