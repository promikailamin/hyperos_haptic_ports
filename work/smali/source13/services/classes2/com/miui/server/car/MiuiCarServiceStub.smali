.class public Lcom/miui/server/car/MiuiCarServiceStub;
.super Ljava/lang/Object;
.source "MiuiCarServiceStub.java"


# annotations
.annotation runtime Lcom/miui/base/annotations/MiuiStubHead;
    classPath = "/system_ext/framework/miui.car.server.jar"
    manifestName = "com.miui.server.car.MiuiCarServiceStubManifest$$"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    const-class v0, Lcom/miui/server/car/MiuiCarServiceStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubRegistry;->init(Ljava/lang/Class;)V

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/miui/server/car/MiuiCarServiceStub;
    .registers 1

    .line 15
    const-class v0, Lcom/miui/server/car/MiuiCarServiceStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/server/car/MiuiCarServiceStub;

    return-object v0
.end method


# virtual methods
.method public publishCarService()V
    .registers 1

    .line 20
    return-void
.end method
