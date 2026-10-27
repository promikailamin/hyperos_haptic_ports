.class public final Lcom/android/modules/utils/build/SdkLevel;
.super Ljava/lang/Object;
.source "SdkLevel.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAtLeastB()Z
    .registers 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method private static isAtLeastPreReleaseCodename(Ljava/lang/String;)Z
    .registers 4

    .line 82
    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v1, "REL"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    return v2

    .line 88
    :cond_c
    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    return v2
.end method

.method public static isAtLeastR()Z
    .registers 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public static isAtLeastS()Z
    .registers 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public static isAtLeastSv2()Z
    .registers 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public static isAtLeastT()Z
    .registers 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public static isAtLeastU()Z
    .registers 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public static isAtLeastV()Z
    .registers 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method
