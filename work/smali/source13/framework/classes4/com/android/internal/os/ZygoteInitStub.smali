.class public Lcom/android/internal/os/ZygoteInitStub;
.super Ljava/lang/Object;
.source "ZygoteInitStub.java"


# static fields
.field private static final blacklist sInstance:Lcom/android/internal/os/ZygoteInitStub;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 6
    const-class v0, Lcom/android/internal/os/ZygoteInitStub;

    .line 7
    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/ZygoteInitStub;

    sput-object v0, Lcom/android/internal/os/ZygoteInitStub;->sInstance:Lcom/android/internal/os/ZygoteInitStub;

    .line 6
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Lcom/android/internal/os/ZygoteInitStub;
    .registers 1

    .line 10
    sget-object v0, Lcom/android/internal/os/ZygoteInitStub;->sInstance:Lcom/android/internal/os/ZygoteInitStub;

    return-object v0
.end method


# virtual methods
.method public blacklist checkUsapAllowed(Z)Z
    .registers 3
    .param p1, "isArm64"    # Z

    .line 22
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist loadSoBridge()V
    .registers 1

    .line 19
    return-void
.end method

.method public blacklist setLastZygotePid()V
    .registers 1

    .line 15
    return-void
.end method
