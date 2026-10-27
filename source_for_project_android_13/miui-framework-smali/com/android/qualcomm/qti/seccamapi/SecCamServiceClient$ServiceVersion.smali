.class public Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;
.super Ljava/lang/Object;
.source "SecCamServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceVersion"
.end annotation


# instance fields
.field public blacklist jniVerMaj_:I

.field public blacklist jniVerMin_:I

.field public blacklist serviceVerMaj_:I

.field public blacklist serviceVerMin_:I

.field public blacklist taVerMaj_:I

.field public blacklist taVerMin_:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
