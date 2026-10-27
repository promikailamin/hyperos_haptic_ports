.class public final Landroid/internal/perfetto/protos/Configuration$ResourcesConfigurationProto;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ResourcesConfigurationProto"
.end annotation


# static fields
.field public static final blacklist CONFIGURATION:J = 0x10b00000001L

.field public static final blacklist SCREEN_HEIGHT_PX:J = 0x10d00000004L

.field public static final blacklist SCREEN_WIDTH_PX:J = 0x10d00000003L

.field public static final blacklist SDK_VERSION:J = 0x10d00000002L


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

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
