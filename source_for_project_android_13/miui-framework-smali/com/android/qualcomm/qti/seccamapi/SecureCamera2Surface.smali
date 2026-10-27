.class public Lcom/android/qualcomm/qti/seccamapi/SecureCamera2Surface;
.super Lcom/android/qualcomm/qti/seccamapi/SecureSurface;
.source "SecureCamera2Surface.java"


# direct methods
.method public constructor blacklist <init>(IIIII)V
    .registers 6
    .param p1, "cameraId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "format"    # I
    .param p5, "numOfBuffers"    # I

    .line 18
    invoke-direct/range {p0 .. p5}, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;-><init>(IIIII)V

    .line 19
    return-void
.end method
