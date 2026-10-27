.class public Lmiui/security/SecurityCameraUtils;
.super Ljava/lang/Object;
.source "SecurityCameraUtils.java"


# static fields
.field private static blacklist SECURITY_CAMERA_SUPPORT_DEVICES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist SECURITY_CAMERA_SUPPORT_PACKAGES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmiui/security/SecurityCameraUtils;->SECURITY_CAMERA_SUPPORT_DEVICES:Ljava/util/List;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmiui/security/SecurityCameraUtils;->SECURITY_CAMERA_SUPPORT_PACKAGES:Ljava/util/List;

    .line 14
    sget-object v0, Lmiui/security/SecurityCameraUtils;->SECURITY_CAMERA_SUPPORT_DEVICES:Ljava/util/List;

    const-string v1, "zeus"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    sget-object v0, Lmiui/security/SecurityCameraUtils;->SECURITY_CAMERA_SUPPORT_DEVICES:Ljava/util/List;

    const-string v1, "cupid"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    sget-object v0, Lmiui/security/SecurityCameraUtils;->SECURITY_CAMERA_SUPPORT_DEVICES:Ljava/util/List;

    const-string v1, "venus"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    sget-object v0, Lmiui/security/SecurityCameraUtils;->SECURITY_CAMERA_SUPPORT_DEVICES:Ljava/util/List;

    const-string v1, "star"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    sget-object v0, Lmiui/security/SecurityCameraUtils;->SECURITY_CAMERA_SUPPORT_DEVICES:Ljava/util/List;

    const-string v1, "haydn"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object v0, Lmiui/security/SecurityCameraUtils;->SECURITY_CAMERA_SUPPORT_DEVICES:Ljava/util/List;

    const-string v1, "odin"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object v0, Lmiui/security/SecurityCameraUtils;->SECURITY_CAMERA_SUPPORT_DEVICES:Ljava/util/List;

    const-string v1, "renoir"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object v0, Lmiui/security/SecurityCameraUtils;->SECURITY_CAMERA_SUPPORT_DEVICES:Ljava/util/List;

    const-string v1, "mars"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v0, Lmiui/security/SecurityCameraUtils;->SECURITY_CAMERA_SUPPORT_DEVICES:Ljava/util/List;

    const-string v1, "cetus"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getSupportSecurityCameraDevice()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 27
    sget-object v0, Lmiui/security/SecurityCameraUtils;->SECURITY_CAMERA_SUPPORT_DEVICES:Ljava/util/List;

    return-object v0
.end method

.method public static blacklist getSupportSecurityCameraPackage()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 31
    sget-object v0, Lmiui/security/SecurityCameraUtils;->SECURITY_CAMERA_SUPPORT_PACKAGES:Ljava/util/List;

    return-object v0
.end method
