.class public Landroid/inputmethodservice/MiuiBottomConfig;
.super Ljava/lang/Object;
.source "MiuiBottomConfig.java"


# static fields
.field private static final blacklist MIUI_BOTTOM_VERSION:I = 0x2

.field public static blacklist sBigChinDevices:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static blacklist sMiddleChinDevices:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static blacklist sSmallChinDevices:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 9
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sSmallChinDevices:Ljava/util/HashSet;

    .line 10
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sMiddleChinDevices:Ljava/util/HashSet;

    .line 11
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sBigChinDevices:Ljava/util/HashSet;

    .line 20
    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sSmallChinDevices:Ljava/util/HashSet;

    const-string v1, "andromeda"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sSmallChinDevices:Ljava/util/HashSet;

    const-string v1, "cepheus"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sSmallChinDevices:Ljava/util/HashSet;

    const-string v1, "crux"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sSmallChinDevices:Ljava/util/HashSet;

    const-string v1, "pyxis"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sSmallChinDevices:Ljava/util/HashSet;

    const-string v1, "vela"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sSmallChinDevices:Ljava/util/HashSet;

    const-string v1, "begonia"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sSmallChinDevices:Ljava/util/HashSet;

    const-string v1, "grus"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sSmallChinDevices:Ljava/util/HashSet;

    const-string v1, "perseus"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sSmallChinDevices:Ljava/util/HashSet;

    const-string v1, "raphael"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sSmallChinDevices:Ljava/util/HashSet;

    const-string v1, "davinci"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sMiddleChinDevices:Ljava/util/HashSet;

    const-string v1, "dipper"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sMiddleChinDevices:Ljava/util/HashSet;

    const-string v1, "onc"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sMiddleChinDevices:Ljava/util/HashSet;

    const-string v1, "sirius"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sMiddleChinDevices:Ljava/util/HashSet;

    const-string v1, "olive"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sMiddleChinDevices:Ljava/util/HashSet;

    const-string v1, "platina"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sMiddleChinDevices:Ljava/util/HashSet;

    const-string v1, "lavender"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sMiddleChinDevices:Ljava/util/HashSet;

    const-string v1, "ginkgo"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sMiddleChinDevices:Ljava/util/HashSet;

    const-string v1, "olivelite"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sMiddleChinDevices:Ljava/util/HashSet;

    const-string v1, "equuleus"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sMiddleChinDevices:Ljava/util/HashSet;

    const-string v1, "ursa"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sMiddleChinDevices:Ljava/util/HashSet;

    const-string v1, "tulip"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sMiddleChinDevices:Ljava/util/HashSet;

    const-string v1, "violet"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sMiddleChinDevices:Ljava/util/HashSet;

    const-string v1, "lotus"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sBigChinDevices:Ljava/util/HashSet;

    const-string v1, "chiron"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sBigChinDevices:Ljava/util/HashSet;

    const-string v1, "ysl"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sBigChinDevices:Ljava/util/HashSet;

    const-string v1, "vince"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sBigChinDevices:Ljava/util/HashSet;

    const-string v1, "cactus"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sBigChinDevices:Ljava/util/HashSet;

    const-string v1, "cereus"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sBigChinDevices:Ljava/util/HashSet;

    const-string v1, "nitrogen"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sBigChinDevices:Ljava/util/HashSet;

    const-string v1, "wayne"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sBigChinDevices:Ljava/util/HashSet;

    const-string v1, "whyred"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sBigChinDevices:Ljava/util/HashSet;

    const-string v1, "laurus"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sBigChinDevices:Ljava/util/HashSet;

    const-string v1, "beryllium"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sBigChinDevices:Ljava/util/HashSet;

    const-string v1, "daisy"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sBigChinDevices:Ljava/util/HashSet;

    const-string v1, "rosy"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sBigChinDevices:Ljava/util/HashSet;

    const-string v1, "pine"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sBigChinDevices:Ljava/util/HashSet;

    const-string v1, "polaris"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sBigChinDevices:Ljava/util/HashSet;

    const-string v1, "willow"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sBigChinDevices:Ljava/util/HashSet;

    const-string v1, "lithium"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getMiuiBottomVersion()I
    .registers 1

    .line 66
    const/4 v0, 0x2

    return v0
.end method
