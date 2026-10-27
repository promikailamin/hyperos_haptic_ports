.class public Lmiui/hardware/input/InputFeature;
.super Ljava/lang/Object;
.source "InputFeature.java"


# static fields
.field private static final blacklist DEVICE_KDDI_CUSTOMIZED:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEVICE_KDDI_CUSTOMIZED_POWER_GUIDE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist IS_SUPPORT_AU_PAY:Z

.field public static final blacklist IS_SUPPORT_KDDI_POWER_GUIDE:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 12
    const-string v0, "XIG02"

    const-string v1, "XIG03"

    const-string v2, "XIG04"

    invoke-static {v0, v1, v2}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lmiui/hardware/input/InputFeature;->DEVICE_KDDI_CUSTOMIZED:Ljava/util/Set;

    .line 13
    invoke-static {v1, v2}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lmiui/hardware/input/InputFeature;->DEVICE_KDDI_CUSTOMIZED_POWER_GUIDE:Ljava/util/Set;

    .line 15
    sget-object v2, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/hardware/input/InputFeature;->IS_SUPPORT_AU_PAY:Z

    .line 16
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 17
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/hardware/input/InputFeature;->IS_SUPPORT_KDDI_POWER_GUIDE:Z

    .line 16
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
