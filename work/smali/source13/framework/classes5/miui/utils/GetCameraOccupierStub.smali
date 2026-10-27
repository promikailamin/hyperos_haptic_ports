.class public interface abstract Lmiui/utils/GetCameraOccupierStub;
.super Ljava/lang/Object;
.source "GetCameraOccupierStub.java"


# static fields
.field public static final blacklist sInstance:Lmiui/utils/GetCameraOccupierStub;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 9
    const-class v0, Lmiui/utils/GetCameraOccupierStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/utils/GetCameraOccupierStub;

    sput-object v0, Lmiui/utils/GetCameraOccupierStub;->sInstance:Lmiui/utils/GetCameraOccupierStub;

    return-void
.end method

.method public static blacklist getInstance()Lmiui/utils/GetCameraOccupierStub;
    .registers 1

    .line 12
    sget-object v0, Lmiui/utils/GetCameraOccupierStub;->sInstance:Lmiui/utils/GetCameraOccupierStub;

    return-object v0
.end method


# virtual methods
.method public abstract blacklist getScreenAntiBurnData(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract blacklist needDisableCutout(Ljava/lang/String;)Z
.end method

.method public abstract blacklist setCoveredPackageName()V
.end method
