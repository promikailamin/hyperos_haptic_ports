.class public Lcom/miui/internal/cust/PrivateWaterMarkerConfig;
.super Ljava/lang/Object;
.source "PrivateWaterMarkerConfig.java"


# static fields
.field public static blacklist IS_PRIVATE_WATER_MARKER:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 8
    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/internal/cust/PrivateWaterMarkerConfig;->IS_PRIVATE_WATER_MARKER:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
