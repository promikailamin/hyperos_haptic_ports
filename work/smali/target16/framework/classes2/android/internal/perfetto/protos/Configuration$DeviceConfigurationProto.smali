.class public final Landroid/internal/perfetto/protos/Configuration$DeviceConfigurationProto;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DeviceConfigurationProto"
.end annotation


# static fields
.field public static final blacklist CPU_ARCHITECTURES:J = 0x2090000000cL

.field public static final blacklist FEATURES:J = 0x2090000000bL

.field public static final blacklist HAS_SECURE_SCREEN_LOCK:J = 0x10800000007L

.field public static final blacklist LOW_RAM:J = 0x10800000005L

.field public static final blacklist MAX_CORES:J = 0x10d00000006L

.field public static final blacklist OPENGL_EXTENSIONS:J = 0x20900000009L

.field public static final blacklist OPENGL_VERSION:J = 0x10d00000008L

.field public static final blacklist SHARED_LIBRARIES:J = 0x2090000000aL

.field public static final blacklist STABLE_DENSITY_DPI:J = 0x10d00000003L

.field public static final blacklist STABLE_SCREEN_HEIGHT_PX:J = 0x10d00000002L

.field public static final blacklist STABLE_SCREEN_WIDTH_PX:J = 0x10d00000001L

.field public static final blacklist TOTAL_RAM:J = 0x10400000004L


# direct methods
.method public constructor blacklist <init>(Landroid/internal/perfetto/protos/Configuration;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
