.class public Lmiui/security/SvStatusData;
.super Ljava/lang/Object;
.source "SvStatusData.java"


# static fields
.field public static final blacklist KEY_BASE_BAND_CN0S:Ljava/lang/String; = "key_basebandCn0s"

.field public static final blacklist KEY_CN0S:Ljava/lang/String; = "key_cn0s"

.field public static final blacklist KEY_SV_AZIMUTHS:Ljava/lang/String; = "key_svAzimuths"

.field public static final blacklist KEY_SV_CARRIER_FREQS:Ljava/lang/String; = "key_svCarrierFreqs"

.field public static final blacklist KEY_SV_COUNT:Ljava/lang/String; = "key_svcount"

.field public static final blacklist KEY_SV_ELEVATIONS:Ljava/lang/String; = "key_svElevations"

.field public static final blacklist KEY_SV_ID_WITH_FLAGS:Ljava/lang/String; = "key_svidWithFlags"


# instance fields
.field private blacklist basebandCn0s:[F

.field private blacklist cn0s:[F

.field private blacklist svAzimuths:[F

.field private blacklist svCarrierFreqs:[F

.field private blacklist svCount:I

.field private blacklist svElevations:[F

.field private blacklist svidWithFlags:[I


# direct methods
.method public constructor blacklist <init>(I[I[F[F[F[F[F)V
    .registers 8
    .param p1, "svCount"    # I
    .param p2, "svidWithFlags"    # [I
    .param p3, "cn0s"    # [F
    .param p4, "svElevations"    # [F
    .param p5, "svAzimuths"    # [F
    .param p6, "svCarrierFreqs"    # [F
    .param p7, "basebandCn0s"    # [F

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lmiui/security/SvStatusData;->svCount:I

    .line 27
    iput-object p2, p0, Lmiui/security/SvStatusData;->svidWithFlags:[I

    .line 28
    iput-object p3, p0, Lmiui/security/SvStatusData;->cn0s:[F

    .line 29
    iput-object p4, p0, Lmiui/security/SvStatusData;->svElevations:[F

    .line 30
    iput-object p5, p0, Lmiui/security/SvStatusData;->svAzimuths:[F

    .line 31
    iput-object p6, p0, Lmiui/security/SvStatusData;->svCarrierFreqs:[F

    .line 32
    iput-object p7, p0, Lmiui/security/SvStatusData;->basebandCn0s:[F

    .line 33
    return-void
.end method


# virtual methods
.method public blacklist getBasebandCn0s()[F
    .registers 2

    .line 84
    iget-object v0, p0, Lmiui/security/SvStatusData;->basebandCn0s:[F

    return-object v0
.end method

.method public blacklist getCn0s()[F
    .registers 2

    .line 52
    iget-object v0, p0, Lmiui/security/SvStatusData;->cn0s:[F

    return-object v0
.end method

.method public blacklist getSvAzimuths()[F
    .registers 2

    .line 68
    iget-object v0, p0, Lmiui/security/SvStatusData;->svAzimuths:[F

    return-object v0
.end method

.method public blacklist getSvCarrierFreqs()[F
    .registers 2

    .line 76
    iget-object v0, p0, Lmiui/security/SvStatusData;->svCarrierFreqs:[F

    return-object v0
.end method

.method public blacklist getSvCount()I
    .registers 2

    .line 36
    iget v0, p0, Lmiui/security/SvStatusData;->svCount:I

    return v0
.end method

.method public blacklist getSvElevations()[F
    .registers 2

    .line 60
    iget-object v0, p0, Lmiui/security/SvStatusData;->svElevations:[F

    return-object v0
.end method

.method public blacklist getSvidWithFlags()[I
    .registers 2

    .line 44
    iget-object v0, p0, Lmiui/security/SvStatusData;->svidWithFlags:[I

    return-object v0
.end method

.method public blacklist setBasebandCn0s([F)V
    .registers 2
    .param p1, "basebandCn0s"    # [F

    .line 88
    iput-object p1, p0, Lmiui/security/SvStatusData;->basebandCn0s:[F

    .line 89
    return-void
.end method

.method public blacklist setCn0s([F)V
    .registers 2
    .param p1, "cn0s"    # [F

    .line 56
    iput-object p1, p0, Lmiui/security/SvStatusData;->cn0s:[F

    .line 57
    return-void
.end method

.method public blacklist setSvAzimuths([F)V
    .registers 2
    .param p1, "svAzimuths"    # [F

    .line 72
    iput-object p1, p0, Lmiui/security/SvStatusData;->svAzimuths:[F

    .line 73
    return-void
.end method

.method public blacklist setSvCarrierFreqs([F)V
    .registers 2
    .param p1, "svCarrierFreqs"    # [F

    .line 80
    iput-object p1, p0, Lmiui/security/SvStatusData;->svCarrierFreqs:[F

    .line 81
    return-void
.end method

.method public blacklist setSvCount(I)V
    .registers 2
    .param p1, "svCount"    # I

    .line 40
    iput p1, p0, Lmiui/security/SvStatusData;->svCount:I

    .line 41
    return-void
.end method

.method public blacklist setSvElevations([F)V
    .registers 2
    .param p1, "svElevations"    # [F

    .line 64
    iput-object p1, p0, Lmiui/security/SvStatusData;->svElevations:[F

    .line 65
    return-void
.end method

.method public blacklist setSvidWithFlags([I)V
    .registers 2
    .param p1, "svidWithFlags"    # [I

    .line 48
    iput-object p1, p0, Lmiui/security/SvStatusData;->svidWithFlags:[I

    .line 49
    return-void
.end method
