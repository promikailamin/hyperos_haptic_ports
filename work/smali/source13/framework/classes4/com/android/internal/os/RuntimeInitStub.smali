.class public Lcom/android/internal/os/RuntimeInitStub;
.super Ljava/lang/Object;
.source "RuntimeInitStub.java"


# static fields
.field private static final blacklist sInstance:Lcom/android/internal/os/RuntimeInitStub;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 6
    const-class v0, Lcom/android/internal/os/RuntimeInitStub;

    .line 7
    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/RuntimeInitStub;

    sput-object v0, Lcom/android/internal/os/RuntimeInitStub;->sInstance:Lcom/android/internal/os/RuntimeInitStub;

    .line 6
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Lcom/android/internal/os/RuntimeInitStub;
    .registers 1

    .line 10
    sget-object v0, Lcom/android/internal/os/RuntimeInitStub;->sInstance:Lcom/android/internal/os/RuntimeInitStub;

    return-object v0
.end method


# virtual methods
.method public blacklist getDefaultUserAgent()Ljava/lang/String;
    .registers 2

    .line 14
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onJE(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Z)V
    .registers 8
    .param p1, "pid"    # I
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "pknName"    # Ljava/lang/String;
    .param p4, "threadName"    # Ljava/lang/String;
    .param p5, "e"    # Ljava/lang/Throwable;
    .param p6, "prefix"    # Ljava/lang/String;
    .param p7, "isSystem"    # Z

    .line 19
    return-void
.end method
